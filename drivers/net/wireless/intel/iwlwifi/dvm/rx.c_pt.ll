; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
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
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_csa_notification = type { i16, i16, i32 }
%struct.iwl_sleep_notification = type { i8, i8, i16, i32, i32, i32 }
%struct.iwlagn_tx_resp = type { i8, i8, i8, i8, i32, i16, i8, [3 x i8], [3 x i8], [3 x i8], i32, i16, i16, i8, i8, i16, %struct.agg_tx_status }
%struct.agg_tx_status = type { i16, i16 }
%struct.iwl_wipan_noa_data = type { %struct.callback_head, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.iwl_op_mode = type { ptr, [0 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }

@__func__.iwl_force_rf_reset = private unnamed_addr constant [19 x i8] c"iwl_force_rf_reset\00", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"force reset rejected: not associated\0A\00", [58 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RF reset rejected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"perform radio reset.\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.iwl_rx_dispatch = private unnamed_addr constant [16 x i8] c"iwl_rx_dispatch\00", align 1
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No handler needed for %s, 0x%02x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Error Reply type 0x%08X cmd REPLY_ERROR (0x%02X) seq 0x%04X ser 0x%08X\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_csa = private unnamed_addr constant [14 x i8] c"iwlagn_rx_csa\00", align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CSA notif: channel %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CSA notif (fail) : channel %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_spectrum_measure_notif = private unnamed_addr constant [33 x i8] c"iwlagn_rx_spectrum_measure_notif\00", align 1
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Spectrum Measure Notification: Start\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_pm_sleep_notif = private unnamed_addr constant [25 x i8] c"iwlagn_rx_pm_sleep_notif\00", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sleep mode: %d, src: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_pm_debug_statistics_notif = private unnamed_addr constant [36 x i8] c"iwlagn_rx_pm_debug_statistics_notif\00", align 1
@.str.9 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Dumping %d bytes of unhandled notification for PM_DEBUG_STATISTIC_NOTIFIC:\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl data: \00", [21 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwlagn_rx_beacon_notif = private unnamed_addr constant [23 x i8] c"iwlagn_rx_beacon_notif\00", align 1
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"beacon status %#x, retries:%d ibssmgr:%d tsf:0x%.8x%.8x rate:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_reply_statistics = private unnamed_addr constant [27 x i8] c"iwlagn_rx_reply_statistics\00", align 1
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Statistics have been cleared\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_statistics = private unnamed_addr constant [21 x i8] c"iwlagn_rx_statistics\00", align 1
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Statistics notification received (%d bytes).\0A\00", [50 x i8] zeroinitializer }, align 32
@iwlagn_rx_statistics.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/rx.c\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"len %d doesn't match BT (%zu) or normal (%zu)\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwlagn_good_plcp_health = private unnamed_addr constant [24 x i8] c"iwlagn_good_plcp_health\00", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"plcp_err check disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"plcp health threshold %u delta %d msecs %u\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_calc_noise = private unnamed_addr constant [21 x i8] c"iwlagn_rx_calc_noise\00", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"inband silence a %u, b %u, c %u, dBm %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_card_state_notif = private unnamed_addr constant [27 x i8] c"iwlagn_rx_card_state_notif\00", align 1
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Card state received: HW:%s SW:%s CT:%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Kill\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Reached\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Not reached\00", [20 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_missed_beacon_notif = private unnamed_addr constant [30 x i8] c"iwlagn_rx_missed_beacon_notif\00", align 1
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"missed bcn cnsq %d totl %d rcd %d expctd %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MPDU frame without cached PHY data\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.iwlagn_rx_reply_rx = private unnamed_addr constant [19 x i8] c"iwlagn_rx_reply_rx\00", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad REPLY_RX_MPDU_CMD size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW lied about packet len\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dsp size out of range [0,20]: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad CRC or FIFO: 0x%08X.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rssi %d, TSF %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwlagn_translate_rx_status = private unnamed_addr constant [27 x i8] c"iwlagn_translate_rx_status\00", align 1
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"decrypt_in:0x%x  decrypt_out = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwlagn_calc_rssi = private unnamed_addr constant [17 x i8] c"iwlagn_calc_rssi\00", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Rssi In A %d B %d C %d Max %d AGC dB %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwlagn_pass_packet_to_mac80211 = private unnamed_addr constant [31 x i8] c"iwlagn_pass_packet_to_mac80211\00", align 1
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Dropping packet while interface is not open.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alloc_skb failed\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.iwlagn_set_decrypted_flag = private unnamed_addr constant [26 x i8] c"iwlagn_set_decrypted_flag\00", align 1
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"decrypt_res:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Packet destroyed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hw decrypt successfully!!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 484, i64 528]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1792]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 176, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 185, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 201, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1016, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 36, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 61, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 65, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 79, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 94, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 104, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 106, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 118, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 460, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 359, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 394, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 145, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 159, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 271, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 476, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 527, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 789, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 794, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 804, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 813, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 820, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 848, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 727, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 766, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 618, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 633, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 572, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 586, i32 4 }
@___asan_gen_.158 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 593, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1160, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_force_rf_reset(ptr noundef %priv, i1 noundef zeroext %external) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp11.i = icmp ult ptr %contexts.i, %arrayidx2.i
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end
  %valid_contexts.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %3 = ptrtoint ptr %valid_contexts.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid_contexts.i, align 4
  %conv.i = zext i8 %4 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctx.012.i = phi ptr [ %contexts.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %ctxid.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 7
  %5 = ptrtoint ptr %ctxid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctxid.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %filter_flags.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i, i32 0, i32 14, i32 13
  %7 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filter_flags.i.i, align 4
  %9 = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.end7

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 2048, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_force_rf_reset, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end7:                                          ; preds = %if.then.i
  %rf_reset8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 29
  %12 = ptrtoint ptr %rf_reset8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rf_reset8, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rf_reset8, align 4
  br i1 %external, label %if.end7.if.end22_crit_edge, label %land.lhs.true

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end7
  %last_reset_jiffies = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 29, i32 3
  %14 = ptrtoint ptr %last_reset_jiffies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_reset_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true11

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true11:                                  ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -300, %15
  %sub = add i32 %add.neg, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end17, label %land.lhs.true11.if.end22_crit_edge

land.lhs.true11.if.end22_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end17:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev18, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_force_rf_reset, ptr noundef nonnull @.str.1) #6
  %reset_reject_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 29, i32 2
  %19 = ptrtoint ptr %reset_reject_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_reject_count, align 4
  %inc21 = add i32 %20, 1
  store i32 %inc21, ptr %reset_reject_count, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true11.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %reset_success_count = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 29, i32 1
  %21 = ptrtoint ptr %reset_success_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reset_success_count, align 4
  %inc23 = add i32 %22, 1
  store i32 %inc23, ptr %reset_success_count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %last_reset_jiffies24 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 29, i32 3
  %24 = ptrtoint ptr %last_reset_jiffies24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_reset_jiffies24, align 4
  %dev29 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %25 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev29, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_force_rf_reset, ptr noundef nonnull @.str.2) #6
  tail call void @iwl_internal_short_hw_scan(ptr noundef %priv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -11, %do.end17 ], [ -67, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_internal_short_hw_scan(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_setup_rx_handlers(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @iwlagn_rx_reply_error, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 115
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @iwlagn_rx_csa, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 117
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iwlagn_rx_spectrum_measure_notif, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 122
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @iwlagn_rx_pm_sleep_notif, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 123
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @iwlagn_rx_pm_debug_statistics_notif, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 144
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @iwlagn_rx_beacon_notif, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 24
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @iwl_add_sta_callback, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 188
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iwlagn_rx_noa_notification, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 156
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iwlagn_rx_reply_statistics, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 157
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @iwlagn_rx_statistics, ptr %arrayidx9, align 4
  tail call void @iwl_setup_rx_scan_handlers(ptr noundef %priv) #6
  %arrayidx10 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 161
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @iwlagn_rx_card_state_notif, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 162
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @iwlagn_rx_missed_beacon_notif, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 192
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @iwlagn_rx_reply_rx_phy, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 193
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @iwlagn_rx_reply_rx, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 197
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @iwlagn_rx_reply_compressed_ba, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 20, i32 28
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iwlagn_rx_reply_tx, ptr %arrayidx16, align 8
  %notif_wait = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 21
  tail call void @iwl_notification_wait_init(ptr noundef %notif_wait) #6
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwlagn_bt_rx_handler_setup(ptr noundef %priv) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_reply_error(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
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
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %cmd_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %11 = ptrtoint ptr %cmd_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_id, align 1
  %conv = zext i8 %12 to i32
  %bad_cmd_seq_num = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %bad_cmd_seq_num to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %bad_cmd_seq_num, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv2 = zext i16 %15 to i32
  %error_info = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %16 = ptrtoint ptr %error_info to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %error_info, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.4, i32 noundef %10, i32 noundef %conv, i32 noundef %conv2, i32 noundef %18) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_csa(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status2 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %9 = ptrtoint ptr %status2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %status2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

land.lhs.true:                                    ; preds = %if.end
  %channel = getelementptr inbounds %struct.iwl_csa_notification, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %channel, align 1
  %switch_channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %13 = ptrtoint ptr %switch_channel to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %switch_channel, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp = icmp eq i16 %12, %14
  br i1 %cmp, label %if.then6, label %land.lhs.true.do.end19_crit_edge

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %channel8 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 14
  %15 = ptrtoint ptr %channel8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %12, ptr %channel8, align 1
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %channel, align 1
  %channel10 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 14
  %18 = ptrtoint ptr %channel10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %channel10, align 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = load i16, ptr %channel, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv13 = zext i16 %22 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_csa, ptr noundef nonnull @.str.5, i32 noundef %conv13) #6
  br label %cleanup.sink.split

do.end19:                                         ; preds = %land.lhs.true.do.end19_crit_edge, %if.end.do.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  %channel21 = getelementptr inbounds %struct.iwl_csa_notification, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %channel21 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %channel21, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv22 = zext i16 %27 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %24, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %conv22) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end19, %if.then6
  %.sink = phi i1 [ true, %if.then6 ], [ false, %do.end19 ]
  tail call void @iwl_chswitch_done(ptr noundef %priv, i1 noundef zeroext %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_spectrum_measure_notif(ptr nocapture noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %state = getelementptr inbounds %struct.iwl_spectrum_notification, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_spectrum_measure_notif, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %measure_report = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 22
  %10 = call ptr @memcpy(ptr %measure_report, ptr %data, i32 100)
  %measurement_status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 23
  %11 = ptrtoint ptr %measurement_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %measurement_status, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %measurement_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_pm_sleep_notif(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
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
  %pm_wakeup_src = getelementptr inbounds %struct.iwl_sleep_notification, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %pm_wakeup_src to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pm_wakeup_src, align 1
  %conv2 = zext i8 %11 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_pm_sleep_notif, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_pm_debug_statistics_notif(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
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
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_pm_debug_statistics_notif, ptr noundef nonnull @.str.9, i32 noundef %9) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end8_crit_edge, label %if.then

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  tail call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %9, i1 noundef zeroext true) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry.do.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_beacon_notif(ptr nocapture noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %status1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %status1, align 1
  %8 = lshr i16 %7, 8
  %rate_n_flags = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %9 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %rate_n_flags, align 1
  %11 = lshr i32 %10, 24
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %conv = zext i16 %8 to i32
  %failure_frame = getelementptr inbounds %struct.iwlagn_tx_resp, ptr %data, i32 0, i32 3
  %14 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failure_frame, align 1
  %conv7 = zext i8 %15 to i32
  %ibss_mgr_status = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6, i32 1
  %16 = ptrtoint ptr %ibss_mgr_status to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ibss_mgr_status, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %high_tsf = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 6
  %19 = ptrtoint ptr %high_tsf to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %high_tsf, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %low_tsf = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 5, i32 1
  %22 = ptrtoint ptr %low_tsf to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %low_tsf, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_beacon_notif, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv7, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %11) #6
  %25 = ptrtoint ptr %ibss_mgr_status to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %ibss_mgr_status, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %ibss_manager = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 26
  %28 = ptrtoint ptr %ibss_manager to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ibss_manager, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_add_sta_callback(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_noa_notification(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %noa_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 36
  %6 = ptrtoint ptr %noa_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %noa_data, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.body24_crit_edge, label %if.then

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.then:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %length, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %add3 = add nuw nsw i32 %conv, 21
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add3, i32 noundef 2592) #9
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.then.do.body24_crit_edge, label %if.then6

if.then.do.body24_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add1 = add nuw nsw i32 %conv, 9
  %add2 = add nuw nsw i32 %conv, 3
  %noa_attribute = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %length7 = getelementptr inbounds %struct.iwl_wipan_noa_data, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %length7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add1, ptr %length7, align 8
  %data8 = getelementptr inbounds %struct.iwl_wipan_noa_data, ptr %call9.i, i32 0, i32 2
  %14 = ptrtoint ptr %data8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -35, ptr %data8, align 4
  %15 = trunc i16 %12 to i8
  %conv9 = add i8 %15, 7
  %arrayidx11 = getelementptr [0 x i8], ptr %data8, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %arrayidx11, align 1
  %arrayidx13 = getelementptr [0 x i8], ptr %data8, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 80, ptr %arrayidx13, align 2
  %arrayidx15 = getelementptr [0 x i8], ptr %data8, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 111, ptr %arrayidx15, align 1
  %arrayidx17 = getelementptr %struct.iwl_wipan_noa_data, ptr %call9.i, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -102, ptr %arrayidx17, align 16
  %arrayidx19 = getelementptr [0 x i8], ptr %data8, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [0 x i8], ptr %data8, i32 0, i32 6
  %21 = call ptr @memcpy(ptr %arrayidx21, ptr %noa_attribute, i32 %add2)
  br label %do.body24

do.body24:                                        ; preds = %if.then6, %if.then.do.body24_crit_edge, %entry.do.body24_crit_edge
  %new_data.0 = phi ptr [ %call9.i, %if.then6 ], [ null, %if.then.do.body24_crit_edge ], [ null, %entry.do.body24_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !104
  %22 = ptrtoint ptr %noa_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %new_data.0, ptr %noa_data, align 4
  %tobool63.not = icmp eq ptr %7, null
  br i1 %tobool63.not, label %do.body24.if.end74_crit_edge, label %do.end70

do.body24.if.end74_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

do.end70:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #6
  br label %if.end74

if.end74:                                         ; preds = %do.end70, %do.body24.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_reply_statistics(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
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
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %accum_stats = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = call ptr @memset(ptr %accum_stats, i32 0, i32 1500)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_statistics, ptr noundef nonnull @.str.13) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iwlagn_rx_statistics(ptr noundef %priv, ptr noundef %rxb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_statistics(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %2) #6
  %3 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %4 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  %9 = and i32 %8, -12648448
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %sub.i = add nsw i32 %10, -4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_statistics, ptr noundef nonnull @.str.14, i32 noundef %sub.i) #6
  %statistics = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71
  %lock = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %13 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %land.end [
    i32 528, label %if.then
    i32 484, label %if.then23
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %general = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 51, i32 1
  %ofdm_ht = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 33, i32 1
  %tx12 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 38, i32 1
  %activity = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 61, i32 1
  %num_bt_kills = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 32
  %14 = ptrtoint ptr %num_bt_kills to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %num_bt_kills, align 1
  %num_bt_kills17 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 8
  %16 = ptrtoint ptr %num_bt_kills17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_bt_kills17, align 8
  %accum_num_bt_kills = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 9
  %17 = load i32, ptr %num_bt_kills, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %accum_num_bt_kills to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %accum_num_bt_kills, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %add.i211 = add i32 %21, %18
  %22 = tail call i32 @llvm.bswap.i32(i32 %add.i211) #6
  %23 = ptrtoint ptr %accum_num_bt_kills to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %accum_num_bt_kills, align 4
  br label %if.end78

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %general27 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 50
  %ofdm_ht34 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 32
  %tx37 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 37
  br label %if.end78

land.end:                                         ; preds = %entry
  %.b210 = load i1, ptr @iwlagn_rx_statistics.__already_done, align 1
  br i1 %.b210, label %land.end.cleanup_crit_edge, label %if.then43, !prof !105

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @iwlagn_rx_statistics.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 396, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %sub.i, i32 noundef 524, i32 noundef 480) #6
  br label %cleanup

if.end78:                                         ; preds = %if.then23, %if.then
  %common.0 = phi ptr [ %general, %if.then ], [ %general27, %if.then23 ]
  %rx_ofdm_ht.0 = phi ptr [ %ofdm_ht, %if.then ], [ %ofdm_ht34, %if.then23 ]
  %tx.0 = phi ptr [ %tx12, %if.then ], [ %tx37, %if.then23 ]
  %bt_activity.0 = phi ptr [ %activity, %if.then ], [ null, %if.then23 ]
  %rx_ofdm.0 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 1, i32 1
  %rx_non_phy.0 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 21, i32 1
  %flag.0 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 0, i32 2
  %rx_cck.0 = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 11, i32 1
  %24 = ptrtoint ptr %common.0 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %common.0, align 1
  %common80 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 1
  %26 = ptrtoint ptr %common80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %common80, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp82.not = icmp eq i32 %25, %27
  br i1 %cmp82.not, label %lor.rhs, label %if.end78.lor.end_crit_edge

if.end78.lor.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %flag.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flag.0, align 4
  %30 = ptrtoint ptr %statistics to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %statistics, align 8
  %32 = xor i32 %31, %29
  %33 = and i32 %32, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp86 = icmp eq i32 %33, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end78.lor.end_crit_edge
  %34 = phi i1 [ false, %if.end78.lor.end_crit_edge ], [ %cmp86, %lor.rhs ]
  %delta_stats.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73
  %max_delta_stats.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74
  %accum_stats.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %lor.end
  %i.030.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %lor.end ]
  %prev.addr.029.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %common80, %lor.end ]
  %accum.addr.027.i.i = phi ptr [ %incdec.ptr8.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %accum_stats.i, %lor.end ]
  %max_delta.addr.026.i.i = phi ptr [ %incdec.ptr7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %max_delta_stats.i, %lor.end ]
  %delta.addr.025.i.i = phi ptr [ %incdec.ptr6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %delta_stats.i, %lor.end ]
  %cur.addr.024.i.i = phi ptr [ %incdec.ptr5.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %common.0, %lor.end ]
  %35 = ptrtoint ptr %cur.addr.024.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur.addr.024.i.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %38 = ptrtoint ptr %prev.addr.029.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prev.addr.029.i.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %40)
  %cmp1.i.i = icmp ugt i32 %37, %40
  br i1 %cmp1.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = sub i32 %37, %40
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #6
  %42 = ptrtoint ptr %delta.addr.025.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %delta.addr.025.i.i, align 4
  %43 = ptrtoint ptr %accum.addr.027.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %accum.addr.027.i.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %add.i.i.i = add i32 %45, %sub.i.i
  %46 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #6
  %47 = ptrtoint ptr %accum.addr.027.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %accum.addr.027.i.i, align 4
  %48 = ptrtoint ptr %max_delta.addr.026.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_delta.addr.026.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %50)
  %cmp2.i.i = icmp ugt i32 %sub.i.i, %50
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %max_delta.addr.026.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %41, ptr %max_delta.addr.026.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %incdec.ptr.i.i = getelementptr i32, ptr %prev.addr.029.i.i, i32 1
  %incdec.ptr5.i.i = getelementptr i32, ptr %cur.addr.024.i.i, i32 1
  %incdec.ptr6.i.i = getelementptr i32, ptr %delta.addr.025.i.i, i32 1
  %incdec.ptr7.i.i = getelementptr i32, ptr %max_delta.addr.026.i.i, i32 1
  %incdec.ptr8.i.i = getelementptr i32, ptr %accum.addr.027.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20
  br i1 %exitcond.not.i.i, label %accum_stats.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

accum_stats.exit.i:                               ; preds = %for.inc.i.i
  %rx_non_phy6.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2
  %rx_non_phy8.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 1
  %rx_non_phy10.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 1
  %rx_non_phy12.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 1
  br label %for.body.i88.i

for.body.i88.i:                                   ; preds = %for.inc.i101.i.for.body.i88.i_crit_edge, %accum_stats.exit.i
  %i.030.i81.i = phi i32 [ %inc.i94.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ 0, %accum_stats.exit.i ]
  %prev.addr.029.i82.i = phi ptr [ %incdec.ptr.i95.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ %rx_non_phy6.i, %accum_stats.exit.i ]
  %accum.addr.027.i83.i = phi ptr [ %incdec.ptr8.i99.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ %rx_non_phy12.i, %accum_stats.exit.i ]
  %max_delta.addr.026.i84.i = phi ptr [ %incdec.ptr7.i98.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ %rx_non_phy10.i, %accum_stats.exit.i ]
  %delta.addr.025.i85.i = phi ptr [ %incdec.ptr6.i97.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ %rx_non_phy8.i, %accum_stats.exit.i ]
  %cur.addr.024.i86.i = phi ptr [ %incdec.ptr5.i96.i, %for.inc.i101.i.for.body.i88.i_crit_edge ], [ %rx_non_phy.0, %accum_stats.exit.i ]
  %52 = ptrtoint ptr %cur.addr.024.i86.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur.addr.024.i86.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #6
  %55 = ptrtoint ptr %prev.addr.029.i82.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %prev.addr.029.i82.i, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %57)
  %cmp1.i87.i = icmp ugt i32 %54, %57
  br i1 %cmp1.i87.i, label %if.then.i92.i, label %for.body.i88.i.for.inc.i101.i_crit_edge

for.body.i88.i.for.inc.i101.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101.i

if.then.i92.i:                                    ; preds = %for.body.i88.i
  %sub.i89.i = sub i32 %54, %57
  %58 = tail call i32 @llvm.bswap.i32(i32 %sub.i89.i) #6
  %59 = ptrtoint ptr %delta.addr.025.i85.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %delta.addr.025.i85.i, align 4
  %60 = ptrtoint ptr %accum.addr.027.i83.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %accum.addr.027.i83.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #6
  %add.i.i90.i = add i32 %62, %sub.i89.i
  %63 = tail call i32 @llvm.bswap.i32(i32 %add.i.i90.i) #6
  %64 = ptrtoint ptr %accum.addr.027.i83.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %accum.addr.027.i83.i, align 4
  %65 = ptrtoint ptr %max_delta.addr.026.i84.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_delta.addr.026.i84.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i89.i, i32 %67)
  %cmp2.i91.i = icmp ugt i32 %sub.i89.i, %67
  br i1 %cmp2.i91.i, label %if.then3.i93.i, label %if.then.i92.i.for.inc.i101.i_crit_edge

if.then.i92.i.for.inc.i101.i_crit_edge:           ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i101.i

if.then3.i93.i:                                   ; preds = %if.then.i92.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %max_delta.addr.026.i84.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %58, ptr %max_delta.addr.026.i84.i, align 4
  br label %for.inc.i101.i

for.inc.i101.i:                                   ; preds = %if.then3.i93.i, %if.then.i92.i.for.inc.i101.i_crit_edge, %for.body.i88.i.for.inc.i101.i_crit_edge
  %inc.i94.i = add nuw nsw i32 %i.030.i81.i, 1
  %incdec.ptr.i95.i = getelementptr i32, ptr %prev.addr.029.i82.i, i32 1
  %incdec.ptr5.i96.i = getelementptr i32, ptr %cur.addr.024.i86.i, i32 1
  %incdec.ptr6.i97.i = getelementptr i32, ptr %delta.addr.025.i85.i, i32 1
  %incdec.ptr7.i98.i = getelementptr i32, ptr %max_delta.addr.026.i84.i, i32 1
  %incdec.ptr8.i99.i = getelementptr i32, ptr %accum.addr.027.i83.i, i32 1
  %exitcond.not.i100.i = icmp eq i32 %inc.i94.i, 21
  br i1 %exitcond.not.i100.i, label %accum_stats.exit102.i, label %for.inc.i101.i.for.body.i88.i_crit_edge

for.inc.i101.i.for.body.i88.i_crit_edge:          ; preds = %for.inc.i101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i88.i

accum_stats.exit102.i:                            ; preds = %for.inc.i101.i
  %rx_ofdm14.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 3
  %rx_ofdm16.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 2
  %rx_ofdm18.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 2
  %rx_ofdm20.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 2
  br label %for.body.i110.i

for.body.i110.i:                                  ; preds = %for.inc.i123.i.for.body.i110.i_crit_edge, %accum_stats.exit102.i
  %i.030.i103.i = phi i32 [ %inc.i116.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ 0, %accum_stats.exit102.i ]
  %prev.addr.029.i104.i = phi ptr [ %incdec.ptr.i117.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ %rx_ofdm14.i, %accum_stats.exit102.i ]
  %accum.addr.027.i105.i = phi ptr [ %incdec.ptr8.i121.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ %rx_ofdm20.i, %accum_stats.exit102.i ]
  %max_delta.addr.026.i106.i = phi ptr [ %incdec.ptr7.i120.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ %rx_ofdm18.i, %accum_stats.exit102.i ]
  %delta.addr.025.i107.i = phi ptr [ %incdec.ptr6.i119.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ %rx_ofdm16.i, %accum_stats.exit102.i ]
  %cur.addr.024.i108.i = phi ptr [ %incdec.ptr5.i118.i, %for.inc.i123.i.for.body.i110.i_crit_edge ], [ %rx_ofdm.0, %accum_stats.exit102.i ]
  %69 = ptrtoint ptr %cur.addr.024.i108.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur.addr.024.i108.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #6
  %72 = ptrtoint ptr %prev.addr.029.i104.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %prev.addr.029.i104.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %74)
  %cmp1.i109.i = icmp ugt i32 %71, %74
  br i1 %cmp1.i109.i, label %if.then.i114.i, label %for.body.i110.i.for.inc.i123.i_crit_edge

for.body.i110.i.for.inc.i123.i_crit_edge:         ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i123.i

if.then.i114.i:                                   ; preds = %for.body.i110.i
  %sub.i111.i = sub i32 %71, %74
  %75 = tail call i32 @llvm.bswap.i32(i32 %sub.i111.i) #6
  %76 = ptrtoint ptr %delta.addr.025.i107.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %delta.addr.025.i107.i, align 4
  %77 = ptrtoint ptr %accum.addr.027.i105.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %accum.addr.027.i105.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #6
  %add.i.i112.i = add i32 %79, %sub.i111.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i.i112.i) #6
  %81 = ptrtoint ptr %accum.addr.027.i105.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %accum.addr.027.i105.i, align 4
  %82 = ptrtoint ptr %max_delta.addr.026.i106.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_delta.addr.026.i106.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i111.i, i32 %84)
  %cmp2.i113.i = icmp ugt i32 %sub.i111.i, %84
  br i1 %cmp2.i113.i, label %if.then3.i115.i, label %if.then.i114.i.for.inc.i123.i_crit_edge

