; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/microchip/wilc1000/hif.c_pt.bc'
source_filename = "../drivers/net/wireless/microchip/wilc1000/hif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wid = type { i16, i32, i32, ptr }
%struct.wilc_vif = type { i8, i8, i32, i32, i32, %struct.net_device_stats, ptr, [6 x i8], ptr, ptr, i8, %struct.timer_list, %struct.timer_list, %struct.rf_info, %struct.tcp_ack_filter, i8, %struct.wilc_priv, %struct.list_head, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rf_info = type { i8, i8, i32, i32, i32 }
%struct.tcp_ack_filter = type { [50 x %struct.ack_session_info], [256 x %struct.pending_acks], i32, i32, i32, i8 }
%struct.ack_session_info = type { i32, i32, i16, i16, i16 }
%struct.pending_acks = type { i32, i32, ptr }
%struct.wilc_priv = type { %struct.wireless_dev, ptr, %struct.wilc_wfi_p2p_listen_params, i64, i8, [6 x i8], %struct.sta_info, ptr, ptr, ptr, %struct.wilc_pmkid_attr, [4 x [13 x i8]], [4 x i8], ptr, [9 x ptr], [9 x ptr], i8, %struct.mutex, i8, i32, i64 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.147, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.147 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.148 }
%union.anon.148 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wilc_wfi_p2p_listen_params = type { ptr, i32, i64 }
%struct.sta_info = type { [9 x [6 x i8]] }
%struct.wilc_pmkid_attr = type { i8, [16 x %struct.wilc_pmkid] }
%struct.wilc_pmkid = type { [6 x i8], [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.host_if_drv = type { %struct.wilc_user_scan_req, %struct.wilc_conn_info, %struct.wilc_remain_ch, i64, i32, [6 x i8], %struct.timer_list, ptr, %struct.timer_list, ptr, %struct.timer_list, ptr, i8, [256 x i8] }
%struct.wilc_user_scan_req = type { ptr, ptr, i32 }
%struct.wilc_conn_info = type { [6 x i8], i8, i32, i8, ptr, i32, ptr, i16, i16, ptr, ptr, ptr }
%struct.wilc_remain_ch = type { i16, i32, ptr, ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.cfg80211_bss = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i16, i16, [6 x i8], i8, [4 x i8], i8, i8, [3 x i8], [0 x i8] }
%struct.wilc_join_bss_param = type <{ [32 x i8], i8, i8, i8, i16, [6 x i8], [6 x i8], i16, i8, [13 x i8], i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [2 x i8], i8, i32, i8, i8, %union.anon.186 }>
%union.anon.186 = type { %struct.wilc_noa_opp_enable }
%struct.wilc_noa_opp_enable = type <{ i8, i8, i32, i32, i32 }>
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bss_ies = type { i64, %struct.callback_head, i32, i8, [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.wilc_noa_opp_disable = type <{ i8, i32, i32, i32 }>
%struct.ieee80211_wmm_param_ie = type { i8, i8, [3 x i8], i8, i8, i8, i8, i8, [4 x %struct.ieee80211_wmm_ac_param] }
%struct.ieee80211_wmm_ac_param = type { i8, i8, i16 }
%struct.wilc_wep_key = type { i8, i8, [0 x i8] }
%struct.wilc_ap_wpa_ptk = type { [6 x i8], i8, i8, [0 x i8] }
%struct.wilc_sta_wpa_ptk = type { [6 x i8], i8, [0 x i8] }
%struct.wilc_gtk_key = type { [6 x i8], [8 x i8], i8, i8, [0 x i8] }
%struct.wilc_drv_handler = type <{ i32, i8 }>
%struct.cfg_param_attr = type { i32, i16, i16, i16, i16 }
%struct.host_if_msg = type { %union.wilc_message_body, ptr, %struct.work_struct, ptr, %struct.completion, i8 }
%union.wilc_message_body = type { %struct.wilc_remain_ch }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wilc = type { ptr, ptr, i32, i8, ptr, i8, i32, i8, i32, i32, i8, %struct.list_head, %struct.mutex, %struct.srcu_struct, i8, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, i32, %struct.mutex, %struct.wilc_cfg_frame, i32, i8, ptr, i32, ptr, [4 x %struct.txq_handle], i32, %struct.wilc_tx_queue_status, %struct.rxq_entry_t, ptr, ptr, i8, ptr, %struct.wilc_cfg, ptr, ptr, %struct.mutex, i8, i8, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, [5 x i32] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wilc_cfg_frame = type { %struct.wilc_cfg_cmd_hdr, [1468 x i8] }
%struct.wilc_cfg_cmd_hdr = type { i8, i8, i16, i32 }
%struct.txq_handle = type { %struct.txq_entry_t, i16, %struct.txq_fw_recv_queue_stat }
%struct.txq_entry_t = type { %struct.list_head, i32, i8, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.txq_fw_recv_queue_stat = type { i8, i8 }
%struct.wilc_tx_queue_status = type { [1000 x i8], i16, [4 x i16], i16, i8 }
%struct.rxq_entry_t = type { %struct.list_head, ptr, i32 }
%struct.wilc_cfg = type { ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.wilc_rcvd_net_info = type { i8, i8, i16, ptr }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.153 }
%union.anon.153 = type { %struct.anon.159, [16 x i8] }
%struct.anon.159 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wilc_reg_frame = type { i8, i8, i16 }
%struct.cfg80211_beacon_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.station_parameters = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, ptr, ptr, i8, i8, i32, i16, ptr, i8, ptr, i8, ptr, i8, i8, i8, i32, ptr, i8, i16, %struct.sta_txpwr, ptr }
%struct.sta_txpwr = type { i16, i32 }
%struct.wilc_del_all_sta = type { i8, [9 x [6 x i8]] }
%struct.wilc_set_multicast = type { i32, i32, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Already scan\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Don't do obss scan\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to send scan parameters\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wilc_parse_join_bss_param.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/microchip/wilc1000/hif.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to send disconnect\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: conn_result is NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wilc_disconnect = private unnamed_addr constant [16 x i8] c"wilc_disconnect\00", align 1
@wilc_set_wowlan_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Failed to send wowlan trigger config packet\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wilc_set_wowlan_trigger\00", [40 x i8] zeroinitializer }, align 32
@wilc_set_wowlan_trigger._entry_ptr = internal global ptr @wilc_set_wowlan_trigger._entry, section ".printk_index", align 4
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to send remove wep key config packet\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to send wep default key config packet\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add wep key config packet\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to add wep ap key config packet\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get mac address\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set mac address\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set driver handler\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set inactive mac\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get inactive time\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RSSI level is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.wilc_get_rssi = private unnamed_addr constant [14 x i8] c"wilc_get_rssi\00", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get RSSI value\0A\00", [38 x i8] zeroinitializer }, align 32
@wilc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&vif->periodic_rssi)\00", [42 x i8] zeroinitializer }, align 32
@wilc_init.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&hif_drv->scan_timer)\00", [41 x i8] zeroinitializer }, align 32
@wilc_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&hif_drv->connect_timer)\00", [38 x i8] zeroinitializer }, align 32
@wilc_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(&hif_drv->remain_on_ch_timer)\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: hif driver is NULL\00", [41 x i8] zeroinitializer }, align 32
@__func__.wilc_deinit = private unnamed_addr constant [12 x i8] c"wilc_deinit\00", align 1
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"driver not init[%p]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: enqueue work failed\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.wilc_network_info_received = private unnamed_addr constant [27 x i8] c"wilc_network_info_received\00", align 1
@__func__.wilc_gnrl_async_info_received = private unnamed_addr constant [30 x i8] c"wilc_gnrl_async_info_received\00", align 1
@__func__.wilc_scan_complete_received = private unnamed_addr constant [28 x i8] c"wilc_scan_complete_received\00", align 1
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to set remain on channel\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.wilc_remain_on_channel = private unnamed_addr constant [23 x i8] c"wilc_remain_on_channel\00", align 1
@__func__.wilc_listen_state_expired = private unnamed_addr constant [26 x i8] c"wilc_listen_state_expired\00", align 1
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to frame register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to send add beacon\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to send delete beacon\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to send add station\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to del station\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to send delete all station\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to send edit station\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to send power management\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.wilc_setup_multicast_filter = private unnamed_addr constant [28 x i8] c"wilc_setup_multicast_filter\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to send config packet\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.get_periodic_rssi = private unnamed_addr constant [18 x i8] c"get_periodic_rssi\00", align 1
@__func__.wilc_get_stats_async = private unnamed_addr constant [21 x i8] c"wilc_get_stats_async\00", align 1
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set abort running\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: hif driver is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.handle_scan_done = private unnamed_addr constant [17 x i8] c"handle_scan_done\00", align 1
@__func__.handle_connect_timeout = private unnamed_addr constant [23 x i8] c"handle_connect_timeout\00", align 1
@__func__.listen_timer_cb = private unnamed_addr constant [16 x i8] c"listen_timer_cb\00", align 1
@wilc_get_vif_from_idx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@wilc_enqueue_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&msg->work)\00", [34 x i8] zeroinitializer }, align 32
@__func__.handle_rcvd_gnrl_async_info = private unnamed_addr constant [28 x i8] c"handle_rcvd_gnrl_async_info\00", align 1
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"wilc_parse_assoc_resp_info() returned error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to send association response\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.host_int_handle_disconnect = private unnamed_addr constant [27 x i8] c"host_int_handle_disconnect\00", align 1
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set remain channel\0A\00", [34 x i8] zeroinitializer }, align 32
@wilc_handle_roc_expired.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wilc1000\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wilc_handle_roc_expired\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Not in listen state\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to send setup multicast\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 64, i64 208]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 171, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 177, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 256, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 373, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 699, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 719, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 986, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1054, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1070, i32 7 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1098, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1137, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1298, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1315, i32 25 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1365, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1387, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1408, i32 25 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1418, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1429, i32 25 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1439, i32 25 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1530, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1533, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1534, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1535, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1550, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1590, i32 25 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1610, i32 25 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1709, i32 25 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1758, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1795, i32 25 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1815, i32 25 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1839, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1865, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1900, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1924, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1947, i32 25 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 306, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 135, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 141, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 110, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 77, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 602, i32 9 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 550, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 888, i32 26 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 897, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [49 x i8] c"../drivers/net/wireless/microchip/wilc1000/hif.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 962, i32 25 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @wilc_set_wowlan_trigger._entry, ptr @wilc_set_wowlan_trigger._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @wilc_init.__key, ptr @.str.21, ptr @wilc_init.__key.22, ptr @.str.23, ptr @wilc_init.__key.24, ptr @.str.25, ptr @wilc_init.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @wilc_enqueue_work.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_set_wowlan_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_init.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wilc_enqueue_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @wilc_get_vif_idx(ptr nocapture noundef readonly %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vif, align 8
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_scan(ptr noundef %vif, i8 noundef zeroext %scan_source, i8 noundef zeroext %scan_type, ptr noundef %ch_freq_list, i8 noundef zeroext %ch_list_len, ptr noundef %scan_result_fn, ptr noundef %user_arg, ptr noundef %request) local_unnamed_addr #1 align 64 {
entry:
  %scan_source.addr = alloca i8, align 1
  %scan_type.addr = alloca i8, align 1
  %wid_list = alloca [6 x %struct.wid], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scan_source.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %scan_source, ptr %scan_source.addr, align 1
  %1 = ptrtoint ptr %scan_type.addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %scan_type, ptr %scan_type.addr, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %wid_list) #8
  %2 = call ptr @memset(ptr %wid_list, i32 255, i32 96)
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %3 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_drv1, align 8
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %hif_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hif_state, align 8
  %7 = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str) #11
  br label %error

if.end:                                           ; preds = %entry
  %connecting = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 15
  %11 = ptrtoint ptr %connecting to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %connecting, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev5 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %13 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #11
  br label %error

if.end6:                                          ; preds = %if.end
  %ch_cnt = getelementptr inbounds %struct.wilc_user_scan_req, ptr %4, i32 0, i32 2
  %15 = ptrtoint ptr %ch_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ch_cnt, align 8
  %n_ssids = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 1
  %16 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end6.if.end52_crit_edge, label %for.body.preheader

if.end6.if.end52_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body.preheader:                               ; preds = %if.end6
  %18 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %request, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %valuesize.0232 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0231 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ssid_len = getelementptr %struct.cfg80211_ssid, ptr %19, i32 %i.0231, i32 1
  %20 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ssid_len, align 1
  %conv = zext i8 %21 to i32
  %add = add nuw nsw i32 %valuesize.0232, 1
  %add12 = add nuw nsw i32 %add, %conv
  %inc = add nuw i32 %i.0231, 1
  %phi.cast = and i32 %add12, 255
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %add15 = add nuw nsw i32 %phi.cast, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 3264) #12
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %for.end.if.end52_crit_edge, label %if.then17

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then17:                                        ; preds = %for.end
  %22 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 14743, ptr %wid_list, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %val, align 4
  %25 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_ssids, align 4
  %conv24 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp27233.not = icmp eq i32 %26, 0
  br i1 %cmp27233.not, label %if.then17.for.end46_crit_edge, label %for.body29.preheader

if.then17.for.end46_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body29.preheader:                             ; preds = %if.then17
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  %28 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %request, align 8
  %30 = load ptr, ptr %request, align 8
  %31 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_ssids, align 4
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.preheader
  %buffer.0235 = phi ptr [ %add.ptr, %for.body29.for.body29_crit_edge ], [ %incdec.ptr, %for.body29.preheader ]
  %i.1234 = phi i32 [ %inc45, %for.body29.for.body29_crit_edge ], [ 0, %for.body29.preheader ]
  %ssid_len32 = getelementptr %struct.cfg80211_ssid, ptr %29, i32 %i.1234, i32 1
  %33 = ptrtoint ptr %ssid_len32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ssid_len32, align 1
  %incdec.ptr33 = getelementptr i8, ptr %buffer.0235, i32 1
  %35 = ptrtoint ptr %buffer.0235 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %buffer.0235, align 1
  %arrayidx35 = getelementptr %struct.cfg80211_ssid, ptr %29, i32 %i.1234
  %36 = load i8, ptr %ssid_len32, align 1
  %conv39 = zext i8 %36 to i32
  %37 = call ptr @memcpy(ptr %incdec.ptr33, ptr %arrayidx35, i32 %conv39)
  %ssid_len42 = getelementptr %struct.cfg80211_ssid, ptr %30, i32 %i.1234, i32 1
  %38 = ptrtoint ptr %ssid_len42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ssid_len42, align 1
  %conv43 = zext i8 %39 to i32
  %add.ptr = getelementptr i8, ptr %incdec.ptr33, i32 %conv43
  %inc45 = add nuw i32 %i.1234, 1
  %cmp27 = icmp ult i32 %inc45, %32
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end46_crit_edge

for.body29.for.end46_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end46

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.end46:                                        ; preds = %for.body29.for.end46_crit_edge, %if.then17.for.end46_crit_edge
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add15, ptr %size, align 4
  br label %if.end52

if.end52:                                         ; preds = %for.end46, %for.end.if.end52_crit_edge, %if.end6.if.end52_crit_edge
  %index.0 = phi i32 [ 1, %for.end46 ], [ 0, %for.end.if.end52_crit_edge ], [ 0, %if.end6.if.end52_crit_edge ]
  %search_ssid_vals.0 = phi ptr [ %call9.i, %for.end46 ], [ null, %for.end.if.end52_crit_edge ], [ null, %if.end6.if.end52_crit_edge ]
  %arrayidx53 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.0
  %41 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 16517, ptr %arrayidx53, align 4
  %type56 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.0, i32 1
  %42 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %type56, align 4
  %ie = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 4
  %43 = ptrtoint ptr %ie to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ie, align 8
  %val58 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.0, i32 3
  %45 = ptrtoint ptr %val58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %val58, align 4
  %ie_len = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 5
  %46 = ptrtoint ptr %ie_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ie_len, align 4
  %size60 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.0, i32 2
  %48 = ptrtoint ptr %size60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %size60, align 4
  %inc61 = add nuw nsw i32 %index.0, 1
  %arrayidx62 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc61
  %49 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 7, ptr %arrayidx62, align 4
  %type65 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc61, i32 1
  %50 = ptrtoint ptr %type65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %type65, align 4
  %size67 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc61, i32 2
  %51 = ptrtoint ptr %size67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %size67, align 4
  %val69 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc61, i32 3
  %52 = ptrtoint ptr %val69 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %scan_type.addr, ptr %val69, align 4
  %inc70 = or i32 %index.0, 2
  %53 = ptrtoint ptr %scan_type.addr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %scan_type.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp72 = icmp eq i8 %54, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end52.if.end92_crit_edge

