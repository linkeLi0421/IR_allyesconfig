; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/rxon.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_rxon_context = type { ptr, i8, [4 x i8], [4 x i8], i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd, %struct.iwl_rxon_time_cmd, %struct.iwl_qos_info, i8, i8, i8, i8, i8, i8, i8, [4 x %struct.iwl_wep_key], i8, i32, i32, %struct.anon.133 }
%struct.iwl_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8, i16, i16 }>
%struct.iwl_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.iwl_qos_info = type { i32, %struct.iwl_qosparam_cmd }
%struct.iwl_qosparam_cmd = type { i32, [4 x %struct.iwl_ac_qos] }
%struct.iwl_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.iwl_wep_key = type { i8, i8, [2 x i8], i8, [3 x i8], [16 x i8] }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }
%struct.iwl_priv = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i8, [32 x i8], [32 x %struct.atomic_t], [1 x i32], ptr, ptr, %struct.list_head, ptr, %struct.iwl_hw_params, i32, i8, [255 x ptr], %struct.iwl_notif_wait_data, %struct.iwl_spectrum_notification, i8, i32, i32, i32, i32, [255 x i32], %struct.iwl_rf_reset, i32, i32, i8, i8, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, [6 x i8], i8, i8, i8, i8, [2 x %struct.mac_address], [2 x %struct.iwl_rxon_context], i16, i8, %struct.iwl_sensitivity_data, %struct.iwl_chain_noise_data, [11 x i16], [12 x i16], %struct.iwl_ht_config, i8, i32, %struct.iwl_power_mgr, %struct.iwl_tt_mgmt, i32, [16 x %struct.iwl_station_entry], i32, [16 x [8 x %struct.iwl_tid_data]], %struct.atomic_t, i8, i8, i32, i64, %struct.anon.135, %struct.anon.136, %struct.anon.136, %struct.anon.136, i8, %struct.iwl_rx_phy_res, i32, i8, i8, i8, %struct.reply_tx_error_statistics, %struct.reply_agg_tx_error_statistics, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i16, i16, i16, i8, %struct.work_struct, i8, ptr, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8, i8, ptr, i32, i32, i8, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.iwl_event_log, %struct.led_classdev, i32, i32, i8, [16 x i8], [16 x i8], i64, i16, i8, %struct.wiphy_wowlan_support, %struct.anon.138, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
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
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
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
%struct.iwl_wipan_params_cmd = type { i16, i8, i8, [10 x %struct.iwl_wipan_slot] }
%struct.iwl_wipan_slot = type { i16, i8, i8 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_rxon_assoc_cmd = type { i32, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.iwl_calib_chain_noise_reset_cmd = type { %struct.iwl_calib_hdr, [0 x i8] }
%struct.iwl_calib_hdr = type { i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_txpwr = type { i16, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported interface type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/rxon.c\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"beacon intervals don't match (%d, %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error setting PAN parameters (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_set_rxon_channel = private unnamed_addr constant [21 x i8] c"iwl_set_rxon_channel\00", align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Staging channel set to %d [%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.iwl_print_rx_config_cmd = private unnamed_addr constant [24 x i8] c"iwl_print_rx_config_cmd\00", align 1
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX CONFIG:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl data: \00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"u16 channel: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"u32 flags: 0x%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"u32 filter_flags: 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"u8 dev_type: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"u8 ofdm_basic_rates: 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"u8 cck_basic_rates: 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u8[6] node_addr: %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"u8[6] bssid_addr: %pM\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"u16 assoc_id: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid RXON configuration. Not committing.\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwlagn_commit_rxon = private unnamed_addr constant [19 x i8] c"iwlagn_commit_rxon\00", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"abort channel switch on %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error setting RXON_ASSOC (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@.str.20 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Going to commit RXON\0A  * with%s RXON_FILTER_ASSOC_MSK\0A  * channel = %d\0A  * bssid = %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@__func__.iwlagn_mac_config = private unnamed_addr constant [18 x i8] c"iwlagn_mac_config\00", align 1
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enter: changed %#x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"leave - scanning\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"leave - not ready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error setting sleep level\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX Power old=%d new=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"leave\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.iwlagn_bss_info_changed = private unnamed_addr constant [24 x i8] c"iwlagn_bss_info_changed\00", align 1
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"leave - vif is NULL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to %s IBSS station %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error updating beacon\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid extension channel offset\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__._iwl_set_rxon_ht = private unnamed_addr constant [17 x i8] c"_iwl_set_rxon_ht\00", align 1
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"rxon flags 0x%X operation mode :0x%X extension channel offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.iwl_calc_basic_rates = private unnamed_addr constant [21 x i8] c"iwl_calc_basic_rates\00", align 1
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Set basic rates cck:0x%.2x ofdm:0x%.2x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"check 2.4G: wrong narrow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check 2.4G: wrong radar\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"check 5.2G: not short slot!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check 5.2G: CCK!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac/bssid mcast!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"neither 1 nor 6 are basic\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aid > 2007\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CCK and short slot\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CCK and auto detect\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TGg but no auto-detect\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zero channel is invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid RXON (%#x), channel %d\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwl_full_rxon_required = private unnamed_addr constant [23 x i8] c"iwl_full_rxon_required\00", align 1
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"need full RXON - !iwl_is_associated_ctx(ctx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"need full RXON - !ether_addr_equal(staging->bssid_addr, active->bssid_addr)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"need full RXON - !ether_addr_equal(staging->node_addr, active->node_addr)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"need full RXON - !ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"need full RXON - staging->dev_type != active->dev_type - %d != %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"need full RXON - staging->channel != active->channel - %d != %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"need full RXON - staging->air_propagation != active->air_propagation - %d != %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"need full RXON - staging->ofdm_ht_single_stream_basic_rates != active->ofdm_ht_single_stream_basic_rates - %d != %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"need full RXON - staging->ofdm_ht_dual_stream_basic_rates != active->ofdm_ht_dual_stream_basic_rates - %d != %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"need full RXON - staging->ofdm_ht_triple_stream_basic_rates != active->ofdm_ht_triple_stream_basic_rates - %d != %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"need full RXON - staging->assoc_id != active->assoc_id - %d != %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"need full RXON - staging->flags & RXON_FLG_BAND_24G_MSK != active->flags & RXON_FLG_BAND_24G_MSK - %d != %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"need full RXON - staging->filter_flags & RXON_FILTER_ASSOC_MSK != active->filter_flags & RXON_FILTER_ASSOC_MSK - %d != %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwlagn_send_rxon_assoc = private unnamed_addr constant [23 x i8] c"iwlagn_send_rxon_assoc\00", align 1
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using current RXON_ASSOC.  Not resending.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Requested user TXPOWER %d below lower limit %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Requested user TXPOWER %d above upper limit %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_set_tx_power = private unnamed_addr constant [17 x i8] c"iwl_set_tx_power\00", align 1
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Deferring tx power set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to send timing (%d)!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to restore WEP keys (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error clearing ASSOC_MSK on BSS (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@iwlagn_disable_pan.deactivate_cmd = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 189], [30 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error disabling PAN (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Timed out waiting for PAN disable\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_send_rxon_timing = private unnamed_addr constant [21 x i8] c"iwl_send_rxon_timing\00", align 1
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"beacon interval %d beacon timer %d beacon tim %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error sending required beacon (%d)!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error setting new RXON (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error sending IBSS beacon\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error sending TX power (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.iwlagn_update_qos = private unnamed_addr constant [18 x i8] c"iwlagn_update_qos\00", align 1
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"send QoS cmd with Qos active=%d FLAGS=0x%X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to update QoS\0A\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not send REPLY_PHY_CALIBRATION_CMD\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.iwlagn_chain_noise_reset = private unnamed_addr constant [25 x i8] c"iwlagn_chain_noise_reset\00", align 1
@.str.82 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Run chain_noise_calibrate\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 48, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 521, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 553, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 592, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 712, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 894, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 895, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 896, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 898, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 900, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 902, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 903, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 905, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 907, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 908, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 909, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1063, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1073, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1086, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1105, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1160, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1165, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1170, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1232, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1236, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1249, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1410, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1514, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1521, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 662, i32 5 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 673, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 997, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 760, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 764, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 769, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 773, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 778, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 785, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 790, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 796, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 802, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 809, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 814, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 818, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 853, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 854, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 855, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 856, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 858, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 859, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 860, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 861, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 863, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 865, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 867, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 874, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 878, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 212, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 398, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 406, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 423, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 355, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 374, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 93, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [15 x i8] c"deactivate_cmd\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 107, i32 19 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 124, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 130, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 330, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 465, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 482, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 490, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 502, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 169, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 177, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 695, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 723, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1376, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1379, i32 3 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @iwlagn_disable_pan.deactivate_cmd, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_disable_pan.deactivate_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_connection_init_rx_config(ptr nocapture noundef %priv, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15
  %0 = call ptr @memset(ptr %staging, i32 0, i32 50)
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %unused_devtype = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 10
  %3 = ptrtoint ptr %unused_devtype to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %unused_devtype, align 4
  %dev_type = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %5 = ptrtoint ptr %dev_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %dev_type, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
    i32 1, label %sw.bb9
    i32 6, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ap_devtype = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 11
  %9 = ptrtoint ptr %ap_devtype to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ap_devtype, align 1
  %dev_type4 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %11 = ptrtoint ptr %dev_type4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dev_type4, align 2
  br label %if.end

sw.bb5:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %station_devtype = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 13
  %12 = ptrtoint ptr %station_devtype to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %station_devtype, align 1
  %dev_type7 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %dev_type7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %dev_type7, align 2
  %filter_flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 13
  %15 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 67108864, ptr %filter_flags, align 2
  br label %if.end

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ibss_devtype = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 12
  %16 = ptrtoint ptr %ibss_devtype to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ibss_devtype, align 2
  %dev_type11 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %18 = ptrtoint ptr %dev_type11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %dev_type11, align 2
  %flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 536870912, ptr %flags, align 2
  %filter_flags14 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 13
  %20 = ptrtoint ptr %filter_flags14 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 1140850688, ptr %filter_flags14, align 2
  br label %if.end

sw.bb15:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev_type17 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %21 = ptrtoint ptr %dev_type17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %dev_type17, align 2
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb15, %sw.bb9, %sw.bb5, %sw.bb, %if.then
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %channel = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 14
  %31 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %channel, align 2
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %chandef25 = getelementptr inbounds %struct.ieee80211_conf, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %chandef25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chandef25, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %band27 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %38 = ptrtoint ptr %band27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %band27, align 8
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i = icmp eq i32 %37, 1
  br i1 %cmp.i, label %if.end.iwl_set_flags_for_band.exit_crit_edge, label %if.else.i

if.end.iwl_set_flags_for_band.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_set_flags_for_band.exit

if.else.i:                                        ; preds = %if.end
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.else.i.if.else8.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %use_short_slot.i = getelementptr inbounds %struct.ieee80211_vif, ptr %40, i32 0, i32 1, i32 16
  %41 = ptrtoint ptr %use_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_short_slot.i, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool3.not.i = icmp eq i8 %42, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else8.i_crit_edge, label %iwl_set_flags_for_band.exit.thread

land.lhs.true.i.if.else8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

iwl_set_flags_for_band.exit.thread:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags6.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %43 = ptrtoint ptr %flags6.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %flags6.i, align 2
  %or7.i = and i32 %44, -385875975
  %and20.i77 = or i32 %or7.i, 352321536
  store i32 %and20.i77, ptr %flags6.i, align 2
  br label %if.then34

if.else8.i:                                       ; preds = %land.lhs.true.i.if.else8.i_crit_edge, %if.else.i.if.else8.i_crit_edge
  %flags10.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %45 = ptrtoint ptr %flags10.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %flags10.i, align 2
  %and11.i = and i32 %46, -268435457
  store i32 %and11.i, ptr %flags10.i, align 2
  br label %iwl_set_flags_for_band.exit

iwl_set_flags_for_band.exit:                      ; preds = %if.else8.i, %if.end.iwl_set_flags_for_band.exit_crit_edge
  %.sink30.i = phi i32 [ -385875975, %if.end.iwl_set_flags_for_band.exit_crit_edge ], [ -117440519, %if.else8.i ]
  %.sink.i = phi i32 [ 268435456, %if.end.iwl_set_flags_for_band.exit_crit_edge ], [ 83886080, %if.else8.i ]
  %flags13.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %47 = ptrtoint ptr %flags13.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %flags13.i, align 2
  %or17.i.masked = and i32 %.sink30.i, %48
  %and = or i32 %or17.i.masked, %.sink.i
  store i32 %and, ptr %flags13.i, align 2
  %tobool33.not = icmp eq ptr %40, null
  br i1 %tobool33.not, label %iwl_set_flags_for_band.exit.if.end38_crit_edge, label %iwl_set_flags_for_band.exit.if.then34_crit_edge

iwl_set_flags_for_band.exit.if.then34_crit_edge:  ; preds = %iwl_set_flags_for_band.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

iwl_set_flags_for_band.exit.if.end38_crit_edge:   ; preds = %iwl_set_flags_for_band.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then34:                                        ; preds = %iwl_set_flags_for_band.exit.if.then34_crit_edge, %iwl_set_flags_for_band.exit.thread
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %40, i32 0, i32 2
  %49 = call ptr @memcpy(ptr %staging, ptr %addr, i32 6)
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %iwl_set_flags_for_band.exit.if.end38_crit_edge
  %ofdm_ht_single_stream_basic_rates = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 15
  %50 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %ofdm_ht_single_stream_basic_rates, align 2
  %ofdm_ht_dual_stream_basic_rates = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 16
  %51 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %ofdm_ht_dual_stream_basic_rates, align 1
  %ofdm_ht_triple_stream_basic_rates = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 17
  %52 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %ofdm_ht_triple_stream_basic_rates, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_set_flags_for_band(ptr nocapture readnone %priv, ptr nocapture noundef %ctx, i32 noundef %band, ptr noundef readonly %vif) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp = icmp eq i32 %band, 1
  br i1 %cmp, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.else:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %if.else.if.else8_crit_edge, label %land.lhs.true

if.else.if.else8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8

land.lhs.true:                                    ; preds = %if.else
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 16
  %0 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_short_slot, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else8_crit_edge, label %if.then4

land.lhs.true.if.else8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %flags6 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %2 = ptrtoint ptr %flags6 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %flags6, align 2
  %or7 = or i32 %3, 268435456
  store i32 %or7, ptr %flags6, align 2
  br label %if.end21

if.else8:                                         ; preds = %land.lhs.true.if.else8_crit_edge, %if.else.if.else8_crit_edge
  %flags10 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %4 = ptrtoint ptr %flags10 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %flags10, align 2
  %and11 = and i32 %5, -268435457
  store i32 %and11, ptr %flags10, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.else8, %if.then4, %entry.if.end21_crit_edge
  %.sink30 = phi i32 [ -385875969, %entry.if.end21_crit_edge ], [ -117440513, %if.else8 ], [ -117440513, %if.then4 ]
  %.sink = phi i32 [ 268435456, %entry.if.end21_crit_edge ], [ 83886080, %if.else8 ], [ 83886080, %if.then4 ]
  %flags13 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %6 = ptrtoint ptr %flags13 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags13, align 2
  %or17 = and i32 %7, %.sink30
  %and20 = or i32 %or17, %.sink
  store i32 %and20, ptr %flags13, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_set_pan_params(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_wipan_params_cmd, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %cmd) #9
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_contexts, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body2.if.end23_crit_edge, label %land.rhs

do.body2.if.end23_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.rhs:                                         ; preds = %do.body2
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %do.end17, label %land.rhs.if.end23_crit_edge, !prof !189

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end17:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 521, i32 noundef 9, ptr noundef null) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end17, %land.rhs.if.end23_crit_edge, %do.body2.if.end23_crit_edge
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx33 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1
  %is_active = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 5
  %3 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_active, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool34.not = icmp eq i8 %4, 0
  br i1 %tobool34.not, label %if.end23.cleanup_crit_edge, label %if.end36

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %5 = call ptr @memset(ptr %cmd, i32 0, i32 44)
  %num_slots = getelementptr inbounds %struct.iwl_wipan_params_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %num_slots to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %num_slots, align 1
  %slots = getelementptr inbounds %struct.iwl_wipan_params_cmd, ptr %cmd, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds %struct.iwl_wipan_params_cmd, ptr %cmd, i32 0, i32 3, i32 1
  %type40 = getelementptr inbounds %struct.iwl_wipan_params_cmd, ptr %cmd, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %type40 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %type40, align 2
  %8 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %contexts, align 4
  %tobool41.not = icmp eq ptr %9, null
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %arrayidx33, align 4
  %tobool111.not = icmp eq ptr %.pr, null
  br i1 %tobool41.not, label %if.else109, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end36
  br i1 %tobool111.not, label %land.lhs.true.if.end141_crit_edge, label %if.then44

land.lhs.true.if.end141_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then44:                                        ; preds = %land.lhs.true
  %beacon_int = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 28
  %11 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %beacon_int, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %.pr, i32 0, i32 1, i32 18
  %13 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool47.not = icmp eq i8 %14, 0
  %narrow = select i1 %tobool47.not, i8 1, i8 %14
  %conv46. = zext i8 %narrow to i32
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmd, align 2
  %17 = or i16 %16, 2048
  store i16 %17, ptr %cmd, align 2
  %18 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %.pr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp52 = icmp ne i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool55.not = icmp eq i32 %12, 0
  %or.cond = select i1 %cmp52, i1 true, i1 %tobool55.not
  br i1 %or.cond, label %if.then44.if.else_crit_edge, label %land.lhs.true56

if.then44.if.else_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true56:                                  ; preds = %if.then44
  %beacon_int57 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 28
  %20 = ptrtoint ptr %beacon_int57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %beacon_int57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp58.not = icmp eq i32 %12, %21
  br i1 %cmp58.not, label %land.lhs.true56.if.else_crit_edge, label %do.end64

land.lhs.true56.if.else_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end64:                                         ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %21, i32 noundef %12) #9
  br label %if.end77

if.else:                                          ; preds = %land.lhs.true56.if.else_crit_edge, %if.then44.if.else_crit_edge
  %beacon_int69 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 28
  %24 = ptrtoint ptr %beacon_int69 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %beacon_int69, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %12, i32 %25)
  br label %if.end77

if.end77:                                         ; preds = %if.else, %do.end64
  %bcnint.0 = phi i32 [ %12, %do.end64 ], [ %26, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcnint.0)
  %tobool78.not = icmp eq i32 %bcnint.0, 0
  %spec.store.select = select i1 %tobool78.not, i32 200, i32 %bcnint.0
  %div = sdiv i32 %spec.store.select, 2
  %sub = sub i32 %spec.store.select, %div
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %status, align 4
  %29 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool82.not = icmp eq i32 %29, 0
  br i1 %tobool82.not, label %lor.lhs.false, label %if.end77.if.then90_crit_edge

if.end77.if.then90_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

lor.lhs.false:                                    ; preds = %if.end77
  %30 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %contexts, align 4
  %idle = getelementptr inbounds %struct.ieee80211_vif, ptr %31, i32 0, i32 1, i32 37
  %32 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %idle, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool85.not = icmp eq i8 %33, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %lor.lhs.false.if.else93_crit_edge

lor.lhs.false.if.else93_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else93

land.lhs.true86:                                  ; preds = %lor.lhs.false
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %31, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %assoc, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool89.not = icmp eq i8 %35, 0
  br i1 %tobool89.not, label %land.lhs.true86.if.then90_crit_edge, label %land.lhs.true86.if.else93_crit_edge

land.lhs.true86.if.else93_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else93

land.lhs.true86.if.then90_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90

if.then90:                                        ; preds = %land.lhs.true86.if.then90_crit_edge, %if.end77.if.then90_crit_edge
  %mul = mul nuw nsw i32 %conv46., 3
  %mul91 = mul i32 %mul, %spec.store.select
  %sub92 = add i32 %mul91, -20
  br label %if.end141

if.else93:                                        ; preds = %land.lhs.true86.if.else93_crit_edge, %lor.lhs.false.if.else93_crit_edge
  %36 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx33, align 4
  %idle96 = getelementptr inbounds %struct.ieee80211_vif, ptr %37, i32 0, i32 1, i32 37
  %38 = ptrtoint ptr %idle96 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %idle96, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool97.not = icmp eq i8 %39, 0
  br i1 %tobool97.not, label %land.lhs.true98, label %if.else93.if.end141_crit_edge

if.else93.if.end141_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

land.lhs.true98:                                  ; preds = %if.else93
  %assoc101 = getelementptr inbounds %struct.ieee80211_vif, ptr %37, i32 0, i32 1, i32 10
  %40 = ptrtoint ptr %assoc101 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %assoc101, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool102.not = icmp eq i8 %41, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true98.if.end141_crit_edge

land.lhs.true98.if.end141_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then103:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  %mul104 = mul nuw nsw i32 %conv46., 3
  %mul105 = mul i32 %mul104, %spec.store.select
  %sub106 = add i32 %mul105, -20
  br label %if.end141

if.else109:                                       ; preds = %if.end36
  br i1 %tobool111.not, label %if.else109.if.end141_crit_edge, label %if.then112

if.else109.if.end141_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then112:                                       ; preds = %if.else109
  %dtim_period115 = getelementptr inbounds %struct.ieee80211_vif, ptr %.pr, i32 0, i32 1, i32 18
  %42 = ptrtoint ptr %dtim_period115 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dtim_period115, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp118 = icmp eq i8 %43, 0
  %narrow215 = select i1 %cmp118, i8 1, i8 %43
  %cond123 = zext i8 %narrow215 to i32
  %beacon_int124 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 28
  %44 = ptrtoint ptr %beacon_int124 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %beacon_int124, align 4
  %mul125 = mul i32 %45, %cond123
  %46 = tail call i32 @llvm.smax.i32(i32 %mul125, i32 200)
  %status133 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %47 = ptrtoint ptr %status133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %status133, align 4
  %49 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool135.not = icmp eq i32 %49, 0
  br i1 %tobool135.not, label %if.then112.if.end141_crit_edge, label %if.then136

if.then112.if.end141_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then136:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %mul137 = mul i32 %46, 3
  %sub138 = add i32 %mul137, -20
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.then112.if.end141_crit_edge, %if.else109.if.end141_crit_edge, %if.then103, %land.lhs.true98.if.end141_crit_edge, %if.else93.if.end141_crit_edge, %if.then90, %land.lhs.true.if.end141_crit_edge
  %slot1.1 = phi i32 [ 20, %if.then136 ], [ %46, %if.then112.if.end141_crit_edge ], [ 0, %if.else109.if.end141_crit_edge ], [ 20, %if.then90 ], [ %sub, %if.else93.if.end141_crit_edge ], [ %sub, %land.lhs.true98.if.end141_crit_edge ], [ %sub106, %if.then103 ], [ 0, %land.lhs.true.if.end141_crit_edge ]
  %slot0.1 = phi i32 [ %sub138, %if.then136 ], [ 0, %if.then112.if.end141_crit_edge ], [ 300, %if.else109.if.end141_crit_edge ], [ %sub92, %if.then90 ], [ %div, %if.else93.if.end141_crit_edge ], [ %div, %land.lhs.true98.if.end141_crit_edge ], [ 20, %if.then103 ], [ 300, %land.lhs.true.if.end141_crit_edge ]
  %conv142 = trunc i32 %slot0.1 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv142)
  %51 = ptrtoint ptr %slots to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %slots, align 2
  %conv145 = trunc i32 %slot1.1 to i16
  %52 = tail call i16 @llvm.bswap.i16(i16 %conv145)
  %53 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx39, align 2
  %call149 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -78, i32 noundef 0, i16 noundef zeroext 44, ptr noundef nonnull %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end141.cleanup_crit_edge, label %do.end155

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end155:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %dev156 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %54 = ptrtoint ptr %dev156 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev156, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %55, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %call149) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end155, %if.end141.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %call149, %do.end155 ], [ 0, %if.end141.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_set_rxon_ht(ptr noundef %priv, ptr nocapture readnone %ht_conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp9 = icmp ult ptr %contexts, %arrayidx2
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.010 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %1 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 7
  %2 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %enabled.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 29, i32 2
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 15, i32 12
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags.i, align 1
  %and.i = and i32 %7, -49160
  store i32 %and.i, ptr %flags.i, align 1
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  %protection.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 29, i32 1
  %8 = ptrtoint ptr %protection.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protection.i, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 23
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %flags2.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 15, i32 12
  %11 = ptrtoint ptr %flags2.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %flags2.i, align 1
  %or.i = or i32 %10, %12
  %and4.i = and i32 %or.i, -16391
  store i32 %and4.i, ptr %flags2.i, align 1
  %call.i = tail call zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef %priv, ptr noundef %ctx.010, ptr noundef null) #9
  br i1 %call.i, label %if.then5.i, label %if.end.i.if.end42.i_crit_edge

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then5.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %protection.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protection.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i = icmp eq i8 %14, 2
  br i1 %cmp.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then5.i
  %15 = ptrtoint ptr %flags2.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %flags2.i, align 1
  %or12.i = or i32 %16, 2
  store i32 %or12.i, ptr %flags2.i, align 1
  %extension_chan_offset.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 29, i32 4
  %17 = ptrtoint ptr %extension_chan_offset.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %extension_chan_offset.i, align 4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %18, label %if.then10.i.if.end42.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 3, label %sw.bb17.i
  ]

if.then10.i.if.end42.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

sw.bb.i:                                          ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i32 %or12.i, -16385
  %20 = ptrtoint ptr %flags2.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %and16.i, ptr %flags2.i, align 1
  br label %if.end42.i

sw.bb17.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %or19.i = or i32 %16, 16386
  %21 = ptrtoint ptr %flags2.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %or19.i, ptr %flags2.i, align 1
  br label %if.end42.i

if.else.i:                                        ; preds = %if.then5.i
  %extension_chan_offset21.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 29, i32 4
  %22 = ptrtoint ptr %extension_chan_offset21.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extension_chan_offset21.i, align 4
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %23, label %do.end.i [
    i8 1, label %sw.bb23.i
    i8 3, label %sw.bb28.i
  ]

sw.bb23.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %flags2.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %flags2.i, align 1
  %and25.i = and i32 %26, -16389
  %or27.i = or i32 %and25.i, 4
  store i32 %or27.i, ptr %flags2.i, align 1
  br label %if.end42.i

sw.bb28.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %flags2.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %flags2.i, align 1
  %or32.i = or i32 %28, 16388
  store i32 %or32.i, ptr %flags2.i, align 1
  br label %if.end42.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %30, i32 noundef 0, ptr noundef nonnull @.str.34) #9
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end.i, %sw.bb28.i, %sw.bb23.i, %sw.bb17.i, %sw.bb.i, %if.then10.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  tail call void @iwlagn_set_rxon_chain(ptr noundef %priv, ptr noundef %ctx.010) #9
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %flags2.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %flags2.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %36 = ptrtoint ptr %protection.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %protection.i, align 1
  %conv51.i = zext i8 %37 to i32
  %extension_chan_offset53.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.010, i32 0, i32 29, i32 4
  %38 = ptrtoint ptr %extension_chan_offset53.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %extension_chan_offset53.i, align 4
  %conv54.i = zext i8 %39 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__._iwl_set_rxon_ht, ptr noundef nonnull @.str.35, i32 noundef %35, i32 noundef %conv51.i, i32 noundef %conv54.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end42.i, %if.then.i, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.010, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_set_rxon_channel(ptr nocapture noundef %priv, ptr nocapture noundef readonly %ch, ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %channel2 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 14
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channel2, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv3 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %3)
  %cmp = icmp eq i16 %6, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %band5 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %7 = ptrtoint ptr %band5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %band5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp6 = icmp eq i32 %8, %1
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = tail call i16 @llvm.bswap.i16(i16 %3)
  %10 = ptrtoint ptr %channel2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %channel2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp10 = icmp eq i32 %1, 1
  %flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %flags, align 2
  %and = and i32 %12, -16777217
  %masksel = select i1 %cmp10, i32 0, i32 16777216
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %flags, align 2
  %band17 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %13 = ptrtoint ptr %band17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %band17, align 8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_rxon_channel, ptr noundef nonnull @.str.4, i32 noundef %conv3, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_print_rx_config_cmd(ptr noundef %priv, i32 noundef %ctxid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %staging = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end10_crit_edge, label %if.then

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %staging, i32 noundef 50, i1 noundef zeroext true) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry.do.end10_crit_edge
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %channel = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 14
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %channel, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.8, i32 noundef %conv) #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %flags = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 12
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %flags, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.9, i32 noundef %12) #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %filter_flags = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 13
  %15 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %filter_flags, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.10, i32 noundef %17) #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %dev_type = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 6
  %20 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dev_type, align 1
  %conv33 = zext i8 %21 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.11, i32 noundef %conv33) #9
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %ofdm_basic_rates = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 9
  %24 = ptrtoint ptr %ofdm_basic_rates to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ofdm_basic_rates, align 1
  %conv41 = zext i8 %25 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.12, i32 noundef %conv41) #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %cck_basic_rates = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 10
  %28 = ptrtoint ptr %cck_basic_rates to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cck_basic_rates, align 1
  %conv49 = zext i8 %29 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.13, i32 noundef %conv49) #9
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.14, ptr noundef %staging) #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %bssid_addr = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 2
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.15, ptr noundef %bssid_addr) #9
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %assoc_id = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 %ctxid, i32 15, i32 11
  %36 = ptrtoint ptr %assoc_id to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %assoc_id, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv72 = zext i16 %38 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_print_rx_config_cmd, ptr noundef nonnull @.str.16, i32 noundef %conv72) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %disable_wait.i.i = alloca %struct.iwl_notification_wait, align 4
  %rxon_assoc.i = alloca %struct.iwl_rxon_assoc_cmd, align 4
  %basic.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active1 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15
  %filter_flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 13
  %0 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %filter_flags, align 2
  %and = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !189

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1030, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool29.not = icmp eq i32 %5, 0
  br i1 %tobool29.not, label %if.end.cleanup_crit_edge, label %do.end34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end34:                                         ; preds = %if.end
  %is_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_active, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool35.not = icmp eq i8 %7, 0
  br i1 %tobool35.not, label %do.end34.cleanup_crit_edge, label %if.end37

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %do.end34
  %flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 2
  %or = or i32 %9, 8388608
  store i32 %or, ptr %flags, align 2
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end37..thread.i_crit_edge, label %if.then.i