if.then.i114.i.for.inc.i123.i_crit_edge:          ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i123.i

if.then3.i115.i:                                  ; preds = %if.then.i114.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %max_delta.addr.026.i106.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %75, ptr %max_delta.addr.026.i106.i, align 4
  br label %for.inc.i123.i

for.inc.i123.i:                                   ; preds = %if.then3.i115.i, %if.then.i114.i.for.inc.i123.i_crit_edge, %for.body.i110.i.for.inc.i123.i_crit_edge
  %inc.i116.i = add nuw nsw i32 %i.030.i103.i, 1
  %incdec.ptr.i117.i = getelementptr i32, ptr %prev.addr.029.i104.i, i32 1
  %incdec.ptr5.i118.i = getelementptr i32, ptr %cur.addr.024.i108.i, i32 1
  %incdec.ptr6.i119.i = getelementptr i32, ptr %delta.addr.025.i107.i, i32 1
  %incdec.ptr7.i120.i = getelementptr i32, ptr %max_delta.addr.026.i106.i, i32 1
  %incdec.ptr8.i121.i = getelementptr i32, ptr %accum.addr.027.i105.i, i32 1
  %exitcond.not.i122.i = icmp eq i32 %inc.i116.i, 20
  br i1 %exitcond.not.i122.i, label %accum_stats.exit124.i, label %for.inc.i123.i.for.body.i110.i_crit_edge