if.end52.if.end92_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true74:                                  ; preds = %if.end52
  %duration = getelementptr inbounds %struct.cfg80211_scan_request, ptr %request, i32 0, i32 6
  %55 = ptrtoint ptr %duration to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %duration, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool76.not = icmp eq i16 %56, 0
  br i1 %tobool76.not, label %land.lhs.true74.if.end92_crit_edge, label %if.then77

land.lhs.true74.if.end92_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx78 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc70
  %57 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 4109, ptr %arrayidx78, align 4
  %type81 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc70, i32 1
  %58 = ptrtoint ptr %type81 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %type81, align 4
  %size83 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc70, i32 2
  %59 = ptrtoint ptr %size83 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %size83, align 4
  %val86 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc70, i32 3
  %60 = ptrtoint ptr %val86 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %duration, ptr %val86, align 4
  %inc87 = add nuw nsw i32 %index.0, 3
  %conv89 = zext i16 %56 to i32
  %conv90 = zext i8 %ch_list_len to i32
  %mul = mul nuw nsw i32 %conv89, %conv90
  %add91 = add nuw nsw i32 %mul, 500
  br label %if.end92

if.end92:                                         ; preds = %if.then77, %land.lhs.true74.if.end92_crit_edge, %if.end52.if.end92_crit_edge
  %index.1 = phi i32 [ %inc87, %if.then77 ], [ %inc70, %land.lhs.true74.if.end92_crit_edge ], [ %inc70, %if.end52.if.end92_crit_edge ]
  %scan_timeout.0 = phi i32 [ %add91, %if.then77 ], [ 5000, %land.lhs.true74.if.end92_crit_edge ], [ 5000, %if.end52.if.end92_crit_edge ]
  %arrayidx93 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.1
  %61 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 16516, ptr %arrayidx93, align 4
  %type96 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.1, i32 1
  %62 = ptrtoint ptr %type96 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %type96, align 4
  %tobool97.not = icmp eq ptr %ch_freq_list, null
  %.pre = zext i8 %ch_list_len to i32
  br i1 %tobool97.not, label %if.end92.if.end120_crit_edge, label %land.lhs.true98

if.end92.if.end120_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

land.lhs.true98:                                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ch_list_len)
  %cmp100.not.not = icmp eq i8 %ch_list_len, 0
  br i1 %cmp100.not.not, label %land.lhs.true98.if.end120_crit_edge, label %land.lhs.true98.for.body107_crit_edge

land.lhs.true98.for.body107_crit_edge:            ; preds = %land.lhs.true98
  br label %for.body107

land.lhs.true98.if.end120_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

for.body107:                                      ; preds = %for.inc117.for.body107_crit_edge, %land.lhs.true98.for.body107_crit_edge
  %i.2237 = phi i32 [ %inc118, %for.inc117.for.body107_crit_edge ], [ 0, %land.lhs.true98.for.body107_crit_edge ]
  %arrayidx108 = getelementptr i8, ptr %ch_freq_list, i32 %i.2237
  %63 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx108, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp110.not = icmp eq i8 %64, 0
  br i1 %cmp110.not, label %for.body107.for.inc117_crit_edge, label %if.then112

for.body107.for.inc117_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc117

if.then112:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i8 %64, -1
  %65 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %sub, ptr %arrayidx108, align 1
  br label %for.inc117

for.inc117:                                       ; preds = %if.then112, %for.body107.for.inc117_crit_edge
  %inc118 = add nuw nsw i32 %i.2237, 1
  %exitcond238.not = icmp eq i32 %inc118, %.pre
  br i1 %exitcond238.not, label %for.inc117.if.end120_crit_edge, label %for.inc117.for.body107_crit_edge

for.inc117.for.body107_crit_edge:                 ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body107

for.inc117.if.end120_crit_edge:                   ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.end120:                                        ; preds = %for.inc117.if.end120_crit_edge, %land.lhs.true98.if.end120_crit_edge, %if.end92.if.end120_crit_edge
  %conv123.pre-phi = phi i32 [ 0, %land.lhs.true98.if.end120_crit_edge ], [ %.pre, %if.end92.if.end120_crit_edge ], [ %.pre, %for.inc117.if.end120_crit_edge ]
  %val122 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.1, i32 3
  %66 = ptrtoint ptr %val122 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ch_freq_list, ptr %val122, align 4
  %size125 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %index.1, i32 2
  %67 = ptrtoint ptr %size125 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv123.pre-phi, ptr %size125, align 4
  %inc126 = add nsw i32 %index.1, 1
  %arrayidx127 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc126
  %68 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 30, ptr %arrayidx127, align 4
  %type130 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc126, i32 1
  %69 = ptrtoint ptr %type130 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %type130, align 4
  %size132 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc126, i32 2
  %70 = ptrtoint ptr %size132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %size132, align 4
  %val134 = getelementptr [6 x %struct.wid], ptr %wid_list, i32 0, i32 %inc126, i32 3
  %71 = ptrtoint ptr %val134 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %scan_source.addr, ptr %val134, align 4
  %inc135 = add nsw i32 %index.1, 2
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %scan_result_fn, ptr %4, align 8
  %arg = getelementptr inbounds %struct.wilc_user_scan_req, ptr %4, i32 0, i32 1
  %73 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %user_arg, ptr %arg, align 4
  %call139 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list, i32 noundef %inc135) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end143, label %if.then141

if.then141:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %ndev142 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %74 = ptrtoint ptr %ndev142 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndev142, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.2) #11
  br label %error

if.end143:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %scan_timer_vif = getelementptr inbounds %struct.host_if_drv, ptr %4, i32 0, i32 7
  %76 = ptrtoint ptr %scan_timer_vif to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %vif, ptr %scan_timer_vif, align 4
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %4, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %scan_timeout.0) #8
  %add145 = add i32 %call2.i, %77
  %call146 = call i32 @mod_timer(ptr noundef %scan_timer, i32 noundef %add145) #8
  br label %error

error:                                            ; preds = %if.end143, %if.then141, %if.then4, %if.then
  %result.0 = phi i32 [ -16, %if.then ], [ -16, %if.then4 ], [ %call139, %if.then141 ], [ 0, %if.end143 ]
  %search_ssid_vals.1 = phi ptr [ null, %if.then ], [ null, %if.then4 ], [ %search_ssid_vals.0, %if.then141 ], [ %search_ssid_vals.0, %if.end143 ]
  call void @kfree(ptr noundef %search_ssid_vals.1) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %wid_list) #8
  ret i32 %result.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wilc_send_config_pkt(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wilc_parse_join_bss_param(ptr noundef %bss, ptr nocapture noundef readonly %crypto) local_unnamed_addr #1 align 64 {
entry:
  %noa_attr = alloca %struct.ieee80211_p2p_noa_attr, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 54, ptr nonnull %noa_attr) #8
  %0 = call ptr @memset(ptr %noa_attr, i32 255, i32 54)
  %ies1 = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 2
  %1 = ptrtoint ptr %ies1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %ies1, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b347 = load i1, ptr @wilc_parse_join_bss_param.__warned, align 1
  br i1 %.b347, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wilc_parse_join_bss_param.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 373, ptr noundef nonnull @.str.4) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 100) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %do.end8.cleanup_crit_edge, label %if.end13

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %do.end8
  %beacon_interval = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 9
  %4 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %beacon_interval, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %beacon_period = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %beacon_period to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %beacon_period, align 1
  %capability = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 10
  %8 = ptrtoint ptr %capability to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %capability, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %cap_info = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %cap_info to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %cap_info, align 1
  %bss_type = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %bss_type, align 1
  %13 = ptrtoint ptr %bss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bss, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq, align 4
  %mul.i = mul i32 %16, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #8
  %conv = trunc i32 %call.i to i8
  %ch = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %ch, align 2
  %bssid = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 6
  %bssid15 = getelementptr inbounds %struct.cfg80211_bss, ptr %bss, i32 0, i32 11
  %18 = ptrtoint ptr %bssid15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bssid15, align 4
  %20 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %bssid, align 4
  %add.ptr.i = getelementptr %struct.cfg80211_bss, ptr %bss, i32 0, i32 11, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 2
  %data = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %2, i32 0, i32 4
  %len = getelementptr inbounds %struct.cfg80211_bss_ies, ptr %2, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 8
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 0, ptr noundef %data, i32 noundef %25, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool19.not = icmp eq ptr %call.i.i, null
  br i1 %tobool19.not, label %if.end13.if.end28_crit_edge, label %if.then20

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end13
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %27)
  %cmp = icmp ult i8 %27, 33
  br i1 %cmp, label %if.then23, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = zext i8 %27 to i32
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 2
  %28 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr, i32 %conv21)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.then20.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 8
  %call.i.i349 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 5, ptr noundef %data, i32 noundef %30, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool33.not = icmp eq ptr %call.i.i349, null
  br i1 %tobool33.not, label %if.end28.if.end41_crit_edge, label %land.lhs.true34

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end28
  %arrayidx35 = getelementptr i8, ptr %call.i.i349, i32 1
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp37 = icmp ugt i8 %32, 1
  br i1 %cmp37, label %if.then39, label %land.lhs.true34.if.end41_crit_edge

land.lhs.true34.if.end41_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr i8, ptr %call.i.i349, i32 3
  %33 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx40, align 1
  %dtim_period = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %dtim_period to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %dtim_period, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true34.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  %p_suites = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 16
  %36 = call ptr @memset(ptr %p_suites, i32 255, i32 6)
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 8
  %call.i.i350 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 1, ptr noundef %data, i32 noundef %38, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool48.not = icmp eq ptr %call.i.i350, null
  br i1 %tobool48.not, label %if.end41.if.then65_crit_edge, label %if.end61

if.end41.if.then65_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end61:                                         ; preds = %if.end41
  %arrayidx50 = getelementptr i8, ptr %call.i.i350, i32 1
  %39 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx50, align 1
  %41 = tail call i8 @llvm.umin.i8(i8 %40, i8 12)
  %supp_rates = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %supp_rates to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %supp_rates, align 4
  %arrayidx58 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 9, i32 1
  %add.ptr59 = getelementptr i8, ptr %call.i.i350, i32 2
  %conv60 = zext i8 %41 to i32
  %43 = call ptr @memcpy(ptr %arrayidx58, ptr %add.ptr59, i32 %conv60)
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %40)
  %cmp63 = icmp ult i8 %40, 12
  br i1 %cmp63, label %if.end61.if.then65_crit_edge, label %if.end61.if.end97_crit_edge

if.end61.if.end97_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.end61.if.then65_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %if.end61.if.then65_crit_edge, %if.end41.if.then65_crit_edge
  %conv62359 = phi i32 [ %conv60, %if.end61.if.then65_crit_edge ], [ 0, %if.end41.if.then65_crit_edge ]
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 8
  %call.i.i351 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 50, ptr noundef %data, i32 noundef %45, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool70.not = icmp eq ptr %call.i.i351, null
  br i1 %tobool70.not, label %if.then65.if.end97_crit_edge, label %if.then71

if.then65.if.end97_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then71:                                        ; preds = %if.then65
  %arrayidx72 = getelementptr i8, ptr %call.i.i351, i32 1
  %46 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %47 to i32
  %sub = sub nuw nsw i32 12, %conv62359
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv73)
  %cmp75 = icmp ult i32 %sub, %conv73
  %supp_rates78 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 9
  br i1 %cmp75, label %if.then71.if.end85_crit_edge, label %if.else

if.then71.if.end85_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.else:                                          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %supp_rates78 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %supp_rates78, align 4
  %add = add i8 %49, %47
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then71.if.end85_crit_edge
  %add.sink = phi i8 [ %add, %if.else ], [ 12, %if.then71.if.end85_crit_edge ]
  %50 = ptrtoint ptr %supp_rates78 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %add.sink, ptr %supp_rates78, align 4
  %add88 = add nuw nsw i32 %conv62359, 1
  %arrayidx89 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 9, i32 %add88
  %add.ptr90 = getelementptr i8, ptr %call.i.i351, i32 2
  %conv93 = zext i8 %add.sink to i32
  %sub95 = sub nsw i32 %conv93, %conv62359
  %51 = call ptr @memcpy(ptr %arrayidx89, ptr %add.ptr90, i32 %sub95)
  br label %if.end97

if.end97:                                         ; preds = %if.end85, %if.then65.if.end97_crit_edge, %if.end61.if.end97_crit_edge
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 8
  %call.i.i352 = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 45, ptr noundef %data, i32 noundef %53, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool102.not = icmp eq ptr %call.i.i352, null
  br i1 %tobool102.not, label %if.end97.if.end104_crit_edge, label %if.then103

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then103:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %ht_capable = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %ht_capable to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ht_capable, align 1
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end97.if.end104_crit_edge
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 8
  %call108 = call i32 @cfg80211_get_p2p_attr(ptr noundef %data, i32 noundef %56, i32 noundef 12, ptr noundef nonnull %noa_attr, i32 noundef 54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp109 = icmp sgt i32 %call108, 0
  br i1 %cmp109, label %if.then111, label %if.end104.if.end146_crit_edge

if.end104.if.end146_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then111:                                       ; preds = %if.end104
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %2, align 8
  %conv112 = trunc i64 %58 to i32
  %59 = call i32 @llvm.bswap.i32(i32 %conv112)
  %tsf_lo = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 20
  %60 = ptrtoint ptr %tsf_lo to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tsf_lo, align 8
  %noa_enabled = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %noa_enabled to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %noa_enabled, align 1
  %62 = ptrtoint ptr %noa_attr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %noa_attr, align 1
  %idx = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 21
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %idx, align 4
  %oppps_ctwindow = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 1
  %65 = ptrtoint ptr %oppps_ctwindow to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %oppps_ctwindow, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %tobool114.not = icmp sgt i8 %66, -1
  %opp_enabled128 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 22
  br i1 %tobool114.not, label %if.else127, label %if.then115

if.then115:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %opp_enabled128 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %opp_enabled128, align 1
  %68 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %68, align 2
  %desc = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2
  %70 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %desc, align 1
  %cnt = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 1
  %72 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %cnt, align 1
  %duration = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 1
  %73 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %duration, align 1
  %duration120 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 2
  %75 = ptrtoint ptr %duration120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %duration120, align 8
  %interval = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 2
  %76 = ptrtoint ptr %interval to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %interval, align 1
  %interval123 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 3
  %78 = ptrtoint ptr %interval123 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %interval123, align 4
  %start_time = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 3
  %79 = ptrtoint ptr %start_time to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %start_time, align 1
  %start_time126 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 4
  %81 = ptrtoint ptr %start_time126 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %start_time126, align 8
  br label %if.end146

if.else127:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %opp_enabled128 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %opp_enabled128, align 1
  %desc129 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2
  %83 = ptrtoint ptr %desc129 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %desc129, align 1
  %85 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %84, ptr %85, align 2
  %duration135 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 1
  %87 = ptrtoint ptr %duration135 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %duration135, align 1
  %duration136 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 1
  %89 = ptrtoint ptr %duration136 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %duration136, align 1
  %interval139 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 2
  %90 = ptrtoint ptr %interval139 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %interval139, align 1
  %interval140 = getelementptr inbounds %struct.wilc_noa_opp_disable, ptr %85, i32 0, i32 2
  %92 = ptrtoint ptr %interval140 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %interval140, align 1
  %start_time143 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %noa_attr, i32 0, i32 2, i32 0, i32 3
  %93 = ptrtoint ptr %start_time143 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %start_time143, align 1
  %start_time144 = getelementptr inbounds %struct.wilc_noa_opp_disable, ptr %85, i32 0, i32 3
  %95 = ptrtoint ptr %start_time144 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %start_time144, align 1
  br label %if.end146

if.end146:                                        ; preds = %if.else127, %if.then115, %if.end104.if.end146_crit_edge
  %96 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len, align 8
  %call.i353 = call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 2, ptr noundef %data, i32 noundef %97) #8
  %tobool151.not = icmp eq ptr %call.i353, null
  br i1 %tobool151.not, label %if.end146.if.end171_crit_edge, label %if.then152