if.end37..thread.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

if.then.i:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %basic.i) #9
  %basic_rates.i = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 1, i32 24
  %12 = ptrtoint ptr %basic_rates.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %basic_rates.i, align 8
  %14 = ptrtoint ptr %basic.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %basic.i, align 4
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %15 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy.i, align 8
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chandef.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %arrayidx.i = getelementptr %struct.wiphy, ptr %18, i32 0, i32 53, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %call.i188 = call i32 @_find_next_bit_be(ptr noundef nonnull %basic.i, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i188)
  %cmp124.i = icmp slt i32 %call.i188, 32
  br i1 %cmp124.i, label %for.body.lr.ph.i, label %if.end23.thread.i

if.end23.thread.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basic.i) #9
  br label %.thread.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %24, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0129.i = phi i32 [ %call.i188, %for.body.lr.ph.i ], [ %call22.i, %if.end21.i.for.body.i_crit_edge ]
  %ofdm.0128.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %ofdm.1.i, %if.end21.i.for.body.i_crit_edge ]
  %cck.0127.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %cck.1.i, %if.end21.i.for.body.i_crit_edge ]
  %lowest_present_cck.0126.i = phi i32 [ 100, %for.body.lr.ph.i ], [ %lowest_present_cck.1.i, %if.end21.i.for.body.i_crit_edge ]
  %lowest_present_ofdm.0125.i = phi i32 [ 100, %for.body.lr.ph.i ], [ %lowest_present_ofdm.1.i, %if.end21.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bitrates.i, align 4
  %hw_value.i = getelementptr %struct.ieee80211_rate, ptr %26, i32 %i.0129.i, i32 2
  %27 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hw_value.i, align 2
  %conv.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp5.i = icmp ugt i16 %28, 3
  br i1 %cmp5.i, label %if.then7.i, label %do.end.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %conv.i, -4
  %shl.i = shl nuw i32 1, %sub.i
  %29 = trunc i32 %shl.i to i8
  %conv9.i = or i8 %ofdm.0128.i, %29
  %30 = call i32 @llvm.smin.i32(i32 %lowest_present_ofdm.0125.i, i32 %conv.i) #9
  br label %if.end21.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl13.i = shl nuw i32 1, %conv.i
  %31 = trunc i32 %shl13.i to i8
  %conv16.i = or i8 %cck.0127.i, %31
  %32 = call i32 @llvm.smin.i32(i32 %lowest_present_cck.0126.i, i32 %conv.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %if.then7.i
  %lowest_present_ofdm.1.i = phi i32 [ %30, %if.then7.i ], [ %lowest_present_ofdm.0125.i, %do.end.i ]
  %lowest_present_cck.1.i = phi i32 [ %lowest_present_cck.0126.i, %if.then7.i ], [ %32, %do.end.i ]
  %cck.1.i = phi i8 [ %cck.0127.i, %if.then7.i ], [ %conv16.i, %do.end.i ]
  %ofdm.1.i = phi i8 [ %conv9.i, %if.then7.i ], [ %ofdm.0128.i, %do.end.i ]
  %add.i = add nsw i32 %i.0129.i, 1
  %call22.i = call i32 @_find_next_bit_be(ptr noundef nonnull %basic.i, i32 noundef 32, i32 noundef %add.i) #9
  %cmp.i = icmp slt i32 %call22.i, 32
  br i1 %cmp.i, label %if.end21.i.for.body.i_crit_edge, label %if.end23.i

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end23.i:                                       ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %basic.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %lowest_present_ofdm.1.i)
  %cmp24.i = icmp sgt i32 %lowest_present_ofdm.1.i, 8
  %33 = or i8 %ofdm.1.i, 16
  br i1 %cmp24.i, label %if.end23.i..thread.i_crit_edge, label %34

if.end23.i..thread.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

34:                                               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %lowest_present_ofdm.1.i)
  %cmp31.i = icmp sgt i32 %lowest_present_ofdm.1.i, 6
  br i1 %cmp31.i, label %..thread.i_crit_edge, label %.iwl_calc_basic_rates.exit_crit_edge

.iwl_calc_basic_rates.exit_crit_edge:             ; preds = %34
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_calc_basic_rates.exit

..thread.i_crit_edge:                             ; preds = %34
  call void @__sanitizer_cov_trace_pc() #11
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %if.end23.i..thread.i_crit_edge, %if.end23.thread.i, %if.end37..thread.i_crit_edge
  %.in.i = phi i8 [ %ofdm.1.i, %..thread.i_crit_edge ], [ %33, %if.end23.i..thread.i_crit_edge ], [ 16, %if.end37..thread.i_crit_edge ], [ 16, %if.end23.thread.i ]
  %lowest_present_cck.2112123.i = phi i32 [ %lowest_present_cck.1.i, %..thread.i_crit_edge ], [ %lowest_present_cck.1.i, %if.end23.i..thread.i_crit_edge ], [ 100, %if.end37..thread.i_crit_edge ], [ 100, %if.end23.thread.i ]
  %cck.2114121.i = phi i8 [ %cck.1.i, %..thread.i_crit_edge ], [ %cck.1.i, %if.end23.i..thread.i_crit_edge ], [ 0, %if.end37..thread.i_crit_edge ], [ 0, %if.end23.thread.i ]
  %35 = or i8 %.in.i, 4
  br label %iwl_calc_basic_rates.exit

iwl_calc_basic_rates.exit:                        ; preds = %.thread.i, %.iwl_calc_basic_rates.exit_crit_edge
  %lowest_present_cck.2112122.i = phi i32 [ %lowest_present_cck.2112123.i, %.thread.i ], [ %lowest_present_cck.1.i, %.iwl_calc_basic_rates.exit_crit_edge ]
  %cck.2114120.i = phi i8 [ %cck.2114121.i, %.thread.i ], [ %cck.1.i, %.iwl_calc_basic_rates.exit_crit_edge ]
  %36 = phi i8 [ %35, %.thread.i ], [ %ofdm.1.i, %.iwl_calc_basic_rates.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lowest_present_cck.2112122.i)
  %cmp41.i = icmp sgt i32 %lowest_present_cck.2112122.i, 3
  %37 = or i8 %cck.2114120.i, 8
  %cck.3.i = select i1 %cmp41.i, i8 %37, i8 %cck.2114120.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lowest_present_cck.2112122.i)
  %cmp48.i = icmp sgt i32 %lowest_present_cck.2112122.i, 2
  %38 = or i8 %cck.3.i, 4
  %cck.4.i = select i1 %cmp48.i, i8 %38, i8 %cck.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lowest_present_cck.2112122.i)
  %cmp55.i = icmp sgt i32 %lowest_present_cck.2112122.i, 1
  %39 = or i8 %cck.4.i, 2
  %cck.5.i = select i1 %cmp55.i, i8 %39, i8 %cck.4.i
  %40 = or i8 %36, 1
  %41 = or i8 %cck.5.i, 1
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %conv69.i = zext i8 %41 to i32
  %conv70.i = zext i8 %40 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 1048576, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_calc_basic_rates, ptr noundef nonnull @.str.36, i32 noundef %conv69.i, i32 noundef %conv70.i) #9
  %cck_basic_rates.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 10
  %44 = ptrtoint ptr %cck_basic_rates.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %cck_basic_rates.i, align 1
  %ofdm_basic_rates.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 9
  %45 = ptrtoint ptr %ofdm_basic_rates.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %40, ptr %ofdm_basic_rates.i, align 2
  %use_rts_for_aggregation = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 2
  %46 = ptrtoint ptr %use_rts_for_aggregation to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %use_rts_for_aggregation, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not = icmp eq i8 %47, 0
  br i1 %tobool39.not, label %if.then40, label %iwl_calc_basic_rates.exit.if.end44_crit_edge