for.inc.i123.i.for.body.i110.i_crit_edge:         ; preds = %for.inc.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i110.i

accum_stats.exit124.i:                            ; preds = %for.inc.i123.i
  %rx_ofdm_ht22.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 4
  %rx_ofdm_ht24.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 3
  %rx_ofdm_ht26.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 3
  %rx_ofdm_ht28.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 3
  br label %for.body.i132.i

for.body.i132.i:                                  ; preds = %for.inc.i145.i.for.body.i132.i_crit_edge, %accum_stats.exit124.i
  %i.030.i125.i = phi i32 [ %inc.i138.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ 0, %accum_stats.exit124.i ]
  %prev.addr.029.i126.i = phi ptr [ %incdec.ptr.i139.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ %rx_ofdm_ht22.i, %accum_stats.exit124.i ]
  %accum.addr.027.i127.i = phi ptr [ %incdec.ptr8.i143.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ %rx_ofdm_ht28.i, %accum_stats.exit124.i ]
  %max_delta.addr.026.i128.i = phi ptr [ %incdec.ptr7.i142.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ %rx_ofdm_ht26.i, %accum_stats.exit124.i ]
  %delta.addr.025.i129.i = phi ptr [ %incdec.ptr6.i141.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ %rx_ofdm_ht24.i, %accum_stats.exit124.i ]
  %cur.addr.024.i130.i = phi ptr [ %incdec.ptr5.i140.i, %for.inc.i145.i.for.body.i132.i_crit_edge ], [ %rx_ofdm_ht.0, %accum_stats.exit124.i ]
  %86 = ptrtoint ptr %cur.addr.024.i130.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cur.addr.024.i130.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = ptrtoint ptr %prev.addr.029.i126.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %prev.addr.029.i126.i, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %91)
  %cmp1.i131.i = icmp ugt i32 %88, %91
  br i1 %cmp1.i131.i, label %if.then.i136.i, label %for.body.i132.i.for.inc.i145.i_crit_edge

for.body.i132.i.for.inc.i145.i_crit_edge:         ; preds = %for.body.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i145.i

if.then.i136.i:                                   ; preds = %for.body.i132.i
  %sub.i133.i = sub i32 %88, %91
  %92 = tail call i32 @llvm.bswap.i32(i32 %sub.i133.i) #6
  %93 = ptrtoint ptr %delta.addr.025.i129.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %delta.addr.025.i129.i, align 4
  %94 = ptrtoint ptr %accum.addr.027.i127.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %accum.addr.027.i127.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #6
  %add.i.i134.i = add i32 %96, %sub.i133.i
  %97 = tail call i32 @llvm.bswap.i32(i32 %add.i.i134.i) #6
  %98 = ptrtoint ptr %accum.addr.027.i127.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %accum.addr.027.i127.i, align 4
  %99 = ptrtoint ptr %max_delta.addr.026.i128.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_delta.addr.026.i128.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i133.i, i32 %101)
  %cmp2.i135.i = icmp ugt i32 %sub.i133.i, %101
  br i1 %cmp2.i135.i, label %if.then3.i137.i, label %if.then.i136.i.for.inc.i145.i_crit_edge

if.then.i136.i.for.inc.i145.i_crit_edge:          ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i145.i

if.then3.i137.i:                                  ; preds = %if.then.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %max_delta.addr.026.i128.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %92, ptr %max_delta.addr.026.i128.i, align 4
  br label %for.inc.i145.i

for.inc.i145.i:                                   ; preds = %if.then3.i137.i, %if.then.i136.i.for.inc.i145.i_crit_edge, %for.body.i132.i.for.inc.i145.i_crit_edge
  %inc.i138.i = add nuw nsw i32 %i.030.i125.i, 1
  %incdec.ptr.i139.i = getelementptr i32, ptr %prev.addr.029.i126.i, i32 1
  %incdec.ptr5.i140.i = getelementptr i32, ptr %cur.addr.024.i130.i, i32 1
  %incdec.ptr6.i141.i = getelementptr i32, ptr %delta.addr.025.i129.i, i32 1
  %incdec.ptr7.i142.i = getelementptr i32, ptr %max_delta.addr.026.i128.i, i32 1
  %incdec.ptr8.i143.i = getelementptr i32, ptr %accum.addr.027.i127.i, i32 1
  %exitcond.not.i144.i = icmp eq i32 %inc.i138.i, 10
  br i1 %exitcond.not.i144.i, label %accum_stats.exit146.i, label %for.inc.i145.i.for.body.i132.i_crit_edge

for.inc.i145.i.for.body.i132.i_crit_edge:         ; preds = %for.inc.i145.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i132.i

accum_stats.exit146.i:                            ; preds = %for.inc.i145.i
  %rx_cck30.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 5
  %rx_cck32.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 4
  %rx_cck34.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 4
  %rx_cck36.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 4
  br label %for.body.i154.i

for.body.i154.i:                                  ; preds = %for.inc.i167.i.for.body.i154.i_crit_edge, %accum_stats.exit146.i
  %i.030.i147.i = phi i32 [ %inc.i160.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ 0, %accum_stats.exit146.i ]
  %prev.addr.029.i148.i = phi ptr [ %incdec.ptr.i161.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %rx_cck30.i, %accum_stats.exit146.i ]
  %accum.addr.027.i149.i = phi ptr [ %incdec.ptr8.i165.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %rx_cck36.i, %accum_stats.exit146.i ]
  %max_delta.addr.026.i150.i = phi ptr [ %incdec.ptr7.i164.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %rx_cck34.i, %accum_stats.exit146.i ]
  %delta.addr.025.i151.i = phi ptr [ %incdec.ptr6.i163.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %rx_cck32.i, %accum_stats.exit146.i ]
  %cur.addr.024.i152.i = phi ptr [ %incdec.ptr5.i162.i, %for.inc.i167.i.for.body.i154.i_crit_edge ], [ %rx_cck.0, %accum_stats.exit146.i ]
  %103 = ptrtoint ptr %cur.addr.024.i152.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cur.addr.024.i152.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #6
  %106 = ptrtoint ptr %prev.addr.029.i148.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %prev.addr.029.i148.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %108)
  %cmp1.i153.i = icmp ugt i32 %105, %108
  br i1 %cmp1.i153.i, label %if.then.i158.i, label %for.body.i154.i.for.inc.i167.i_crit_edge

for.body.i154.i.for.inc.i167.i_crit_edge:         ; preds = %for.body.i154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i167.i

if.then.i158.i:                                   ; preds = %for.body.i154.i
  %sub.i155.i = sub i32 %105, %108
  %109 = tail call i32 @llvm.bswap.i32(i32 %sub.i155.i) #6
  %110 = ptrtoint ptr %delta.addr.025.i151.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %delta.addr.025.i151.i, align 4
  %111 = ptrtoint ptr %accum.addr.027.i149.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %accum.addr.027.i149.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #6
  %add.i.i156.i = add i32 %113, %sub.i155.i
  %114 = tail call i32 @llvm.bswap.i32(i32 %add.i.i156.i) #6
  %115 = ptrtoint ptr %accum.addr.027.i149.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %accum.addr.027.i149.i, align 4
  %116 = ptrtoint ptr %max_delta.addr.026.i150.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %max_delta.addr.026.i150.i, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i155.i, i32 %118)
  %cmp2.i157.i = icmp ugt i32 %sub.i155.i, %118
  br i1 %cmp2.i157.i, label %if.then3.i159.i, label %if.then.i158.i.for.inc.i167.i_crit_edge

if.then.i158.i.for.inc.i167.i_crit_edge:          ; preds = %if.then.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i167.i

if.then3.i159.i:                                  ; preds = %if.then.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %max_delta.addr.026.i150.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %109, ptr %max_delta.addr.026.i150.i, align 4
  br label %for.inc.i167.i

for.inc.i167.i:                                   ; preds = %if.then3.i159.i, %if.then.i158.i.for.inc.i167.i_crit_edge, %for.body.i154.i.for.inc.i167.i_crit_edge
  %inc.i160.i = add nuw nsw i32 %i.030.i147.i, 1
  %incdec.ptr.i161.i = getelementptr i32, ptr %prev.addr.029.i148.i, i32 1
  %incdec.ptr5.i162.i = getelementptr i32, ptr %cur.addr.024.i152.i, i32 1
  %incdec.ptr6.i163.i = getelementptr i32, ptr %delta.addr.025.i151.i, i32 1
  %incdec.ptr7.i164.i = getelementptr i32, ptr %max_delta.addr.026.i150.i, i32 1
  %incdec.ptr8.i165.i = getelementptr i32, ptr %accum.addr.027.i149.i, i32 1
  %exitcond.not.i166.i = icmp eq i32 %inc.i160.i, 20
  br i1 %exitcond.not.i166.i, label %accum_stats.exit168.i, label %for.inc.i167.i.for.body.i154.i_crit_edge

for.inc.i167.i.for.body.i154.i_crit_edge:         ; preds = %for.inc.i167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i154.i

accum_stats.exit168.i:                            ; preds = %for.inc.i167.i
  %tx38.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 6
  %tx40.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 5
  %tx42.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 5
  %tx44.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 5
  br label %for.body.i176.i

for.body.i176.i:                                  ; preds = %for.inc.i189.i.for.body.i176.i_crit_edge, %accum_stats.exit168.i
  %i.030.i169.i = phi i32 [ %inc.i182.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ 0, %accum_stats.exit168.i ]
  %prev.addr.029.i170.i = phi ptr [ %incdec.ptr.i183.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ %tx38.i, %accum_stats.exit168.i ]
  %accum.addr.027.i171.i = phi ptr [ %incdec.ptr8.i187.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ %tx44.i, %accum_stats.exit168.i ]
  %max_delta.addr.026.i172.i = phi ptr [ %incdec.ptr7.i186.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ %tx42.i, %accum_stats.exit168.i ]
  %delta.addr.025.i173.i = phi ptr [ %incdec.ptr6.i185.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ %tx40.i, %accum_stats.exit168.i ]
  %cur.addr.024.i174.i = phi ptr [ %incdec.ptr5.i184.i, %for.inc.i189.i.for.body.i176.i_crit_edge ], [ %tx.0, %accum_stats.exit168.i ]
  %120 = ptrtoint ptr %cur.addr.024.i174.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cur.addr.024.i174.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #6
  %123 = ptrtoint ptr %prev.addr.029.i170.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %prev.addr.029.i170.i, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %125)
  %cmp1.i175.i = icmp ugt i32 %122, %125
  br i1 %cmp1.i175.i, label %if.then.i180.i, label %for.body.i176.i.for.inc.i189.i_crit_edge