if.end146.if.end171_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then152:                                       ; preds = %if.end146
  %oui_subtype = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i353, i32 0, i32 4
  %98 = ptrtoint ptr %oui_subtype to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %oui_subtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %99)
  %switch = icmp ult i8 %99, 2
  br i1 %switch, label %land.lhs.true160, label %if.then152.if.end171_crit_edge

if.then152.if.end171_crit_edge:                   ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

land.lhs.true160:                                 ; preds = %if.then152
  %version = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i353, i32 0, i32 5
  %100 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp162 = icmp eq i8 %101, 1
  br i1 %cmp162, label %if.then164, label %land.lhs.true160.if.end171_crit_edge

land.lhs.true160.if.end171_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then164:                                       ; preds = %land.lhs.true160
  %wmm_cap = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 10
  %102 = ptrtoint ptr %wmm_cap to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %wmm_cap, align 1
  %qos_info = getelementptr inbounds %struct.ieee80211_wmm_param_ie, ptr %call.i353, i32 0, i32 6
  %103 = ptrtoint ptr %qos_info to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %qos_info, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %tobool167.not = icmp sgt i8 %104, -1
  br i1 %tobool167.not, label %if.then164.if.end171_crit_edge, label %if.then168

if.then164.if.end171_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then168:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  %uapsd_cap = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 11
  %105 = ptrtoint ptr %uapsd_cap to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %uapsd_cap, align 2
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.then164.if.end171_crit_edge, %land.lhs.true160.if.end171_crit_edge, %if.then152.if.end171_crit_edge, %if.end146.if.end171_crit_edge
  %106 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len, align 8
  %call.i354 = call ptr @cfg80211_find_vendor_elem(i32 noundef 20722, i32 noundef 1, ptr noundef %data, i32 noundef %107) #8
  %tobool176.not = icmp eq ptr %call.i354, null
  br i1 %tobool176.not, label %if.end171.if.end178_crit_edge, label %if.then177

if.end171.if.end178_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then177:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %mode_802_11i = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 15
  %108 = ptrtoint ptr %mode_802_11i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %mode_802_11i, align 2
  %rsn_found = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 13
  %109 = ptrtoint ptr %rsn_found to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %rsn_found, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.end171.if.end178_crit_edge
  %110 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len, align 8
  %call.i.i355 = call ptr @cfg80211_find_elem_match(i8 noundef zeroext 48, ptr noundef %data, i32 noundef %111, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool183.not = icmp eq ptr %call.i.i355, null
  br i1 %tobool183.not, label %if.end178.if.end198_crit_edge, label %if.then184

if.end178.if.end198_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end198

if.then184:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  %mode_802_11i185 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 15
  %112 = ptrtoint ptr %mode_802_11i185 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 2, ptr %mode_802_11i185, align 2
  %rsn_found186 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 13
  %113 = ptrtoint ptr %rsn_found186 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %rsn_found186, align 4
  %arrayidx187 = getelementptr i8, ptr %call.i.i355, i32 8
  %114 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %115 to i32
  %mul = shl nuw nsw i32 %conv188, 2
  %add190 = add nuw nsw i32 %mul, 10
  %arrayidx191 = getelementptr i8, ptr %call.i.i355, i32 %add190
  %116 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %117 to i32
  %mul193 = shl nuw nsw i32 %conv192, 2
  %add194 = or i32 %mul193, 2
  %add195 = add nuw nsw i32 %add194, %add190
  %rsn_cap = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 18
  %arrayidx197 = getelementptr i8, ptr %call.i.i355, i32 %add195
  %118 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %arrayidx197, align 1
  %120 = ptrtoint ptr %rsn_cap to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %119, ptr %rsn_cap, align 1
  br label %if.end198

if.end198:                                        ; preds = %if.then184, %if.end178.if.end198_crit_edge
  %rsn_found199 = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 13
  %121 = ptrtoint ptr %rsn_found199 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %rsn_found199, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool200.not = icmp eq i8 %122, 0
  br i1 %tobool200.not, label %if.end198.cleanup_crit_edge, label %if.then201

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then201:                                       ; preds = %if.end198
  %cipher_group = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 1
  %123 = ptrtoint ptr %cipher_group to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cipher_group, align 4
  %conv203 = trunc i32 %124 to i8
  %rsn_grp_policy = getelementptr inbounds %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 14
  %125 = ptrtoint ptr %rsn_grp_policy to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv203, ptr %rsn_grp_policy, align 1
  %n_ciphers_pairwise = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 2
  %126 = ptrtoint ptr %n_ciphers_pairwise to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %n_ciphers_pairwise, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp204360 = icmp sgt i32 %127, 0
  br i1 %cmp204360, label %for.body.preheader, label %if.then201.for.cond213.preheader_crit_edge

if.then201.for.cond213.preheader_crit_edge:       ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond213.preheader

for.body.preheader:                               ; preds = %if.then201
  %128 = add nsw i32 %127, -1
  %umin = call i32 @llvm.umin.i32(i32 %128, i32 2)
  %arrayidx208 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 3, i32 0
  %129 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx208, align 4
  %conv210 = trunc i32 %130 to i8
  %arrayidx212 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 16, i32 0
  %131 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv210, ptr %arrayidx212, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin)
  %exitcond.not = icmp eq i32 %umin, 0
  br i1 %exitcond.not, label %for.body.preheader.for.cond213.preheader_crit_edge, label %for.body.1

for.body.preheader.for.cond213.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond213.preheader

for.cond213.preheader:                            ; preds = %for.body.2, %for.body.1.for.cond213.preheader_crit_edge, %for.body.preheader.for.cond213.preheader_crit_edge, %if.then201.for.cond213.preheader_crit_edge
  %n_akm_suites = getelementptr inbounds %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 4
  %132 = ptrtoint ptr %n_akm_suites to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %n_akm_suites, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp214362 = icmp sgt i32 %133, 0
  br i1 %cmp214362, label %for.body220.preheader, label %for.cond213.preheader.cleanup_crit_edge

for.cond213.preheader.cleanup_crit_edge:          ; preds = %for.cond213.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body220.preheader:                            ; preds = %for.cond213.preheader
  %134 = add nsw i32 %133, -1
  %umin364 = call i32 @llvm.umin.i32(i32 %134, i32 2)
  %arrayidx222 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 5, i32 0
  %135 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx222, align 4
  %conv224 = trunc i32 %136 to i8
  %arrayidx226 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 17, i32 0
  %137 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv224, ptr %arrayidx226, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %umin364)
  %exitcond365.not = icmp eq i32 %umin364, 0
  br i1 %exitcond365.not, label %for.body220.preheader.cleanup_crit_edge, label %for.body220.1

for.body220.preheader.cleanup_crit_edge:          ; preds = %for.body220.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.1:                                       ; preds = %for.body.preheader
  %arrayidx208.1 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 3, i32 1
  %138 = ptrtoint ptr %arrayidx208.1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx208.1, align 4
  %conv210.1 = trunc i32 %139 to i8
  %arrayidx212.1 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 16, i32 1
  %140 = ptrtoint ptr %arrayidx212.1 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv210.1, ptr %arrayidx212.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.not.1 = icmp eq i32 %umin, 1
  br i1 %exitcond.not.1, label %for.body.1.for.cond213.preheader_crit_edge, label %for.body.2

for.body.1.for.cond213.preheader_crit_edge:       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond213.preheader

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx208.2 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 3, i32 2
  %141 = ptrtoint ptr %arrayidx208.2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx208.2, align 4
  %conv210.2 = trunc i32 %142 to i8
  %arrayidx212.2 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 16, i32 2
  %143 = ptrtoint ptr %arrayidx212.2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv210.2, ptr %arrayidx212.2, align 1
  br label %for.cond213.preheader

for.body220.1:                                    ; preds = %for.body220.preheader
  %arrayidx222.1 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 5, i32 1
  %144 = ptrtoint ptr %arrayidx222.1 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx222.1, align 4
  %conv224.1 = trunc i32 %145 to i8
  %arrayidx226.1 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 17, i32 1
  %146 = ptrtoint ptr %arrayidx226.1 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv224.1, ptr %arrayidx226.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin364)
  %exitcond365.not.1 = icmp eq i32 %umin364, 1
  br i1 %exitcond365.not.1, label %for.body220.1.cleanup_crit_edge, label %for.body220.2

for.body220.1.cleanup_crit_edge:                  ; preds = %for.body220.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body220.2:                                    ; preds = %for.body220.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx222.2 = getelementptr %struct.cfg80211_crypto_settings, ptr %crypto, i32 0, i32 5, i32 2
  %147 = ptrtoint ptr %arrayidx222.2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx222.2, align 4
  %conv224.2 = trunc i32 %148 to i8
  %arrayidx226.2 = getelementptr %struct.wilc_join_bss_param, ptr %call7.i.i, i32 0, i32 17, i32 2
  %149 = ptrtoint ptr %arrayidx226.2 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv224.2, ptr %arrayidx226.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body220.2, %for.body220.1.cleanup_crit_edge, %for.body220.preheader.cleanup_crit_edge, %for.cond213.preheader.cleanup_crit_edge, %if.end198.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 54, ptr nonnull %noa_attr) #8
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_get_p2p_attr(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_disconnect(ptr noundef %vif) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %dummy_reason_code = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_drv1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy_reason_code) #8
  %3 = ptrtoint ptr %dummy_reason_code to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %dummy_reason_code, align 2
  %4 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 22, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dummy_reason_code, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %size, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 6
  %call5 = call i32 @del_timer(ptr noundef %scan_timer) #8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %arg = getelementptr inbounds %struct.wilc_user_scan_req, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arg, align 4
  call void %13(i32 noundef 2, ptr noundef null, ptr noundef %15) #8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %2, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %conn_result = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn_result, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 4
  %19 = ptrtoint ptr %hif_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hif_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp = icmp eq i32 %20, 3
  br i1 %cmp, label %if.then11, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %connect_timer = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 8
  %call12 = call i32 @del_timer(ptr noundef %connect_timer) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then10.if.end13_crit_edge
  %21 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn_result, align 4
  %arg15 = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %arg15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arg15, align 4
  call void %22(i32 noundef 1, i8 noundef zeroext 0, ptr noundef %24) #8
  br label %if.end17

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %ndev16 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %25 = ptrtoint ptr %ndev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.wilc_disconnect) #11
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end13
  %hif_state18 = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 4
  %req_ies_len = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %req_ies_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %req_ies_len, align 4
  %req_ies = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 1, i32 4
  %28 = call ptr @memset(ptr %hif_state18, i32 0, i32 10)
  %29 = ptrtoint ptr %req_ies to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req_ies, align 4
  call void @kfree(ptr noundef %30) #8
  %31 = ptrtoint ptr %req_ies to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %req_ies, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy_reason_code) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_statistics(ptr noundef %vif, ptr noundef %stats) local_unnamed_addr #1 align 64 {
entry:
  %wid_list = alloca [5 x %struct.wid], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %wid_list) #8
  %0 = call ptr @memset(ptr %wid_list, i32 255, i32 68)
  %1 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 38, ptr %wid_list, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %stats, ptr %val, align 4
  %arrayidx4 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 31, ptr %arrayidx4, align 4
  %type7 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type7, align 4
  %size9 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %size9, align 4
  %rssi = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 1
  %val11 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rssi, ptr %val11, align 4
  %arrayidx13 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 8200, ptr %arrayidx13, align 4
  %type16 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type16, align 4
  %size18 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %size18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %size18, align 4
  %tx_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 2
  %val20 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_cnt, ptr %val20, align 4
  %arrayidx22 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8197, ptr %arrayidx22, align 4
  %type25 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %type25, align 4
  %size27 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %size27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %size27, align 4
  %rx_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 3
  %val29 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %val29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_cnt, ptr %val29, align 4
  %arrayidx31 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8192, ptr %arrayidx31, align 4
  %type34 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type34, align 4
  %size36 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %size36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %size36, align 4
  %tx_fail_cnt = getelementptr inbounds %struct.rf_info, ptr %stats, i32 0, i32 4
  %val38 = getelementptr inbounds [5 x %struct.wid], ptr %wid_list, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %val38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tx_fail_cnt, ptr %val38, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 1, ptr noundef nonnull %wid_list, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %21 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %stats, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 55, i8 %24)
  %cmp = icmp ult i8 %24, 55
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %24)
  %cmp44.not = icmp eq i8 %24, 72
  %or.cond = or i1 %cmp, %cmp44.not
  br i1 %or.cond, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @wilc_enable_tcp_ack_filter(ptr noundef %vif, i1 noundef zeroext true) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %cmp44.not, label %if.else.cleanup_crit_edge, label %if.then51

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @wilc_enable_tcp_ack_filter(ptr noundef %vif, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.else.cleanup_crit_edge, %if.then46, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %wid_list) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wilc_enable_tcp_ack_filter(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_set_wowlan_trigger(ptr noundef %vif, i1 noundef zeroext %enabled) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %wowlan_trigger = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wowlan_trigger) #8
  %spec.store.select = zext i1 %enabled to i8
  %1 = ptrtoint ptr %wowlan_trigger to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %spec.store.select, ptr %wowlan_trigger, align 1
  %2 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 207, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wowlan_trigger, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.end4_crit_edge, label %do.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %entry.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wowlan_trigger) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_remove_wep_key(ptr noundef %vif, i8 noundef zeroext %index) local_unnamed_addr #1 align 64 {
entry:
  %index.addr = alloca i8, align 1
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %1 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wid, align 4
  store i16 12314, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %index.addr, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_wep_default_keyid(ptr noundef %vif, i8 noundef zeroext %index) local_unnamed_addr #1 align 64 {
entry:
  %index.addr = alloca i8, align 1
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %index, ptr %index.addr, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %1 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wid, align 4
  store i16 9, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %index.addr, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_wep_key_bss_sta(ptr noundef %vif, ptr nocapture noundef readonly %key, i8 noundef zeroext %len, i8 noundef zeroext %index) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 12313, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 4
  %conv = zext i8 %len to i32
  %add = add nuw nsw i32 %conv, 2
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %val, align 4
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %index, ptr %call9.i.i, align 128
  %key_len = getelementptr inbounds %struct.wilc_wep_key, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %len, ptr %key_len, align 1
  %key3 = getelementptr inbounds %struct.wilc_wep_key, ptr %call9.i.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %key3, ptr %key, i32 %conv)
  %call5 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.11) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_wep_key_bss_ap(ptr noundef %vif, ptr nocapture noundef readonly %key, i8 noundef zeroext %len, i8 noundef zeroext %index, i8 noundef zeroext %mode, i32 noundef %auth_type) local_unnamed_addr #1 align 64 {