iwl_calc_basic_rates.exit.if.end44_crit_edge:     ; preds = %iwl_calc_basic_rates.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %iwl_calc_basic_rates.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %flags, align 2
  %or43 = or i32 %49, 64
  store i32 %or43, ptr %flags, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %iwl_calc_basic_rates.exit.if.end44_crit_edge
  %50 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctx, align 4
  %tobool45.not = icmp eq ptr %51, null
  br i1 %tobool45.not, label %if.end44.lor.lhs.false_crit_edge, label %land.lhs.true

if.end44.lor.lhs.false_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end44
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %51, i32 0, i32 1, i32 16
  %52 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_short_slot, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool47.not = icmp eq i8 %53, 0
  br i1 %tobool47.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then52_crit_edge

land.lhs.true.if.then52_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end44.lor.lhs.false_crit_edge
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %flags, align 2
  %and50 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %lor.lhs.false.if.then52_crit_edge, label %if.else

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false.if.then52_crit_edge, %land.lhs.true.if.then52_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %flags, align 2
  %or55 = or i32 %57, 268435456
  br label %if.end59

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %and58 = and i32 %55, -268435457
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then52
  %storemerge = phi i32 [ %or55, %if.then52 ], [ %and58, %if.else ]
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %storemerge, ptr %flags, align 2
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  %59 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctxid, align 4
  call void @iwl_print_rx_config_cmd(ptr noundef %priv, i32 noundef %60)
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %flags, align 1
  %and.i = and i32 %62, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i189 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i189, label %if.else.i, label %if.then.i190

if.then.i190:                                     ; preds = %if.end59
  %and2.i = and i32 %62, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i190.if.end.i_crit_edge, label %do.end.i192

if.then.i190.if.end.i_crit_edge:                  ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i192:                                      ; preds = %if.then.i190
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %64, ptr noundef nonnull @.str.37) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i192, %if.then.i190.if.end.i_crit_edge
  %errors.0.i = phi i32 [ 1, %do.end.i192 ], [ 0, %if.then.i190.if.end.i_crit_edge ]
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %flags, align 1
  %and9.i = and i32 %66, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end47.i_crit_edge, label %do.end15.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %68, ptr noundef nonnull @.str.38) #9
  %or19.i = or i32 %errors.0.i, 2
  br label %if.end47.i

if.else.i:                                        ; preds = %if.end59
  %and22.i = and i32 %62, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.end28.i, label %if.else.i.if.end33.i_crit_edge

if.else.i.if.end33.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

do.end28.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %70, ptr noundef nonnull @.str.39) #9
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end28.i, %if.else.i.if.end33.i_crit_edge
  %errors.1.i = phi i32 [ 0, %if.else.i.if.end33.i_crit_edge ], [ 4, %do.end28.i ]
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %flags, align 1
  %and35.i = and i32 %72, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end47.i_crit_edge, label %do.end41.i

if.end33.i.if.end47.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %74, ptr noundef nonnull @.str.40) #9
  %or45.i = or i32 %errors.1.i, 8
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end33.i.if.end47.i_crit_edge, %do.end15.i, %if.end.i.if.end47.i_crit_edge
  %errors.2.i = phi i32 [ %or19.i, %do.end15.i ], [ %errors.0.i, %if.end.i.if.end47.i_crit_edge ], [ %or45.i, %do.end41.i ], [ %errors.1.i, %if.end33.i.if.end47.i_crit_edge ]
  %75 = ptrtoint ptr %staging to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %staging, align 1
  %bssid_addr.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 2
  %77 = ptrtoint ptr %bssid_addr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bssid_addr.i, align 1
  %or50214.i = or i8 %78, %76
  %79 = and i8 %or50214.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool52.not.i = icmp eq i8 %79, 0
  br i1 %tobool52.not.i, label %if.end47.i.if.end62.i_crit_edge, label %do.end57.i

if.end47.i.if.end62.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

do.end57.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %81, ptr noundef nonnull @.str.41) #9
  %or61.i = or i32 %errors.2.i, 16
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end57.i, %if.end47.i.if.end62.i_crit_edge
  %errors.3.i = phi i32 [ %or61.i, %do.end57.i ], [ %errors.2.i, %if.end47.i.if.end62.i_crit_edge ]
  %82 = ptrtoint ptr %ofdm_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ofdm_basic_rates.i, align 1
  %84 = and i8 %83, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp.i194 = icmp eq i8 %84, 0
  br i1 %cmp.i194, label %land.lhs.true.i, label %if.end62.i.if.end79.i_crit_edge

if.end62.i.if.end79.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

land.lhs.true.i:                                  ; preds = %if.end62.i
  %85 = ptrtoint ptr %cck_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cck_basic_rates.i, align 1
  %87 = and i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp68.i = icmp eq i8 %87, 0
  br i1 %cmp68.i, label %do.end74.i, label %land.lhs.true.i.if.end79.i_crit_edge

land.lhs.true.i.if.end79.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

do.end74.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %89, ptr noundef nonnull @.str.42) #9
  %or78.i = or i32 %errors.3.i, 32
  br label %if.end79.i

if.end79.i:                                       ; preds = %do.end74.i, %land.lhs.true.i.if.end79.i_crit_edge, %if.end62.i.if.end79.i_crit_edge
  %errors.4.i = phi i32 [ %or78.i, %do.end74.i ], [ %errors.3.i, %land.lhs.true.i.if.end79.i_crit_edge ], [ %errors.3.i, %if.end62.i.if.end79.i_crit_edge ]
  %assoc_id.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 11
  %90 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %assoc_id.i, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2007, i16 %92)
  %cmp81.i = icmp ugt i16 %92, 2007
  br i1 %cmp81.i, label %do.end87.i, label %if.end79.i.if.end92.i_crit_edge

if.end79.i.if.end92.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

do.end87.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %94, ptr noundef nonnull @.str.43) #9
  %or91.i = or i32 %errors.4.i, 64
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end87.i, %if.end79.i.if.end92.i_crit_edge
  %errors.5.i = phi i32 [ %or91.i, %do.end87.i ], [ %errors.4.i, %if.end79.i.if.end92.i_crit_edge ]
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %flags, align 1
  %and94.i = and i32 %96, 301989888
  call void @__sanitizer_cov_trace_const_cmp4(i32 301989888, i32 %and94.i)
  %cmp95.i = icmp eq i32 %and94.i, 301989888
  br i1 %cmp95.i, label %do.end101.i, label %if.end92.i.if.end106.i_crit_edge

if.end92.i.if.end106.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106.i

do.end101.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %98, ptr noundef nonnull @.str.44) #9
  %or105.i = or i32 %errors.5.i, 128
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.end101.i, %if.end92.i.if.end106.i_crit_edge
  %errors.6.i = phi i32 [ %or105.i, %do.end101.i ], [ %errors.5.i, %if.end92.i.if.end106.i_crit_edge ]
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %flags, align 1
  %and108.i = and i32 %100, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %and108.i)
  %cmp109.i = icmp eq i32 %and108.i, 100663296
  br i1 %cmp109.i, label %do.end115.i, label %if.end106.i.if.end120.i_crit_edge

if.end106.i.if.end120.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120.i

do.end115.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %102, ptr noundef nonnull @.str.45) #9
  %or119.i = or i32 %errors.6.i, 256
  br label %if.end120.i

if.end120.i:                                      ; preds = %do.end115.i, %if.end106.i.if.end120.i_crit_edge
  %errors.7.i = phi i32 [ %or119.i, %do.end115.i ], [ %errors.6.i, %if.end106.i.if.end120.i_crit_edge ]
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %flags, align 1
  %and122.i = and i32 %104, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %and122.i)
  %cmp123.i = icmp eq i32 %and122.i, 134217728
  br i1 %cmp123.i, label %do.end129.i, label %if.end120.i.if.end134.i_crit_edge

if.end120.i.if.end134.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134.i

do.end129.i:                                      ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %106, ptr noundef nonnull @.str.46) #9
  %or133.i = or i32 %errors.7.i, 512
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end129.i, %if.end120.i.if.end134.i_crit_edge
  %errors.8.i = phi i32 [ %or133.i, %do.end129.i ], [ %errors.7.i, %if.end120.i.if.end134.i_crit_edge ]
  %channel.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 14
  %107 = ptrtoint ptr %channel.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %channel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %cmp136.i = icmp eq i16 %108, 0
  br i1 %cmp136.i, label %if.end147.thread.i, label %if.end147.i

if.end147.thread.i:                               ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %110, ptr noundef nonnull @.str.47) #9
  %or146.i = or i32 %errors.8.i, 1024
  br label %do.end66

if.end147.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.8.i)
  %tobool148.not.i = icmp eq i32 %errors.8.i, 0
  br i1 %tobool148.not.i, label %if.end69, label %if.end147.i.do.end66_crit_edge, !prof !190

if.end147.i.do.end66_crit_edge:                   ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.end66:                                         ; preds = %if.end147.i.do.end66_crit_edge, %if.end147.thread.i
  %errors.9217.i = phi i32 [ %or146.i, %if.end147.thread.i ], [ %errors.8.i, %if.end147.i.do.end66_crit_edge ]
  %111 = ptrtoint ptr %channel.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %channel.i, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #9
  %conv162.i = zext i16 %113 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 819, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %errors.9217.i, i32 noundef %conv162.i) #9
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %115, i32 noundef 0, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end69:                                         ; preds = %if.end147.i
  %116 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %status.i, align 4
  %118 = and i32 %117, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool71.not = icmp eq i32 %118, 0
  br i1 %tobool71.not, label %if.end69.if.end87_crit_edge, label %land.lhs.true72

if.end69.if.end87_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

land.lhs.true72:                                  ; preds = %if.end69
  %switch_channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %119 = ptrtoint ptr %switch_channel to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %switch_channel, align 4
  %121 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %channel.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %120, i16 %122)
  %cmp75.not = icmp eq i16 %120, %122
  br i1 %cmp75.not, label %land.lhs.true72.if.end87_crit_edge, label %do.end81

land.lhs.true72.if.end87_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.end81:                                         ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i, align 4
  %125 = call i16 @llvm.bswap.i16(i16 %120)
  %conv84 = zext i16 %125 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %124, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_commit_rxon, ptr noundef nonnull @.str.18, i32 noundef %conv84) #9
  call void @iwl_chswitch_done(ptr noundef %priv, i1 noundef zeroext false) #9
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %land.lhs.true72.if.end87_crit_edge, %if.end69.if.end87_crit_edge
  %filter_flags.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 13
  %126 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %filter_flags.i.i, align 4
  %128 = and i32 %127, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i196 = icmp eq i32 %128, 0
  br i1 %tobool.not.i196, label %do.end.i198, label %if.end.i200

do.end.i198:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %129 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %130, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.49) #9
  br label %if.end105

if.end.i200:                                      ; preds = %if.end87
  %bssid_addr6.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 2
  %131 = ptrtoint ptr %bssid_addr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bssid_addr.i, align 4
  %133 = ptrtoint ptr %bssid_addr6.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bssid_addr6.i, align 4
  %xor.i.i = xor i32 %134, %132
  %add.ptr.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 2, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 2, i32 4
  %137 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %138, %136
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end17.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i200
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %140, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.50) #9
  br label %if.end105

if.end17.i:                                       ; preds = %if.end.i200
  %141 = ptrtoint ptr %staging to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %staging, align 4
  %143 = ptrtoint ptr %active1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %active1, align 4
  %xor.i258.i = xor i32 %144, %142
  %add.ptr.i259.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %145 = ptrtoint ptr %add.ptr.i259.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %add.ptr.i259.i, align 2
  %add.ptr1.i260.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 0, i32 4
  %147 = ptrtoint ptr %add.ptr1.i260.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %add.ptr1.i260.i, align 2
  %xor37.i261.i = xor i16 %148, %146
  %xor3.i262.i = zext i16 %xor37.i261.i to i32
  %or.i263.i = or i32 %xor.i258.i, %xor3.i262.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i263.i)
  %cmp.i264.i = icmp eq i32 %or.i263.i, 0
  br i1 %cmp.i264.i, label %if.end30.i, label %do.end26.i

do.end26.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %150, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.51) #9
  br label %if.end105

if.end30.i:                                       ; preds = %if.end17.i
  %wlap_bssid_addr.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 4
  %wlap_bssid_addr32.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 4
  %151 = ptrtoint ptr %wlap_bssid_addr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %wlap_bssid_addr.i, align 4
  %153 = ptrtoint ptr %wlap_bssid_addr32.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %wlap_bssid_addr32.i, align 4
  %xor.i265.i = xor i32 %154, %152
  %add.ptr.i266.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 4, i32 4
  %155 = ptrtoint ptr %add.ptr.i266.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %add.ptr.i266.i, align 2
  %add.ptr1.i267.i = getelementptr %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 4, i32 4
  %157 = ptrtoint ptr %add.ptr1.i267.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %add.ptr1.i267.i, align 2
  %xor37.i268.i = xor i16 %158, %156
  %xor3.i269.i = zext i16 %xor37.i268.i to i32
  %or.i270.i = or i32 %xor.i265.i, %xor3.i269.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i270.i)
  %cmp.i271.i = icmp eq i32 %or.i270.i, 0
  br i1 %cmp.i271.i, label %if.end43.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %159 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %160, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.52) #9
  br label %if.end105

if.end43.i:                                       ; preds = %if.end30.i
  %dev_type.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %161 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %dev_type.i, align 1
  %dev_type44.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 6
  %163 = ptrtoint ptr %dev_type44.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %dev_type44.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %164)
  %cmp.not.i = icmp eq i8 %162, %164
  br i1 %cmp.not.i, label %if.end59.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv45.i = zext i8 %164 to i32
  %conv.i201 = zext i8 %162 to i32
  %165 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %166, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.53, i32 noundef %conv.i201, i32 noundef %conv45.i) #9
  br label %if.end105

if.end59.i:                                       ; preds = %if.end43.i
  %167 = ptrtoint ptr %channel.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %channel.i, align 1
  %channel61.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 14
  %169 = ptrtoint ptr %channel61.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %channel61.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %168, i16 %170)
  %cmp63.not.i = icmp eq i16 %168, %170
  br i1 %cmp63.not.i, label %if.end77.i, label %do.end69.i

do.end69.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv62.i = zext i16 %170 to i32
  %conv60.i = zext i16 %168 to i32
  %171 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %172, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.54, i32 noundef %conv60.i, i32 noundef %conv62.i) #9
  br label %if.end105

if.end77.i:                                       ; preds = %if.end59.i
  %air_propagation.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 7
  %173 = ptrtoint ptr %air_propagation.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %air_propagation.i, align 1
  %air_propagation79.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 7
  %175 = ptrtoint ptr %air_propagation79.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %air_propagation79.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %174, i8 %176)
  %cmp81.not.i = icmp eq i8 %174, %176
  br i1 %cmp81.not.i, label %if.end95.i, label %do.end87.i204

do.end87.i204:                                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv80.i = zext i8 %176 to i32
  %conv78.i = zext i8 %174 to i32
  %177 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %178, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.55, i32 noundef %conv78.i, i32 noundef %conv80.i) #9
  br label %if.end105

if.end95.i:                                       ; preds = %if.end77.i
  %ofdm_ht_single_stream_basic_rates.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 15
  %179 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ofdm_ht_single_stream_basic_rates.i, align 1
  %ofdm_ht_single_stream_basic_rates97.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 15
  %181 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates97.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %ofdm_ht_single_stream_basic_rates97.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %180, i8 %182)
  %cmp99.not.i = icmp eq i8 %180, %182
  br i1 %cmp99.not.i, label %if.end113.i, label %do.end105.i

do.end105.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv98.i = zext i8 %182 to i32
  %conv96.i = zext i8 %180 to i32
  %183 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %184, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.56, i32 noundef %conv96.i, i32 noundef %conv98.i) #9
  br label %if.end105

if.end113.i:                                      ; preds = %if.end95.i
  %ofdm_ht_dual_stream_basic_rates.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 16
  %185 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ofdm_ht_dual_stream_basic_rates.i, align 1
  %ofdm_ht_dual_stream_basic_rates115.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 16
  %187 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates115.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %ofdm_ht_dual_stream_basic_rates115.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %186, i8 %188)
  %cmp117.not.i = icmp eq i8 %186, %188
  br i1 %cmp117.not.i, label %if.end131.i, label %do.end123.i

do.end123.i:                                      ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv116.i = zext i8 %188 to i32
  %conv114.i = zext i8 %186 to i32
  %189 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %190, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.57, i32 noundef %conv114.i, i32 noundef %conv116.i) #9
  br label %if.end105

if.end131.i:                                      ; preds = %if.end113.i
  %ofdm_ht_triple_stream_basic_rates.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 17
  %191 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %ofdm_ht_triple_stream_basic_rates.i, align 1
  %ofdm_ht_triple_stream_basic_rates133.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 17
  %193 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates133.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ofdm_ht_triple_stream_basic_rates133.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %192, i8 %194)
  %cmp135.not.i = icmp eq i8 %192, %194
  br i1 %cmp135.not.i, label %if.end149.i, label %do.end141.i

do.end141.i:                                      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv134.i = zext i8 %194 to i32
  %conv132.i = zext i8 %192 to i32
  %195 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %196, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.58, i32 noundef %conv132.i, i32 noundef %conv134.i) #9
  br label %if.end105

if.end149.i:                                      ; preds = %if.end131.i
  %197 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %assoc_id.i, align 1
  %assoc_id151.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 11
  %199 = ptrtoint ptr %assoc_id151.i to i32
  call void @__asan_loadN_noabort(i32 %199, i32 2)
  %200 = load i16, ptr %assoc_id151.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %198, i16 %200)
  %cmp153.not.i = icmp eq i16 %198, %200
  br i1 %cmp153.not.i, label %if.end167.i, label %do.end159.i

do.end159.i:                                      ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv152.i = zext i16 %200 to i32
  %conv150.i = zext i16 %198 to i32
  %201 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %202, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.59, i32 noundef %conv150.i, i32 noundef %conv152.i) #9
  br label %if.end105