for.body.i176.i.for.inc.i189.i_crit_edge:         ; preds = %for.body.i176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i189.i

if.then.i180.i:                                   ; preds = %for.body.i176.i
  %sub.i177.i = sub i32 %122, %125
  %126 = tail call i32 @llvm.bswap.i32(i32 %sub.i177.i) #6
  %127 = ptrtoint ptr %delta.addr.025.i173.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %delta.addr.025.i173.i, align 4
  %128 = ptrtoint ptr %accum.addr.027.i171.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %accum.addr.027.i171.i, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #6
  %add.i.i178.i = add i32 %130, %sub.i177.i
  %131 = tail call i32 @llvm.bswap.i32(i32 %add.i.i178.i) #6
  %132 = ptrtoint ptr %accum.addr.027.i171.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %accum.addr.027.i171.i, align 4
  %133 = ptrtoint ptr %max_delta.addr.026.i172.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %max_delta.addr.026.i172.i, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i177.i, i32 %135)
  %cmp2.i179.i = icmp ugt i32 %sub.i177.i, %135
  br i1 %cmp2.i179.i, label %if.then3.i181.i, label %if.then.i180.i.for.inc.i189.i_crit_edge

if.then.i180.i.for.inc.i189.i_crit_edge:          ; preds = %if.then.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i189.i

if.then3.i181.i:                                  ; preds = %if.then.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %max_delta.addr.026.i172.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %126, ptr %max_delta.addr.026.i172.i, align 4
  br label %for.inc.i189.i

for.inc.i189.i:                                   ; preds = %if.then3.i181.i, %if.then.i180.i.for.inc.i189.i_crit_edge, %for.body.i176.i.for.inc.i189.i_crit_edge
  %inc.i182.i = add nuw nsw i32 %i.030.i169.i, 1
  %incdec.ptr.i183.i = getelementptr i32, ptr %prev.addr.029.i170.i, i32 1
  %incdec.ptr5.i184.i = getelementptr i32, ptr %cur.addr.024.i174.i, i32 1
  %incdec.ptr6.i185.i = getelementptr i32, ptr %delta.addr.025.i173.i, i32 1
  %incdec.ptr7.i186.i = getelementptr i32, ptr %max_delta.addr.026.i172.i, i32 1
  %incdec.ptr8.i187.i = getelementptr i32, ptr %accum.addr.027.i171.i, i32 1
  %exitcond.not.i188.i = icmp eq i32 %inc.i182.i, 26
  br i1 %exitcond.not.i188.i, label %accum_stats.exit190.i, label %for.inc.i189.i.for.body.i176.i_crit_edge

for.inc.i189.i.for.body.i176.i_crit_edge:         ; preds = %for.inc.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i176.i

accum_stats.exit190.i:                            ; preds = %for.inc.i189.i
  %tobool.not.i = icmp eq ptr %bt_activity.0, null
  br i1 %tobool.not.i, label %accum_stats.exit190.i.iwlagn_accumulative_statistics.exit_crit_edge, label %if.then.i

accum_stats.exit190.i.iwlagn_accumulative_statistics.exit_crit_edge: ; preds = %accum_stats.exit190.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_accumulative_statistics.exit

if.then.i:                                        ; preds = %accum_stats.exit190.i
  %bt_activity46.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7
  %bt_activity50.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6
  %137 = ptrtoint ptr %bt_activity.0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bt_activity.0, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #6
  %140 = ptrtoint ptr %bt_activity46.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %bt_activity46.i, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %142)
  %cmp1.i197.i = icmp ugt i32 %139, %142
  br i1 %cmp1.i197.i, label %if.then.i202.i, label %if.then.i.for.inc.i211.i_crit_edge

if.then.i.for.inc.i211.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.i

if.then.i202.i:                                   ; preds = %if.then.i
  %bt_activity52.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6
  %bt_activity48.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6
  %sub.i199.i = sub i32 %139, %142
  %143 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.i) #6
  %144 = ptrtoint ptr %bt_activity48.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %bt_activity48.i, align 4
  %145 = ptrtoint ptr %bt_activity52.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bt_activity52.i, align 4
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #6
  %add.i.i200.i = add i32 %147, %sub.i199.i
  %148 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.i) #6
  %149 = ptrtoint ptr %bt_activity52.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %bt_activity52.i, align 4
  %150 = ptrtoint ptr %bt_activity50.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bt_activity50.i, align 4
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.i, i32 %152)
  %cmp2.i201.i = icmp ugt i32 %sub.i199.i, %152
  br i1 %cmp2.i201.i, label %if.then3.i203.i, label %if.then.i202.i.for.inc.i211.i_crit_edge

if.then.i202.i.for.inc.i211.i_crit_edge:          ; preds = %if.then.i202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.i

if.then3.i203.i:                                  ; preds = %if.then.i202.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %bt_activity50.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %143, ptr %bt_activity50.i, align 4
  br label %for.inc.i211.i

for.inc.i211.i:                                   ; preds = %if.then3.i203.i, %if.then.i202.i.for.inc.i211.i_crit_edge, %if.then.i.for.inc.i211.i_crit_edge
  %incdec.ptr.i205.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 1
  %incdec.ptr5.i206.i = getelementptr i32, ptr %bt_activity.0, i32 1
  %incdec.ptr7.i208.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 1
  %154 = ptrtoint ptr %incdec.ptr5.i206.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %incdec.ptr5.i206.i, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #6
  %157 = ptrtoint ptr %incdec.ptr.i205.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %incdec.ptr.i205.i, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %159)
  %cmp1.i197.1.i = icmp ugt i32 %156, %159
  br i1 %cmp1.i197.1.i, label %if.then.i202.1.i, label %for.inc.i211.i.for.inc.i211.1.i_crit_edge

for.inc.i211.i.for.inc.i211.1.i_crit_edge:        ; preds = %for.inc.i211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.1.i

if.then.i202.1.i:                                 ; preds = %for.inc.i211.i
  %incdec.ptr8.i209.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 1
  %incdec.ptr6.i207.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 1
  %sub.i199.1.i = sub i32 %156, %159
  %160 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.1.i) #6
  %161 = ptrtoint ptr %incdec.ptr6.i207.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %incdec.ptr6.i207.i, align 4
  %162 = ptrtoint ptr %incdec.ptr8.i209.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %incdec.ptr8.i209.i, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #6
  %add.i.i200.1.i = add i32 %164, %sub.i199.1.i
  %165 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.1.i) #6
  %166 = ptrtoint ptr %incdec.ptr8.i209.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %incdec.ptr8.i209.i, align 4
  %167 = ptrtoint ptr %incdec.ptr7.i208.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %incdec.ptr7.i208.i, align 4
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.1.i, i32 %169)
  %cmp2.i201.1.i = icmp ugt i32 %sub.i199.1.i, %169
  br i1 %cmp2.i201.1.i, label %if.then3.i203.1.i, label %if.then.i202.1.i.for.inc.i211.1.i_crit_edge

if.then.i202.1.i.for.inc.i211.1.i_crit_edge:      ; preds = %if.then.i202.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.1.i

if.then3.i203.1.i:                                ; preds = %if.then.i202.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %170 = ptrtoint ptr %incdec.ptr7.i208.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %160, ptr %incdec.ptr7.i208.i, align 4
  br label %for.inc.i211.1.i

for.inc.i211.1.i:                                 ; preds = %if.then3.i203.1.i, %if.then.i202.1.i.for.inc.i211.1.i_crit_edge, %for.inc.i211.i.for.inc.i211.1.i_crit_edge
  %incdec.ptr.i205.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 2
  %incdec.ptr5.i206.1.i = getelementptr i32, ptr %bt_activity.0, i32 2
  %incdec.ptr7.i208.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 2
  %171 = ptrtoint ptr %incdec.ptr5.i206.1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %incdec.ptr5.i206.1.i, align 4
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #6
  %174 = ptrtoint ptr %incdec.ptr.i205.1.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %incdec.ptr.i205.1.i, align 4
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %176)
  %cmp1.i197.2.i = icmp ugt i32 %173, %176
  br i1 %cmp1.i197.2.i, label %if.then.i202.2.i, label %for.inc.i211.1.i.for.inc.i211.2.i_crit_edge

for.inc.i211.1.i.for.inc.i211.2.i_crit_edge:      ; preds = %for.inc.i211.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.2.i

if.then.i202.2.i:                                 ; preds = %for.inc.i211.1.i
  %incdec.ptr8.i209.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 2
  %incdec.ptr6.i207.1.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 2
  %sub.i199.2.i = sub i32 %173, %176
  %177 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.2.i) #6
  %178 = ptrtoint ptr %incdec.ptr6.i207.1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %incdec.ptr6.i207.1.i, align 4
  %179 = ptrtoint ptr %incdec.ptr8.i209.1.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %incdec.ptr8.i209.1.i, align 4
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #6
  %add.i.i200.2.i = add i32 %181, %sub.i199.2.i
  %182 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.2.i) #6
  %183 = ptrtoint ptr %incdec.ptr8.i209.1.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %incdec.ptr8.i209.1.i, align 4
  %184 = ptrtoint ptr %incdec.ptr7.i208.1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %incdec.ptr7.i208.1.i, align 4
  %186 = tail call i32 @llvm.bswap.i32(i32 %185) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.2.i, i32 %186)
  %cmp2.i201.2.i = icmp ugt i32 %sub.i199.2.i, %186
  br i1 %cmp2.i201.2.i, label %if.then3.i203.2.i, label %if.then.i202.2.i.for.inc.i211.2.i_crit_edge

if.then.i202.2.i.for.inc.i211.2.i_crit_edge:      ; preds = %if.then.i202.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.2.i

if.then3.i203.2.i:                                ; preds = %if.then.i202.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %incdec.ptr7.i208.1.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %177, ptr %incdec.ptr7.i208.1.i, align 4
  br label %for.inc.i211.2.i

for.inc.i211.2.i:                                 ; preds = %if.then3.i203.2.i, %if.then.i202.2.i.for.inc.i211.2.i_crit_edge, %for.inc.i211.1.i.for.inc.i211.2.i_crit_edge
  %incdec.ptr.i205.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 3
  %incdec.ptr5.i206.2.i = getelementptr i32, ptr %bt_activity.0, i32 3
  %incdec.ptr7.i208.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 3
  %188 = ptrtoint ptr %incdec.ptr5.i206.2.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %incdec.ptr5.i206.2.i, align 4
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #6
  %191 = ptrtoint ptr %incdec.ptr.i205.2.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %incdec.ptr.i205.2.i, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %193)
  %cmp1.i197.3.i = icmp ugt i32 %190, %193
  br i1 %cmp1.i197.3.i, label %if.then.i202.3.i, label %for.inc.i211.2.i.for.inc.i211.3.i_crit_edge

for.inc.i211.2.i.for.inc.i211.3.i_crit_edge:      ; preds = %for.inc.i211.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.3.i

if.then.i202.3.i:                                 ; preds = %for.inc.i211.2.i
  %incdec.ptr8.i209.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 3
  %incdec.ptr6.i207.2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 3
  %sub.i199.3.i = sub i32 %190, %193
  %194 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.3.i) #6
  %195 = ptrtoint ptr %incdec.ptr6.i207.2.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %incdec.ptr6.i207.2.i, align 4
  %196 = ptrtoint ptr %incdec.ptr8.i209.2.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %incdec.ptr8.i209.2.i, align 4
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #6
  %add.i.i200.3.i = add i32 %198, %sub.i199.3.i
  %199 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.3.i) #6
  %200 = ptrtoint ptr %incdec.ptr8.i209.2.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %incdec.ptr8.i209.2.i, align 4
  %201 = ptrtoint ptr %incdec.ptr7.i208.2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %incdec.ptr7.i208.2.i, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.3.i, i32 %203)
  %cmp2.i201.3.i = icmp ugt i32 %sub.i199.3.i, %203
  br i1 %cmp2.i201.3.i, label %if.then3.i203.3.i, label %if.then.i202.3.i.for.inc.i211.3.i_crit_edge

if.then.i202.3.i.for.inc.i211.3.i_crit_edge:      ; preds = %if.then.i202.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.3.i