entry:
  %mode.addr = alloca i8, align 1
  %auth_type.addr = alloca i32, align 4
  %wid_list = alloca [3 x %struct.wid], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mode, ptr %mode.addr, align 1
  %1 = ptrtoint ptr %auth_type.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %auth_type, ptr %auth_type.addr, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wid_list) #8
  %2 = call ptr @memset(ptr %wid_list, i32 255, i32 36)
  %3 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 12, ptr %wid_list, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mode.addr, ptr %val, align 4
  %arrayidx4 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 13, ptr %arrayidx4, align 4
  %type7 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type7, align 4
  %size9 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %size9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %size9, align 4
  %val11 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %auth_type.addr, ptr %val11, align 4
  %arrayidx12 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 12292, ptr %arrayidx12, align 4
  %type15 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %type15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %type15, align 4
  %conv = zext i8 %len to i32
  %add = add nuw nsw i32 %conv, 2
  %size17 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %size17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %size17, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %val21 = getelementptr inbounds [3 x %struct.wid], ptr %wid_list, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %val21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %val21, align 4
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %index, ptr %call9.i.i, align 128
  %key_len = getelementptr inbounds %struct.wilc_wep_key, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %len, ptr %key_len, align 1
  %key23 = getelementptr inbounds %struct.wilc_wep_key, ptr %call9.i.i, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %key23, ptr %key, i32 %conv)
  %call26 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end.if.end29_crit_edge, label %if.then28

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.12) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end.if.end29_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end29 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wid_list) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_ptk(ptr noundef %vif, ptr nocapture noundef readonly %ptk, i8 noundef zeroext %ptk_key_len, ptr nocapture noundef readonly %mac_addr, ptr noundef readonly %rx_mic, ptr noundef readonly %tx_mic, i8 noundef zeroext %mode, i8 noundef zeroext %cipher_mode, i8 noundef zeroext %index) local_unnamed_addr #1 align 64 {
entry:
  %cipher_mode.addr = alloca i8, align 1
  %wid_list = alloca [2 x %struct.wid], align 4
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cipher_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cipher_mode, ptr %cipher_mode.addr, align 1
  %conv = zext i8 %ptk_key_len to i32
  %add = add nuw nsw i32 %conv, 8
  %add1 = add i8 %ptk_key_len, 16
  %1 = zext i8 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %mode, label %entry.cleanup83_crit_edge [
    i8 1, label %if.then
    i8 2, label %if.then43
  ]

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wid_list) #8
  %2 = call ptr @memset(ptr %wid_list, i32 255, i32 32)
  %3 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 12, ptr %wid_list, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cipher_mode.addr, ptr %val, align 4
  %conv8 = zext i8 %add1 to i32
  %add9 = add nuw nsw i32 %conv8, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add9, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wid_list) #8
  br label %cleanup83

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_addr, align 4
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call9.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call9.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 4
  %index12 = getelementptr inbounds %struct.wilc_ap_wpa_ptk, ptr %call9.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %index12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %index, ptr %index12, align 2
  %key_len = getelementptr inbounds %struct.wilc_ap_wpa_ptk, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %add1, ptr %key_len, align 1
  %key = getelementptr inbounds %struct.wilc_ap_wpa_ptk, ptr %call9.i.i, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %key, ptr %ptk, i32 %conv)
  %tobool15.not = icmp eq ptr %rx_mic, null
  br i1 %tobool15.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr %struct.wilc_ap_wpa_ptk, ptr %call9.i.i, i32 0, i32 3, i32 %conv
  %16 = ptrtoint ptr %rx_mic to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %rx_mic, align 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %tx_mic, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx25 = getelementptr %struct.wilc_ap_wpa_ptk, ptr %call9.i.i, i32 0, i32 3, i32 %add
  %19 = ptrtoint ptr %tx_mic to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %tx_mic, align 1
  %21 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %arrayidx25, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge
  %arrayidx27 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 12315, ptr %arrayidx27, align 4
  %type30 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %type30, align 4
  %size34 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %size34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add9, ptr %size34, align 4
  %val36 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %val36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i.i, ptr %val36, align 4
  %call38 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list, i32 noundef 2) #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wid_list) #8
  br label %cleanup83

if.then43:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %26 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %wid, align 4
  %conv45 = zext i8 %add1 to i32
  %add46 = add nuw nsw i32 %conv45, 7
  %call9.i.i146 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add46, i32 noundef 3520) #12
  %tobool48.not = icmp eq ptr %call9.i.i146, null
  br i1 %tobool48.not, label %cleanup77.thread, label %if.end50

cleanup77.thread:                                 ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  br label %cleanup83

if.end50:                                         ; preds = %if.then43
  %27 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac_addr, align 4
  %29 = ptrtoint ptr %call9.i.i146 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call9.i.i146, align 128
  %add.ptr.i150 = getelementptr i8, ptr %mac_addr, i32 4
  %30 = ptrtoint ptr %add.ptr.i150 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i150, align 2
  %add.ptr1.i151 = getelementptr i8, ptr %call9.i.i146, i32 4
  %32 = ptrtoint ptr %add.ptr1.i151 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %add.ptr1.i151, align 4
  %key_len53 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, ptr %call9.i.i146, i32 0, i32 1
  %33 = ptrtoint ptr %key_len53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %add1, ptr %key_len53, align 2
  %key54 = getelementptr inbounds %struct.wilc_sta_wpa_ptk, ptr %call9.i.i146, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %key54, ptr %ptk, i32 %conv)
  %tobool57.not = icmp eq ptr %rx_mic, null
  br i1 %tobool57.not, label %if.end50.if.end62_crit_edge, label %if.then58

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx61 = getelementptr %struct.wilc_sta_wpa_ptk, ptr %call9.i.i146, i32 0, i32 2, i32 %conv
  %35 = ptrtoint ptr %rx_mic to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %rx_mic, align 1
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %arrayidx61, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end50.if.end62_crit_edge
  %tobool63.not = icmp eq ptr %tx_mic, null
  br i1 %tobool63.not, label %if.end62.cleanup77_crit_edge, label %if.then64

if.end62.cleanup77_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx68 = getelementptr %struct.wilc_sta_wpa_ptk, ptr %call9.i.i146, i32 0, i32 2, i32 %add
  %38 = ptrtoint ptr %tx_mic to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %tx_mic, align 1
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 %39, ptr %arrayidx68, align 1
  br label %cleanup77

cleanup77:                                        ; preds = %if.then64, %if.end62.cleanup77_crit_edge
  %41 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 12315, ptr %wid, align 4
  %type71 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %42 = ptrtoint ptr %type71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %type71, align 4
  %size74 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %43 = ptrtoint ptr %size74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add46, ptr %size74, align 4
  %val75 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %44 = ptrtoint ptr %val75 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i146, ptr %val75, align 4
  %call76 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @kfree(ptr noundef nonnull %call9.i.i146) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup77, %cleanup77.thread, %cleanup, %cleanup.thread, %entry.cleanup83_crit_edge
  %retval.2 = phi i32 [ -12, %cleanup.thread ], [ -12, %cleanup77.thread ], [ %call38, %cleanup ], [ %call76, %cleanup77 ], [ 0, %entry.cleanup83_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_rx_gtk(ptr noundef %vif, ptr nocapture noundef readonly %rx_gtk, i8 noundef zeroext %gtk_key_len, i8 noundef zeroext %index, i32 noundef %key_rsc_len, ptr noundef readonly %key_rsc, ptr noundef readonly %rx_mic, ptr noundef readonly %tx_mic, i8 noundef zeroext %mode, i8 noundef zeroext %cipher_mode) local_unnamed_addr #1 align 64 {
entry:
  %cipher_mode.addr = alloca i8, align 1
  %wid_list = alloca [2 x %struct.wid], align 4
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cipher_mode.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cipher_mode, ptr %cipher_mode.addr, align 1
  %conv = zext i8 %gtk_key_len to i32
  %add = add nuw nsw i32 %conv, 8
  %add1 = add i8 %gtk_key_len, 16
  %add2 = add nuw nsw i32 %conv, 32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %mode)
  %cmp = icmp eq i8 %mode, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %hif_drv = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_drv, align 8
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %hif_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hif_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp5 = icmp eq i32 %4, 4
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %assoc_bssid = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %call9.i.i, ptr %assoc_bssid, i32 6)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %key_rsc, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %rsc = getelementptr inbounds %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %key_rsc to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %key_rsc, align 1
  %8 = ptrtoint ptr %rsc to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %rsc, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %index15 = getelementptr inbounds %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %index15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %index, ptr %index15, align 2
  %key_len = getelementptr inbounds %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %key_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %add1, ptr %key_len, align 1
  %key = getelementptr inbounds %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %key, ptr %rx_gtk, i32 %conv)
  %tobool18.not = icmp eq ptr %rx_mic, null
  br i1 %tobool18.not, label %if.end14.if.end22_crit_edge, label %if.then19

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx21 = getelementptr %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 4, i32 %conv
  %12 = ptrtoint ptr %rx_mic to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %rx_mic, align 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end14.if.end22_crit_edge
  %tobool23.not = icmp eq ptr %tx_mic, null
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx28 = getelementptr %struct.wilc_gtk_key, ptr %call9.i.i, i32 0, i32 4, i32 %add
  %15 = ptrtoint ptr %tx_mic to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %tx_mic, align 1
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end22.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mode)
  %cmp31 = icmp eq i8 %mode, 1
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wid_list) #8
  %18 = call ptr @memset(ptr %wid_list, i32 255, i32 20)
  %19 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 12, ptr %wid_list, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %21 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cipher_mode.addr, ptr %val, align 4
  %arrayidx38 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 12316, ptr %arrayidx38, align 4
  %type41 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %type41, align 4
  %size44 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %size44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add2, ptr %size44, align 4
  %val46 = getelementptr inbounds [2 x %struct.wid], ptr %wid_list, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %val46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i, ptr %val46, align 4
  %call48 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wid_list) #8
  br label %if.end60

if.else:                                          ; preds = %if.end29
  br i1 %cmp, label %if.then52, label %if.else.if.end60_crit_edge

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %27 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %wid, align 4
  store i16 12316, ptr %wid, align 4
  %type54 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %28 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %type54, align 4
  %size56 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %29 = ptrtoint ptr %size56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add2, ptr %size56, align 4
  %val57 = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %30 = ptrtoint ptr %val57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i, ptr %val57, align 4
  %call58 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %if.else.if.end60_crit_edge, %if.then33
  %result.0 = phi i32 [ %call48, %if.then33 ], [ %call58, %if.then52 ], [ 0, %if.else.if.end60_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_pmkid_info(ptr noundef %vif, ptr noundef %pmkid) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 12418, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 4
  %2 = ptrtoint ptr %pmkid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pmkid, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 22
  %add = or i32 %mul, 1
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pmkid, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_mac_address(ptr noundef %vif, ptr noundef %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 12300, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mac_addr, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 1, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_mac_address(ptr noundef %vif, ptr noundef %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 12300, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mac_addr, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_join_req(ptr noundef %vif, ptr noundef readonly %bssid, ptr noundef %ies, i32 noundef %ies_len) local_unnamed_addr #1 align 64 {
entry:
  %wid_list.i = alloca [4 x %struct.wid], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv1, align 8
  %tobool.not = icmp eq ptr %bssid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conn_info2 = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bssid, align 4
  %4 = ptrtoint ptr %conn_info2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %conn_info2, align 4
  %add.ptr.i = getelementptr i8, ptr %bssid, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool4.not = icmp eq ptr %ies, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %req_ies_len = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %req_ies_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ies_len, ptr %req_ies_len, align 4
  %call = tail call ptr @kmemdup(ptr noundef nonnull %ies, i32 noundef %ies_len, i32 noundef 3264) #8
  %req_ies = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %req_ies to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %req_ies, align 4
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wid_list.i) #8
  %10 = call ptr @memset(ptr %wid_list.i, i32 255, i32 52)
  %11 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hif_drv1, align 8
  %param.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 1, i32 11
  %13 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param.i, align 4
  %15 = ptrtoint ptr %wid_list.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 16518, ptr %wid_list.i, align 4
  %type.i = getelementptr inbounds %struct.wid, ptr %wid_list.i, i32 0, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %type.i, align 4
  %req_ies.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %req_ies.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req_ies.i, align 4
  %val.i = getelementptr inbounds %struct.wid, ptr %wid_list.i, i32 0, i32 3
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %val.i, align 4
  %req_ies_len.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %req_ies_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req_ies_len.i, align 4
  %size.i = getelementptr inbounds %struct.wid, ptr %wid_list.i, i32 0, i32 2
  %22 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %size.i, align 4
  %arrayidx5.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 12, ptr %arrayidx5.i, align 4
  %type8.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %type8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type8.i, align 4
  %size10.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %size10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %size10.i, align 4
  %security.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 1, i32 1
  %val12.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %val12.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %security.i, ptr %val12.i, align 4
  %arrayidx14.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 13, ptr %arrayidx14.i, align 4
  %type17.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %type17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %type17.i, align 4
  %size19.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %size19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %size19.i, align 4
  %auth_type.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 1, i32 2
  %val21.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %val21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %auth_type.i, ptr %val21.i, align 4
  %arrayidx23.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 14744, ptr %arrayidx23.i, align 4
  %type26.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %type26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %type26.i, align 4
  %size28.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %size28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 100, ptr %size28.i, align 4
  %val30.i = getelementptr inbounds [4 x %struct.wid], ptr %wid_list.i, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %val30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %14, ptr %val30.i, align 4
  %call.i = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14, label %free_ies

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %hif_state.i = getelementptr inbounds %struct.host_if_drv, ptr %12, i32 0, i32 4
  %35 = ptrtoint ptr %hif_state.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %hif_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wid_list.i) #8
  %connect_timer_vif = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %connect_timer_vif to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vif, ptr %connect_timer_vif, align 8
  %connect_timer = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 950
  %call16 = call i32 @mod_timer(ptr noundef %connect_timer, i32 noundef %add) #8
  br label %cleanup

free_ies:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %38 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.41) #11
  %40 = ptrtoint ptr %req_ies.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %req_ies.i, align 4
  call void @kfree(ptr noundef %41) #8
  %42 = ptrtoint ptr %req_ies.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %req_ies.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wid_list.i) #8
  %req_ies17 = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %req_ies17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req_ies17, align 4
  call void @kfree(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %free_ies, %if.end14, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %free_ies ], [ 0, %if.end14 ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_mac_chnl_num(ptr noundef %vif, i8 noundef zeroext %channel) local_unnamed_addr #1 align 64 {
entry:
  %channel.addr = alloca i8, align 1
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %channel, ptr %channel.addr, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %1 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wid, align 4
  store i16 2, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %channel.addr, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_operation_mode(ptr noundef %vif, i32 noundef %index, i8 noundef zeroext %mode, i8 noundef zeroext %ifc_id) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %drv = alloca %struct.wilc_drv_handler, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %drv) #8
  %1 = getelementptr inbounds %struct.wilc_drv_handler, ptr %drv, i32 0, i32 1
  %2 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 12409, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %drv, ptr %val, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %index)
  %7 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %drv, align 4
  %shl = shl i8 %mode, 1
  %or = or i8 %shl, %ifc_id
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %1, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %drv) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_inactive_time(ptr noundef %vif, ptr nocapture noundef readonly %mac, ptr noundef %out_val) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 12311, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 6) #13
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %add.ptr1.i, align 4
  %call4 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8324, ptr %wid, align 4
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %type, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %out_val, ptr %val, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %size, align 4
  %call13 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 1, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end8.cleanup_crit_edge, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end8.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.17, %if.end.cleanup.sink.split_crit_edge ], [ @.str.18, %if.end8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call4, %if.end.cleanup.sink.split_crit_edge ], [ %call13, %if.end8.cleanup.sink.split_crit_edge ]
  %ndev16 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %17 = ptrtoint ptr %ndev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull %.str.18.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_rssi(ptr noundef %vif, ptr noundef %rssi_level) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  %tobool.not = icmp eq ptr %rssi_level, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.wilc_get_rssi) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 31, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rssi_level, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 1, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev3 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %7 = ptrtoint ptr %ndev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev3, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -14, %if.then ], [ %call, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_hif_set_cfg(ptr noundef %vif, ptr noundef %param) local_unnamed_addr #1 align 64 {
entry:
  %wid_list = alloca [4 x %struct.wid], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wid_list) #8
  %0 = call ptr @memset(ptr %wid_list, i32 255, i32 64)
  %1 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %param, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %wid_list to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4098, ptr %wid_list, align 4
  %short_retry_limit = getelementptr inbounds %struct.cfg_param_attr, ptr %param, i32 0, i32 1
  %val = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %short_retry_limit, ptr %val, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid_list, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and5 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.0
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4099, ptr %arrayidx8, align 4
  %long_retry_limit = getelementptr inbounds %struct.cfg_param_attr, ptr %param, i32 0, i32 2
  %val11 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.0, i32 3
  %8 = ptrtoint ptr %val11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %long_retry_limit, ptr %val11, align 4
  %type13 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.0, i32 1
  %9 = ptrtoint ptr %type13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type13, align 4
  %size15 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.0, i32 2
  %10 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %size15, align 4
  %inc16 = add nuw nsw i32 %i.0, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.end.if.end17_crit_edge
  %i.1 = phi i32 [ %inc16, %if.then7 ], [ %i.0, %if.end.if.end17_crit_edge ]
  %and19 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end31_crit_edge, label %if.then21

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.1
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4097, ptr %arrayidx22, align 4
  %frag_threshold = getelementptr inbounds %struct.cfg_param_attr, ptr %param, i32 0, i32 3
  %val25 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.1, i32 3
  %12 = ptrtoint ptr %val25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %frag_threshold, ptr %val25, align 4
  %type27 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.1, i32 1
  %13 = ptrtoint ptr %type27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type27, align 4
  %size29 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.1, i32 2
  %14 = ptrtoint ptr %size29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %size29, align 4
  %inc30 = add nuw nsw i32 %i.1, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.end17.if.end31_crit_edge
  %i.2 = phi i32 [ %inc30, %if.then21 ], [ %i.1, %if.end17.if.end31_crit_edge ]
  %and33 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end45_crit_edge, label %if.then35

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.2
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4096, ptr %arrayidx36, align 4
  %rts_threshold = getelementptr inbounds %struct.cfg_param_attr, ptr %param, i32 0, i32 4
  %val39 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.2, i32 3
  %16 = ptrtoint ptr %val39 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rts_threshold, ptr %val39, align 4
  %type41 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.2, i32 1
  %17 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type41, align 4
  %size43 = getelementptr [4 x %struct.wid], ptr %wid_list, i32 0, i32 %i.2, i32 2
  %18 = ptrtoint ptr %size43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %size43, align 4
  %inc44 = add nuw nsw i32 %i.2, 1
  br label %if.end45