if.end167.i:                                      ; preds = %if.end149.i
  %203 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %flags, align 1
  %and.i207 = and i32 %204, 16777216
  %flags168.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 12
  %205 = ptrtoint ptr %flags168.i to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %flags168.i, align 1
  %and169.i = and i32 %206, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i207, i32 %and169.i)
  %cmp170.not.i = icmp eq i32 %and.i207, %and169.i
  br i1 %cmp170.not.i, label %if.end184.i, label %do.end176.i

do.end176.i:                                      ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #11
  %207 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %208, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.60, i32 noundef %and.i207, i32 noundef %and169.i) #9
  br label %if.end105

if.end184.i:                                      ; preds = %if.end167.i
  %209 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %filter_flags, align 1
  %and185.i = and i32 %210, 536870912
  call void @__sanitizer_cov_trace_cmp4(i32 %and185.i, i32 %128)
  %cmp188.not.i = icmp eq i32 %and185.i, %128
  br i1 %cmp188.not.i, label %if.then90, label %do.end194.i

do.end194.i:                                      ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %212, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_full_rxon_required, ptr noundef nonnull @.str.61, i32 noundef %and185.i, i32 noundef %128) #9
  br label %if.end105

if.then90:                                        ; preds = %if.end184.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rxon_assoc.i) #9
  %213 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 1
  %214 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 2
  %215 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 3
  %216 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 4
  %217 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 5
  %218 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 6
  %219 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 7
  %220 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 8
  %221 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 9
  %222 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 10
  %223 = getelementptr inbounds %struct.iwl_rxon_assoc_cmd, ptr %rxon_assoc.i, i32 0, i32 11
  %224 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %flags, align 1
  %226 = ptrtoint ptr %flags168.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %flags168.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %227)
  %cmp.i209 = icmp eq i32 %225, %227
  br i1 %cmp.i209, label %land.lhs.true.i211, label %if.then90.iwlagn_send_rxon_assoc.exit_crit_edge

if.then90.iwlagn_send_rxon_assoc.exit_crit_edge:  ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true.i211:                               ; preds = %if.then90
  %228 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %filter_flags, align 1
  %230 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %filter_flags.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %231)
  %cmp3.i = icmp eq i32 %229, %231
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i211.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true.i211.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i211
  %232 = ptrtoint ptr %cck_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %cck_basic_rates.i, align 1
  %cck_basic_rates5.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 10
  %234 = ptrtoint ptr %cck_basic_rates5.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %cck_basic_rates5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %233, i8 %235)
  %cmp7.i = icmp eq i8 %233, %235
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true4.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true4.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true9.i:                                 ; preds = %land.lhs.true4.i
  %236 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ofdm_ht_single_stream_basic_rates.i, align 1
  %238 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates97.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %ofdm_ht_single_stream_basic_rates97.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %237, i8 %239)
  %cmp13.i = icmp eq i8 %237, %239
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true9.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true9.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true15.i:                                ; preds = %land.lhs.true9.i
  %240 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %ofdm_ht_dual_stream_basic_rates.i, align 1
  %242 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates115.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %ofdm_ht_dual_stream_basic_rates115.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %241, i8 %243)
  %cmp19.i = icmp eq i8 %241, %243
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true15.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true15.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true21.i:                                ; preds = %land.lhs.true15.i
  %244 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %ofdm_ht_triple_stream_basic_rates.i, align 1
  %246 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates133.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %ofdm_ht_triple_stream_basic_rates133.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %245, i8 %247)
  %cmp25.i = icmp eq i8 %245, %247
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true21.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true21.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true27.i:                                ; preds = %land.lhs.true21.i
  %acquisition_data.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 19
  %248 = ptrtoint ptr %acquisition_data.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 2)
  %249 = load i16, ptr %acquisition_data.i, align 1
  %acquisition_data29.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 19
  %250 = ptrtoint ptr %acquisition_data29.i to i32
  call void @__asan_loadN_noabort(i32 %250, i32 2)
  %251 = load i16, ptr %acquisition_data29.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %249, i16 %251)
  %cmp31.i216 = icmp eq i16 %249, %251
  br i1 %cmp31.i216, label %land.lhs.true33.i, label %land.lhs.true27.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true27.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true33.i:                                ; preds = %land.lhs.true27.i
  %rx_chain.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 8
  %252 = ptrtoint ptr %rx_chain.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %rx_chain.i, align 1
  %rx_chain35.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 8
  %254 = ptrtoint ptr %rx_chain35.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 2)
  %255 = load i16, ptr %rx_chain35.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %253, i16 %255)
  %cmp37.i = icmp eq i16 %253, %255
  br i1 %cmp37.i, label %land.lhs.true39.i, label %land.lhs.true33.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true33.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

land.lhs.true39.i:                                ; preds = %land.lhs.true33.i
  %256 = ptrtoint ptr %ofdm_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %ofdm_basic_rates.i, align 1
  %ofdm_basic_rates41.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 9
  %258 = ptrtoint ptr %ofdm_basic_rates41.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %ofdm_basic_rates41.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %257, i8 %259)
  %cmp43.i = icmp eq i8 %257, %259
  br i1 %cmp43.i, label %iwlagn_send_rxon_assoc.exit.thread, label %land.lhs.true39.i.iwlagn_send_rxon_assoc.exit_crit_edge

land.lhs.true39.i.iwlagn_send_rxon_assoc.exit_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_send_rxon_assoc.exit

iwlagn_send_rxon_assoc.exit.thread:               ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #11
  %260 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %261, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_send_rxon_assoc, ptr noundef nonnull @.str.62) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rxon_assoc.i) #9
  br label %if.end101

iwlagn_send_rxon_assoc.exit:                      ; preds = %land.lhs.true39.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true33.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true27.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true21.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true15.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true9.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true4.i.iwlagn_send_rxon_assoc.exit_crit_edge, %land.lhs.true.i211.iwlagn_send_rxon_assoc.exit_crit_edge, %if.then90.iwlagn_send_rxon_assoc.exit_crit_edge
  %262 = ptrtoint ptr %rxon_assoc.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %225, ptr %rxon_assoc.i, align 4
  %263 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %filter_flags, align 2
  %265 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %213, align 4
  %266 = ptrtoint ptr %ofdm_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %ofdm_basic_rates.i, align 2
  %268 = ptrtoint ptr %214 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %214, align 4
  %269 = ptrtoint ptr %cck_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %cck_basic_rates.i, align 1
  %271 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %215, align 1
  %272 = ptrtoint ptr %216 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 0, ptr %216, align 2
  %273 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %220, align 1
  %274 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 0, ptr %223, align 4
  %275 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %ofdm_ht_single_stream_basic_rates.i, align 2
  %277 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %217, align 4
  %278 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ofdm_ht_dual_stream_basic_rates.i, align 1
  %280 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %218, align 1
  %rx_chain67.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 8
  %281 = ptrtoint ptr %rx_chain67.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %rx_chain67.i, align 2
  %283 = ptrtoint ptr %221 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 %282, ptr %221, align 4
  %284 = ptrtoint ptr %ofdm_ht_triple_stream_basic_rates.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %ofdm_ht_triple_stream_basic_rates.i, align 2
  %286 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %285, ptr %219, align 2
  %acquisition_data72.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 19
  %287 = ptrtoint ptr %acquisition_data72.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %acquisition_data72.i, align 2
  %289 = ptrtoint ptr %222 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %288, ptr %222, align 2
  %rxon_assoc_cmd.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 21
  %290 = ptrtoint ptr %rxon_assoc_cmd.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %rxon_assoc_cmd.i, align 1
  %call.i220 = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %291, i32 noundef 1, i16 noundef zeroext 24, ptr noundef nonnull %rxon_assoc.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rxon_assoc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool92.not = icmp eq i32 %call.i220, 0
  br i1 %tobool92.not, label %iwlagn_send_rxon_assoc.exit.if.end101_crit_edge, label %do.end97

iwlagn_send_rxon_assoc.exit.if.end101_crit_edge:  ; preds = %iwlagn_send_rxon_assoc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

do.end97:                                         ; preds = %iwlagn_send_rxon_assoc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %292 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %293, i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %call.i220) #9
  br label %cleanup

if.end101:                                        ; preds = %iwlagn_send_rxon_assoc.exit.if.end101_crit_edge, %iwlagn_send_rxon_assoc.exit.thread
  %294 = call ptr @memcpy(ptr %active1, ptr %staging, i32 50)
  %tx_power_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 117
  %295 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %tx_power_next, align 1
  %call103 = call fastcc i32 @iwl_set_tx_power(ptr noundef %priv, i8 noundef signext %296, i1 noundef zeroext false)
  %call104 = call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext true) #9
  br label %cleanup

if.end105:                                        ; preds = %do.end194.i, %do.end176.i, %do.end159.i, %do.end141.i, %do.end123.i, %do.end105.i, %do.end87.i204, %do.end69.i, %do.end51.i, %do.end39.i, %do.end26.i, %do.end13.i, %do.end.i198
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %297 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool106.not.not = icmp eq i32 %297, 0
  %298 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %filter_flags, align 1
  %and.i224 = and i32 %299, -134217729
  %masksel.i = select i1 %tobool106.not.not, i32 0, i32 134217728
  %or.sink.i = or i32 %and.i224, %masksel.i
  store i32 %or.sink.i, ptr %filter_flags, align 1
  %300 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev.i, align 4
  %cond = select i1 %tobool.not, ptr @.str.22, ptr @.str.21
  %302 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %channel.i, align 2
  %304 = call i16 @llvm.bswap.i16(i16 %303)
  %conv118 = zext i16 %304 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %301, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_commit_rxon, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %conv118, ptr noundef %bssid_addr.i) #9
  %305 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %ctxid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp.i225 = icmp eq i32 %306, 0
  br i1 %cmp.i225, label %if.then.i228, label %if.else.i229

if.then.i228:                                     ; preds = %if.end105
  %307 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %307, i32 4)
  %308 = load i32, ptr %filter_flags, align 1
  %and.i.i = and i32 %308, -536870913
  store i32 %and.i.i, ptr %filter_flags, align 1
  %rxon_cmd.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 20
  %309 = ptrtoint ptr %rxon_cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %rxon_cmd.i.i, align 2
  %call.i.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %310, i32 noundef 0, i16 noundef zeroext 50, ptr noundef %staging) #9
  %311 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %311, i32 4)
  store i32 %308, ptr %filter_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i228.if.end20.i_crit_edge, label %do.body.i.i

if.then.i228.if.end20.i_crit_edge:                ; preds = %if.then.i228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

do.body.i.i:                                      ; preds = %if.then.i228
  %312 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i = and i32 %313, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  %314 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %dev.i, align 4
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.end17.thread82.i_crit_edge, label %if.else.i.i

do.body.i.i.if.end17.thread82.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.thread82.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %316 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i.i.i = and i32 %316, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i = select i1 %tobool.i.not.i.i, i32 2, i32 1
  br label %if.end17.thread82.i

if.end17.thread82.i:                              ; preds = %if.else.i.i, %do.body.i.i.if.end17.thread82.i_crit_edge
  %.sink.i.i = phi i32 [ %cond.i.i, %if.else.i.i ], [ 0, %do.body.i.i.if.end17.thread82.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %315, i32 noundef %.sink.i.i, ptr noundef nonnull @.str.68, i32 noundef %call.i.i) #9
  br label %cleanup

if.else.i229:                                     ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %disable_wait.i.i) #9
  %317 = call ptr @memset(ptr %disable_wait.i.i, i32 255, i32 32)
  %318 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %318, i32 4)
  %319 = load i32, ptr %filter_flags, align 1
  %dev_type.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15, i32 6
  %320 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %dev_type.i.i, align 1
  %notif_wait.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 21
  call void @iwl_init_notification_wait(ptr noundef %notif_wait.i.i, ptr noundef nonnull %disable_wait.i.i, ptr noundef nonnull @iwlagn_disable_pan.deactivate_cmd, i32 noundef 1, ptr noundef null, ptr noundef null) #9
  %322 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %filter_flags, align 1
  %and.i68.i = and i32 %323, -536870913
  store i32 %and.i68.i, ptr %filter_flags, align 1
  %324 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 9, ptr %dev_type.i.i, align 1
  %rxon_cmd.i69.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 20
  %325 = ptrtoint ptr %rxon_cmd.i69.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %rxon_cmd.i69.i, align 2
  %call.i70.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %326, i32 noundef 0, i16 noundef zeroext 50, ptr noundef %staging) #9
  %327 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %327, i32 4)
  store i32 %319, ptr %filter_flags, align 1
  %328 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %321, ptr %dev_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %tobool.not.i71.i = icmp eq i32 %call.i70.i, 0
  br i1 %tobool.not.i71.i, label %if.else.i73.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i229
  call void @__sanitizer_cov_trace_pc() #11
  %329 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %330, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %call.i70.i) #9
  call void @iwl_remove_notification(ptr noundef %notif_wait.i.i, ptr noundef nonnull %disable_wait.i.i) #9
  br label %iwlagn_disable_pan.exit.thread.i

if.else.i73.i:                                    ; preds = %if.else.i229
  %call10.i.i = call i32 @iwl_wait_notification(ptr noundef %notif_wait.i.i, ptr noundef nonnull %disable_wait.i.i, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i230, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.else.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  %331 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %332, i32 noundef 0, ptr noundef nonnull @.str.70) #9
  br label %iwlagn_disable_pan.exit.thread.i

iwlagn_disable_pan.exit.thread.i:                 ; preds = %do.end16.i.i, %do.end.i.i
  %ret.0.i.ph.i = phi i32 [ %call10.i.i, %do.end16.i.i ], [ %call.i70.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %disable_wait.i.i) #9
  br label %cleanup

if.end.i230:                                      ; preds = %if.else.i73.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %disable_wait.i.i) #9
  %333 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ctx, align 4
  %tobool5.not.i = icmp eq ptr %334, null
  br i1 %tobool5.not.i, label %if.end.i230.if.end20.i_crit_edge, label %if.then6.i

if.end.i230.if.end20.i_crit_edge:                 ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then6.i:                                       ; preds = %if.end.i230
  %call7.i = call fastcc i32 @iwl_send_rxon_timing(ptr noundef %priv, ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end17.i233, label %do.end.i232

do.end.i232:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %335 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %336, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %call7.i) #9
  br label %cleanup

if.end17.i233:                                    ; preds = %if.then6.i
  %337 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %filter_flags, align 1
  %and.i75.i = and i32 %338, -536870913
  store i32 %and.i75.i, ptr %filter_flags, align 1
  %339 = ptrtoint ptr %rxon_cmd.i69.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %rxon_cmd.i69.i, align 2
  %call.i77.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %340, i32 noundef 0, i16 noundef zeroext 50, ptr noundef %staging) #9
  %341 = ptrtoint ptr %filter_flags to i32
  call void @__asan_storeN_noabort(i32 %341, i32 4)
  store i32 %338, ptr %filter_flags, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool18.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool18.not.i, label %if.end17.i233.if.end20.i_crit_edge, label %if.end17.i233.cleanup_crit_edge

if.end17.i233.cleanup_crit_edge:                  ; preds = %if.end17.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17.i233.if.end20.i_crit_edge:               ; preds = %if.end17.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end17.i233.if.end20.i_crit_edge, %if.end.i230.if.end20.i_crit_edge, %if.then.i228.if.end20.i_crit_edge
  call void @iwl_clear_ucode_stations(ptr noundef %priv, ptr noundef %ctx) #9
  %call21.i = call i32 @iwl_update_bcast_station(ptr noundef %priv, ptr noundef %ctx) #9
  call void @iwl_restore_stations(ptr noundef %priv, ptr noundef %ctx) #9
  %call22.i234 = call i32 @iwl_restore_default_wep_keys(ptr noundef %priv, ptr noundef %ctx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i234)
  %tobool23.not.i235 = icmp eq i32 %call22.i234, 0
  br i1 %tobool23.not.i235, label %if.end125, label %do.end28.i237

do.end28.i237:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %342 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %343, i32 noundef 0, ptr noundef nonnull @.str.67, i32 noundef %call22.i234) #9
  br label %cleanup

if.end125:                                        ; preds = %if.end20.i
  %344 = call ptr @memcpy(ptr %active1, ptr %staging, i32 50)
  %call126 = call i32 @iwlagn_set_pan_params(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp ne i32 %call126, 0
  %brmerge = select i1 %tobool127.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end125.cleanup_crit_edge, label %if.then131

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then131:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  %call132 = call fastcc i32 @iwlagn_rxon_connect(ptr noundef %priv, ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %if.end125.cleanup_crit_edge, %do.end28.i237, %if.end17.i233.cleanup_crit_edge, %do.end.i232, %iwlagn_disable_pan.exit.thread.i, %if.end17.thread82.i, %if.end101, %do.end97, %do.end66, %do.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end66 ], [ %call132, %if.then131 ], [ %call.i220, %do.end97 ], [ 0, %if.end101 ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %do.end34.cleanup_crit_edge ], [ %call126, %if.end125.cleanup_crit_edge ], [ %call.i.i, %if.end17.thread82.i ], [ %ret.0.i.ph.i, %iwlagn_disable_pan.exit.thread.i ], [ %call.i77.i, %if.end17.i233.cleanup_crit_edge ], [ %call7.i, %do.end.i232 ], [ %call22.i234, %do.end28.i237 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_set_tx_power(ptr noundef %priv, i8 noundef signext %tx_power, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %calib_disabled = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 127
  %0 = ptrtoint ptr %calib_disabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %calib_disabled, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %do.body.if.end18_crit_edge, label %land.rhs

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end18_crit_edge, !prof !189

land.rhs.if.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end, %land.rhs.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %tx_power_user_lmt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 116
  %3 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_power_user_lmt, align 8
  %conv27 = sext i8 %tx_power to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %tx_power)
  %cmp28 = icmp ne i8 %4, %tx_power
  %brmerge = or i1 %cmp28, %force
  br i1 %brmerge, label %if.end32, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_power)
  %cmp34 = icmp slt i8 %tx_power, 0
  br i1 %cmp34, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %6, ptr noundef nonnull @.str.63, i32 noundef %conv27, i32 noundef 0) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %7 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nvm_data, align 8
  %max_tx_pwr_half_dbm = getelementptr inbounds %struct.iwl_nvm_data, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %max_tx_pwr_half_dbm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_tx_pwr_half_dbm, align 4
  %11 = sext i8 %10 to i16
  %div.lhs.trunc = add nsw i16 %11, 1
  %div125 = sdiv i16 %div.lhs.trunc, 2
  %12 = zext i8 %tx_power to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %div125, i16 %12)
  %cmp47 = icmp slt i16 %div125, %12
  br i1 %cmp47, label %do.end53, label %if.end61

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %conv46 = sext i8 %10 to i32
  %dev54 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %13 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %14, ptr noundef nonnull @.str.64, i32 noundef %conv27, i32 noundef %conv46) #9
  br label %cleanup