if.then3.i203.3.i:                                ; preds = %if.then.i202.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %204 = ptrtoint ptr %incdec.ptr7.i208.2.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %194, ptr %incdec.ptr7.i208.2.i, align 4
  br label %for.inc.i211.3.i

for.inc.i211.3.i:                                 ; preds = %if.then3.i203.3.i, %if.then.i202.3.i.for.inc.i211.3.i_crit_edge, %for.inc.i211.2.i.for.inc.i211.3.i_crit_edge
  %incdec.ptr.i205.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 4
  %incdec.ptr5.i206.3.i = getelementptr i32, ptr %bt_activity.0, i32 4
  %incdec.ptr7.i208.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 4
  %205 = ptrtoint ptr %incdec.ptr5.i206.3.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %incdec.ptr5.i206.3.i, align 4
  %207 = tail call i32 @llvm.bswap.i32(i32 %206) #6
  %208 = ptrtoint ptr %incdec.ptr.i205.3.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %incdec.ptr.i205.3.i, align 4
  %210 = tail call i32 @llvm.bswap.i32(i32 %209) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %210)
  %cmp1.i197.4.i = icmp ugt i32 %207, %210
  br i1 %cmp1.i197.4.i, label %if.then.i202.4.i, label %for.inc.i211.3.i.for.inc.i211.4.i_crit_edge

for.inc.i211.3.i.for.inc.i211.4.i_crit_edge:      ; preds = %for.inc.i211.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.4.i

if.then.i202.4.i:                                 ; preds = %for.inc.i211.3.i
  %incdec.ptr8.i209.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 4
  %incdec.ptr6.i207.3.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 4
  %sub.i199.4.i = sub i32 %207, %210
  %211 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.4.i) #6
  %212 = ptrtoint ptr %incdec.ptr6.i207.3.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %incdec.ptr6.i207.3.i, align 4
  %213 = ptrtoint ptr %incdec.ptr8.i209.3.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %incdec.ptr8.i209.3.i, align 4
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #6
  %add.i.i200.4.i = add i32 %215, %sub.i199.4.i
  %216 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.4.i) #6
  %217 = ptrtoint ptr %incdec.ptr8.i209.3.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %incdec.ptr8.i209.3.i, align 4
  %218 = ptrtoint ptr %incdec.ptr7.i208.3.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %incdec.ptr7.i208.3.i, align 4
  %220 = tail call i32 @llvm.bswap.i32(i32 %219) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.4.i, i32 %220)
  %cmp2.i201.4.i = icmp ugt i32 %sub.i199.4.i, %220
  br i1 %cmp2.i201.4.i, label %if.then3.i203.4.i, label %if.then.i202.4.i.for.inc.i211.4.i_crit_edge

if.then.i202.4.i.for.inc.i211.4.i_crit_edge:      ; preds = %if.then.i202.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.4.i

if.then3.i203.4.i:                                ; preds = %if.then.i202.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %incdec.ptr7.i208.3.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %211, ptr %incdec.ptr7.i208.3.i, align 4
  br label %for.inc.i211.4.i

for.inc.i211.4.i:                                 ; preds = %if.then3.i203.4.i, %if.then.i202.4.i.for.inc.i211.4.i_crit_edge, %for.inc.i211.3.i.for.inc.i211.4.i_crit_edge
  %incdec.ptr.i205.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 5
  %incdec.ptr5.i206.4.i = getelementptr i32, ptr %bt_activity.0, i32 5
  %incdec.ptr7.i208.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 5
  %222 = ptrtoint ptr %incdec.ptr5.i206.4.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %incdec.ptr5.i206.4.i, align 4
  %224 = tail call i32 @llvm.bswap.i32(i32 %223) #6
  %225 = ptrtoint ptr %incdec.ptr.i205.4.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %incdec.ptr.i205.4.i, align 4
  %227 = tail call i32 @llvm.bswap.i32(i32 %226) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %227)
  %cmp1.i197.5.i = icmp ugt i32 %224, %227
  br i1 %cmp1.i197.5.i, label %if.then.i202.5.i, label %for.inc.i211.4.i.for.inc.i211.5.i_crit_edge

for.inc.i211.4.i.for.inc.i211.5.i_crit_edge:      ; preds = %for.inc.i211.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.5.i

if.then.i202.5.i:                                 ; preds = %for.inc.i211.4.i
  %incdec.ptr8.i209.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 5
  %incdec.ptr6.i207.4.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 5
  %sub.i199.5.i = sub i32 %224, %227
  %228 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.5.i) #6
  %229 = ptrtoint ptr %incdec.ptr6.i207.4.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %incdec.ptr6.i207.4.i, align 4
  %230 = ptrtoint ptr %incdec.ptr8.i209.4.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %incdec.ptr8.i209.4.i, align 4
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #6
  %add.i.i200.5.i = add i32 %232, %sub.i199.5.i
  %233 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.5.i) #6
  %234 = ptrtoint ptr %incdec.ptr8.i209.4.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %incdec.ptr8.i209.4.i, align 4
  %235 = ptrtoint ptr %incdec.ptr7.i208.4.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %incdec.ptr7.i208.4.i, align 4
  %237 = tail call i32 @llvm.bswap.i32(i32 %236) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.5.i, i32 %237)
  %cmp2.i201.5.i = icmp ugt i32 %sub.i199.5.i, %237
  br i1 %cmp2.i201.5.i, label %if.then3.i203.5.i, label %if.then.i202.5.i.for.inc.i211.5.i_crit_edge

if.then.i202.5.i.for.inc.i211.5.i_crit_edge:      ; preds = %if.then.i202.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.5.i

if.then3.i203.5.i:                                ; preds = %if.then.i202.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %incdec.ptr7.i208.4.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %228, ptr %incdec.ptr7.i208.4.i, align 4
  br label %for.inc.i211.5.i

for.inc.i211.5.i:                                 ; preds = %if.then3.i203.5.i, %if.then.i202.5.i.for.inc.i211.5.i_crit_edge, %for.inc.i211.4.i.for.inc.i211.5.i_crit_edge
  %incdec.ptr.i205.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 6
  %incdec.ptr5.i206.5.i = getelementptr i32, ptr %bt_activity.0, i32 6
  %incdec.ptr7.i208.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 6
  %239 = ptrtoint ptr %incdec.ptr5.i206.5.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %incdec.ptr5.i206.5.i, align 4
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #6
  %242 = ptrtoint ptr %incdec.ptr.i205.5.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %incdec.ptr.i205.5.i, align 4
  %244 = tail call i32 @llvm.bswap.i32(i32 %243) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %244)
  %cmp1.i197.6.i = icmp ugt i32 %241, %244
  br i1 %cmp1.i197.6.i, label %if.then.i202.6.i, label %for.inc.i211.5.i.for.inc.i211.6.i_crit_edge

for.inc.i211.5.i.for.inc.i211.6.i_crit_edge:      ; preds = %for.inc.i211.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.6.i

if.then.i202.6.i:                                 ; preds = %for.inc.i211.5.i
  %incdec.ptr8.i209.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 6
  %incdec.ptr6.i207.5.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 6
  %sub.i199.6.i = sub i32 %241, %244
  %245 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.6.i) #6
  %246 = ptrtoint ptr %incdec.ptr6.i207.5.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %incdec.ptr6.i207.5.i, align 4
  %247 = ptrtoint ptr %incdec.ptr8.i209.5.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %incdec.ptr8.i209.5.i, align 4
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #6
  %add.i.i200.6.i = add i32 %249, %sub.i199.6.i
  %250 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.6.i) #6
  %251 = ptrtoint ptr %incdec.ptr8.i209.5.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %incdec.ptr8.i209.5.i, align 4
  %252 = ptrtoint ptr %incdec.ptr7.i208.5.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %incdec.ptr7.i208.5.i, align 4
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.6.i, i32 %254)
  %cmp2.i201.6.i = icmp ugt i32 %sub.i199.6.i, %254
  br i1 %cmp2.i201.6.i, label %if.then3.i203.6.i, label %if.then.i202.6.i.for.inc.i211.6.i_crit_edge

if.then.i202.6.i.for.inc.i211.6.i_crit_edge:      ; preds = %if.then.i202.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i211.6.i

if.then3.i203.6.i:                                ; preds = %if.then.i202.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %255 = ptrtoint ptr %incdec.ptr7.i208.5.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %245, ptr %incdec.ptr7.i208.5.i, align 4
  br label %for.inc.i211.6.i

for.inc.i211.6.i:                                 ; preds = %if.then3.i203.6.i, %if.then.i202.6.i.for.inc.i211.6.i_crit_edge, %for.inc.i211.5.i.for.inc.i211.6.i_crit_edge
  %incdec.ptr.i205.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7, i32 7
  %incdec.ptr5.i206.6.i = getelementptr i32, ptr %bt_activity.0, i32 7
  %incdec.ptr7.i208.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 74, i32 6, i32 7
  %256 = ptrtoint ptr %incdec.ptr5.i206.6.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %incdec.ptr5.i206.6.i, align 4
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #6
  %259 = ptrtoint ptr %incdec.ptr.i205.6.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %incdec.ptr.i205.6.i, align 4
  %261 = tail call i32 @llvm.bswap.i32(i32 %260) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %258, i32 %261)
  %cmp1.i197.7.i = icmp ugt i32 %258, %261
  br i1 %cmp1.i197.7.i, label %if.then.i202.7.i, label %for.inc.i211.6.i.iwlagn_accumulative_statistics.exit_crit_edge

for.inc.i211.6.i.iwlagn_accumulative_statistics.exit_crit_edge: ; preds = %for.inc.i211.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_accumulative_statistics.exit

if.then.i202.7.i:                                 ; preds = %for.inc.i211.6.i
  %incdec.ptr8.i209.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 72, i32 6, i32 7
  %incdec.ptr6.i207.6.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 73, i32 6, i32 7
  %sub.i199.7.i = sub i32 %258, %261
  %262 = tail call i32 @llvm.bswap.i32(i32 %sub.i199.7.i) #6
  %263 = ptrtoint ptr %incdec.ptr6.i207.6.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %262, ptr %incdec.ptr6.i207.6.i, align 4
  %264 = ptrtoint ptr %incdec.ptr8.i209.6.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %incdec.ptr8.i209.6.i, align 4
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #6
  %add.i.i200.7.i = add i32 %266, %sub.i199.7.i
  %267 = tail call i32 @llvm.bswap.i32(i32 %add.i.i200.7.i) #6
  %268 = ptrtoint ptr %incdec.ptr8.i209.6.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %incdec.ptr8.i209.6.i, align 4
  %269 = ptrtoint ptr %incdec.ptr7.i208.6.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %incdec.ptr7.i208.6.i, align 4
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i199.7.i, i32 %271)
  %cmp2.i201.7.i = icmp ugt i32 %sub.i199.7.i, %271
  br i1 %cmp2.i201.7.i, label %if.then3.i203.7.i, label %if.then.i202.7.i.iwlagn_accumulative_statistics.exit_crit_edge

if.then.i202.7.i.iwlagn_accumulative_statistics.exit_crit_edge: ; preds = %if.then.i202.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_accumulative_statistics.exit

if.then3.i203.7.i:                                ; preds = %if.then.i202.7.i
  call void @__sanitizer_cov_trace_pc() #8
  %272 = ptrtoint ptr %incdec.ptr7.i208.6.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %262, ptr %incdec.ptr7.i208.6.i, align 4
  br label %iwlagn_accumulative_statistics.exit

iwlagn_accumulative_statistics.exit:              ; preds = %if.then3.i203.7.i, %if.then.i202.7.i.iwlagn_accumulative_statistics.exit_crit_edge, %for.inc.i211.6.i.iwlagn_accumulative_statistics.exit_crit_edge, %accum_stats.exit190.i.iwlagn_accumulative_statistics.exit_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %273 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load volatile i32, ptr %status.i, align 4
  %275 = and i32 %274, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool.not.i212 = icmp eq i32 %275, 0
  br i1 %tobool.not.i212, label %if.end.i, label %iwlagn_accumulative_statistics.exit.iwlagn_recover_from_statistics.exit_crit_edge

iwlagn_accumulative_statistics.exit.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %iwlagn_accumulative_statistics.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

if.end.i:                                         ; preds = %iwlagn_accumulative_statistics.exit
  %rx_statistics_jiffies.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 27
  %276 = ptrtoint ptr %rx_statistics_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rx_statistics_jiffies.i, align 8
  %sub.i213 = sub i32 %0, %277
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i213) #6
  %contexts.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx2.i.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp11.i.i = icmp ult ptr %contexts.i.i, %arrayidx2.i.i
  br i1 %cmp11.i.i, label %for.body.lr.ph.i.i, label %if.end.i.iwlagn_recover_from_statistics.exit_crit_edge