if.end45:                                         ; preds = %if.then35, %if.end31.if.end45_crit_edge
  %i.3 = phi i32 [ %inc44, %if.then35 ], [ %i.2, %if.end31.if.end45_crit_edge ]
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid_list, i32 noundef %i.3) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wid_list) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_init(ptr noundef %dev, ptr nocapture noundef writeonly %hif_drv_handler) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 520) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %hif_drv_handler to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %hif_drv_handler, align 4
  %hif_drv2 = getelementptr i8, ptr %dev, i32 2424
  %2 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hif_drv2, align 8
  %periodic_rssi = getelementptr i8, ptr %dev, i32 2484
  tail call void @init_timer_key(ptr noundef %periodic_rssi, ptr noundef nonnull @get_periodic_rssi, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @wilc_init.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 500
  %call5 = tail call i32 @mod_timer(ptr noundef %periodic_rssi, i32 noundef %add) #8
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %call7.i.i, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %scan_timer, ptr noundef nonnull @timer_scan_cb, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @wilc_init.__key.22) #8
  %connect_timer = getelementptr inbounds %struct.host_if_drv, ptr %call7.i.i, i32 0, i32 8
  tail call void @init_timer_key(ptr noundef %connect_timer, ptr noundef nonnull @timer_connect_cb, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @wilc_init.__key.24) #8
  %remain_on_ch_timer = getelementptr inbounds %struct.host_if_drv, ptr %call7.i.i, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %remain_on_ch_timer, ptr noundef nonnull @listen_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @wilc_init.__key.26) #8
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %hif_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hif_state, align 8
  %p2p_timeout = getelementptr inbounds %struct.host_if_drv, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %p2p_timeout to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %p2p_timeout, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_periodic_rssi(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -180
  %hif_drv = getelementptr i8, ptr %t, i32 -60
  %0 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr i8, ptr %t, i32 -56
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.get_periodic_rssi) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %hif_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hif_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %periodic_stat = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then2.if.end3_crit_edge, label %wilc_alloc_work.exit.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

wilc_alloc_work.exit.i:                           ; preds = %if.then2
  %fn.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @handle_get_statistics, ptr %fn.i.i, align 4
  %vif6.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %vif6.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %vif6.i.i, align 4
  %is_sync8.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %is_sync8.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_sync8.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %wilc_alloc_work.exit.i.if.end3_crit_edge, label %if.end.i

wilc_alloc_work.exit.i.if.end3_crit_edge:         ; preds = %wilc_alloc_work.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end.i:                                         ; preds = %wilc_alloc_work.exit.i
  %10 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %periodic_stat, ptr %call7.i.i.i.i, align 8
  %work.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %work.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %entry4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry4.i.i, ptr %entry4.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry4.i.i, ptr %prev.i.i.i, align 8
  %14 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fn.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %func.i.i, align 4
  %17 = ptrtoint ptr %vif6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif6.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then4.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %wilc.i.i = getelementptr inbounds %struct.wilc_vif, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %wilc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wilc.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %20, null
  br i1 %tobool7.not.i.i, label %lor.lhs.false.i.i.if.then4.i_crit_edge, label %lor.lhs.false8.i.i

lor.lhs.false.i.i.if.then4.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

lor.lhs.false8.i.i:                               ; preds = %lor.lhs.false.i.i
  %hif_workqueue.i.i = getelementptr inbounds %struct.wilc, ptr %20, i32 0, i32 39
  %21 = ptrtoint ptr %hif_workqueue.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hif_workqueue.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %22, null
  br i1 %tobool11.not.i.i, label %lor.lhs.false8.i.i.if.then4.i_crit_edge, label %if.end.i.i

lor.lhs.false8.i.i.if.then4.i_crit_edge:          ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.end.i.i:                                       ; preds = %lor.lhs.false8.i.i
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %22, ptr noundef %work.i.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.if.end3_crit_edge, label %if.end.i.i.if.then4.i_crit_edge

if.end.i.i.if.then4.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4.i

if.end.i.i.if.end3_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i.i.if.then4.i_crit_edge, %lor.lhs.false8.i.i.if.then4.i_crit_edge, %lor.lhs.false.i.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %ndev.i = getelementptr i8, ptr %t, i32 -56
  %23 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wilc_get_stats_async) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then4.i, %if.end.i.i.if.end3_crit_edge, %wilc_alloc_work.exit.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %25, 500
  %call5 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timer_scan_cb(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_timer_vif = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %scan_timer_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_timer_vif, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %entry.cleanup_crit_edge, label %wilc_alloc_work.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wilc_alloc_work.exit:                             ; preds = %entry
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @handle_scan_timer, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup_crit_edge, label %if.end

wilc_alloc_work.exit.cleanup_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wilc_alloc_work.exit
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %6 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %9 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %func.i, align 4
  %12 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %lor.lhs.false.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then3_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then3_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then3_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %17, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %lor.lhs.false8.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.cleanup_crit_edge, %wilc_alloc_work.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timer_connect_cb(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_timer_vif = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %connect_timer_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connect_timer_vif, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %entry.cleanup_crit_edge, label %wilc_alloc_work.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wilc_alloc_work.exit:                             ; preds = %entry
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @handle_connect_timeout, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup_crit_edge, label %if.end

wilc_alloc_work.exit.cleanup_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wilc_alloc_work.exit
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %6 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %9 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %func.i, align 4
  %12 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %lor.lhs.false.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then3_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %17, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then3_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then3_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %17, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end.i.if.then3_crit_edge, %lor.lhs.false8.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.cleanup_crit_edge, %wilc_alloc_work.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @listen_timer_cb(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remain_on_ch_timer_vif = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %remain_on_ch_timer_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remain_on_ch_timer_vif, align 4
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_drv1, align 8
  %remain_on_ch_timer = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 10
  %call = tail call i32 @del_timer(ptr noundef %remain_on_ch_timer) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %entry.cleanup_crit_edge, label %wilc_alloc_work.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wilc_alloc_work.exit:                             ; preds = %entry
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wilc_handle_listen_state_expired, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup_crit_edge, label %if.end

wilc_alloc_work.exit.cleanup_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wilc_alloc_work.exit
  %8 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hif_drv1, align 8
  %cookie = getelementptr inbounds %struct.host_if_drv, ptr %9, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie, align 8
  %cookie5 = getelementptr inbounds %struct.wilc_remain_ch, ptr %call7.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %cookie5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cookie5, align 8
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %13 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %16 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %func.i, align 4
  %19 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.if.then7_crit_edge, label %lor.lhs.false.i

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false.i:                                  ; preds = %if.end
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %22, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then7_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %22, i32 0, i32 39
  %23 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %24, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then7_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then7_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %24, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then7_crit_edge

if.end.i.if.then7_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end.i.if.then7_crit_edge, %lor.lhs.false8.i.if.then7_crit_edge, %lor.lhs.false.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.listen_timer_cb) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.i.cleanup_crit_edge, %wilc_alloc_work.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_deinit(ptr noundef %vif) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wilc_deinit) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wilc = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %4 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wilc, align 4
  %deinit_lock = getelementptr inbounds %struct.wilc, ptr %5, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %deinit_lock, i32 noundef 0) #8
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %scan_timer) #8
  %connect_timer = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @del_timer_sync(ptr noundef %connect_timer) #8
  %periodic_rssi = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 12
  %call3 = tail call i32 @del_timer_sync(ptr noundef %periodic_rssi) #8
  %remain_on_ch_timer = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 10
  %call4 = tail call i32 @del_timer_sync(ptr noundef %remain_on_ch_timer) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arg = getelementptr inbounds %struct.wilc_user_scan_req, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arg, align 4
  tail call void %7(i32 noundef 2, ptr noundef null, ptr noundef %9) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %1, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %hif_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hif_state, align 8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %12 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %hif_drv1, align 8
  %13 = ptrtoint ptr %wilc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wilc, align 4
  %deinit_lock15 = getelementptr inbounds %struct.wilc, ptr %14, i32 0, i32 43
  tail call void @mutex_unlock(ptr noundef %deinit_lock15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -14, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_network_info_received(ptr noundef %wilc, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, -4
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %sub.i = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %3 = icmp ugt i32 %sub.i, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @wilc_get_vif_from_idx.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wilc_get_vif_from_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 110, ptr noundef nonnull @.str.44) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp13.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vif.0.i = getelementptr i8, ptr %.pn.i, i32 -5808
  %5 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vif.0.i, align 8
  %conv.i = zext i8 %6 to i32
  %cmp15.i = icmp eq i32 %sub.i, %conv.i
  br i1 %cmp15.i, label %wilc_get_vif_from_idx.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

wilc_get_vif_from_idx.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vif.0.i, null
  br i1 %tobool.not, label %wilc_get_vif_from_idx.exit.cleanup_crit_edge, label %if.end

wilc_get_vif_from_idx.exit.cleanup_crit_edge:     ; preds = %wilc_get_vif_from_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wilc_get_vif_from_idx.exit
  %hif_drv2 = getelementptr i8, ptr %.pn.i, i32 -5688
  %7 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_drv2, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr i8, ptr %.pn.i, i32 -5684
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.29, ptr noundef null) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end5.cleanup_crit_edge, label %wilc_alloc_work.exit

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wilc_alloc_work.exit:                             ; preds = %if.end5
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @handle_rcvd_ntwrk_info, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vif.0.i, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup_crit_edge, label %if.end9

wilc_alloc_work.exit.cleanup_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %wilc_alloc_work.exit
  %arrayidx10 = getelementptr i8, ptr %buffer, i32 6
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx10, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  %sub12 = add i16 %17, -1
  %frame_len = getelementptr inbounds %struct.wilc_rcvd_net_info, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %frame_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %sub12, ptr %frame_len, align 2
  %arrayidx14 = getelementptr i8, ptr %buffer, i32 8
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14, align 1
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %call7.i.i.i, align 8
  %arrayidx16 = getelementptr i8, ptr %buffer, i32 9
  %conv19 = zext i16 %sub12 to i32
  %call20 = tail call ptr @kmemdup(ptr noundef %arrayidx16, i32 noundef %conv19, i32 noundef 3264) #8
  %mgmt = getelementptr inbounds %struct.wilc_rcvd_net_info, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %mgmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call20, ptr %mgmt, align 4
  %tobool24.not = icmp eq ptr %call20, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %26 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %func.i, align 4
  %29 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i57 = icmp eq ptr %30, null
  br i1 %tobool.not.i57, label %if.end26.if.then29_crit_edge, label %lor.lhs.false.i

if.end26.if.then29_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %if.end26
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then29_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %32, i32 0, i32 39
  %33 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %34, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then29_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then29_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %34, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then29_crit_edge

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.end.i.if.then29_crit_edge, %lor.lhs.false8.i.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge, %if.end26.if.then29_crit_edge
  %ndev30 = getelementptr i8, ptr %.pn.i, i32 -5684
  %35 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev30, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %36, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wilc_network_info_received) #11
  %37 = ptrtoint ptr %mgmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mgmt, align 4
  tail call void @kfree(ptr noundef %38) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end.i.cleanup_crit_edge, %if.then25, %wilc_alloc_work.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %wilc_get_vif_from_idx.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_rcvd_ntwrk_info(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %vif = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %hif_drv = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_drv, align 8
  %mgmt = getelementptr i8, ptr %work, i32 -20
  %4 = ptrtoint ptr %mgmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mgmt, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %8 = and i16 %7, -1024
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %8, label %entry.done_crit_edge [
    i16 20480, label %entry.if.end6_crit_edge
    i16 -32768, label %entry.if.end6_crit_edge37
  ]

entry.if.end6_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %entry.if.end6_crit_edge37
  %frame_len = getelementptr i8, ptr %work, i32 -22
  %10 = ptrtoint ptr %frame_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frame_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %11)
  %cmp = icmp ult i16 %11, 37
  br i1 %cmp, label %if.end6.done_crit_edge, label %if.end10

if.end6.done_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end10:                                         ; preds = %if.end6
  %conv = zext i16 %11 to i32
  %sub = add nsw i32 %conv, -36
  %variable = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 6, i32 1, i32 2
  %call.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 3, ptr noundef %variable, i32 noundef %sub, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end10.if.end17_crit_edge, label %land.lhs.true

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp13.not = icmp eq i8 %13, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end17_crit_edge, label %if.then15

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16 = getelementptr i8, ptr %call.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %ch = getelementptr i8, ptr %work, i32 -23
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %ch, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %tobool18.not = icmp eq ptr %18, null
  br i1 %tobool18.not, label %if.end17.done_crit_edge, label %if.then19

if.end17.done_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %arg = getelementptr inbounds %struct.wilc_user_scan_req, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arg, align 4
  tail call void %18(i32 noundef 0, ptr noundef %add.ptr, ptr noundef %20) #8
  br label %done

done:                                             ; preds = %if.then19, %if.end17.done_crit_edge, %if.end6.done_crit_edge, %entry.done_crit_edge
  %21 = ptrtoint ptr %mgmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgmt, align 4
  tail call void @kfree(ptr noundef %22) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_gnrl_async_info_received(ptr noundef %wilc, ptr nocapture noundef readonly %buffer, i32 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %deinit_lock = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 43
  tail call void @mutex_lock_nested(ptr noundef %deinit_lock, i32 noundef 0) #8
  %sub = add i32 %length, -4
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %sub.i = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %3 = icmp ugt i32 %sub.i, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @wilc_get_vif_from_idx.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wilc_get_vif_from_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 110, ptr noundef nonnull @.str.44) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp13.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %vif.0.i = getelementptr i8, ptr %.pn.i, i32 -5808
  %5 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vif.0.i, align 8
  %conv.i = zext i8 %6 to i32
  %cmp15.i = icmp eq i32 %sub.i, %conv.i
  br i1 %cmp15.i, label %wilc_get_vif_from_idx.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

wilc_get_vif_from_idx.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vif.0.i, null
  br i1 %tobool.not, label %wilc_get_vif_from_idx.exit.cleanup_crit_edge, label %if.end

wilc_get_vif_from_idx.exit.cleanup_crit_edge:     ; preds = %wilc_get_vif_from_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %wilc_get_vif_from_idx.exit
  %hif_drv3 = getelementptr i8, ptr %.pn.i, i32 -5688
  %7 = ptrtoint ptr %hif_drv3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_drv3, align 8
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conn_result = getelementptr inbounds %struct.host_if_drv, ptr %8, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn_result, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr i8, ptr %.pn.i, i32 -5684
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.wilc_gnrl_async_info_received) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end11.cleanup_crit_edge, label %wilc_alloc_work.exit

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wilc_alloc_work.exit:                             ; preds = %if.end11
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @handle_rcvd_gnrl_async_info, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vif.0.i, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup_crit_edge, label %if.end16

wilc_alloc_work.exit.cleanup_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %wilc_alloc_work.exit
  %arrayidx17 = getelementptr i8, ptr %buffer, i32 7
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx17, align 1
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %call7.i.i.i, align 8
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %20 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %23 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %func.i, align 4
  %26 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i45 = icmp eq ptr %27, null
  br i1 %tobool.not.i45, label %if.end16.if.then20_crit_edge, label %lor.lhs.false.i

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false.i:                                  ; preds = %if.end16
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %29, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then20_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then20_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %29, i32 0, i32 39
  %30 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %31, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then20_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then20_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %31, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then20_crit_edge

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end.i.if.then20_crit_edge, %lor.lhs.false8.i.if.then20_crit_edge, %lor.lhs.false.i.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  %ndev21 = getelementptr i8, ptr %.pn.i, i32 -5684
  %32 = ptrtoint ptr %ndev21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev21, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wilc_gnrl_async_info_received) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end.i.cleanup_crit_edge, %wilc_alloc_work.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %wilc_get_vif_from_idx.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %deinit_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_rcvd_gnrl_async_info(ptr noundef %work) #1 align 64 {