if.end61:                                         ; preds = %if.end44
  %status.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %15 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end61
  %17 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status.i.i, align 4
  %19 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %status.i.i, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool63.not.not = icmp eq i32 %22, 0
  br i1 %tobool63.not.not, label %if.end65, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %iwl_is_ready_rf.exit
  %tx_power_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 117
  %23 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %tx_power, ptr %tx_power_next, align 1
  %24 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status.i.i, align 4
  %26 = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool67.not = icmp eq i32 %26, 0
  br i1 %tobool67.not, label %lor.rhs, label %land.lhs.true73.critedge

lor.rhs:                                          ; preds = %if.end65
  %active = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14
  %staging = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(50) %active, ptr noundef dereferenceable(50) %staging, i32 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool69.not126 = icmp eq i32 %bcmp, 0
  %brmerge122 = or i1 %tobool69.not126, %force
  br i1 %brmerge122, label %lor.rhs.if.end83_crit_edge, label %lor.rhs.do.end79_crit_edge

lor.rhs.do.end79_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

lor.rhs.if.end83_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

land.lhs.true73.critedge:                         ; preds = %if.end65
  br i1 %force, label %land.lhs.true73.critedge.if.end83_crit_edge, label %land.lhs.true73.critedge.do.end79_crit_edge

land.lhs.true73.critedge.do.end79_crit_edge:      ; preds = %land.lhs.true73.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

land.lhs.true73.critedge.if.end83_crit_edge:      ; preds = %land.lhs.true73.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end79:                                         ; preds = %land.lhs.true73.critedge.do.end79_crit_edge, %lor.rhs.do.end79_crit_edge
  %dev80 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev80, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_tx_power, ptr noundef nonnull @.str.65) #9
  br label %cleanup

if.end83:                                         ; preds = %land.lhs.true73.critedge.if.end83_crit_edge, %lor.rhs.if.end83_crit_edge
  %29 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %tx_power, ptr %tx_power_user_lmt, align 8
  %call86 = tail call i32 @iwlagn_send_tx_power(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %if.then88

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then88:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %4, ptr %tx_power_user_lmt, align 8
  %31 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %4, ptr %tx_power_next, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end83.cleanup_crit_edge, %do.end79, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %do.end53, %do.end40, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end40 ], [ -22, %do.end53 ], [ 0, %do.end79 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ -5, %iwl_is_ready_rf.exit.cleanup_crit_edge ], [ %call86, %if.then88 ], [ 0, %if.end83.cleanup_crit_edge ], [ -5, %if.end61.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwlagn_rxon_connect(ptr noundef %priv, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active1 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctxid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @iwl_send_rxon_timing(ptr noundef %priv, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.66, i32 noundef %call) #9
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call fastcc void @iwlagn_update_qos(ptr noundef %priv, ptr noundef %ctx)
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end6.if.end23_crit_edge, label %land.lhs.true

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp9 = icmp eq i32 %7, 3
  br i1 %cmp9, label %if.then10, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then10.if.end.i_crit_edge, label %land.rhs.i

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then10
  %dep_map.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !189

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then10.if.end.i_crit_edge
  %beacon_skb.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 106
  %9 = ptrtoint ptr %beacon_skb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %beacon_skb.i, align 8
  tail call void @consume_skb(ptr noundef %10) #9
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %call.i37.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %12, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #9
  %13 = ptrtoint ptr %beacon_skb.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i37.i, ptr %beacon_skb.i, align 8
  %tobool27.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool27.not.i, label %if.end.i.do.end18_crit_edge, label %iwlagn_update_beacon.exit

if.end.i.do.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

iwlagn_update_beacon.exit:                        ; preds = %if.end.i
  %call30.i = tail call i32 @iwlagn_send_beacon_cmd(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool13.not = icmp eq i32 %call30.i, 0
  br i1 %tobool13.not, label %iwlagn_update_beacon.exit.if.end23_crit_edge, label %iwlagn_update_beacon.exit.do.end18_crit_edge

iwlagn_update_beacon.exit.do.end18_crit_edge:     ; preds = %iwlagn_update_beacon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

iwlagn_update_beacon.exit.if.end23_crit_edge:     ; preds = %iwlagn_update_beacon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

do.end18:                                         ; preds = %iwlagn_update_beacon.exit.do.end18_crit_edge, %if.end.i.do.end18_crit_edge
  %retval.0.i122 = phi i32 [ %call30.i, %iwlagn_update_beacon.exit.do.end18_crit_edge ], [ -12, %if.end.i.do.end18_crit_edge ]
  %dev19 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i122) #9
  br label %cleanup

if.end23:                                         ; preds = %iwlagn_update_beacon.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  %start_calib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 52
  %16 = ptrtoint ptr %start_calib to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %start_calib, align 2
  %rxon_cmd = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 20
  %17 = ptrtoint ptr %rxon_cmd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rxon_cmd, align 2
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 15
  %call24 = tail call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %18, i32 noundef 0, i16 noundef zeroext 50, ptr noundef %staging) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end34, label %do.end30

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %dev31 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev31, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.73, i32 noundef %call24) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end23
  %21 = call ptr @memcpy(ptr %active1, ptr %staging, i32 50)
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %tobool37.not = icmp eq ptr %23, null
  br i1 %tobool37.not, label %if.end34.if.end55_crit_edge, label %land.lhs.true38

if.end34.if.end55_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true38:                                  ; preds = %if.end34
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp41 = icmp eq i32 %25, 1
  br i1 %cmp41, label %if.then42, label %land.lhs.true38.if.end55_crit_edge

land.lhs.true38.if.end55_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then42:                                        ; preds = %land.lhs.true38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i105 = icmp eq i32 %26, 0
  br i1 %tobool.not.i105, label %if.then42.if.end.i115_crit_edge, label %land.rhs.i109

if.then42.if.end.i115_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i115

land.rhs.i109:                                    ; preds = %if.then42
  %dep_map.i106 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i.i107 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i106, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp.not.i108 = icmp eq i32 %call.i.i107, 0
  br i1 %cmp.not.i108, label %do.end.i110, label %land.rhs.i109.if.end.i115_crit_edge, !prof !189

land.rhs.i109.if.end.i115_crit_edge:              ; preds = %land.rhs.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i115

do.end.i110:                                      ; preds = %land.rhs.i109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i115

if.end.i115:                                      ; preds = %do.end.i110, %land.rhs.i109.if.end.i115_crit_edge, %if.then42.if.end.i115_crit_edge
  %beacon_skb.i111 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 106
  %27 = ptrtoint ptr %beacon_skb.i111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %beacon_skb.i111, align 8
  tail call void @consume_skb(ptr noundef %28) #9
  %hw.i112 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %29 = ptrtoint ptr %hw.i112 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw.i112, align 4
  %call.i37.i113 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %30, ptr noundef nonnull %23, ptr noundef null, ptr noundef null) #9
  %31 = ptrtoint ptr %beacon_skb.i111 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i37.i113, ptr %beacon_skb.i111, align 8
  %tobool27.not.i114 = icmp eq ptr %call.i37.i113, null
  br i1 %tobool27.not.i114, label %if.end.i115.do.end50_crit_edge, label %iwlagn_update_beacon.exit119

if.end.i115.do.end50_crit_edge:                   ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

iwlagn_update_beacon.exit119:                     ; preds = %if.end.i115
  %call30.i116 = tail call i32 @iwlagn_send_beacon_cmd(ptr noundef %priv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i116)
  %tobool45.not = icmp eq i32 %call30.i116, 0
  br i1 %tobool45.not, label %iwlagn_update_beacon.exit119.if.end55_crit_edge, label %iwlagn_update_beacon.exit119.do.end50_crit_edge

iwlagn_update_beacon.exit119.do.end50_crit_edge:  ; preds = %iwlagn_update_beacon.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

iwlagn_update_beacon.exit119.if.end55_crit_edge:  ; preds = %iwlagn_update_beacon.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end50:                                         ; preds = %iwlagn_update_beacon.exit119.do.end50_crit_edge, %if.end.i115.do.end50_crit_edge
  %dev51 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %32 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev51, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %33, i32 noundef 0, ptr noundef nonnull @.str.74) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end50, %iwlagn_update_beacon.exit119.if.end55_crit_edge, %land.lhs.true38.if.end55_crit_edge, %if.end34.if.end55_crit_edge
  tail call void @iwl_init_sensitivity(ptr noundef %priv) #9
  %tx_power_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 117
  %34 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tx_power_next, align 1
  %call56 = tail call fastcc i32 @iwl_set_tx_power(ptr noundef %priv, i8 noundef signext %35, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.cleanup_crit_edge, label %do.end62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %dev63 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %36 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev63, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.75, i32 noundef %call56) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.end55.cleanup_crit_edge, %do.end30, %do.end18, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i122, %do.end18 ], [ %call24, %do.end30 ], [ %call56, %do.end62 ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwlagn_config_ht40(ptr nocapture noundef readonly %conf, ptr nocapture noundef writeonly %ctx) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %conf_is_ht40_minus.exit, label %entry.if.else8_crit_edge

entry.if.else8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8

conf_is_ht40_minus.exit:                          ; preds = %entry
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %center_freq1.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %center_freq1.i, align 4
  %4 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef.i, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp3.i = icmp ult i32 %3, %7
  br i1 %cmp3.i, label %conf_is_ht40_minus.exit.if.end13_crit_edge, label %conf_is_ht40_plus.exit

conf_is_ht40_minus.exit.if.end13_crit_edge:       ; preds = %conf_is_ht40_minus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

conf_is_ht40_plus.exit:                           ; preds = %conf_is_ht40_minus.exit
  %8 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %center_freq1.i, align 4
  %10 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef.i, align 4
  %center_freq.i24 = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %center_freq.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %center_freq.i24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp3.i25 = icmp ugt i32 %9, %13
  br i1 %cmp3.i25, label %conf_is_ht40_plus.exit.if.end13_crit_edge, label %conf_is_ht40_plus.exit.if.else8_crit_edge

conf_is_ht40_plus.exit.if.else8_crit_edge:        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8

conf_is_ht40_plus.exit.if.end13_crit_edge:        ; preds = %conf_is_ht40_plus.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else8:                                         ; preds = %conf_is_ht40_plus.exit.if.else8_crit_edge, %entry.if.else8_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.else8, %conf_is_ht40_plus.exit.if.end13_crit_edge, %conf_is_ht40_minus.exit.if.end13_crit_edge
  %.sink27 = phi i8 [ 0, %if.else8 ], [ 3, %conf_is_ht40_minus.exit.if.end13_crit_edge ], [ 1, %conf_is_ht40_plus.exit.if.end13_crit_edge ]
  %.sink = phi i8 [ 0, %if.else8 ], [ 1, %conf_is_ht40_minus.exit.if.end13_crit_edge ], [ 1, %conf_is_ht40_plus.exit.if.end13_crit_edge ]
  %extension_chan_offset5 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 4
  %14 = ptrtoint ptr %extension_chan_offset5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink27, ptr %extension_chan_offset5, align 4
  %is_40mhz7 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 3
  %15 = ptrtoint ptr %is_40mhz7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %is_40mhz7, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwlagn_mac_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chandef, align 4
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_config, ptr noundef nonnull @.str.23, i32 noundef %changed) #9
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %status = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.out.sink.split_crit_edge, !prof !190

entry.out.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.out.sink.split_crit_edge, label %iwl_is_ready.exit

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

iwl_is_ready.exit:                                ; preds = %if.end
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not.not = icmp eq i32 %14, 0
  br i1 %tobool16.not.not, label %if.end25, label %iwl_is_ready.exit.out.sink.split_crit_edge

iwl_is_ready.exit.out.sink.split_crit_edge:       ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end25:                                         ; preds = %iwl_is_ready.exit
  %and = and i32 %changed, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.if.end34_crit_edge, label %if.then27

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then27:                                        ; preds = %if.end25
  %smps_mode = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 9
  %15 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smps_mode, align 4
  %smps = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 900
  %17 = ptrtoint ptr %smps to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %smps, align 4
  %contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx29 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp235 = icmp ult ptr %contexts, %arrayidx29
  br i1 %cmp235, label %for.body.lr.ph, label %if.then27.if.end34_crit_edge

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.body.lr.ph:                                   ; preds = %if.then27
  %valid_contexts = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.0236 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %19 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0236, i32 0, i32 7
  %20 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %21
  %and30 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %for.body.for.inc_crit_edge, label %if.then32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwlagn_set_rxon_chain(ptr noundef %op_mode_specific, ptr noundef %ctx.0236) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.0236, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end34_crit_edge

for.inc.if.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end34:                                         ; preds = %for.inc.if.end34_crit_edge, %if.then27.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %and35 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end92_crit_edge, label %if.then37

if.end34.if.end92_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then37:                                        ; preds = %if.end34
  %contexts38 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx42 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp43238 = icmp ult ptr %contexts38, %arrayidx42
  br i1 %cmp43238, label %for.body45.lr.ph, label %if.then37.for.end90_crit_edge

if.then37.for.end90_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.body45.lr.ph:                                 ; preds = %if.then37
  %valid_contexts46 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 1
  %center_freq1.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7, i32 2
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %3, i32 0, i32 3
  %band5.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 93
  br label %for.body45

for.body45:                                       ; preds = %for.inc88.for.body45_crit_edge, %for.body45.lr.ph
  %ctx.1239 = phi ptr [ %contexts38, %for.body45.lr.ph ], [ %incdec.ptr89, %for.inc88.for.body45_crit_edge ]
  %22 = ptrtoint ptr %valid_contexts46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %valid_contexts46, align 4
  %conv47 = zext i8 %23 to i32
  %ctxid48 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 7
  %24 = ptrtoint ptr %ctxid48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctxid48, align 4
  %shl49 = shl nuw i32 1, %25
  %and50 = and i32 %shl49, %conv47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %for.body45.for.inc88_crit_edge, label %if.then52

for.body45.for.inc88_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88

if.then52:                                        ; preds = %for.body45
  %enabled = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 29, i32 2
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 2, !range !188
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %30 = icmp ugt i32 %29, 7
  %switch.cast = trunc i32 %29 to i8
  %switch.downshift = lshr i8 62, %switch.cast
  %31 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %switch.masked = icmp ne i8 %31, 0
  %32 = select i1 %30, i1 true, i1 %switch.masked
  %33 = zext i1 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %33)
  %cmp57.not = icmp eq i8 %27, %33
  br i1 %cmp57.not, label %if.end63thread-pre-split, label %if.then59

if.then59:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %34 = icmp ugt i32 %29, 7
  %switch.cast246 = trunc i32 %29 to i8
  %switch.downshift248 = lshr i8 62, %switch.cast246
  %35 = and i8 %switch.downshift248, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %switch.masked249 = icmp ne i8 %35, 0
  %36 = select i1 %34, i1 true, i1 %switch.masked249
  %frombool = zext i1 %36 to i8
  %37 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %enabled, align 2
  br label %if.end63

if.end63thread-pre-split:                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %38)
  %.pr = load i8, ptr %enabled, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.end63thread-pre-split, %if.then59
  %39 = phi i8 [ %.pr, %if.end63thread-pre-split ], [ %frombool, %if.then59 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool66.not = icmp eq i8 %39, 0
  %is_40mhz75 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 29, i32 3
  br i1 %tobool66.not, label %if.end63.if.end76.sink.split_crit_edge, label %if.then67

if.end63.if.end76.sink.split_crit_edge:           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.sink.split

if.then67:                                        ; preds = %if.end63
  %40 = ptrtoint ptr %is_40mhz75 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_40mhz75, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool69.not = icmp eq i8 %41, 0
  br i1 %tobool69.not, label %if.then67.if.then72_crit_edge, label %lor.lhs.false

if.then67.if.then72_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72

lor.lhs.false:                                    ; preds = %if.then67
  %filter_flags.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 14, i32 13
  %42 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter_flags.i, align 4
  %44 = and i32 %43, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool71.not = icmp eq i32 %44, 0
  br i1 %tobool71.not, label %lor.lhs.false.if.then72_crit_edge, label %lor.lhs.false.if.end76_crit_edge

lor.lhs.false.if.end76_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %if.then67.if.then72_crit_edge
  %45 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i.i = icmp eq i32 %46, 2
  br i1 %cmp.i.i, label %conf_is_ht40_minus.exit.i, label %if.then72.if.else8.i_crit_edge

if.then72.if.else8.i_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

conf_is_ht40_minus.exit.i:                        ; preds = %if.then72
  %47 = ptrtoint ptr %center_freq1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %center_freq1.i.i, align 4
  %49 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chandef, align 4
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %center_freq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %52)
  %cmp3.i.i = icmp ult i32 %48, %52
  br i1 %cmp3.i.i, label %conf_is_ht40_minus.exit.i.iwlagn_config_ht40.exit_crit_edge, label %conf_is_ht40_plus.exit.i

conf_is_ht40_minus.exit.i.iwlagn_config_ht40.exit_crit_edge: ; preds = %conf_is_ht40_minus.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_config_ht40.exit

conf_is_ht40_plus.exit.i:                         ; preds = %conf_is_ht40_minus.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %52)
  %cmp3.i25.i = icmp ugt i32 %48, %52
  br i1 %cmp3.i25.i, label %conf_is_ht40_plus.exit.i.iwlagn_config_ht40.exit_crit_edge, label %conf_is_ht40_plus.exit.i.if.else8.i_crit_edge

conf_is_ht40_plus.exit.i.if.else8.i_crit_edge:    ; preds = %conf_is_ht40_plus.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

conf_is_ht40_plus.exit.i.iwlagn_config_ht40.exit_crit_edge: ; preds = %conf_is_ht40_plus.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_config_ht40.exit

if.else8.i:                                       ; preds = %conf_is_ht40_plus.exit.i.if.else8.i_crit_edge, %if.then72.if.else8.i_crit_edge
  br label %iwlagn_config_ht40.exit