if.end.i.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %valid_contexts.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %278 = ptrtoint ptr %valid_contexts.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %valid_contexts.i.i, align 4
  %conv.i.i = zext i8 %279 to i32
  br label %for.body.i.i214

for.body.i.i214:                                  ; preds = %for.inc.i.i217.for.body.i.i214_crit_edge, %for.body.lr.ph.i.i
  %ctx.012.i.i = phi ptr [ %contexts.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i216, %for.inc.i.i217.for.body.i.i214_crit_edge ]
  %ctxid.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 7
  %280 = ptrtoint ptr %ctxid.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %ctxid.i.i, align 4
  %shl.i.i = shl nuw i32 1, %281
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i214.for.inc.i.i217_crit_edge, label %if.then.i.i215

for.body.i.i214.for.inc.i.i217_crit_edge:         ; preds = %for.body.i.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i217

if.then.i.i215:                                   ; preds = %for.body.i.i214
  %filter_flags.i.i.i = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 0, i32 14, i32 13
  %282 = ptrtoint ptr %filter_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %filter_flags.i.i.i, align 4
  %284 = and i32 %283, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool3.not.i.i = icmp eq i32 %284, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i215.for.inc.i.i217_crit_edge, label %iwl_is_any_associated.exit.i

if.then.i.i215.for.inc.i.i217_crit_edge:          ; preds = %if.then.i.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i217

for.inc.i.i217:                                   ; preds = %if.then.i.i215.for.inc.i.i217_crit_edge, %for.body.i.i214.for.inc.i.i217_crit_edge
  %incdec.ptr.i.i216 = getelementptr %struct.iwl_rxon_context, ptr %ctx.012.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i216, %arrayidx2.i.i
  br i1 %cmp.i.i, label %for.inc.i.i217.for.body.i.i214_crit_edge, label %for.inc.i.i217.iwlagn_recover_from_statistics.exit_crit_edge

for.inc.i.i217.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %for.inc.i.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

for.inc.i.i217.for.body.i.i214_crit_edge:         ; preds = %for.inc.i.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i214

iwl_is_any_associated.exit.i:                     ; preds = %if.then.i.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %call1.i)
  %cmp.i = icmp ult i32 %call1.i, 99
  br i1 %cmp.i, label %iwl_is_any_associated.exit.i.iwlagn_recover_from_statistics.exit_crit_edge, label %if.end7.i

iwl_is_any_associated.exit.i.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %iwl_is_any_associated.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

if.end7.i:                                        ; preds = %iwl_is_any_associated.exit.i
  %plcp_delta_threshold.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 33
  %285 = ptrtoint ptr %plcp_delta_threshold.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %plcp_delta_threshold.i.i, align 1
  %conv.i1.i = zext i8 %286 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %cmp.i2.i = icmp eq i8 %286, 0
  br i1 %cmp.i2.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %287 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %288, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_good_plcp_health, ptr noundef nonnull @.str.17) #6
  br label %iwlagn_recover_from_statistics.exit

if.end.i.i:                                       ; preds = %if.end7.i
  %plcp_err.i.i = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 2, i32 1
  %289 = ptrtoint ptr %plcp_err.i.i to i32
  call void @__asan_loadN_noabort(i32 %289, i32 4)
  %290 = load i32, ptr %plcp_err.i.i, align 1
  %291 = tail call i32 @llvm.bswap.i32(i32 %290) #6
  %plcp_err5.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 3, i32 2
  %292 = ptrtoint ptr %plcp_err5.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %plcp_err5.i.i, align 8
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #6
  %295 = ptrtoint ptr %rx_ofdm_ht.0 to i32
  call void @__asan_loadN_noabort(i32 %295, i32 4)
  %296 = load i32, ptr %rx_ofdm_ht.0, align 1
  %297 = tail call i32 @llvm.bswap.i32(i32 %296) #6
  %298 = ptrtoint ptr %rx_ofdm_ht22.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %rx_ofdm_ht22.i, align 8
  %300 = tail call i32 @llvm.bswap.i32(i32 %299) #6
  %301 = add i32 %291, %297
  %302 = add i32 %294, %300
  %sub9.i.i = sub i32 %301, %302
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.i.i)
  %cmp10.i.i = icmp slt i32 %sub9.i.i, 1
  br i1 %cmp10.i.i, label %if.end.i.i.iwlagn_recover_from_statistics.exit_crit_edge, label %if.end13.i.i

if.end.i.i.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

if.end13.i.i:                                     ; preds = %if.end.i.i
  %mul.i.i = mul i32 %sub9.i.i, 100
  %div.i.i = udiv i32 %mul.i.i, %call1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %conv.i1.i)
  %cmp14.i.i = icmp ugt i32 %div.i.i, %conv.i1.i
  br i1 %cmp14.i.i, label %if.then9.i, label %if.end13.i.i.iwlagn_recover_from_statistics.exit_crit_edge

if.end13.i.i.iwlagn_recover_from_statistics.exit_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_recover_from_statistics.exit

if.then9.i:                                       ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %303 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %304, i32 noundef 128, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_good_plcp_health, ptr noundef nonnull @.str.18, i32 noundef %conv.i1.i, i32 noundef %sub9.i.i, i32 noundef %call1.i) #6
  %call10.i = tail call i32 @iwl_force_rf_reset(ptr noundef %priv, i1 noundef zeroext false) #6
  br label %iwlagn_recover_from_statistics.exit

iwlagn_recover_from_statistics.exit:              ; preds = %if.then9.i, %if.end13.i.i.iwlagn_recover_from_statistics.exit_crit_edge, %if.end.i.i.iwlagn_recover_from_statistics.exit_crit_edge, %do.end.i.i, %iwl_is_any_associated.exit.i.iwlagn_recover_from_statistics.exit_crit_edge, %for.inc.i.i217.iwlagn_recover_from_statistics.exit_crit_edge, %if.end.i.iwlagn_recover_from_statistics.exit_crit_edge, %iwlagn_accumulative_statistics.exit.iwlagn_recover_from_statistics.exit_crit_edge
  %305 = ptrtoint ptr %flag.0 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %flag.0, align 4
  %307 = ptrtoint ptr %statistics to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %statistics, align 8
  %308 = call ptr @memcpy(ptr %common80, ptr %common.0, i32 80)
  %309 = call ptr @memcpy(ptr %rx_non_phy6.i, ptr %rx_non_phy.0, i32 84)
  %310 = call ptr @memcpy(ptr %rx_ofdm14.i, ptr %rx_ofdm.0, i32 80)
  %311 = call ptr @memcpy(ptr %rx_ofdm_ht22.i, ptr %rx_ofdm_ht.0, i32 40)
  %312 = call ptr @memcpy(ptr %rx_cck30.i, ptr %rx_cck.0, i32 80)
  %313 = call ptr @memcpy(ptr %tx38.i, ptr %tx.0, i32 104)
  br i1 %tobool.not.i, label %iwlagn_recover_from_statistics.exit.if.end105_crit_edge, label %if.then102

iwlagn_recover_from_statistics.exit.if.end105_crit_edge: ; preds = %iwlagn_recover_from_statistics.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then102:                                       ; preds = %iwlagn_recover_from_statistics.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bt_activity104 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 7
  %314 = call ptr @memcpy(ptr %bt_activity104, ptr %bt_activity.0, i32 32)
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %iwlagn_recover_from_statistics.exit.if.end105_crit_edge
  %rx_statistics_jiffies = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 27
  %315 = ptrtoint ptr %rx_statistics_jiffies to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %0, ptr %rx_statistics_jiffies, align 8
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status.i) #6
  %statistics_periodic = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %316 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %316, 6000
  %call107 = tail call i32 @mod_timer(ptr noundef %statistics_periodic, i32 noundef %add) #6
  %317 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load volatile i32, ptr %status.i, align 4
  %319 = and i32 %318, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %tobool110.not = icmp eq i32 %319, 0
  br i1 %tobool110.not, label %land.lhs.true, label %if.end105.if.end123_crit_edge, !prof !106

if.end105.if.end123_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

land.lhs.true:                                    ; preds = %if.end105
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %6, i32 0, i32 1
  %320 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %hdr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -99, i8 %321)
  %cmp119 = icmp eq i8 %321, -99
  br i1 %cmp119, label %if.then121, label %land.lhs.true.if.end123_crit_edge

land.lhs.true.if.end123_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then121:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @iwlagn_rx_calc_noise(ptr noundef %priv)
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %322 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %workqueue, align 4
  %run_time_calib_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 128
  %call.i218 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %323, ptr noundef %run_time_calib_work) #6
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %land.lhs.true.if.end123_crit_edge, %if.end105.if.end123_crit_edge
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %324 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %lib, align 8
  %temperature124 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %325, i32 0, i32 3
  %326 = ptrtoint ptr %temperature124 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %temperature124, align 4
  %tobool125.not = icmp eq ptr %327, null
  %brmerge = select i1 %tobool125.not, i1 true, i1 %34
  br i1 %brmerge, label %if.end123.cleanup_crit_edge, label %if.then128

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then128:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %327(ptr noundef %priv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %if.end123.cleanup_crit_edge, %if.then43, %land.end.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_setup_rx_scan_handlers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_card_state_notif(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status)
  %status2 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %9 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status2, align 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %status, align 4
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.22, ptr @.str.21
  %and4 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.22, ptr @.str.21
  %and7 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.24, ptr @.str.23
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 131072, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_card_state_notif, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, ptr noundef nonnull %cond6, ptr noundef nonnull %cond9) #6
  %and12 = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  tail call void @iwl_write32(ptr noundef %15, i32 noundef 88, i32 noundef 4) #6
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  tail call void @iwl_write_direct32(ptr noundef %17, i32 noundef 1072, i32 noundef 4) #6
  %and15 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  tail call void @iwl_write32(ptr noundef %19, i32 noundef 92, i32 noundef 4) #6
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  tail call void @iwl_write_direct32(ptr noundef %21, i32 noundef 1072, i32 noundef 4) #6
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  br i1 %tobool8.not, label %if.end.if.then27_crit_edge, label %if.then22

if.end.if.then27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_tt_enter_ct_kill(ptr noundef %priv) #6
  br label %if.end28

if.end24:                                         ; preds = %entry
  br i1 %tobool8.not, label %if.end24.if.then27_crit_edge, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end24.if.then27_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then27:                                        ; preds = %if.end24.if.then27_crit_edge, %if.end.if.then27_crit_edge
  tail call void @iwl_tt_exit_ct_kill(ptr noundef %priv) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge, %if.then22
  br i1 %tobool.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status2) #6
  br label %if.end34

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status2) #6
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  %and35 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = tail call i32 @iwl_scan_cancel(ptr noundef %priv) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %status.0.status.0. = load volatile i32, ptr %status, align 4
  %23 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status2, align 4
  %25 = xor i32 %24, %status.0.status.0.
  %26 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not = icmp eq i32 %26, 0
  br i1 %cmp.not, label %if.end39.if.end47_crit_edge, label %if.then43

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wiphy, align 8
  %31 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %status2, align 4
  %and1.i70 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i70)
  %tobool46 = icmp ne i32 %and1.i70, 0
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %30, i1 noundef zeroext %tobool46, i32 noundef 1) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end39.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_missed_beacon_notif(ptr noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
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
  %missed_beacon_threshold = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 25
  %9 = ptrtoint ptr %missed_beacon_threshold to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %missed_beacon_threshold, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ugt i32 %8, %10
  br i1 %cmp, label %do.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %total_missed_becons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1
  %13 = ptrtoint ptr %total_missed_becons to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %total_missed_becons, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %num_recvd_beacons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %16 = ptrtoint ptr %num_recvd_beacons to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_recvd_beacons, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %num_expected_beacons = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %19 = ptrtoint ptr %num_expected_beacons to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %num_expected_beacons, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_missed_beacon_notif, ptr noundef nonnull @.str.25, i32 noundef %8, i32 noundef %15, i32 noundef %18, i32 noundef %21) #6
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %status, align 4
  %24 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwl_init_sensitivity(ptr noundef %priv) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_reply_rx_phy(ptr nocapture noundef %priv, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %last_phy_res_valid = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 78
  %6 = ptrtoint ptr %last_phy_res_valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %last_phy_res_valid, align 4
  %ampdu_ref = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 77
  %7 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ampdu_ref, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %ampdu_ref, align 8
  %last_phy_res = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %last_phy_res, ptr %data, i32 60)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwlagn_rx_reply_rx(ptr noundef %priv, ptr nocapture noundef %rxb) #0 align 64 {