entry:
  %abort_running_scan.i = alloca i8, align 1
  %wid.i = alloca %struct.wid, align 4
  %abort_running_scan.i.i = alloca i8, align 1
  %wid.i.i38 = alloca %struct.wid, align 4
  %wid.i.i = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %vif1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %hif_drv2 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_drv2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_rcvd_gnrl_async_info) #11
  br label %free_msg

if.end:                                           ; preds = %entry
  %conn_result = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 9
  %6 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn_result, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev5 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.handle_rcvd_gnrl_async_info) #11
  br label %free_msg

if.end6:                                          ; preds = %if.end
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %hif_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hif_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  %conn_info2.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i = icmp eq i8 %13, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.critedge.i

if.then.i:                                        ; preds = %if.then7
  %assoc_resp.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 13
  %14 = call ptr @memset(ptr %assoc_resp.i, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid.i.i) #8
  %15 = ptrtoint ptr %wid.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 807469055, ptr %wid.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.wid, ptr %wid.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %type.i.i, align 4
  %val.i.i = getelementptr inbounds %struct.wid, ptr %wid.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %assoc_resp.i, ptr %val.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.wid, ptr %wid.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %size.i.i, align 4
  %call.i.i = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %wid.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %host_int_get_assoc_res_info.exit.i, label %host_int_get_assoc_res_info.exit.thread.i

host_int_get_assoc_res_info.exit.thread.i:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.48) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i.i) #8
  br label %if.end12.i

host_int_get_assoc_res_info.exit.i:               ; preds = %if.then.i
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp6.not.i = icmp eq i32 %22, 0
  br i1 %cmp6.not.i, label %host_int_get_assoc_res_info.exit.i.if.end12.i_crit_edge, label %if.then8.i

host_int_get_assoc_res_info.exit.i.if.end12.i_crit_edge: ; preds = %host_int_get_assoc_res_info.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then8.i:                                       ; preds = %host_int_get_assoc_res_info.exit.i
  %status_code.i.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 13, i32 2
  %23 = ptrtoint ptr %status_code.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %status_code.i.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #8
  %status.i.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 8
  %26 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %status.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.i = icmp eq i16 %24, 0
  br i1 %cmp.i.i, label %if.then.i57.i, label %if.then8.i.if.end12.i_crit_edge

if.then8.i.if.end12.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i57.i:                                    ; preds = %if.then8.i
  %arrayidx.i.i = getelementptr %struct.host_if_drv, ptr %3, i32 0, i32 13, i32 6
  %27 = trunc i32 %22 to i16
  %conv3.i.i = add i16 %27, -6
  %conv4.i.i = zext i16 %conv3.i.i to i32
  %call.i55.i = call ptr @kmemdup(ptr noundef %arrayidx.i.i, i32 noundef %conv4.i.i, i32 noundef 3264) #8
  %resp_ies.i.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 6
  %28 = ptrtoint ptr %resp_ies.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i55.i, ptr %resp_ies.i.i, align 4
  %tobool.not.i56.i = icmp eq ptr %call.i55.i, null
  br i1 %tobool.not.i56.i, label %if.then11.i, label %if.end.i58.i

if.end.i58.i:                                     ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  %resp_ies_len.i.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %resp_ies_len.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv3.i.i, ptr %resp_ies_len.i.i, align 4
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.then.i57.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.47, i32 noundef -12) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i58.i, %if.then8.i.if.end12.i_crit_edge, %host_int_get_assoc_res_info.exit.i.if.end12.i_crit_edge, %host_int_get_assoc_res_info.exit.thread.i
  %connect_timer.c.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 8
  %call14.c.i = call i32 @del_timer(ptr noundef %connect_timer.c.i) #8
  %32 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn_result, align 4
  %arg.c.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %arg.c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arg.c.i, align 4
  call void %33(i32 noundef 0, i8 noundef zeroext 1, ptr noundef %35) #8
  %status.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp20.i = icmp eq i16 %37, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end12.i.host_int_parse_assoc_resp_info.exit_crit_edge

if.end12.i.host_int_parse_assoc_resp_info.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_int_parse_assoc_resp_info.exit

if.then22.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %assoc_bssid.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 5
  %38 = ptrtoint ptr %conn_info2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %conn_info2.i, align 4
  %40 = ptrtoint ptr %assoc_bssid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %assoc_bssid.i, align 4
  %add.ptr.i.i = getelementptr %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 0, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.host_if_drv, ptr %3, i32 0, i32 5, i32 4
  %43 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %add.ptr1.i.i, align 2
  br label %host_int_parse_assoc_resp_info.exit

if.else.critedge.i:                               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %connect_timer.c51.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 8
  %call14.c52.i = tail call i32 @del_timer(ptr noundef %connect_timer.c51.i) #8
  %44 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn_result, align 4
  %arg.c54.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 10
  %46 = ptrtoint ptr %arg.c54.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arg.c54.i, align 4
  tail call void %45(i32 noundef 0, i8 noundef zeroext %13, ptr noundef %47) #8
  br label %host_int_parse_assoc_resp_info.exit

host_int_parse_assoc_resp_info.exit:              ; preds = %if.else.critedge.i, %if.then22.i, %if.end12.i.host_int_parse_assoc_resp_info.exit_crit_edge
  %.sink.i = phi i32 [ 4, %if.then22.i ], [ 0, %if.else.critedge.i ], [ 0, %if.end12.i.host_int_parse_assoc_resp_info.exit_crit_edge ]
  %48 = ptrtoint ptr %hif_state to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i, ptr %hif_state, align 8
  %resp_ies.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %resp_ies.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %resp_ies.i, align 4
  call void @kfree(ptr noundef %50) #8
  %51 = ptrtoint ptr %resp_ies.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %resp_ies.i, align 4
  %resp_ies_len.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 7
  %52 = ptrtoint ptr %resp_ies_len.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %resp_ies_len.i, align 4
  %req_ies.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %req_ies.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %req_ies.i, align 4
  call void @kfree(ptr noundef %54) #8
  %55 = ptrtoint ptr %req_ies.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %req_ies.i, align 4
  %req_ies_len.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 5
  %56 = ptrtoint ptr %req_ies_len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %req_ies_len.i, align 4
  br label %free_msg

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9 = icmp eq i8 %13, 0
  br i1 %cmp9, label %if.then11, label %if.else.free_msg_crit_edge

if.else.free_msg_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp13 = icmp eq i32 %11, 4
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.then11
  br i1 %tobool.not.i, label %if.then15.if.end.i_crit_edge, label %if.then.i45

if.then15.if.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i45:                                      ; preds = %if.then15
  %scan_timer.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 6
  %call.i = tail call i32 @del_timer(ptr noundef %scan_timer.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abort_running_scan.i.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid.i.i38) #8
  %59 = ptrtoint ptr %wid.i.i38 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4128767, ptr %wid.i.i38, align 4
  %60 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hif_drv2, align 8
  %62 = ptrtoint ptr %abort_running_scan.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %abort_running_scan.i.i, align 1
  %type.i.i40 = getelementptr inbounds %struct.wid, ptr %wid.i.i38, i32 0, i32 1
  %63 = ptrtoint ptr %type.i.i40 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %type.i.i40, align 4
  %val.i.i41 = getelementptr inbounds %struct.wid, ptr %wid.i.i38, i32 0, i32 3
  %64 = ptrtoint ptr %val.i.i41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %abort_running_scan.i.i, ptr %val.i.i41, align 4
  %size.i.i42 = getelementptr inbounds %struct.wid, ptr %wid.i.i38, i32 0, i32 2
  %65 = ptrtoint ptr %size.i.i42 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %size.i.i42, align 4
  %call.i.i43 = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %wid.i.i38, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.then.i45.if.end3.i.i_crit_edge, label %if.then2.i.i

if.then.i45.if.end3.i.i_crit_edge:                ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i.i46 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %ndev.i.i46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev.i.i46, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.42) #11
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.then.i45.if.end3.i.i_crit_edge
  %tobool4.not.i.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev6.i.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %68 = ptrtoint ptr %ndev6.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev6.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_scan_done) #11
  br label %handle_scan_done.exit.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %61, align 4
  %tobool8.not.i.i = icmp eq ptr %71, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.handle_scan_done.exit.i_crit_edge, label %if.then9.i.i

if.end7.i.i.handle_scan_done.exit.i_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_scan_done.exit.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i.i = getelementptr inbounds %struct.wilc_user_scan_req, ptr %61, i32 0, i32 1
  %72 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arg.i.i, align 4
  call void %71(i32 noundef 2, ptr noundef null, ptr noundef %73) #8
  %74 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %61, align 4
  br label %handle_scan_done.exit.i

handle_scan_done.exit.i:                          ; preds = %if.then9.i.i, %if.end7.i.i.handle_scan_done.exit.i_crit_edge, %if.then5.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i.i38) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abort_running_scan.i.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %handle_scan_done.exit.i, %if.then15.if.end.i_crit_edge
  %75 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %conn_result, align 4
  %tobool3.not.i = icmp eq ptr %76, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 10
  %77 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arg.i, align 4
  call void %76(i32 noundef 1, i8 noundef zeroext 0, ptr noundef %78) #8
  br label %host_int_handle_disconnect.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i47 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %79 = ptrtoint ptr %ndev.i47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev.i47, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.host_int_handle_disconnect) #11
  br label %host_int_handle_disconnect.exit

host_int_handle_disconnect.exit:                  ; preds = %if.else.i, %if.then4.i
  %assoc_bssid.i48 = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 5
  %81 = call ptr @memset(ptr %assoc_bssid.i48, i32 0, i32 6)
  %req_ies_len.i49 = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 5
  %82 = ptrtoint ptr %req_ies_len.i49 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %req_ies_len.i49, align 4
  %req_ies.i50 = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 1, i32 4
  %83 = ptrtoint ptr %req_ies.i50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %req_ies.i50, align 4
  call void @kfree(ptr noundef %84) #8
  %85 = ptrtoint ptr %req_ies.i50 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %req_ies.i50, align 4
  %86 = ptrtoint ptr %hif_state to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %hif_state, align 8
  br label %free_msg

if.else16:                                        ; preds = %if.then11
  br i1 %tobool.not.i, label %if.else16.free_msg_crit_edge, label %if.then18

if.else16.free_msg_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_msg

if.then18:                                        ; preds = %if.else16
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %scan_timer) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abort_running_scan.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid.i) #8
  %87 = ptrtoint ptr %wid.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %wid.i, align 4
  %88 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hif_drv2, align 8
  %90 = ptrtoint ptr %abort_running_scan.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %abort_running_scan.i, align 1
  store i16 62, ptr %wid.i, align 4
  %type.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 1
  %91 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %type.i, align 4
  %val.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 3
  %92 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %abort_running_scan.i, ptr %val.i, align 4
  %size.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 2
  %93 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %size.i, align 4
  %call.i52 = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %wid.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.then18.if.end3.i_crit_edge, label %if.then2.i

if.then18.if.end3.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i55 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %94 = ptrtoint ptr %ndev.i55 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ndev.i55, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.42) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then18.if.end3.i_crit_edge
  %tobool4.not.i = icmp eq ptr %89, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev6.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %96 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ndev6.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %97, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_scan_done) #11
  br label %handle_scan_done.exit

if.end7.i:                                        ; preds = %if.end3.i
  %98 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %89, align 4
  %tobool8.not.i = icmp eq ptr %99, null
  br i1 %tobool8.not.i, label %if.end7.i.handle_scan_done.exit_crit_edge, label %if.then9.i

if.end7.i.handle_scan_done.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_scan_done.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i56 = getelementptr inbounds %struct.wilc_user_scan_req, ptr %89, i32 0, i32 1
  %100 = ptrtoint ptr %arg.i56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arg.i56, align 4
  call void %99(i32 noundef 2, ptr noundef null, ptr noundef %101) #8
  %102 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %89, align 4
  br label %handle_scan_done.exit

handle_scan_done.exit:                            ; preds = %if.then9.i, %if.end7.i.handle_scan_done.exit_crit_edge, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abort_running_scan.i) #8
  br label %free_msg

free_msg:                                         ; preds = %handle_scan_done.exit, %if.else16.free_msg_crit_edge, %host_int_handle_disconnect.exit, %if.else.free_msg_crit_edge, %host_int_parse_assoc_resp_info.exit, %if.then4, %if.then
  call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_scan_complete_received(ptr noundef %wilc, ptr nocapture noundef readonly %buffer, i32 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, -4
  %arrayidx = getelementptr i8, ptr %buffer, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %sub.i = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %3 = icmp ugt i32 %sub.i, 1
  br i1 %3, label %entry.cleanup17_crit_edge, label %do.body.i

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @wilc_get_vif_from_idx.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wilc_get_vif_from_idx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 110, ptr noundef nonnull @.str.44) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %vif_list.i = getelementptr inbounds %struct.wilc, ptr %wilc, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %vif_list.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp13.not.i = icmp eq ptr %.pn.i, %vif_list.i
  br i1 %cmp13.not.i, label %for.cond.i.cleanup17_crit_edge, label %for.body.i

for.cond.i.cleanup17_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

for.body.i:                                       ; preds = %for.cond.i
  %vif.0.i = getelementptr i8, ptr %.pn.i, i32 -5808
  %5 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vif.0.i, align 8
  %conv.i = zext i8 %6 to i32
  %cmp15.i = icmp eq i32 %sub.i, %conv.i
  br i1 %cmp15.i, label %wilc_get_vif_from_idx.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

wilc_get_vif_from_idx.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %vif.0.i, null
  br i1 %tobool.not, label %wilc_get_vif_from_idx.exit.cleanup17_crit_edge, label %if.end

wilc_get_vif_from_idx.exit.cleanup17_crit_edge:   ; preds = %wilc_get_vif_from_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end:                                           ; preds = %wilc_get_vif_from_idx.exit
  %hif_drv2 = getelementptr i8, ptr %.pn.i, i32 -5688
  %7 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_drv2, align 8
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.cleanup17_crit_edge, label %if.end5

if.end.cleanup17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end5.cleanup17_crit_edge, label %if.then7

if.end5.cleanup17_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then7:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.then7.cleanup17_crit_edge, label %wilc_alloc_work.exit

if.then7.cleanup17_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

wilc_alloc_work.exit:                             ; preds = %if.then7
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @handle_scan_complete, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vif.0.i, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.cleanup17_crit_edge, label %if.end11

wilc_alloc_work.exit.cleanup17_crit_edge:         ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.end11:                                         ; preds = %wilc_alloc_work.exit
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %15 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %18 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %func.i, align 4
  %21 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i32 = icmp eq ptr %22, null
  br i1 %tobool.not.i32, label %if.end11.if.then14_crit_edge, label %lor.lhs.false.i

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false.i:                                  ; preds = %if.end11
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %24, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then14_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then14_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then14_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then14_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %26, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup17_crit_edge, label %if.end.i.if.then14_crit_edge

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.i.cleanup17_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then14:                                        ; preds = %if.end.i.if.then14_crit_edge, %lor.lhs.false8.i.if.then14_crit_edge, %lor.lhs.false.i.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %ndev = getelementptr i8, ptr %.pn.i, i32 -5684
  %27 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wilc_scan_complete_received) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup17

cleanup17:                                        ; preds = %if.then14, %if.end.i.cleanup17_crit_edge, %wilc_alloc_work.exit.cleanup17_crit_edge, %if.then7.cleanup17_crit_edge, %if.end5.cleanup17_crit_edge, %if.end.cleanup17_crit_edge, %wilc_get_vif_from_idx.exit.cleanup17_crit_edge, %for.cond.i.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_scan_complete(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %hif_drv = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_drv, align 8
  %scan_timer = getelementptr inbounds %struct.host_if_drv, ptr %3, i32 0, i32 6
  %call = tail call i32 @del_timer(ptr noundef %scan_timer) #8
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %hif_drv1.i = getelementptr inbounds %struct.wilc_vif, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %hif_drv1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hif_drv1.i, align 8
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev6.i = getelementptr inbounds %struct.wilc_vif, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev6.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_scan_done) #11
  br label %handle_scan_done.exit

if.end7.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.end7.i.handle_scan_done.exit_crit_edge, label %if.then9.i

if.end7.i.handle_scan_done.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_scan_done.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i = getelementptr inbounds %struct.wilc_user_scan_req, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg.i, align 4
  tail call void %11(i32 noundef 1, ptr noundef null, ptr noundef %13) #8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %7, align 4
  br label %handle_scan_done.exit