iwlagn_config_ht40.exit:                          ; preds = %if.else8.i, %conf_is_ht40_plus.exit.i.iwlagn_config_ht40.exit_crit_edge, %conf_is_ht40_minus.exit.i.iwlagn_config_ht40.exit_crit_edge
  %.sink27.i = phi i8 [ 0, %if.else8.i ], [ 3, %conf_is_ht40_minus.exit.i.iwlagn_config_ht40.exit_crit_edge ], [ 1, %conf_is_ht40_plus.exit.i.iwlagn_config_ht40.exit_crit_edge ]
  %.sink.i = phi i8 [ 0, %if.else8.i ], [ 1, %conf_is_ht40_minus.exit.i.iwlagn_config_ht40.exit_crit_edge ], [ 1, %conf_is_ht40_plus.exit.i.iwlagn_config_ht40.exit_crit_edge ]
  %extension_chan_offset5.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 29, i32 4
  %53 = ptrtoint ptr %extension_chan_offset5.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink27.i, ptr %extension_chan_offset5.i, align 4
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %iwlagn_config_ht40.exit, %if.end63.if.end76.sink.split_crit_edge
  %.sink.i.sink = phi i8 [ %.sink.i, %iwlagn_config_ht40.exit ], [ 0, %if.end63.if.end76.sink.split_crit_edge ]
  %54 = ptrtoint ptr %is_40mhz75 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink.i.sink, ptr %is_40mhz75, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %lor.lhs.false.if.end76_crit_edge
  %protection = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 29, i32 1
  %55 = ptrtoint ptr %protection to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %protection, align 1
  %channel78 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 14
  %56 = ptrtoint ptr %channel78 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %channel78, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %59 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %hw_value, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp81.not = icmp eq i16 %58, %60
  br i1 %cmp81.not, label %if.end76.if.end85_crit_edge, label %if.then83

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 12
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %flags, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end76.if.end85_crit_edge
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %3, align 4
  %64 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %hw_value, align 2
  %66 = ptrtoint ptr %channel78 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %channel78, align 2
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %conv3.i = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %65)
  %cmp.i = icmp eq i16 %68, %65
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end85.if.end.i_crit_edge

if.end85.if.end.i_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end85
  %69 = ptrtoint ptr %band5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %band5.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %63)
  %cmp6.i = icmp eq i32 %70, %63
  br i1 %cmp6.i, label %land.lhs.true.i.iwl_set_rxon_channel.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.iwl_set_rxon_channel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_set_rxon_channel.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end85.if.end.i_crit_edge
  %71 = tail call i16 @llvm.bswap.i16(i16 %65) #9
  %72 = ptrtoint ptr %channel78 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %channel78, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp10.i = icmp eq i32 %63, 1
  %flags.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 12
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %flags.i, align 2
  %and.i228 = and i32 %74, -16777217
  %masksel.i = select i1 %cmp10.i, i32 0, i32 16777216
  %or.sink.i = or i32 %and.i228, %masksel.i
  store i32 %or.sink.i, ptr %flags.i, align 2
  %75 = ptrtoint ptr %band5.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %63, ptr %band5.i, align 8
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %77, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_rxon_channel, ptr noundef nonnull @.str.4, i32 noundef %conv3.i, i32 noundef %63) #9
  br label %iwl_set_rxon_channel.exit

iwl_set_rxon_channel.exit:                        ; preds = %if.end.i, %land.lhs.true.i.iwl_set_rxon_channel.exit_crit_edge
  tail call void @iwl_set_rxon_ht(ptr noundef %op_mode_specific, ptr undef)
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %3, align 4
  %80 = ptrtoint ptr %ctx.1239 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx.1239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i229 = icmp eq i32 %79, 1
  br i1 %cmp.i229, label %iwl_set_rxon_channel.exit.iwl_set_flags_for_band.exit_crit_edge, label %if.else.i

iwl_set_rxon_channel.exit.iwl_set_flags_for_band.exit_crit_edge: ; preds = %iwl_set_rxon_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_set_flags_for_band.exit

if.else.i:                                        ; preds = %iwl_set_rxon_channel.exit
  %tobool.not.i230 = icmp eq ptr %81, null
  br i1 %tobool.not.i230, label %if.else.i.if.else8.i232_crit_edge, label %land.lhs.true.i231

if.else.i.if.else8.i232_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i232

land.lhs.true.i231:                               ; preds = %if.else.i
  %use_short_slot.i = getelementptr inbounds %struct.ieee80211_vif, ptr %81, i32 0, i32 1, i32 16
  %82 = ptrtoint ptr %use_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %use_short_slot.i, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool3.not.i = icmp eq i8 %83, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i231.if.else8.i232_crit_edge, label %if.then4.i

land.lhs.true.i231.if.else8.i232_crit_edge:       ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i232

if.then4.i:                                       ; preds = %land.lhs.true.i231
  call void @__sanitizer_cov_trace_pc() #11
  %flags6.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 12
  %84 = ptrtoint ptr %flags6.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %flags6.i, align 2
  %or7.i = or i32 %85, 268435456
  store i32 %or7.i, ptr %flags6.i, align 2
  br label %iwl_set_flags_for_band.exit

if.else8.i232:                                    ; preds = %land.lhs.true.i231.if.else8.i232_crit_edge, %if.else.i.if.else8.i232_crit_edge
  %flags10.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 12
  %86 = ptrtoint ptr %flags10.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %flags10.i, align 2
  %and11.i = and i32 %87, -268435457
  store i32 %and11.i, ptr %flags10.i, align 2
  br label %iwl_set_flags_for_band.exit

iwl_set_flags_for_band.exit:                      ; preds = %if.else8.i232, %if.then4.i, %iwl_set_rxon_channel.exit.iwl_set_flags_for_band.exit_crit_edge
  %.sink30.i = phi i32 [ -385875969, %iwl_set_rxon_channel.exit.iwl_set_flags_for_band.exit_crit_edge ], [ -117440513, %if.else8.i232 ], [ -117440513, %if.then4.i ]
  %.sink.i233 = phi i32 [ 268435456, %iwl_set_rxon_channel.exit.iwl_set_flags_for_band.exit_crit_edge ], [ 83886080, %if.else8.i232 ], [ 83886080, %if.then4.i ]
  %flags13.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.1239, i32 0, i32 15, i32 12
  %88 = ptrtoint ptr %flags13.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %flags13.i, align 2
  %or17.i = and i32 %89, %.sink30.i
  %and20.i = or i32 %or17.i, %.sink.i233
  store i32 %and20.i, ptr %flags13.i, align 2
  br label %for.inc88

for.inc88:                                        ; preds = %iwl_set_flags_for_band.exit, %for.body45.for.inc88_crit_edge
  %incdec.ptr89 = getelementptr %struct.iwl_rxon_context, ptr %ctx.1239, i32 1
  %cmp43 = icmp ult ptr %incdec.ptr89, %arrayidx42
  br i1 %cmp43, label %for.inc88.for.body45_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.inc88.for.body45_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.then37.for.end90_crit_edge
  %call91 = tail call i32 @iwl_update_bcast_stations(ptr noundef %op_mode_specific) #9
  br label %if.end92

if.end92:                                         ; preds = %for.end90, %if.end34.if.end92_crit_edge
  %and93 = and i32 %changed, 272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end92.if.end107_crit_edge, label %if.then95

if.end92.if.end107_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then95:                                        ; preds = %if.end92
  %call96 = tail call i32 @iwl_power_update_mode(ptr noundef %op_mode_specific, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.if.end107_crit_edge, label %do.end102

if.then95.if.end107_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.end102:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %91, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_config, ptr noundef nonnull @.str.26) #9
  br label %if.end107

if.end107:                                        ; preds = %do.end102, %if.then95.if.end107_crit_edge, %if.end92.if.end107_crit_edge
  %ret.0 = phi i32 [ %call96, %do.end102 ], [ 0, %if.then95.if.end107_crit_edge ], [ 0, %if.end92.if.end107_crit_edge ]
  %and108 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end122_crit_edge, label %do.end114

if.end107.if.end122_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %tx_power_user_lmt = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2737
  %94 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tx_power_user_lmt, align 8
  %conv116 = sext i8 %95 to i32
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %96 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %power_level, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %93, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_config, ptr noundef nonnull @.str.27, i32 noundef %conv116, i32 noundef %97) #9
  %98 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %power_level, align 4
  %conv120 = trunc i32 %99 to i8
  %call121 = tail call fastcc i32 @iwl_set_tx_power(ptr noundef %op_mode_specific, i8 noundef signext %conv120, i1 noundef zeroext false)
  br label %if.end122

if.end122:                                        ; preds = %do.end114, %if.end107.if.end122_crit_edge
  %contexts123 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx127 = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp128242 = icmp ult ptr %contexts123, %arrayidx127
  br i1 %cmp128242, label %for.body130.lr.ph, label %if.end122.out_crit_edge

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body130.lr.ph:                                ; preds = %if.end122
  %valid_contexts131 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  br label %for.body130

for.body130:                                      ; preds = %for.inc145.for.body130_crit_edge, %for.body130.lr.ph
  %ctx.2243 = phi ptr [ %contexts123, %for.body130.lr.ph ], [ %incdec.ptr146, %for.inc145.for.body130_crit_edge ]
  %100 = ptrtoint ptr %valid_contexts131 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %valid_contexts131, align 4
  %conv132 = zext i8 %101 to i32
  %ctxid133 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.2243, i32 0, i32 7
  %102 = ptrtoint ptr %ctxid133 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctxid133, align 4
  %shl134 = shl nuw i32 1, %103
  %and135 = and i32 %shl134, %conv132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %for.body130.for.inc145_crit_edge, label %if.then137

for.body130.for.inc145_crit_edge:                 ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

if.then137:                                       ; preds = %for.body130
  %staging138 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.2243, i32 0, i32 15
  %active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.2243, i32 0, i32 14
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(50) %staging138, ptr noundef dereferenceable(50) %active, i32 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool140.not = icmp eq i32 %bcmp, 0
  br i1 %tobool140.not, label %if.then137.for.inc145_crit_edge, label %if.end142

if.then137.for.inc145_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc145

if.end142:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  %call143 = tail call i32 @iwlagn_commit_rxon(ptr noundef %op_mode_specific, ptr noundef %ctx.2243)
  br label %for.inc145

for.inc145:                                       ; preds = %if.end142, %if.then137.for.inc145_crit_edge, %for.body130.for.inc145_crit_edge
  %incdec.ptr146 = getelementptr %struct.iwl_rxon_context, ptr %ctx.2243, i32 1
  %cmp128 = icmp ult ptr %incdec.ptr146, %arrayidx127
  br i1 %cmp128, label %for.inc145.for.body130_crit_edge, label %for.inc145.out_crit_edge

for.inc145.out_crit_edge:                         ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc145.for.body130_crit_edge:                 ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body130

out.sink.split:                                   ; preds = %iwl_is_ready.exit.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge, %entry.out.sink.split_crit_edge
  %.str.25.sink = phi ptr [ @.str.24, %entry.out.sink.split_crit_edge ], [ @.str.25, %if.end.out.sink.split_crit_edge ], [ @.str.25, %iwl_is_ready.exit.out.sink.split_crit_edge ]
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %105, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_config, ptr noundef nonnull %.str.25.sink) #9
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc145.out_crit_edge, %if.end122.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end122.out_crit_edge ], [ 0, %out.sink.split ], [ %ret.0, %for.inc145.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %107, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_mac_config, ptr noundef nonnull @.str.28) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_set_rxon_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_update_bcast_stations(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changes) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_calib_chain_noise_reset_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 0, i32 1
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %mutex = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %and = and i32 %changes, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %idle = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 37
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idle, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwlagn_lift_passive_no_rx(ptr noundef %op_mode_specific) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %iwl_is_ready.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

iwl_is_ready.exit:                                ; preds = %if.end
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.not = icmp eq i32 %11, 0
  br i1 %tobool4.not.not, label %if.end13, label %iwl_is_ready.exit.do.end_crit_edge, !prof !190

iwl_is_ready.exit.do.end_crit_edge:               ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %iwl_is_ready.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bss_info_changed, ptr noundef nonnull @.str.25) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end13:                                         ; preds = %iwl_is_ready.exit
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end28, label %if.end33, !prof !189

do.end28:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %16 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev29, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_bss_info_changed, ptr noundef nonnull @.str.29) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end13
  %and34 = and i32 %changes, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %and38 = and i32 %changes, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end33.if.end42_crit_edge, label %if.then40

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %qos = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 36
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qos, align 4, !range !188
  %20 = zext i8 %19 to i32
  %qos_data = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 17
  %21 = ptrtoint ptr %qos_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %qos_data, align 4
  tail call fastcc void @iwlagn_update_qos(ptr noundef %op_mode_specific, ptr noundef %3)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end33.if.end42_crit_edge
  %aid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 13
  %22 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %aid, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15
  %assoc_id = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 11
  %25 = ptrtoint ptr %assoc_id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %assoc_id, align 2
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 15
  %26 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %use_short_preamble, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool45.not = icmp eq i8 %27, 0
  %flags49 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 12
  %28 = ptrtoint ptr %flags49 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %flags49, align 2
  %and50 = and i32 %29, -536870913
  %masksel = select i1 %tobool45.not, i32 0, i32 536870912
  %and50.sink = or i32 %and50, %masksel
  store i32 %and50.sink, ptr %flags49, align 2
  %and52 = and i32 %changes, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end42.if.end67_crit_edge, label %if.then54

if.end42.if.end67_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then54:                                        ; preds = %if.end42
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %30 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %assoc, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool55.not = icmp eq i8 %31, 0
  br i1 %tobool55.not, label %if.else59, label %if.then56

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %sync_tsf = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 21
  %32 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %sync_tsf, align 8
  %timestamp = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 1997
  %34 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %timestamp, align 8
  %filter_flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 13
  %35 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %filter_flags, align 2
  %or58 = or i32 %36, 536870912
  store i32 %or58, ptr %filter_flags, align 2
  br label %if.end66

if.else59:                                        ; preds = %if.then54
  %filter_flags61 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 13
  %37 = ptrtoint ptr %filter_flags61 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %filter_flags61, align 2
  %and62 = and i32 %38, -536870913
  store i32 %and62, ptr %filter_flags61, align 2
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 7
  %39 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctxid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp = icmp eq i32 %40, 0
  br i1 %cmp, label %if.then64, label %if.else59.if.end66_crit_edge

if.else59.if.end66_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  %have_rekey_data = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 140
  %41 = ptrtoint ptr %have_rekey_data to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %have_rekey_data, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else59.if.end66_crit_edge, %if.then56
  tail call void @iwlagn_bt_coex_rssi_monitor(ptr noundef %op_mode_specific) #9
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end42.if.end67_crit_edge
  %enabled = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 29, i32 2
  %42 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enabled, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool68.not = icmp eq i8 %43, 0
  br i1 %tobool68.not, label %if.end67.if.end83_crit_edge, label %if.then69

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then69:                                        ; preds = %if.end67
  %ht = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 29
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 27
  %44 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ht_operation_mode, align 8
  %46 = trunc i16 %45 to i8
  %conv72 = and i8 %46, 3
  %protection = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 29, i32 1
  %47 = ptrtoint ptr %protection to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv72, ptr %protection, align 1
  %48 = load i16, ptr %ht_operation_mode, align 8
  %49 = trunc i16 %48 to i8
  %50 = lshr i8 %49, 2
  %51 = and i8 %50, 1
  %52 = ptrtoint ptr %ht to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %ht, align 4
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %55 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i295 = icmp eq i32 %55, 0
  br i1 %tobool.not.i295, label %if.then69.if.end.i_crit_edge, label %land.rhs.i296

if.then69.if.end.i_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i296:                                    ; preds = %if.then69
  %dep_map.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 34
  %call.i111.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %cmp.not.i = icmp eq i32 %call.i111.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i296.if.end.i_crit_edge, !prof !189

land.rhs.i296.if.end.i_crit_edge:                 ; preds = %land.rhs.i296
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i296
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1265, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i296.if.end.i_crit_edge, %if.then69.if.end.i_crit_edge
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %54, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %57, label %sw.epilog.thread136.i [
    i32 2, label %sw.bb.i
    i32 1, label %if.end.i.sw.epilog.thread.i_crit_edge
  ]

if.end.i.sw.epilog.thread.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread.i

sw.bb.i:                                          ; preds = %if.end.i
  %59 = tail call i32 @llvm.read_register.i32(metadata !178) #9
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !191
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %sw.bb.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.rcu_read_lock.exit.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 696, ptr noundef nonnull @.str.79) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %sw.bb.i.rcu_read_lock.exit.i_crit_edge
  %63 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bss_conf, align 8
  %call26.i = tail call ptr @ieee80211_find_sta(ptr noundef %54, ptr noundef %64) #9
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %rcu_read_lock.exit.i
  %call.i112.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i112.i, label %if.then28.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i115.i

if.then28.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i115.i:                             ; preds = %if.then28.i
  %call1.i113.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call1.i113.i, 0
  br i1 %tobool.not.i114.i, label %land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i117.i

land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i117.i:                            ; preds = %land.lhs.true.i115.i
  %.b4.i116.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116.i, label %land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i118.i

land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i118.i:                                   ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i118.i, %land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge, %if.then28.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !192
  %65 = tail call i32 @llvm.read_register.i32(metadata !178) #9
  %and.i.i.i.i.i119.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i119.i to ptr
  %preempt_count.i.i.i.i120.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i120.i, align 4
  %sub.i.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i120.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %sw.epilog.thread.i

if.end29.i:                                       ; preds = %rcu_read_lock.exit.i
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %call26.i, i32 0, i32 3, i32 4, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp31.i = icmp eq i8 %70, 0
  br i1 %cmp31.i, label %land.lhs.true.i, label %if.end29.i.if.else.i_crit_edge

if.end29.i.if.else.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %arrayidx35.i = getelementptr %struct.ieee80211_sta, ptr %call26.i, i32 0, i32 3, i32 4, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp37.i = icmp eq i8 %72, 0
  br i1 %cmp37.i, label %land.lhs.true.i.if.end61.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.if.end61.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end29.i.if.else.i_crit_edge
  %tx_params.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call26.i, i32 0, i32 3, i32 4, i32 2
  %73 = ptrtoint ptr %tx_params.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_params.i, align 1
  %conv41.i = zext i8 %74 to i32
  %and.i = and i32 %conv41.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool42.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool42.not.i, label %if.else.i.if.end61.i_crit_edge, label %if.else44.i

if.else.i.if.end61.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.else44.i:                                      ; preds = %if.else.i
  %and48.i = and i32 %conv41.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %if.else44.i.if.end61.i_crit_edge, label %if.then50.i

if.else44.i.if.end61.i_crit_edge:                 ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.then50.i:                                      ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = and i32 %conv41.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp55.i = icmp ne i32 %75, 0
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then50.i, %if.else44.i.if.end61.i_crit_edge, %if.else.i.if.end61.i_crit_edge, %land.lhs.true.i.if.end61.i_crit_edge
  %need_multiple.1.i = phi i1 [ %cmp55.i, %if.then50.i ], [ true, %if.else44.i.if.end61.i_crit_edge ], [ false, %land.lhs.true.i.if.end61.i_crit_edge ], [ false, %if.else.i.if.end61.i_crit_edge ]
  %call.i121.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i121.i, label %if.end61.i.sw.epilog.i_crit_edge, label %land.lhs.true.i124.i