entry:
  %rx_status = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status) #6
  %0 = getelementptr inbounds i8, ptr %rx_status, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %3) #6
  %4 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %5 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %6, %4
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = and i32 %9, -12648448
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %last_phy_res_valid = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 78
  %12 = ptrtoint ptr %last_phy_res_valid to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %last_phy_res_valid, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.26) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp = icmp ult i32 %11, 4
  br i1 %cmp, label %do.end11, label %if.end15, !prof !106

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_rx, ptr noundef nonnull @.str.27) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %7, i32 0, i32 2
  %add.ptr = getelementptr %struct.iwl_rx_packet, ptr %7, i32 1, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %data, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv = zext i16 %20 to i32
  %add18 = add nuw nsw i32 %conv, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %11)
  %cmp19 = icmp ugt i32 %add18, %11
  br i1 %cmp19, label %do.end31, label %if.end35, !prof !106

do.end31:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev32 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev32, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_rx, ptr noundef nonnull @.str.28) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end15
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %conv
  %23 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr39, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 192
  %and1.i = and i32 %25, 1792
  %or2.i = or i32 %spec.select.i, %and1.i
  %26 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and1.i, label %if.end10.i [
    i32 0, label %if.end35.iwlagn_translate_rx_status.exit_crit_edge
    i32 1792, label %if.end35.iwlagn_translate_rx_status.exit_crit_edge201
  ]

if.end35.iwlagn_translate_rx_status.exit_crit_edge201: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_translate_rx_status.exit

if.end35.iwlagn_translate_rx_status.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_translate_rx_status.exit

if.end10.i:                                       ; preds = %if.end35
  %and11.i = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp12.not.not.i = icmp eq i32 %and11.i, 0
  br i1 %cmp12.not.not.i, label %if.end10.i.iwlagn_translate_rx_status.exit_crit_edge, label %if.end14.i

if.end10.i.iwlagn_translate_rx_status.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwlagn_translate_rx_status.exit

if.end14.i:                                       ; preds = %if.end10.i
  %27 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and1.i, label %if.end14.i.sw.default.i_crit_edge [
    i32 512, label %sw.bb.i
    i32 768, label %sw.bb21.i
  ]

if.end14.i.sw.default.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %..i = select i1 %cmp.not.i, i32 2048, i32 6144
  br label %do.end.i

sw.bb21.i:                                        ; preds = %if.end14.i
  %and22.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %sw.bb21.i.do.end.i_crit_edge, label %sw.bb21.i.sw.default.i_crit_edge

sw.bb21.i.sw.default.i_crit_edge:                 ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i

sw.bb21.i.do.end.i_crit_edge:                     ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

sw.default.i:                                     ; preds = %sw.bb21.i.sw.default.i_crit_edge, %if.end14.i.sw.default.i_crit_edge
  %and27.i = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %.57.i = select i1 %tobool28.not.i, i32 2048, i32 6144
  br label %do.end.i

do.end.i:                                         ; preds = %sw.default.i, %sw.bb21.i.do.end.i_crit_edge, %sw.bb.i
  %.sink.i = phi i32 [ %..i, %sw.bb.i ], [ 4096, %sw.bb21.i.do.end.i_crit_edge ], [ %.57.i, %sw.default.i ]
  %or30.i = or i32 %.sink.i, %or2.i
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_translate_rx_status, ptr noundef nonnull @.str.32, i32 noundef %25, i32 noundef %or30.i) #6
  br label %iwlagn_translate_rx_status.exit

iwlagn_translate_rx_status.exit:                  ; preds = %do.end.i, %if.end10.i.iwlagn_translate_rx_status.exit_crit_edge, %if.end35.iwlagn_translate_rx_status.exit_crit_edge, %if.end35.iwlagn_translate_rx_status.exit_crit_edge201
  %retval.0.i = phi i32 [ %or30.i, %do.end.i ], [ %or2.i, %if.end35.iwlagn_translate_rx_status.exit_crit_edge ], [ %or2.i, %if.end35.iwlagn_translate_rx_status.exit_crit_edge201 ], [ %or2.i, %if.end10.i.iwlagn_translate_rx_status.exit_crit_edge ]
  %cfg_phy_cnt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 1
  %30 = ptrtoint ptr %cfg_phy_cnt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cfg_phy_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %31)
  %cmp42 = icmp ugt i8 %31, 20
  br i1 %cmp42, label %do.end54, label %if.end60, !prof !106

do.end54:                                         ; preds = %iwlagn_translate_rx_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv41 = zext i8 %31 to i32
  %dev55 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %32 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev55, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 8192, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_rx, ptr noundef nonnull @.str.29, i32 noundef %conv41) #6
  br label %cleanup

if.end60:                                         ; preds = %iwlagn_translate_rx_status.exit
  %34 = and i32 %24, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %34)
  %.not = icmp eq i32 %34, 50331648
  br i1 %.not, label %if.end72, label %do.end68

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %dev69 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %35 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev69, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %36, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_reply_rx, ptr noundef nonnull @.str.30, i32 noundef %25) #6
  br label %cleanup

if.end72:                                         ; preds = %if.end60
  %rate_n_flags73 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 9
  %37 = ptrtoint ptr %rate_n_flags73 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %rate_n_flags73, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %timestamp = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 4
  %40 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %timestamp, align 1
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %43 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_status, align 8
  %phy_flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 6
  %44 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %phy_flags, align 1
  %46 = lshr i16 %45, 8
  %47 = trunc i16 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %50 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %band, align 4
  %channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 7
  %51 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %channel, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv78 = zext i16 %53 to i32
  %conv80 = zext i8 %49 to i32
  %call.i199 = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv78, i32 noundef %conv80) #6
  %div.i = udiv i32 %call.i199, 1000
  %conv82 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %54 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv82, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %freq, align 4
  %call85 = tail call i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef %39, i32 noundef %conv80) #6
  %conv86 = trunc i32 %call85 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %55 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv86, ptr %rate_idx, align 1
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %56 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %flag, align 8
  %beacon_time_stamp = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 5
  %57 = ptrtoint ptr %beacon_time_stamp to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %beacon_time_stamp, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %ucode_beacon_time = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 24
  %60 = ptrtoint ptr %ucode_beacon_time to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %ucode_beacon_time, align 4
  %arrayidx.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 8, i32 4
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 8, i32 8
  %63 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %arrayidx2.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %and3.i = and i32 %65, 255
  %and5.i = lshr i32 %65, 16
  %shr6.i = and i32 %and5.i, 255
  %arrayidx8.i = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 76, i32 8, i32 12
  %66 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %arrayidx8.i, align 1
  %68 = lshr i32 %67, 24
  %69 = tail call i32 @llvm.umax.i32(i32 %and3.i, i32 %shr6.i) #6
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 %68) #6
  %71 = lshr i32 %62, 17
  %conv.i = and i32 %71, 127
  %dev.i200 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %72 = ptrtoint ptr %dev.i200 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i200, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %73, i32 noundef 536870912, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_calc_rssi, ptr noundef nonnull @.str.33, i32 noundef %and3.i, i32 noundef %shr6.i, i32 noundef %68, i32 noundef %70, i32 noundef %conv.i) #6
  %sub.i = sub nuw nsw i32 -44, %conv.i
  %sub24.i = add nsw i32 %70, %sub.i
  %conv88 = trunc i32 %sub24.i to i8
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %74 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv88, ptr %signal, align 2
  %75 = ptrtoint ptr %dev.i200 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i200, align 4
  %sext = shl i32 %sub24.i, 24
  %conv95 = ashr exact i32 %sext, 24
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %76, i32 noundef 536870912, i1 noundef zeroext true, ptr noundef nonnull @__func__.iwlagn_rx_reply_rx, ptr noundef nonnull @.str.31, i32 noundef %conv95, i64 noundef %42) #6
  %77 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %phy_flags, align 1
  %79 = lshr i16 %78, 12
  %80 = trunc i16 %79 to i8
  %conv102 = and i8 %80, 7
  %antenna = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 12
  %81 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv102, ptr %antenna, align 1
  %82 = and i16 %78, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool106.not = icmp eq i16 %82, 0
  br i1 %tobool106.not, label %if.end72.if.end110_crit_edge, label %if.then107

if.end72.if.end110_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then107:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 6
  %83 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %enc_flags, align 2
  %85 = or i8 %84, 1
  store i8 %85, ptr %enc_flags, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end72.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %78)
  %tobool114.not = icmp sgt i16 %78, -1
  br i1 %tobool114.not, label %if.end110.if.end118_crit_edge, label %if.then115

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 512, ptr %flag, align 8
  %ampdu_ref = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 77
  %87 = ptrtoint ptr %ampdu_ref to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ampdu_ref, align 8
  %ampdu_reference = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 3
  %89 = ptrtoint ptr %ampdu_reference to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %ampdu_reference, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end110.if.end118_crit_edge
  %and119 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end125_crit_edge, label %if.then121

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %90 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %bf.load122 = load i16, ptr %encoding, align 1
  %bf.clear123 = and i16 %bf.load122, 16383
  %bf.set124 = or i16 %bf.clear123, 16384
  store i16 %bf.set124, ptr %encoding, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end118.if.end125_crit_edge
  %and126 = and i32 %39, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %bw132 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %91 = ptrtoint ptr %bw132 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %bf.load133 = load i16, ptr %bw132, align 1
  %bf.clear134 = and i16 %bf.load133, -14337
  %bf.set131 = or i16 %bf.clear134, 6144
  %bf.clear134.sink = select i1 %tobool127.not, i16 %bf.clear134, i16 %bf.set131
  store i16 %bf.clear134.sink, ptr %bw132, align 1
  %and137 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end125.if.end144_crit_edge, label %if.then139

if.end125.if.end144_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then139:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %enc_flags140 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 6
  %92 = ptrtoint ptr %enc_flags140 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %enc_flags140, align 2
  %94 = or i8 %93, 4
  store i8 %94, ptr %enc_flags140, align 2
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %if.end125.if.end144_crit_edge
  %and145 = and i32 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end152_crit_edge, label %if.then147

if.end144.if.end152_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then147:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  %enc_flags148 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 6
  %95 = ptrtoint ptr %enc_flags148 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %enc_flags148, align 2
  %97 = or i8 %96, 8
  store i8 %97, ptr %enc_flags148, align 2
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %if.end144.if.end152_crit_edge
  call fastcc void @iwlagn_pass_packet_to_mac80211(ptr noundef %priv, ptr noundef %add.ptr, i16 noundef zeroext %20, i32 noundef %retval.0.i, ptr noundef %rxb, ptr noundef nonnull %rx_status)
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %do.end68, %do.end54, %do.end31, %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_rx_reply_compressed_ba(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_rx_reply_tx(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_notification_wait_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_bt_rx_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_rx_dispatch(ptr noundef %op_mode, ptr nocapture noundef readnone %napi, ptr noundef %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #6
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %op_mode_specific = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 0, i32 1
  %notif_wait = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 350
  %call.i31 = tail call zeroext i1 @iwl_notification_wait(ptr noundef %notif_wait, ptr noundef %5) #6
  br i1 %call.i31, label %if.then.i, label %entry.iwl_notification_wait_notify.exit_crit_edge

entry.iwl_notification_wait_notify.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_notification_wait_notify.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %notif_waitq.i.i = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 363
  tail call void @__wake_up(ptr noundef %notif_waitq.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #6
  br label %iwl_notification_wait_notify.exit

iwl_notification_wait_notify.exit:                ; preds = %if.then.i, %entry.iwl_notification_wait_notify.exit_crit_edge
  %rx_handlers = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 95
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hdr, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [255 x ptr], ptr %rx_handlers, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %iwl_notification_wait_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rx_handlers_stats = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 406
  %arrayidx4 = getelementptr [255 x i32], ptr %rx_handlers_stats, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %arrayidx4, align 4
  %12 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdr, align 1
  %idxprom8 = zext i8 %13 to i32
  %arrayidx9 = getelementptr [255 x ptr], ptr %rx_handlers, i32 0, i32 %idxprom8
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  tail call void %15(ptr noundef %op_mode_specific, ptr noundef %rxb) #6
  br label %if.end

do.end:                                           ; preds = %iwl_notification_wait_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_op_mode, ptr %op_mode, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %op_mode_specific to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %op_mode_specific, align 8
  %call14 = tail call ptr @iwl_get_cmd_string(ptr noundef %19, i32 noundef %idxprom) #6
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hdr, align 1
  %conv = zext i8 %21 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_rx_dispatch, ptr noundef nonnull @.str.3, ptr noundef %call14, i32 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwl_get_cmd_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_rx_calc_noise(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %beacon_silence_rssi_a = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 9
  %0 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %beacon_silence_rssi_a, align 1
  %2 = lshr i32 %1, 24
  %beacon_silence_rssi_b = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 10
  %3 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %beacon_silence_rssi_b, align 1
  %5 = lshr i32 %4, 24
  %beacon_silence_rssi_c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 2, i32 11
  %6 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %beacon_silence_rssi_c, align 1
  %8 = lshr i32 %7, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %tobool.not = icmp ult i32 %1, 16777216
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %4)
  %tobool3.not = icmp ult i32 %4, 16777216
  %inc6 = select i1 %tobool.not, i32 1, i32 2
  %num_active_rx.1 = select i1 %tobool3.not, i32 %spec.select, i32 %inc6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %7)
  %tobool8.not = icmp ugt i32 %7, 16777215
  %inc11 = zext i1 %tobool8.not to i32
  %num_active_rx.2 = add nuw nsw i32 %num_active_rx.1, %inc11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_active_rx.2)
  %tobool13.not = icmp eq i32 %num_active_rx.2, 0
  br i1 %tobool13.not, label %entry.do.end_crit_edge, label %if.then14

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %total_silence.1 = add nuw nsw i32 %5, %2
  %total_silence.2 = add nuw nsw i32 %total_silence.1, %8
  %div36.lhs.trunc = trunc i32 %total_silence.2 to i16
  %div36.rhs.trunc = trunc i32 %num_active_rx.2 to i16
  %div3637 = udiv i16 %div36.lhs.trunc, %div36.rhs.trunc
  %div36.zext = zext i16 %div3637 to i32
  %sub = add nsw i32 %div36.zext, -107
  br label %do.end

do.end:                                           ; preds = %if.then14, %entry.do.end_crit_edge
  %last_rx_noise.0 = phi i32 [ %sub, %if.then14 ], [ -127, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_rx_calc_noise, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %5, i32 noundef %8, i32 noundef %last_rx_noise.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write_direct32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_enter_ct_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_exit_ct_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_scan_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_sensitivity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwlagn_hwrate_to_mac80211_idx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwlagn_pass_packet_to_mac80211(ptr noundef %priv, ptr noundef %hdr, i16 noundef zeroext %len, i32 noundef %ampdu_status, ptr nocapture noundef %rxb, ptr nocapture noundef %stats) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hdr, align 2
  %is_open = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 68
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 8192, i1 noundef zeroext true, ptr noundef nonnull @__func__.iwlagn_pass_packet_to_mac80211, ptr noundef nonnull @.str.34) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iwlwifi_mod_params to i32))
  %6 = load i32, ptr @iwlwifi_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %filter_flags.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 13
  %7 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filter_flags.i, align 4
  %and.i = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %9 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.not.i = icmp eq i16 %9, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond, label %land.lhs.true.if.end10_crit_edge, label %do.end.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end.i:                                         ; preds = %land.lhs.true
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_set_decrypted_flag, ptr noundef nonnull @.str.36, i32 noundef %ampdu_status) #6
  %and8.i = and i32 %ampdu_status, 1792
  %12 = zext i32 %and8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and8.i, label %do.end.i.if.end10_crit_edge [
    i32 768, label %sw.bb.i
    i32 256, label %do.end.sw.bb13_crit_edge.i
    i32 512, label %do.end.sw.bb26_crit_edge.i
  ]