handle_scan_done.exit:                            ; preds = %if.then9.i, %if.end7.i.handle_scan_done.exit_crit_edge, %if.then5.i
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_remain_on_channel(ptr noundef %vif, i64 noundef %cookie, i32 noundef %duration, i16 noundef zeroext %chan, ptr noundef %expired, ptr noundef %user_arg) local_unnamed_addr #1 align 64 {
entry:
  %wid.i = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %cookie to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid.i) #8
  %0 = ptrtoint ptr %wid.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 966197247, ptr %wid.i, align 4
  %hif_drv1.i = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %hif_drv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_drv1.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %entry
  %hif_state.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %hif_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hif_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp eq i32 %6, 3
  br i1 %cmp.i, label %if.end.i.if.then_crit_edge, label %if.end3.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  %connecting.i = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 15
  %7 = ptrtoint ptr %connecting.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %connecting.i, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not.i = icmp eq i8 %8, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.if.then_crit_edge

if.end3.i.if.then_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.end3.i
  %type.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %type.i, align 4
  %size.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 2) #13
  %val.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 3
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %val.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i, label %if.end6.i.if.then_crit_edge, label %if.end11.i

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end11.i:                                       ; preds = %if.end6.i
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %call7.i.i, align 8
  %conv.i = trunc i16 %chan to i8
  %arrayidx14.i = getelementptr i8, ptr %call7.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %arrayidx14.i, align 1
  %call15.i = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid.i, i32 noundef 1) #8
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %val.i, align 4
  call void @kfree(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool17.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool17.not.i, label %handle_remain_on_chan.exit, label %if.end11.i.if.then_crit_edge

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

handle_remain_on_chan.exit:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %remain_on_ch.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2
  %arg20.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arg20.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %user_arg, ptr %arg20.i, align 4
  %expired22.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %expired22.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %expired, ptr %expired22.i, align 8
  %19 = ptrtoint ptr %remain_on_ch.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %chan, ptr %remain_on_ch.i, align 8
  %cookie27.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %cookie27.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %cookie27.i, align 8
  %remain_on_ch_timer_vif.i = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 11
  %21 = ptrtoint ptr %remain_on_ch_timer_vif.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vif, ptr %remain_on_ch_timer_vif.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i) #8
  br label %if.end

if.then:                                          ; preds = %if.end11.i.if.then_crit_edge, %if.end6.i.if.then_crit_edge, %if.end3.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.end11.i.if.then_crit_edge ], [ -12, %if.end6.i.if.then_crit_edge ], [ -16, %if.end3.i.if.then_crit_edge ], [ -16, %if.end.i.if.then_crit_edge ], [ -16, %entry.if.then_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i) #8
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.wilc_remain_on_channel) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %handle_remain_on_chan.exit
  %retval.0.i11 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %handle_remain_on_chan.exit ]
  ret i32 %retval.0.i11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_listen_state_expired(ptr noundef %vif, i64 noundef %cookie) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_drv = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %0 = ptrtoint ptr %hif_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_drv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.wilc_listen_state_expired) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %remain_on_ch_timer = getelementptr inbounds %struct.host_if_drv, ptr %1, i32 0, i32 10
  %call = tail call i32 @del_timer(ptr noundef %remain_on_ch_timer) #8
  %call2 = tail call fastcc i32 @wilc_handle_roc_expired(ptr noundef %vif, i64 noundef %cookie)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ -14, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wilc_handle_roc_expired(ptr noundef %vif, i64 noundef %cookie) unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  %hif_drv1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 8
  %1 = ptrtoint ptr %hif_drv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_drv1, align 8
  %p2p_listen_state = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 16, i32 18
  %3 = ptrtoint ptr %p2p_listen_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p2p_listen_state, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body19, label %if.then

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 14742, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 2) #13
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %val, align 4
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call7.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 100, ptr %arrayidx8, align 1
  %call9 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.49) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %expired = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %expired to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %expired, align 8
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %arg = getelementptr inbounds %struct.host_if_drv, ptr %2, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg, align 4
  call void %17(ptr noundef %19, i64 noundef %cookie) #8
  br label %cleanup

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wilc_handle_roc_expired.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wilc_handle_roc_expired, %if.then24)) #8
          to label %cleanup [label %if.then24], !srcloc !151

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %ndev25 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %20 = ptrtoint ptr %ndev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @wilc_handle_roc_expired.__UNIQUE_ID_ddebug482, ptr noundef %21, ptr noundef nonnull @.str.52) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body19, %if.then14, %if.end12.cleanup_crit_edge, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wilc_frame_register(ptr noundef %vif, i16 noundef zeroext %frame_type, i1 noundef zeroext %reg) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %reg_frame = alloca %struct.wilc_reg_frame, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_frame) #8
  %1 = getelementptr inbounds %struct.wilc_reg_frame, ptr %reg_frame, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wilc_reg_frame, ptr %reg_frame, i32 0, i32 2
  %3 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 12420, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg_frame, ptr %val, align 4
  %7 = ptrtoint ptr %reg_frame to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %reg_frame, align 4
  br i1 %reg, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %reg_frame to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reg_frame, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = zext i16 %frame_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %frame_type, label %if.end.sw.epilog_crit_edge [
    i16 208, label %if.end.sw.epilog.sink.split_crit_edge
    i16 64, label %sw.bb2
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 1, %sw.bb2 ], [ 0, %if.end.sw.epilog.sink.split_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %1, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %11 = call i16 @llvm.bswap.i16(i16 %frame_type)
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %2, align 2
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %sw.epilog.if.end7_crit_edge, label %if.then6

sw.epilog.if.end7_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.32) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sw.epilog.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_frame) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_beacon(ptr noundef %vif, i32 noundef %interval, i32 noundef %dtim_period, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = call ptr @memset(ptr %wid, i32 255, i32 16)
  %1 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 16522, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %type, align 4
  %head_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %params, i32 0, i32 10
  %3 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head_len, align 4
  %tail_len = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %params, i32 0, i32 11
  %5 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tail_len, align 4
  %add = add i32 %6, %4
  %add1 = add i32 %add, 16
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1, ptr %size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef 3520) #12
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = tail call i32 @llvm.bswap.i32(i32 %interval) #8
  %10 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %dtim_period) #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr, align 4
  %add.ptr5 = getelementptr i8, ptr %call9.i.i, i32 8
  %13 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %head_len, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr5, align 8
  %add.ptr7 = getelementptr i8, ptr %call9.i.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %params, align 4
  %19 = call ptr @memcpy(ptr %add.ptr7, ptr %18, i32 %14)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %20 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %head_len, align 4
  %add.ptr13 = getelementptr i8, ptr %add.ptr7, i32 %21
  %22 = ptrtoint ptr %tail_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail_len, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  %25 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17.not = icmp eq i32 %23, 0
  br i1 %cmp17.not, label %if.end11.if.end20_crit_edge, label %if.then18

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr15 = getelementptr i8, ptr %add.ptr13, i32 4
  %tail = getelementptr inbounds %struct.cfg80211_beacon_data, ptr %params, i32 0, i32 1
  %26 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail, align 4
  %28 = call ptr @memcpy(ptr %add.ptr15, ptr %27, i32 %23)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end11.if.end20_crit_edge
  %call21 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %29 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.33) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_del_beacon(ptr noundef %vif) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %del_beacon = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %del_beacon) #8
  %1 = ptrtoint ptr %del_beacon to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %del_beacon, align 1
  %2 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 202, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %del_beacon, ptr %val, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.34) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %del_beacon) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_add_station(ptr noundef %vif, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 16519, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %type, align 4
  %supported_rates_len = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 9
  %2 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supported_rates_len, align 2
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 40
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 4
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call9.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 6
  %aid.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 6
  %12 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %aid.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call9.i, i32 8
  %16 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %supported_rates_len, align 2
  %incdec.ptr.i = getelementptr i8, ptr %call9.i, i32 9
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %add.ptr1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i = icmp eq i8 %17, 0
  br i1 %cmp.not.i, label %if.end.if.end.i15_crit_edge, label %if.then.i14

if.end.if.end.i15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i15

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %17 to i32
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 4
  %21 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %20, i32 %conv.i)
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i14, %if.end.if.end.i15_crit_edge
  %conv7.i.pre-phi = phi i32 [ %conv.i, %if.then.i14 ], [ 0, %if.end.if.end.i15_crit_edge ]
  %add.ptr8.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv7.i.pre-phi
  %ht_capa.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 12
  %22 = ptrtoint ptr %ht_capa.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ht_capa.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr10.i = getelementptr i8, ptr %add.ptr8.i, i32 1
  %24 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %add.ptr8.i, align 1
  %25 = call ptr @memcpy(ptr %incdec.ptr10.i, ptr %23, i32 26)
  br label %wilc_hif_pack_sta_param.exit

if.else.i:                                        ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add.ptr8.i, align 1
  br label %wilc_hif_pack_sta_param.exit

wilc_hif_pack_sta_param.exit:                     ; preds = %if.else.i, %if.then9.i
  %27 = getelementptr i8, ptr %add.ptr8.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %27, i32 26
  %sta_flags_mask.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %sta_flags_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sta_flags_mask.i, align 4
  %conv15.i = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv15.i) #8
  %31 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %add.ptr14.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 2
  %sta_flags_set.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %32 = ptrtoint ptr %sta_flags_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sta_flags_set.i, align 4
  %conv17.i = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #8
  %35 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %add.ptr16.i, align 1
  %call4 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %wilc_hif_pack_sta_param.exit.if.end7_crit_edge, label %if.then6

wilc_hif_pack_sta_param.exit.if.end7_crit_edge:   ; preds = %wilc_hif_pack_sta_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %wilc_hif_pack_sta_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.35) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %wilc_hif_pack_sta_param.exit.if.end7_crit_edge
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_del_station(ptr noundef %vif, ptr noundef readonly %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 16520, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %type, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 6, ptr %size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 6) #13
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %mac_addr, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %call7.i.i, i32 255, i32 6)
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_addr, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %call8 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.36) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_del_allstation(ptr noundef %vif, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %del_sta = alloca %struct.wilc_del_all_sta, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = call ptr @memset(ptr %wid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 55, ptr nonnull %del_sta) #8
  %1 = call ptr @memset(ptr %del_sta, i32 0, i32 55)
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %5 to i32
  %or.i = or i32 %3, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %arrayidx1, align 4
  %add.ptr1.i = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %5, ptr %add.ptr1.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %assoc_sta.1 = phi i8 [ 0, %entry.for.inc_crit_edge ], [ 1, %if.then ]
  %arrayidx.1 = getelementptr [6 x i8], ptr %mac_addr, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %add.ptr.i.1 = getelementptr [6 x i8], ptr %mac_addr, i32 1, i32 4
  %10 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.1, align 2
  %conv.i.1 = zext i16 %11 to i32
  %or.i.1 = or i32 %9, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.1)
  %cmp.i.1 = icmp eq i32 %or.i.1, 0
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nuw nsw i8 %assoc_sta.1, 1
  %arrayidx1.1 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx1.1, align 4
  %add.ptr1.i.1 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %add.ptr1.i.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %add.ptr1.i.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %assoc_sta.1.1 = phi i8 [ %assoc_sta.1, %for.inc.for.inc.1_crit_edge ], [ %inc.1, %if.then.1 ]
  %arrayidx.2 = getelementptr [6 x i8], ptr %mac_addr, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2, align 4
  %add.ptr.i.2 = getelementptr [6 x i8], ptr %mac_addr, i32 2, i32 4
  %16 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i.2, align 2
  %conv.i.2 = zext i16 %17 to i32
  %or.i.2 = or i32 %15, %conv.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.2)
  %cmp.i.2 = icmp eq i32 %or.i.2, 0
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc.2 = add nuw nsw i8 %assoc_sta.1.1, 1
  %arrayidx1.2 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx1.2, align 4
  %add.ptr1.i.2 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 2, i32 4
  %19 = ptrtoint ptr %add.ptr1.i.2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %add.ptr1.i.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %assoc_sta.1.2 = phi i8 [ %assoc_sta.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %inc.2, %if.then.2 ]
  %arrayidx.3 = getelementptr [6 x i8], ptr %mac_addr, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.3, align 4
  %add.ptr.i.3 = getelementptr [6 x i8], ptr %mac_addr, i32 3, i32 4
  %22 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.3, align 2
  %conv.i.3 = zext i16 %23 to i32
  %or.i.3 = or i32 %21, %conv.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.3)
  %cmp.i.3 = icmp eq i32 %or.i.3, 0
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %inc.3 = add nuw nsw i8 %assoc_sta.1.2, 1
  %arrayidx1.3 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %arrayidx1.3, align 4
  %add.ptr1.i.3 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 3, i32 4
  %25 = ptrtoint ptr %add.ptr1.i.3 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %add.ptr1.i.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %assoc_sta.1.3 = phi i8 [ %assoc_sta.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %inc.3, %if.then.3 ]
  %arrayidx.4 = getelementptr [6 x i8], ptr %mac_addr, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  %add.ptr.i.4 = getelementptr [6 x i8], ptr %mac_addr, i32 4, i32 4
  %28 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.4, align 2
  %conv.i.4 = zext i16 %29 to i32
  %or.i.4 = or i32 %27, %conv.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.4)
  %cmp.i.4 = icmp eq i32 %or.i.4, 0
  br i1 %cmp.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %inc.4 = add nuw nsw i8 %assoc_sta.1.3, 1
  %arrayidx1.4 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx1.4, align 4
  %add.ptr1.i.4 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 4, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.4 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %29, ptr %add.ptr1.i.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %assoc_sta.1.4 = phi i8 [ %assoc_sta.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %inc.4, %if.then.4 ]
  %arrayidx.5 = getelementptr [6 x i8], ptr %mac_addr, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  %add.ptr.i.5 = getelementptr [6 x i8], ptr %mac_addr, i32 5, i32 4
  %34 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.5, align 2
  %conv.i.5 = zext i16 %35 to i32
  %or.i.5 = or i32 %33, %conv.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.5)
  %cmp.i.5 = icmp eq i32 %or.i.5, 0
  br i1 %cmp.i.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %inc.5 = add nuw nsw i8 %assoc_sta.1.4, 1
  %arrayidx1.5 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %arrayidx1.5, align 4
  %add.ptr1.i.5 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 5, i32 4
  %37 = ptrtoint ptr %add.ptr1.i.5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %35, ptr %add.ptr1.i.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %assoc_sta.1.5 = phi i8 [ %assoc_sta.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %inc.5, %if.then.5 ]
  %arrayidx.6 = getelementptr [6 x i8], ptr %mac_addr, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.6, align 4
  %add.ptr.i.6 = getelementptr [6 x i8], ptr %mac_addr, i32 6, i32 4
  %40 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %add.ptr.i.6, align 2
  %conv.i.6 = zext i16 %41 to i32
  %or.i.6 = or i32 %39, %conv.i.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.6)
  %cmp.i.6 = icmp eq i32 %or.i.6, 0
  br i1 %cmp.i.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %inc.6 = add nuw nsw i8 %assoc_sta.1.5, 1
  %arrayidx1.6 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx1.6, align 4
  %add.ptr1.i.6 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 6, i32 4
  %43 = ptrtoint ptr %add.ptr1.i.6 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %41, ptr %add.ptr1.i.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %assoc_sta.1.6 = phi i8 [ %assoc_sta.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %inc.6, %if.then.6 ]
  %arrayidx.7 = getelementptr [6 x i8], ptr %mac_addr, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.7, align 4
  %add.ptr.i.7 = getelementptr [6 x i8], ptr %mac_addr, i32 7, i32 4
  %46 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.7, align 2
  %conv.i.7 = zext i16 %47 to i32
  %or.i.7 = or i32 %45, %conv.i.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.7)
  %cmp.i.7 = icmp eq i32 %or.i.7, 0
  br i1 %cmp.i.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %inc.7 = add nuw nsw i8 %assoc_sta.1.6, 1
  %arrayidx1.7 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 7
  %48 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx1.7, align 4
  %add.ptr1.i.7 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 7, i32 4
  %49 = ptrtoint ptr %add.ptr1.i.7 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %47, ptr %add.ptr1.i.7, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %assoc_sta.1.7 = phi i8 [ %assoc_sta.1.6, %for.inc.6.for.inc.7_crit_edge ], [ %inc.7, %if.then.7 ]
  %arrayidx.8 = getelementptr [6 x i8], ptr %mac_addr, i32 8
  %50 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.8, align 4
  %add.ptr.i.8 = getelementptr [6 x i8], ptr %mac_addr, i32 8, i32 4
  %52 = ptrtoint ptr %add.ptr.i.8 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.8, align 2
  %conv.i.8 = zext i16 %53 to i32
  %or.i.8 = or i32 %51, %conv.i.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.8)
  %cmp.i.8 = icmp eq i32 %or.i.8, 0
  br i1 %cmp.i.8, label %for.inc.8, label %for.inc.8.thread