if.end61.i.sw.epilog.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

land.lhs.true.i124.i:                             ; preds = %if.end61.i
  %call1.i122.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call1.i122.i, 0
  br i1 %tobool.not.i123.i, label %land.lhs.true.i124.i.sw.epilog.i_crit_edge, label %land.lhs.true2.i126.i

land.lhs.true.i124.i.sw.epilog.i_crit_edge:       ; preds = %land.lhs.true.i124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

land.lhs.true2.i126.i:                            ; preds = %land.lhs.true.i124.i
  %.b4.i125.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i125.i, label %land.lhs.true2.i126.i.sw.epilog.i_crit_edge, label %if.then.i127.i

land.lhs.true2.i126.i.sw.epilog.i_crit_edge:      ; preds = %land.lhs.true2.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then.i127.i:                                   ; preds = %land.lhs.true2.i126.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 724, ptr noundef nonnull @.str.80) #9
  br label %sw.epilog.i

sw.epilog.thread136.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ht_need_multiple_chains138.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 6
  %76 = ptrtoint ptr %ht_need_multiple_chains138.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %ht_need_multiple_chains138.i, align 1
  br label %iwlagn_check_needed_chains.exit

sw.epilog.thread.i:                               ; preds = %rcu_read_unlock.exit.i, %if.end.i.sw.epilog.thread.i_crit_edge
  %ht_need_multiple_chains133.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 6
  %77 = ptrtoint ptr %ht_need_multiple_chains133.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %ht_need_multiple_chains133.i, align 1
  br label %if.then65.i

sw.epilog.i:                                      ; preds = %if.then.i127.i, %land.lhs.true2.i126.i.sw.epilog.i_crit_edge, %land.lhs.true.i124.i.sw.epilog.i_crit_edge, %if.end61.i.sw.epilog.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !192
  %78 = tail call i32 @llvm.read_register.i32(metadata !178) #9
  %and.i.i.i.i.i128.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i128.i to ptr
  %preempt_count.i.i.i.i129.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i129.i, align 4
  %sub.i.i.i130.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i130.i, ptr %preempt_count.i.i.i.i129.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %ht_need_multiple_chains.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 6
  %frombool.i = zext i1 %need_multiple.1.i to i8
  %82 = ptrtoint ptr %ht_need_multiple_chains.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %frombool.i, ptr %ht_need_multiple_chains.i, align 1
  br i1 %need_multiple.1.i, label %sw.epilog.i.iwlagn_check_needed_chains.exit_crit_edge, label %sw.epilog.i.if.then65.i_crit_edge

sw.epilog.i.if.then65.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65.i

sw.epilog.i.iwlagn_check_needed_chains.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_check_needed_chains.exit

if.then65.i:                                      ; preds = %sw.epilog.i.if.then65.i_crit_edge, %sw.epilog.thread.i
  %contexts.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx68.i = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp69140.i = icmp ult ptr %contexts.i, %arrayidx68.i
  br i1 %cmp69140.i, label %for.body.lr.ph.i, label %if.then65.i.iwlagn_check_needed_chains.exit_crit_edge

if.then65.i.iwlagn_check_needed_chains.exit_crit_edge: ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_check_needed_chains.exit

for.body.lr.ph.i:                                 ; preds = %if.then65.i
  %valid_contexts.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %83 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %valid_contexts.i, align 4
  %conv71.i = zext i8 %84 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.0141.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0141.i, i32 0, i32 7
  %85 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %86
  %and72.i = and i32 %shl.i, %conv71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then74.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then74.i:                                      ; preds = %for.body.i
  %87 = ptrtoint ptr %tmp.0141.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tmp.0141.i, align 4
  %tobool76.not.i = icmp eq ptr %88, null
  br i1 %tobool76.not.i, label %if.then74.i.for.inc.i_crit_edge, label %if.end78.i

if.then74.i.for.inc.i_crit_edge:                  ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end78.i:                                       ; preds = %if.then74.i
  %ht_need_multiple_chains79.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %tmp.0141.i, i32 0, i32 6
  %89 = ptrtoint ptr %ht_need_multiple_chains79.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ht_need_multiple_chains79.i, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool80.not.i = icmp eq i8 %90, 0
  br i1 %tobool80.not.i, label %if.end78.i.for.inc.i_crit_edge, label %if.end78.i.iwlagn_check_needed_chains.exit_crit_edge

if.end78.i.iwlagn_check_needed_chains.exit_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_check_needed_chains.exit

if.end78.i.for.inc.i_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end78.i.for.inc.i_crit_edge, %if.then74.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %tmp.0141.i, i32 1
  %cmp69.i = icmp ult ptr %incdec.ptr.i, %arrayidx68.i
  br i1 %cmp69.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iwlagn_check_needed_chains.exit_crit_edge

for.inc.i.iwlagn_check_needed_chains.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_check_needed_chains.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

iwlagn_check_needed_chains.exit:                  ; preds = %for.inc.i.iwlagn_check_needed_chains.exit_crit_edge, %if.end78.i.iwlagn_check_needed_chains.exit_crit_edge, %if.then65.i.iwlagn_check_needed_chains.exit_crit_edge, %sw.epilog.i.iwlagn_check_needed_chains.exit_crit_edge, %sw.epilog.thread136.i
  %need_multiple.3.off0.i = phi i1 [ false, %sw.epilog.i.iwlagn_check_needed_chains.exit_crit_edge ], [ false, %sw.epilog.thread136.i ], [ true, %if.then65.i.iwlagn_check_needed_chains.exit_crit_edge ], [ false, %if.end78.i.iwlagn_check_needed_chains.exit_crit_edge ], [ true, %for.inc.i.iwlagn_check_needed_chains.exit_crit_edge ]
  %current_ht_config.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 899
  %frombool88.i = zext i1 %need_multiple.3.off0.i to i8
  %91 = ptrtoint ptr %current_ht_config.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %frombool88.i, ptr %current_ht_config.i, align 4
  tail call void @iwl_set_rxon_ht(ptr noundef %op_mode_specific, ptr undef)
  br label %if.end83

if.end83:                                         ; preds = %iwlagn_check_needed_chains.exit, %if.end67.if.end83_crit_edge
  tail call void @iwlagn_set_rxon_chain(ptr noundef %op_mode_specific, ptr noundef %3) #9
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 14
  %92 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %use_cts_prot, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool84.not = icmp eq i8 %93, 0
  br i1 %tobool84.not, label %if.end83.if.else93_crit_edge, label %land.lhs.true86

if.end83.if.else93_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else93

land.lhs.true86:                                  ; preds = %if.end83
  %band = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 93
  %94 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %band, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp87.not = icmp eq i32 %95, 1
  br i1 %cmp87.not, label %land.lhs.true86.if.else93_crit_edge, label %if.then89

land.lhs.true86.if.else93_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else93

if.then89:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  %flags91 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 12
  %96 = ptrtoint ptr %flags91 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %flags91, align 2
  %or92 = or i32 %97, 134217728
  store i32 %or92, ptr %flags91, align 2
  br label %if.end97

if.else93:                                        ; preds = %land.lhs.true86.if.else93_crit_edge, %if.end83.if.else93_crit_edge
  %flags95 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 12
  %98 = ptrtoint ptr %flags95 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %flags95, align 2
  %and96 = and i32 %99, -134217729
  store i32 %and96, ptr %flags95, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.else93, %if.then89
  %100 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %use_cts_prot, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool99.not = icmp eq i8 %101, 0
  %flags106 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 12
  %102 = ptrtoint ptr %flags106 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %flags106, align 2
  %and107 = and i32 %103, -65
  %masksel316 = select i1 %tobool99.not, i32 0, i32 64
  %and107.sink = or i32 %and107, %masksel316
  store i32 %and107.sink, ptr %flags106, align 2
  %bssid_addr = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 2
  %104 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bss_conf, align 8
  %106 = call ptr @memcpy(ptr %bssid_addr, ptr %105, i32 6)
  %107 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vif, align 8
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %108, label %if.end97.if.end129_crit_edge [
    i32 3, label %if.end97.if.then116_crit_edge
    i32 1, label %if.end97.if.then116_crit_edge319
  ]

if.end97.if.then116_crit_edge319:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.end97.if.then116_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then116

if.end97.if.end129_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then116:                                       ; preds = %if.end97.if.then116_crit_edge, %if.end97.if.then116_crit_edge319
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 17
  %110 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %enable_beacon, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool118.not = icmp eq i8 %111, 0
  %filter_flags125 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 13
  %112 = ptrtoint ptr %filter_flags125 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %filter_flags125, align 2
  %and126 = and i32 %113, -536870913
  %masksel317 = select i1 %tobool118.not, i32 0, i32 536870912
  %and126.sink = or i32 %and126, %masksel317
  %.sink = select i1 %tobool118.not, ptr null, ptr %3
  store i32 %and126.sink, ptr %filter_flags125, align 2
  %114 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2632
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %.sink, ptr %114, align 4
  %116 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr = load i32, ptr %vif, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then116, %if.end97.if.end129_crit_edge
  %117 = phi i32 [ %.pr, %if.then116 ], [ %108, %if.end97.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp131 = icmp eq i32 %117, 2
  br i1 %cmp131, label %if.then133, label %if.end129.if.end145_crit_edge

if.end129.if.end145_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end145

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %assoc134 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %118 = ptrtoint ptr %assoc134 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %assoc134, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool135.not = icmp eq i8 %119, 0
  %filter_flags138 = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 15, i32 13
  %120 = ptrtoint ptr %filter_flags138 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %filter_flags138, align 2
  %and143 = and i32 %121, -1073741825
  %masksel318 = select i1 %tobool135.not, i32 1073741824, i32 0
  %or139.sink = or i32 %and143, %masksel318
  store i32 %or139.sink, ptr %filter_flags138, align 2
  br label %if.end145

if.end145:                                        ; preds = %if.then133, %if.end129.if.end145_crit_edge
  br i1 %tobool35.not, label %lor.lhs.false148, label %if.end145.if.then152_crit_edge

if.end145.if.then152_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

lor.lhs.false148:                                 ; preds = %if.end145
  %active = getelementptr inbounds %struct.iwl_rxon_context, ptr %3, i32 0, i32 14
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(50) %staging, ptr noundef dereferenceable(50) %active, i32 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool151.not = icmp eq i32 %bcmp, 0
  br i1 %tobool151.not, label %lor.lhs.false148.if.end154_crit_edge, label %lor.lhs.false148.if.then152_crit_edge

lor.lhs.false148.if.then152_crit_edge:            ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then152

lor.lhs.false148.if.end154_crit_edge:             ; preds = %lor.lhs.false148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.then152:                                       ; preds = %lor.lhs.false148.if.then152_crit_edge, %if.end145.if.then152_crit_edge
  %call153 = tail call i32 @iwlagn_commit_rxon(ptr noundef %op_mode_specific, ptr noundef %3)
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %lor.lhs.false148.if.end154_crit_edge
  br i1 %tobool53.not, label %if.end154.if.end168_crit_edge, label %land.lhs.true157

if.end154.if.end168_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

land.lhs.true157:                                 ; preds = %if.end154
  %assoc158 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %122 = ptrtoint ptr %assoc158 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %assoc158, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool159.not = icmp eq i8 %123, 0
  br i1 %tobool159.not, label %land.lhs.true157.if.end168_crit_edge, label %if.then161

land.lhs.true157.if.end168_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then161:                                       ; preds = %land.lhs.true157
  %chain_noise_data = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 877
  %state = getelementptr inbounds %struct.iwl_chain_noise_data, ptr %chain_noise_data, i32 0, i32 11
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %125)
  %cmp163 = icmp eq i8 %125, 3
  br i1 %cmp163, label %if.then165, label %if.then161.if.end167_crit_edge

if.then161.if.end167_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then165:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #11
  %call166 = tail call i32 @iwl_power_update_mode(ptr noundef %op_mode_specific, i1 noundef zeroext false) #9
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.then161.if.end167_crit_edge
  %calib_disabled.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2757
  %126 = ptrtoint ptr %calib_disabled.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %calib_disabled.i, align 8
  %and.i297 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool.not.i298 = icmp eq i32 %and.i297, 0
  br i1 %tobool.not.i298, label %if.end.i299, label %if.end167.iwlagn_chain_noise_reset.exit_crit_edge

if.end167.iwlagn_chain_noise_reset.exit_crit_edge: ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_chain_noise_reset.exit

if.end.i299:                                      ; preds = %if.end167
  %state.i = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 54, i32 11
  %128 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp.i = icmp eq i8 %129, 0
  br i1 %cmp.i, label %land.lhs.true.i300, label %if.end.i299.iwlagn_chain_noise_reset.exit_crit_edge

if.end.i299.iwlagn_chain_noise_reset.exit_crit_edge: ; preds = %if.end.i299
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_chain_noise_reset.exit

land.lhs.true.i300:                               ; preds = %if.end.i299
  %contexts.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 684
  %arrayidx2.i.i = getelementptr %struct.iwl_op_mode, ptr %1, i32 840
  %cmp11.i.i = icmp ult ptr %contexts.i.i, %arrayidx2.i.i
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %land.lhs.true.i300.iwlagn_chain_noise_reset.exit_crit_edge

land.lhs.true.i300.iwlagn_chain_noise_reset.exit_crit_edge: ; preds = %land.lhs.true.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_chain_noise_reset.exit

for.body.lr.ph.i.i:                               ; preds = %land.lhs.true.i300
  %valid_contexts.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 94
  %130 = ptrtoint ptr %valid_contexts.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %valid_contexts.i.i, align 4
  %conv.i.i = zext i8 %131 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ctx.012.i.i = phi ptr [ %contexts.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ctxid.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 7
  %132 = ptrtoint ptr %ctxid.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ctxid.i.i, align 4
  %shl.i.i = shl nuw i32 1, %133
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i301 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i301, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i302

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i302:                                   ; preds = %for.body.i.i
  %filter_flags.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 14, i32 13
  %134 = ptrtoint ptr %filter_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %filter_flags.i.i.i, align 4
  %136 = and i32 %135, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool3.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i302.for.inc.i.i_crit_edge, label %if.then3.i

if.then.i.i302.for.inc.i.i_crit_edge:             ; preds = %if.then.i.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i302.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %arrayidx2.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.iwlagn_chain_noise_reset.exit_crit_edge

for.inc.i.i.iwlagn_chain_noise_reset.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwlagn_chain_noise_reset.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.then3.i:                                       ; preds = %if.then.i.i302
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i) #9
  %chain_noise_a.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 878
  %137 = call ptr @memset(ptr %chain_noise_a.i, i32 0, i32 26)
  %138 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 257, ptr %cmd.i, align 4
  %phy_calib_chain_noise_reset_cmd.i = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 79
  %139 = ptrtoint ptr %phy_calib_chain_noise_reset_cmd.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %phy_calib_chain_noise_reset_cmd.i, align 1
  store i8 %140, ptr %cmd.i, align 4
  %call4.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %op_mode_specific, i8 noundef zeroext -80, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end10.i_crit_edge, label %do.end.i303

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

do.end.i303:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %141 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %142, i32 noundef 0, ptr noundef nonnull @.str.81) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i303, %if.then3.i.if.end10.i_crit_edge
  %143 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %state.i, align 1
  %dev16.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %144 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev16.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %145, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_chain_noise_reset, ptr noundef nonnull @.str.82) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i) #9
  br label %iwlagn_chain_noise_reset.exit

iwlagn_chain_noise_reset.exit:                    ; preds = %if.end10.i, %for.inc.i.i.iwlagn_chain_noise_reset.exit_crit_edge, %land.lhs.true.i300.iwlagn_chain_noise_reset.exit_crit_edge, %if.end.i299.iwlagn_chain_noise_reset.exit_crit_edge, %if.end167.iwlagn_chain_noise_reset.exit_crit_edge
  %start_calib = getelementptr inbounds %struct.iwl_priv, ptr %op_mode_specific, i32 0, i32 52
  %146 = ptrtoint ptr %start_calib to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %start_calib, align 2
  br label %if.end168

if.end168:                                        ; preds = %iwlagn_chain_noise_reset.exit, %land.lhs.true157.if.end168_crit_edge, %if.end154.if.end168_crit_edge
  %and169 = and i32 %changes, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end168.if.end188_crit_edge, label %if.then171

if.end168.if.end188_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then171:                                       ; preds = %if.end168
  %ibss_joined = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 11
  %147 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ibss_joined, align 8, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool172 = icmp ne i8 %148, 0
  %call173 = call i32 @iwlagn_manage_ibss_station(ptr noundef %op_mode_specific, ptr noundef %vif, i1 noundef zeroext %tobool172) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %tobool174.not = icmp eq i32 %call173, 0
  br i1 %tobool174.not, label %if.then171.if.end188_crit_edge, label %do.end179

if.then171.if.end188_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

do.end179:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #11
  %dev180 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %149 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev180, align 4
  %151 = ptrtoint ptr %ibss_joined to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ibss_joined, align 8, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool182.not = icmp eq i8 %152, 0
  %cond = select i1 %tobool182.not, ptr @.str.32, ptr @.str.31
  %153 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bss_conf, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %150, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond, ptr noundef %154) #9
  br label %if.end188

if.end188:                                        ; preds = %do.end179, %if.then171.if.end188_crit_edge, %if.end168.if.end188_crit_edge
  %and189 = and i32 %changes, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end188.if.end207_crit_edge, label %land.lhs.true191

if.end188.if.end207_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

land.lhs.true191:                                 ; preds = %if.end188
  %beacon_ctx192 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2632
  %155 = ptrtoint ptr %beacon_ctx192 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %beacon_ctx192, align 4
  %cmp193 = icmp eq ptr %156, %3
  br i1 %cmp193, label %if.then195, label %land.lhs.true191.if.end207_crit_edge

land.lhs.true191.if.end207_crit_edge:             ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

if.then195:                                       ; preds = %land.lhs.true191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %157 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i304 = icmp eq i32 %157, 0
  br i1 %tobool.not.i304, label %if.then195.if.end.i311_crit_edge, label %land.rhs.i308

if.then195.if.end.i311_crit_edge:                 ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i311

land.rhs.i308:                                    ; preds = %if.then195
  %dep_map.i305 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 34
  %call.i.i306 = call i32 @lock_is_held_type(ptr noundef %dep_map.i305, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i306)
  %cmp.not.i307 = icmp eq i32 %call.i.i306, 0
  br i1 %cmp.not.i307, label %do.end.i309, label %land.rhs.i308.if.end.i311_crit_edge, !prof !189