do.end.i.if.end10_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end.sw.bb13_crit_edge.i:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre.i = and i32 %ampdu_status, 6144
  br label %sw.bb13.i

do.end.sw.bb26_crit_edge.i:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %.pre46.i = and i32 %ampdu_status, 6144
  br label %sw.bb26.i

sw.bb.i:                                          ; preds = %do.end.i
  %and9.i = and i32 %ampdu_status, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and9.i)
  %cmp.i = icmp eq i32 %and9.i, 4096
  br i1 %cmp.i, label %sw.bb.i.if.end10_crit_edge, label %sw.bb.i.sw.bb13.i_crit_edge

sw.bb.i.sw.bb13.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb13.i

sw.bb.i.if.end10_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

sw.bb13.i:                                        ; preds = %sw.bb.i.sw.bb13.i_crit_edge, %do.end.sw.bb13_crit_edge.i
  %and14.pre-phi.i = phi i32 [ %.pre.i, %do.end.sw.bb13_crit_edge.i ], [ %and9.i, %sw.bb.i.sw.bb13.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and14.pre-phi.i)
  %cmp15.i = icmp eq i32 %and14.pre-phi.i, 2048
  br i1 %cmp15.i, label %iwlagn_set_decrypted_flag.exit, label %sw.bb13.i.sw.bb26.i_crit_edge

sw.bb13.i.sw.bb26.i_crit_edge:                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb26.i

sw.bb26.i:                                        ; preds = %sw.bb13.i.sw.bb26.i_crit_edge, %do.end.sw.bb26_crit_edge.i
  %and27.pre-phi.i = phi i32 [ %.pre46.i, %do.end.sw.bb26_crit_edge.i ], [ %and14.pre-phi.i, %sw.bb13.i.sw.bb26.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %and27.pre-phi.i)
  %cmp28.i = icmp eq i32 %and27.pre-phi.i, 6144
  br i1 %cmp28.i, label %do.end34.i, label %sw.bb26.i.if.end10_crit_edge

sw.bb26.i.if.end10_crit_edge:                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end34.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_set_decrypted_flag, ptr noundef nonnull @.str.38) #6
  %flag.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %stats, i32 0, i32 4
  %15 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %16, 2
  store i32 %or.i, ptr %flag.i, align 8
  br label %if.end10

iwlagn_set_decrypted_flag.exit:                   ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 16777216, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwlagn_set_decrypted_flag, ptr noundef nonnull @.str.37) #6
  br label %cleanup

if.end10:                                         ; preds = %do.end34.i, %sw.bb26.i.if.end10_crit_edge, %sw.bb.i.if.end10_crit_edge, %do.end.i.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %call.i = tail call ptr @__alloc_skb(i32 noundef 128, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev18 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.35) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end10
  %conv = zext i16 %len to i32
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end21.skb_tailroom.exit_crit_edge

if.end21.skb_tailroom.exit_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end21.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end21.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv)
  %cmp.not = icmp slt i32 %cond.i, %conv
  %spec.select = select i1 %cmp.not, i32 30, i32 %conv
  %call.i93 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %spec.select) #6
  %27 = call ptr @memcpy(ptr %call.i93, ptr %hdr, i32 %spec.select)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %conv)
  %tobool27.not = icmp eq i32 %spec.select, %conv
  br i1 %tobool27.not, label %skb_tailroom.exit.if.end32_crit_edge, label %if.then28

skb_tailroom.exit.if.end32_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %skb_tailroom.exit
  %sub = sub nsw i32 %conv, %spec.select
  %add.ptr = getelementptr i8, ptr %hdr, i32 %spec.select
  %28 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxb, align 4
  %call.i94 = tail call ptr @page_address(ptr noundef %29) #6
  %30 = ptrtoint ptr %call.i94 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %add = sub i32 %sub.ptr.lhs.cast, %30
  %_page_stolen.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 2
  %31 = ptrtoint ptr %_page_stolen.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %_page_stolen.i, align 4
  %32 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rxb, align 4
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !105

if.then.i.i.i:                                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %36, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %33 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %37, %if.end.i.i.i ]
  %38 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  %add.i.i.i = add i32 %40, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, 128
  br i1 %cmp.i.i.i, label %if.then.i1.i.i, label %do.end5.i.i.i, !prof !106

if.then.i1.i.i:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.39) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #6, !srcloc !108
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit.i.i
  %call.i.i.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@iwlagn_pass_packet_to_mac80211, %if.then.i.i.i.i.i)) #6
          to label %rxb_steal_page.exit [label %if.then.i.i.i.i.i], !srcloc !110

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__page_ref_mod(ptr noundef %38, i32 noundef 1) #6
  br label %rxb_steal_page.exit

rxb_steal_page.exit:                              ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i
  %42 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rxb, align 4
  %truesize = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 4
  %44 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %truesize, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %43, i32 noundef %add, i32 noundef %sub, i32 noundef %45) #6
  br label %if.end32

if.end32:                                         ; preds = %rxb_steal_page.exit, %skb_tailroom.exit.if.end32_crit_edge
  %46 = and i16 %1, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %46)
  %cmp.i96 = icmp eq i16 %46, -32768
  br i1 %cmp.i96, label %land.rhs, label %if.end32.if.end56_crit_edge

if.end32.if.end56_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

land.rhs:                                         ; preds = %if.end32
  %passive_no_rx = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 9
  %47 = ptrtoint ptr %passive_no_rx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %passive_no_rx, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool35.not = icmp eq i8 %48, 0
  br i1 %tobool35.not, label %land.rhs.if.end56_crit_edge, label %if.then43, !prof !105

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then43:                                        ; preds = %land.rhs
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx45 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp46102 = icmp ult ptr %contexts, %arrayidx45
  br i1 %cmp46102, label %for.body.lr.ph, label %if.then43.if.end56_crit_edge

if.then43.if.end56_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.body.lr.ph:                                   ; preds = %if.then43
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  %addr3 = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  %add.ptr.i = getelementptr %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ctx.0103 = phi ptr [ %contexts, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %49 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %valid_contexts, align 4
  %conv48 = zext i8 %50 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0103, i32 0, i32 7
  %51 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %52
  %and = and i32 %shl, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %for.body.for.inc_crit_edge, label %if.then50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then50:                                        ; preds = %for.body
  %bssid_addr = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0103, i32 0, i32 14, i32 2
  %53 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr3, align 4
  %55 = ptrtoint ptr %bssid_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bssid_addr, align 4
  %xor.i = xor i32 %56, %54
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.iwl_rxon_context, ptr %ctx.0103, i32 0, i32 14, i32 2, i32 4
  %59 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %60, %58
  %xor3.i = zext i16 %xor37.i to i32
  %or.i97 = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i97)
  %cmp.i98 = icmp eq i32 %or.i97, 0
  br i1 %cmp.i98, label %if.end54, label %if.then50.for.inc_crit_edge

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end54:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iwlagn_lift_passive_no_rx(ptr noundef %priv) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %if.then50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.0103, i32 1
  %cmp46 = icmp ult ptr %incdec.ptr, %arrayidx45
  br i1 %cmp46, label %for.inc.for.body_crit_edge, label %for.inc.if.end56_crit_edge

for.inc.if.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end56:                                         ; preds = %for.inc.if.end56_crit_edge, %if.then43.if.end56_crit_edge, %land.rhs.if.end56_crit_edge, %if.end32.if.end56_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %61 = call ptr @memcpy(ptr %cb.i, ptr %stats, i32 48)
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %napi = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 14
  %64 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %napi, align 8
  tail call void @ieee80211_rx_napi(ptr noundef %63, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef %65) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end17, %iwlagn_set_decrypted_flag.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_lift_passive_no_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_notification_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !84, !86, !88, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__func__.iwl_force_rf_reset, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 176, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 185, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 201, i32 2}
!7 = !{ptr @__func__.iwl_rx_dispatch, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 1016, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 36, i32 2}
!12 = !{ptr @__func__.iwlagn_rx_csa, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 61, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 65, i32 3}
!17 = !{ptr @__func__.iwlagn_rx_spectrum_measure_notif, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 79, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__func__.iwlagn_rx_pm_sleep_notif, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 94, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.iwlagn_rx_pm_debug_statistics_notif, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 104, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 106, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.iwlagn_rx_beacon_notif, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 118, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 906, i32 13}
!34 = !{ptr @__func__.iwlagn_rx_reply_statistics, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 460, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__func__.iwlagn_rx_statistics, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 359, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 394, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.iwlagn_good_plcp_health, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 145, i32 3}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 159, i32 3}
!49 = !{ptr @__func__.iwlagn_rx_calc_noise, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 271, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__func__.iwlagn_rx_card_state_notif, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 476, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__func__.iwlagn_rx_missed_beacon_notif, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 527, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 789, i32 3}
!64 = !{ptr @__func__.iwlagn_rx_reply_rx, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 794, i32 3}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 804, i32 3}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 813, i32 3}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 820, i32 3}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 848, i32 2}
!75 = !{ptr @__func__.iwlagn_translate_rx_status, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 727, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__func__.iwlagn_calc_rssi, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 766, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__func__.iwlagn_pass_packet_to_mac80211, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 618, i32 3}
!83 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 633, i32 3}
!86 = !{ptr @__func__.iwlagn_set_decrypted_flag, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 572, i32 2}
!88 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 586, i32 4}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/rx.c", i32 593, i32 4}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 2158909824}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i8 0, i8 2}
!108 = !{i64 2153357135, i64 2153357619, i64 2153357172, i64 2153357228, i64 2153357262, i64 2153357286, i64 2153357327, i64 2153357348, i64 2153357376, i64 2153357410}
!109 = !{i64 2148397336, i64 2148397362, i64 2148397391, i64 2148397425, i64 2148397456, i64 2148397479}
!110 = !{i64 2148879151, i64 2148879156, i64 2148879169, i64 2148879213, i64 2148879247, i64 2148879268}