for.inc.8.thread:                                 ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  %inc.8 = add nuw nsw i8 %assoc_sta.1.7, 1
  %arrayidx1.8 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 8
  %54 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %arrayidx1.8, align 4
  %add.ptr1.i.8 = getelementptr inbounds %struct.wilc_del_all_sta, ptr %del_sta, i32 0, i32 1, i32 8, i32 4
  %55 = ptrtoint ptr %add.ptr1.i.8 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %53, ptr %add.ptr1.i.8, align 2
  br label %if.end7

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %assoc_sta.1.7)
  %tobool.not = icmp eq i8 %assoc_sta.1.7, 0
  br i1 %tobool.not, label %for.inc.8.cleanup_crit_edge, label %for.inc.8.if.end7_crit_edge

for.inc.8.if.end7_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %for.inc.8.if.end7_crit_edge, %for.inc.8.thread
  %assoc_sta.1.833 = phi i8 [ %inc.8, %for.inc.8.thread ], [ %assoc_sta.1.7, %for.inc.8.if.end7_crit_edge ]
  %56 = ptrtoint ptr %del_sta to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %assoc_sta.1.833, ptr %del_sta, align 1
  %57 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 12421, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %58 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %type, align 4
  %conv = zext i8 %assoc_sta.1.833 to i32
  %mul = mul nuw nsw i32 %conv, 6
  %add = or i32 %mul, 1
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %59 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %size, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %del_sta, ptr %val, align 4
  %call9 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %61 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %62, ptr noundef nonnull @.str.37) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end7.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.8.cleanup_crit_edge ], [ %call9, %if.then11 ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 55, ptr nonnull %del_sta) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_edit_station(ptr noundef %vif, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 16521, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %type, align 4
  %supported_rates_len = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 9
  %2 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %supported_rates_len, align 2
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 40
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac, align 4
  %8 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call9.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call9.i, i32 4
  %11 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %add.ptr1.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 6
  %aid.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 6
  %12 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %aid.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call9.i, i32 8
  %16 = ptrtoint ptr %supported_rates_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %supported_rates_len, align 2
  %incdec.ptr.i = getelementptr i8, ptr %call9.i, i32 9
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %add.ptr1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i = icmp eq i8 %17, 0
  br i1 %cmp.not.i, label %if.end.if.end.i15_crit_edge, label %if.then.i14

if.end.if.end.i15_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i15

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %17 to i32
  %19 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params, align 4
  %21 = call ptr @memcpy(ptr %incdec.ptr.i, ptr %20, i32 %conv.i)
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i14, %if.end.if.end.i15_crit_edge
  %conv7.i.pre-phi = phi i32 [ %conv.i, %if.then.i14 ], [ 0, %if.end.if.end.i15_crit_edge ]
  %add.ptr8.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv7.i.pre-phi
  %ht_capa.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 12
  %22 = ptrtoint ptr %ht_capa.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ht_capa.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr10.i = getelementptr i8, ptr %add.ptr8.i, i32 1
  %24 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %add.ptr8.i, align 1
  %25 = call ptr @memcpy(ptr %incdec.ptr10.i, ptr %23, i32 26)
  br label %wilc_hif_pack_sta_param.exit

if.else.i:                                        ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %add.ptr8.i, align 1
  br label %wilc_hif_pack_sta_param.exit

wilc_hif_pack_sta_param.exit:                     ; preds = %if.else.i, %if.then9.i
  %27 = getelementptr i8, ptr %add.ptr8.i, i32 1
  %add.ptr14.i = getelementptr i8, ptr %27, i32 26
  %sta_flags_mask.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 2
  %28 = ptrtoint ptr %sta_flags_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sta_flags_mask.i, align 4
  %conv15.i = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv15.i) #8
  %31 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %add.ptr14.i, align 1
  %add.ptr16.i = getelementptr i8, ptr %add.ptr14.i, i32 2
  %sta_flags_set.i = getelementptr inbounds %struct.station_parameters, ptr %params, i32 0, i32 3
  %32 = ptrtoint ptr %sta_flags_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sta_flags_set.i, align 4
  %conv17.i = trunc i32 %33 to i16
  %34 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #8
  %35 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %add.ptr16.i, align 1
  %call4 = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %wilc_hif_pack_sta_param.exit.if.end7_crit_edge, label %if.then6

wilc_hif_pack_sta_param.exit.if.end7_crit_edge:   ; preds = %wilc_hif_pack_sta_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %wilc_hif_pack_sta_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %36 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.38) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %wilc_hif_pack_sta_param.exit.if.end7_crit_edge
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_power_mgmt(ptr noundef %vif, i1 noundef zeroext %enabled, i32 noundef %timeout) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 8
  %power_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wilc1 = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 6
  %0 = ptrtoint ptr %wilc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wilc1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %2 = ptrtoint ptr %wid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %wid, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %power_mode) #8
  %. = zext i1 %enabled to i8
  %3 = ptrtoint ptr %power_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %., ptr %power_mode, align 1
  %4 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 11, ptr %wid, align 8
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %power_mode, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %size, align 8
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.39) #11
  br label %if.end7

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %power_save_mode = getelementptr inbounds %struct.wilc, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %power_save_mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %., ptr %power_save_mode, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else4, %if.then3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %power_mode) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_setup_multicast_filter(ptr noundef %vif, i32 noundef %enabled, i32 noundef %count, ptr noundef %mc_list) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 132) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %entry.if.then_crit_edge, label %wilc_alloc_work.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

wilc_alloc_work.exit:                             ; preds = %entry
  %fn.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %fn.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @handle_set_mcast_filter, ptr %fn.i, align 4
  %vif6.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %vif6.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vif, ptr %vif6.i, align 4
  %is_sync8.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %is_sync8.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_sync8.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %wilc_alloc_work.exit.if.then_crit_edge, label %if.end

wilc_alloc_work.exit.if.then_crit_edge:           ; preds = %wilc_alloc_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %wilc_alloc_work.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i23 = phi ptr [ %call7.i.i.i, %wilc_alloc_work.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i23 to i32
  br label %cleanup

if.end:                                           ; preds = %wilc_alloc_work.exit
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %enabled, ptr %call7.i.i.i, align 8
  %cnt = getelementptr inbounds %struct.wilc_set_multicast, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %cnt, align 4
  %mc_list6 = getelementptr inbounds %struct.wilc_set_multicast, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %mc_list6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mc_list, ptr %mc_list6, align 8
  %work.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @wilc_enqueue_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %11 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn.i, align 4
  %func.i = getelementptr inbounds %struct.host_if_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %func.i, align 4
  %14 = ptrtoint ptr %vif6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vif6.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.if.then8_crit_edge, label %lor.lhs.false.i

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %if.end
  %wilc.i = getelementptr inbounds %struct.wilc_vif, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %wilc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wilc.i, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then8_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then8_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %hif_workqueue.i = getelementptr inbounds %struct.wilc, ptr %17, i32 0, i32 39
  %18 = ptrtoint ptr %hif_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hif_workqueue.i, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %lor.lhs.false8.i.if.then8_crit_edge, label %if.end.i

lor.lhs.false8.i.if.then8_crit_edge:              ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i:                                         ; preds = %lor.lhs.false8.i
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef nonnull %19, ptr noundef %work.i) #8
  br i1 %call.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.then8_crit_edge

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end.i.if.then8_crit_edge, %lor.lhs.false8.i.if.then8_crit_edge, %lor.lhs.false.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %vif, i32 0, i32 9
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.wilc_setup_multicast_filter) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %if.then8 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_set_mcast_filter(ptr noundef %work) #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %vif1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %2 = call ptr @memset(ptr %wid, i32 255, i32 16)
  %3 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16523, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %type, align 4
  %cnt = getelementptr i8, ptr %work, i32 -20
  %5 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cnt, align 4
  %mul = mul i32 %6, 6
  %add = add i32 %mul, 12
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #12
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %val, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %12 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call9.i, align 128
  %add.ptr5 = getelementptr i8, ptr %call9.i, i32 4
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  %16 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr5, align 4
  %add.ptr7 = getelementptr i8, ptr %call9.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %mc_list = getelementptr i8, ptr %work, i32 -16
  %17 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_list, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %land.lhs.true.if.end14_crit_edge, label %if.then10

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %mul13 = mul i32 %14, 6
  %19 = call ptr @memcpy(ptr %add.ptr7, ptr %18, i32 %mul13)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.error_crit_edge, label %if.then17

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.53) #11
  br label %error

error:                                            ; preds = %if.then17, %if.end14.error_crit_edge, %entry.error_crit_edge
  %mc_list19 = getelementptr i8, ptr %work, i32 -16
  %22 = ptrtoint ptr %mc_list19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc_list19, align 4
  call void @kfree(ptr noundef %23) #8
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %val, align 4
  call void @kfree(ptr noundef %25) #8
  call void @kfree(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_set_tx_power(ptr noundef %vif, i8 noundef zeroext %tx_power) local_unnamed_addr #1 align 64 {
entry:
  %tx_power.addr = alloca i8, align 1
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_power.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %tx_power, ptr %tx_power.addr, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %1 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wid, align 4
  store i16 206, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx_power.addr, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %size, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wilc_get_tx_power(ptr noundef %vif, ptr noundef %tx_power) local_unnamed_addr #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %0 = ptrtoint ptr %wid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wid, align 4
  store i16 206, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx_power, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %vif, i8 noundef zeroext 1, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_vendor_elem(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_get_statistics(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %vif1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @wilc_get_statistics(ptr noundef %1, ptr noundef %3)
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_scan_timer(ptr noundef %work) #1 align 64 {
entry:
  %abort_running_scan.i = alloca i8, align 1
  %wid.i = alloca %struct.wid, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %abort_running_scan.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid.i) #8
  %2 = ptrtoint ptr %wid.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %wid.i, align 4
  %hif_drv1.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %hif_drv1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_drv1.i, align 8
  %5 = ptrtoint ptr %abort_running_scan.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %abort_running_scan.i, align 1
  store i16 62, ptr %wid.i, align 4
  %type.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 1
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type.i, align 4
  %val.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 3
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %abort_running_scan.i, ptr %val.i, align 4
  %size.i = getelementptr inbounds %struct.wid, ptr %wid.i, i32 0, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %size.i, align 4
  %call.i = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %wid.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then2.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.42) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %entry.if.end3.i_crit_edge
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %ndev6.i = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev6.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_scan_done) #11
  br label %handle_scan_done.exit

if.end7.i:                                        ; preds = %if.end3.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %tobool8.not.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %if.end7.i.handle_scan_done.exit_crit_edge, label %if.then9.i

if.end7.i.handle_scan_done.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_scan_done.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i = getelementptr inbounds %struct.wilc_user_scan_req, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arg.i, align 4
  call void %14(i32 noundef 2, ptr noundef null, ptr noundef %16) #8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %4, align 4
  br label %handle_scan_done.exit

handle_scan_done.exit:                            ; preds = %if.then9.i, %if.end7.i.handle_scan_done.exit_crit_edge, %if.then5.i
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %abort_running_scan.i) #8
  call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_connect_timeout(ptr noundef %work) #1 align 64 {
entry:
  %wid = alloca %struct.wid, align 4
  %dummy_reason_code = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vif1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wid) #8
  %2 = call ptr @memset(ptr %wid, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy_reason_code) #8
  %3 = ptrtoint ptr %dummy_reason_code to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %dummy_reason_code, align 2
  %hif_drv2 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %hif_drv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_drv2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ndev = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.handle_connect_timeout) #11
  br label %out

if.end:                                           ; preds = %entry
  %hif_state = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %hif_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %hif_state, align 8
  %conn_result = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %conn_result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %conn_result, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arg = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  tail call void %10(i32 noundef 0, i8 noundef zeroext 0, ptr noundef %12) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ndev8 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev8, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.handle_connect_timeout) #11
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %15 = ptrtoint ptr %wid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 22, ptr %wid, align 4
  %type = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %type, align 4
  %val = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 3
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dummy_reason_code, ptr %val, align 4
  %size = getelementptr inbounds %struct.wid, ptr %wid, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %size, align 4
  %call = call i32 @wilc_send_config_pkt(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %wid, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %ndev12 = getelementptr inbounds %struct.wilc_vif, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ndev12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev12, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.5) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %req_ies_len = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %req_ies_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %req_ies_len, align 4
  %req_ies = getelementptr inbounds %struct.host_if_drv, ptr %5, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %req_ies to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req_ies, align 4
  call void @kfree(ptr noundef %23) #8
  %24 = ptrtoint ptr %req_ies to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %req_ies, align 4
  br label %out

out:                                              ; preds = %if.end13, %if.then
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  call void @kfree(ptr noundef %add.ptr) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy_reason_code) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wilc_handle_listen_state_expired(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %vif = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %cookie = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie, align 4
  %conv = zext i32 %3 to i64
  %call = tail call fastcc i32 @wilc_handle_roc_expired(ptr noundef %1, i64 noundef %conv)
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !121, !123, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 171, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 177, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 256, i32 25}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 373, i32 39}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 699, i32 25}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 719, i32 25}
!14 = !{ptr @__func__.wilc_disconnect, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 719, i32 54}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 986, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @wilc_set_wowlan_trigger._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @wilc_set_wowlan_trigger._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1054, i32 7}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1070, i32 7}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1098, i32 7}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1137, i32 7}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1298, i32 25}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1315, i32 25}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1365, i32 25}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1387, i32 25}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1408, i32 25}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1418, i32 25}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1429, i32 25}
!43 = !{ptr @__func__.wilc_get_rssi, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1429, i32 53}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1439, i32 25}
!47 = !{ptr @wilc_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1530, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wilc_init.__key.22, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1533, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @wilc_init.__key.24, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1534, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @wilc_init.__key.26, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1535, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1550, i32 25}
!61 = !{ptr @__func__.wilc_deinit, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1550, i32 51}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1590, i32 25}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1610, i32 25}
!67 = !{ptr @__func__.wilc_network_info_received, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1610, i32 54}
!69 = !{ptr @__func__.wilc_gnrl_async_info_received, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1641, i32 54}
!71 = !{ptr @__func__.wilc_scan_complete_received, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1688, i32 8}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1709, i32 25}
!75 = !{ptr @__func__.wilc_remain_on_channel, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1710, i32 7}
!77 = !{ptr @__func__.wilc_listen_state_expired, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1718, i32 51}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1758, i32 25}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1795, i32 25}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1815, i32 25}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1839, i32 25}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1865, i32 25}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1900, i32 25}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1924, i32 25}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1947, i32 25}
!95 = !{ptr @__func__.wilc_setup_multicast_filter, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1970, i32 54}
!97 = distinct !{null, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 306, i32 25}
!101 = !{ptr @__func__.get_periodic_rssi, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1507, i32 51}
!103 = !{ptr @__func__.wilc_get_stats_async, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 1457, i32 54}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 135, i32 26}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 141, i32 25}
!109 = !{ptr @__func__.handle_scan_done, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 141, i32 53}
!111 = !{ptr @__func__.handle_connect_timeout, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 332, i32 53}
!113 = !{ptr @__func__.listen_timer_cb, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 929, i32 54}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 110, i32 2}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !119, !"__key", i1 false, i1 false}
!119 = !{!"../include/linux/completion.h", i32 87, i32 2}
!120 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @wilc_enqueue_work.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 77, i32 2}
!123 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__func__.handle_rcvd_gnrl_async_info, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 659, i32 53}
!126 = !{ptr @.str.47, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 602, i32 9}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 550, i32 25}
!130 = !{ptr @__func__.host_int_handle_disconnect, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 641, i32 54}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 888, i32 26}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 897, i32 3}
!136 = !{ptr @.str.51, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @wilc_handle_roc_expired.__UNIQUE_ID_ddebug482, !135, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/microchip/wilc1000/hif.c", i32 962, i32 25}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
!151 = !{i64 2148901559, i64 2148901564, i64 2148901577, i64 2148901621, i64 2148901655, i64 2148901676}