land.rhs.i308.if.end.i311_crit_edge:              ; preds = %land.rhs.i308
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i311

do.end.i309:                                      ; preds = %land.rhs.i308
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i311

if.end.i311:                                      ; preds = %do.end.i309, %land.rhs.i308.if.end.i311_crit_edge, %if.then195.if.end.i311_crit_edge
  %beacon_skb.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2633
  %158 = ptrtoint ptr %beacon_skb.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %beacon_skb.i, align 8
  call void @consume_skb(ptr noundef %159) #9
  %hw.i = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 84
  %160 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw.i, align 4
  %call.i37.i = call ptr @ieee80211_beacon_get_tim(ptr noundef %161, ptr noundef %vif, ptr noundef null, ptr noundef null) #9
  %162 = ptrtoint ptr %beacon_skb.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i37.i, ptr %beacon_skb.i, align 8
  %tobool27.not.i310 = icmp eq ptr %call.i37.i, null
  br i1 %tobool27.not.i310, label %if.end.i311.do.end202_crit_edge, label %iwlagn_update_beacon.exit

if.end.i311.do.end202_crit_edge:                  ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end202

iwlagn_update_beacon.exit:                        ; preds = %if.end.i311
  %call30.i = call i32 @iwlagn_send_beacon_cmd(ptr noundef %op_mode_specific) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool197.not = icmp eq i32 %call30.i, 0
  br i1 %tobool197.not, label %iwlagn_update_beacon.exit.if.end207_crit_edge, label %iwlagn_update_beacon.exit.do.end202_crit_edge

iwlagn_update_beacon.exit.do.end202_crit_edge:    ; preds = %iwlagn_update_beacon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end202

iwlagn_update_beacon.exit.if.end207_crit_edge:    ; preds = %iwlagn_update_beacon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end207

do.end202:                                        ; preds = %iwlagn_update_beacon.exit.do.end202_crit_edge, %if.end.i311.do.end202_crit_edge
  %dev203 = getelementptr inbounds %struct.iwl_op_mode, ptr %1, i32 2
  %163 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev203, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %164, i32 noundef 0, ptr noundef nonnull @.str.33) #9
  br label %if.end207

if.end207:                                        ; preds = %do.end202, %iwlagn_update_beacon.exit.if.end207_crit_edge, %land.lhs.true191.if.end207_crit_edge, %if.end188.if.end207_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end207, %do.end28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_lift_passive_no_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_update_qos(ptr noundef %priv, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %is_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_active, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %qos_data = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 17
  %def_qos_parm = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 17, i32 1
  %2 = ptrtoint ptr %qos_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qos_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %spec.store.select = select i1 %tobool2.not, i32 0, i32 16777216
  %4 = ptrtoint ptr %def_qos_parm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.store.select, ptr %def_qos_parm, align 4
  %enabled = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 29, i32 2
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end.do.end_crit_edge, label %if.then9

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or13 = or i32 %spec.store.select, 33554432
  %7 = ptrtoint ptr %def_qos_parm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or13, ptr %def_qos_parm, align 4
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %def_qos_parm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %def_qos_parm, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_update_qos, ptr noundef nonnull @.str.76, i32 noundef %3, i32 noundef %11) #9
  %qos_cmd = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 23
  %12 = ptrtoint ptr %qos_cmd to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %qos_cmd, align 1
  %call = tail call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %13, i32 noundef 0, i16 noundef zeroext 36, ptr noundef %def_qos_parm) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %do.end.cleanup_crit_edge, label %do.body27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body27:                                        ; preds = %do.end
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool29.not = icmp eq i32 %and1.i.i, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br i1 %tobool29.not, label %do.body27.cleanup.sink.split_crit_edge, label %if.else

do.body27.cleanup.sink.split_crit_edge:           ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 2, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %do.body27.cleanup.sink.split_crit_edge
  %cond.sink = phi i32 [ %cond, %if.else ], [ 0, %do.body27.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %17, i32 noundef %cond.sink, ptr noundef nonnull @.str.77) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_bt_coex_rssi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_manage_ibss_station(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwlagn_post_scan(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep_cmd_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 1
  %call = tail call i32 @iwl_power_set_mode(ptr noundef %priv, ptr noundef %sleep_cmd_next, i1 noundef zeroext false) #9
  %tx_power_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 117
  %0 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_power_next, align 1
  %call1 = tail call fastcc i32 @iwl_set_tx_power(ptr noundef %priv, i8 noundef signext %1, i1 noundef zeroext false)
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx3 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp23 = icmp ult ptr %contexts, %arrayidx3
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.024 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %3 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.024, i32 0, i32 7
  %4 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %staging = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.024, i32 0, i32 15
  %active = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.024, i32 0, i32 14
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(50) %staging, ptr noundef dereferenceable(50) %active, i32 50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %if.then.for.inc_crit_edge, label %if.then6

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @iwlagn_commit_rxon(ptr noundef %priv, ptr noundef %ctx.024)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.024, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %arrayidx3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call9 = tail call i32 @iwlagn_set_pan_params(ptr noundef %priv)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_set_mode(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_is_ht40_tx_allowed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_send_tx_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_send_rxon_timing(ptr noundef %priv, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !189

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 283, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %timing = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16
  %5 = call ptr @memset(ptr %timing, i32 0, i32 20)
  %timestamp = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 70
  %6 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %timestamp, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %9 = ptrtoint ptr %timing to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %timing, align 4
  %listen_interval = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %listen_interval to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %listen_interval, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %listen_interval29 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 4
  %13 = ptrtoint ptr %listen_interval29 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %listen_interval29, align 4
  %tobool30.not = icmp eq ptr %1, null
  br i1 %tobool30.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %beacon_int31 = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %14 = ptrtoint ptr %beacon_int31 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %beacon_int31, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i16 [ %15, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %atim_window = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %atim_window to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %atim_window, align 2
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 7
  %17 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctxid, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %18, label %cond.end.if.else102_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %land.lhs.true66
  ]

cond.end.if.else102_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true:                                    ; preds = %cond.end
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %land.lhs.true.land.lhs.true41_crit_edge, label %lor.lhs.false

land.lhs.true.land.lhs.true41_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp39.not = icmp eq i32 %23, 2
  br i1 %cmp39.not, label %lor.lhs.false.if.else102_crit_edge, label %lor.lhs.false.land.lhs.true41_crit_edge

lor.lhs.false.land.lhs.true41_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true41

lor.lhs.false.if.else102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true41:                                  ; preds = %lor.lhs.false.land.lhs.true41_crit_edge, %land.lhs.true.land.lhs.true41_crit_edge
  %filter_flags.i.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 13
  %24 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %filter_flags.i.i, align 4
  %26 = and i32 %25, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool43.not = icmp eq i32 %26, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.else102_crit_edge, label %land.lhs.true44

land.lhs.true41.if.else102_crit_edge:             ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %27 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %contexts, align 4
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %land.lhs.true44.if.else102_crit_edge, label %land.lhs.true47

land.lhs.true44.if.else102_crit_edge:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %beacon_int52 = getelementptr inbounds %struct.ieee80211_vif, ptr %28, i32 0, i32 1, i32 19
  %29 = ptrtoint ptr %beacon_int52 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %beacon_int52, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool54.not = icmp eq i16 %30, 0
  br i1 %tobool54.not, label %land.lhs.true47.if.else102_crit_edge, label %if.then55

land.lhs.true47.if.else102_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

if.then55:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #11
  %beacon_interval = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %beacon_interval, align 4
  %beacon_interval60 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 1
  %33 = ptrtoint ptr %beacon_interval60 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %beacon_interval60, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %32)
  br label %if.end107

land.lhs.true66:                                  ; preds = %cond.end
  %filter_flags.i.i473 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 14, i32 13
  %35 = ptrtoint ptr %filter_flags.i.i473 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %filter_flags.i.i473, align 4
  %37 = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool68.not = icmp eq i32 %37, 0
  br i1 %tobool68.not, label %land.lhs.true66.if.else102_crit_edge, label %land.lhs.true69

land.lhs.true66.if.else102_crit_edge:             ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %arrayidx71 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx71, align 4
  %tobool73.not = icmp eq ptr %39, null
  br i1 %tobool73.not, label %land.lhs.true69.if.else102_crit_edge, label %land.lhs.true74

land.lhs.true69.if.else102_crit_edge:             ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %beacon_int79 = getelementptr inbounds %struct.ieee80211_vif, ptr %39, i32 0, i32 1, i32 19
  %40 = ptrtoint ptr %beacon_int79 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %beacon_int79, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool81.not = icmp eq i16 %41, 0
  br i1 %tobool81.not, label %land.lhs.true74.if.else102_crit_edge, label %land.lhs.true82

land.lhs.true74.if.else102_crit_edge:             ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

land.lhs.true82:                                  ; preds = %land.lhs.true74
  %filter_flags.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 14, i32 13
  %42 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %filter_flags.i, align 4
  %44 = and i32 %43, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool84.not = icmp eq i32 %44, 0
  br i1 %tobool84.not, label %land.lhs.true82.if.then93_crit_edge, label %lor.lhs.false85

land.lhs.true82.if.then93_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

lor.lhs.false85:                                  ; preds = %land.lhs.true82
  %45 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctx, align 4
  %tobool87.not = icmp eq ptr %46, null
  br i1 %tobool87.not, label %lor.lhs.false85.if.then93_crit_edge, label %lor.lhs.false88

lor.lhs.false85.if.then93_crit_edge:              ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

lor.lhs.false88:                                  ; preds = %lor.lhs.false85
  %beacon_int91 = getelementptr inbounds %struct.ieee80211_vif, ptr %46, i32 0, i32 1, i32 19
  %47 = ptrtoint ptr %beacon_int91 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %beacon_int91, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool92.not = icmp eq i16 %48, 0
  br i1 %tobool92.not, label %lor.lhs.false88.if.then93_crit_edge, label %lor.lhs.false88.if.else102_crit_edge

lor.lhs.false88.if.else102_crit_edge:             ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else102

lor.lhs.false88.if.then93_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.then93:                                        ; preds = %lor.lhs.false88.if.then93_crit_edge, %lor.lhs.false85.if.then93_crit_edge, %land.lhs.true82.if.then93_crit_edge
  %beacon_interval97 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 1, i32 16, i32 1
  %49 = ptrtoint ptr %beacon_interval97 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %beacon_interval97, align 4
  %beacon_interval99 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 1
  %51 = ptrtoint ptr %beacon_interval99 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %beacon_interval99, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %50)
  br label %if.end107

if.else102:                                       ; preds = %lor.lhs.false88.if.else102_crit_edge, %land.lhs.true74.if.else102_crit_edge, %land.lhs.true69.if.else102_crit_edge, %land.lhs.true66.if.else102_crit_edge, %land.lhs.true47.if.else102_crit_edge, %land.lhs.true44.if.else102_crit_edge, %land.lhs.true41.if.else102_crit_edge, %lor.lhs.false.if.else102_crit_edge, %cond.end.if.else102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond)
  %tobool.not.i = icmp eq i16 %cond, 0
  br i1 %tobool.not.i, label %if.else102.iwl_adjust_beacon_interval.exit_crit_edge, label %if.end.i

if.else102.iwl_adjust_beacon_interval.exit_crit_edge: ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_adjust_beacon_interval.exit

if.end.i:                                         ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %cond to i32
  %add.i = add nuw nsw i32 %conv.i, 4096
  %div1.i = lshr i32 %add.i, 12
  %div6.i = udiv i32 %conv.i, %div1.i
  %conv7.i = trunc i32 %div6.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7.i)
  %tobool8.not.i = icmp eq i16 %conv7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i16 4096, i16 %conv7.i
  br label %iwl_adjust_beacon_interval.exit

iwl_adjust_beacon_interval.exit:                  ; preds = %if.end.i, %if.else102.iwl_adjust_beacon_interval.exit_crit_edge
  %retval.0.i = phi i16 [ %spec.select.i, %if.end.i ], [ 200, %if.else102.iwl_adjust_beacon_interval.exit_crit_edge ]
  %53 = tail call i16 @llvm.bswap.i16(i16 %retval.0.i)
  %beacon_interval105 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 1
  %54 = ptrtoint ptr %beacon_interval105 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %beacon_interval105, align 4
  br label %if.end107

if.end107:                                        ; preds = %iwl_adjust_beacon_interval.exit, %if.then93, %if.then55
  %beacon_int.0 = phi i16 [ %34, %if.then55 ], [ %retval.0.i, %iwl_adjust_beacon_interval.exit ], [ %52, %if.then93 ]
  %conv108 = zext i16 %beacon_int.0 to i32
  %beacon_int109 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 28
  %55 = ptrtoint ptr %beacon_int109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv108, ptr %beacon_int109, align 4
  %56 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %timestamp, align 8
  %mul = shl nuw nsw i32 %conv108, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %57)
  %cmp291 = icmp ult i64 %57, 4294967296
  br i1 %cmp291, label %if.then299, label %if.else305, !prof !190

if.then299:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %conv300 = trunc i64 %57 to i32
  %rem301 = urem i32 %conv300, %mul
  br label %if.end309

if.else305:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %58 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %57) #13, !srcloc !193
  %asmresult.i478 = extractvalue { i64, i64 } %58, 0
  %shr.i = lshr i64 %asmresult.i478, 32
  %conv.i479 = trunc i64 %shr.i to i32
  br label %if.end309

if.end309:                                        ; preds = %if.else305, %if.then299
  %__rem.0 = phi i32 [ %rem301, %if.then299 ], [ %conv.i479, %if.else305 ]
  %sub311 = sub i32 %mul, %__rem.0
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub311)
  %beacon_init_val = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 3
  %60 = ptrtoint ptr %beacon_init_val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %beacon_init_val, align 4
  br i1 %tobool30.not, label %if.end309.cond.end323_crit_edge, label %cond.true314

if.end309.cond.end323_crit_edge:                  ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end323

cond.true314:                                     ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 18
  %61 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool317.not = icmp eq i8 %62, 0
  %phi.cast = select i1 %tobool317.not, i8 1, i8 %62
  br label %cond.end323

cond.end323:                                      ; preds = %cond.true314, %if.end309.cond.end323_crit_edge
  %cond324 = phi i8 [ %phi.cast, %cond.true314 ], [ 1, %if.end309.cond.end323_crit_edge ]
  %dtim_period327 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 5
  %63 = ptrtoint ptr %dtim_period327 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %cond324, ptr %dtim_period327, align 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %beacon_interval333 = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 16, i32 1
  %66 = ptrtoint ptr %beacon_interval333 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %beacon_interval333, align 4
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %conv334 = zext i16 %68 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %65, i32 noundef 4097, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_rxon_timing, ptr noundef nonnull @.str.71, i32 noundef %conv334, i32 noundef %sub311, i32 noundef 0) #9
  %rxon_timing_cmd = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx, i32 0, i32 22
  %69 = ptrtoint ptr %rxon_timing_cmd to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rxon_timing_cmd, align 4
  %call343 = tail call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext %70, i32 noundef 0, i16 noundef zeroext 20, ptr noundef %timing) #9
  ret i32 %call343
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_clear_ucode_stations(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_update_bcast_station(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_restore_stations(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_restore_default_wep_keys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_sensitivity(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_send_beacon_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !71, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !133, !135, !137, !138, !140, !142, !144, !146, !148, !150, !152, !153, !155, !157, !159, !161, !163, !164, !166, !168, !169, !170, !172, !173, !175, !177}
!llvm.named.register.sp = !{!178}
!llvm.module.flags = !{!179, !180, !181, !182, !183, !184, !185, !186}
!llvm.ident = !{!187}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 521, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 553, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 592, i32 3}
!8 = !{ptr @__func__.iwl_set_rxon_channel, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 712, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.iwl_print_rx_config_cmd, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 894, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 895, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 896, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 898, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 900, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 902, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 903, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 905, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 907, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 908, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 909, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1063, i32 3}
!37 = !{ptr @__func__.iwlagn_commit_rxon, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1073, i32 3}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1086, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1105, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__func__.iwlagn_mac_config, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1160, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1165, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1170, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1232, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1236, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1249, i32 2}
!59 = !{ptr @__func__.iwlagn_bss_info_changed, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1404, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1410, i32 3}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1514, i32 4}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1521, i32 4}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 662, i32 5}
!71 = !{ptr @__func__._iwl_set_rxon_ht, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 673, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__func__.iwl_calc_basic_rates, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 997, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 760, i32 4}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 764, i32 4}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 769, i32 4}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 773, i32 4}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 778, i32 3}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 785, i32 3}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 790, i32 3}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 796, i32 3}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 802, i32 3}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 809, i32 3}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 814, i32 3}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 818, i32 2}
!101 = !{ptr @__func__.iwl_full_rxon_required, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 853, i32 2}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 854, i32 2}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 855, i32 2}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 856, i32 2}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 858, i32 2}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 859, i32 2}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 860, i32 2}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 861, i32 2}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 863, i32 2}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 865, i32 2}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 867, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 874, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 878, i32 2}
!128 = !{ptr @__func__.iwlagn_send_rxon_assoc, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 212, i32 3}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 398, i32 3}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 406, i32 3}
!135 = !{ptr @__func__.iwl_set_tx_power, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 423, i32 3}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 355, i32 5}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 374, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 93, i32 3}
!144 = !{ptr @iwlagn_disable_pan.deactivate_cmd, !145, !"deactivate_cmd", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 107, i32 19}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 124, i32 3}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 130, i32 4}
!150 = !{ptr @__func__.iwl_send_rxon_timing, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 330, i32 2}
!152 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 465, i32 4}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 482, i32 3}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 490, i32 4}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 502, i32 3}
!161 = !{ptr @__func__.iwlagn_update_qos, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 169, i32 2}
!163 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 177, i32 3}
!166 = distinct !{null, !167, !"__warned", i1 false, i1 false}
!167 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!170 = distinct !{null, !171, !"__warned", i1 false, i1 false}
!171 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!172 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1376, i32 4}
!175 = !{ptr @__func__.iwlagn_chain_noise_reset, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rxon.c", i32 1379, i32 3}
!177 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!178 = !{!"sp"}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 1, !"min_enum_size", i32 4}
!181 = !{i32 8, !"branch-target-enforcement", i32 0}
!182 = !{i32 8, !"sign-return-address", i32 0}
!183 = !{i32 8, !"sign-return-address-all", i32 0}
!184 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!185 = !{i32 7, !"uwtable", i32 1}
!186 = !{i32 7, !"frame-pointer", i32 2}
!187 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!188 = !{i8 0, i8 2}
!189 = !{!"branch_weights", i32 1, i32 2000}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2149707199}
!192 = !{i64 2149707465}
!193 = !{i64 2148801096, i64 2148801376, i64 2148801710, i64 2148802044}
