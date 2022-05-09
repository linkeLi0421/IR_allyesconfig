; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/4965-debug.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/4965-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.il_debugfs_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.il_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, [255 x ptr], [6 x %struct.ieee80211_supported_band], %struct.il_spectrum_notification, i8, i32, i32, i32, %struct.il_force_reset, ptr, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, [6 x i8], i8, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, [1 x %struct.mac_address], i32, i32, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, i32, i8, [25 x i8], ptr, %struct.il_qos_info, %struct.anon.137, %struct.il_rxon_cmd, %struct.il_rxon_cmd, %struct.il_rxon_time_cmd, i16, %struct.il_init_alive_resp, %struct.il_alive_resp, i16, i8, %struct.il_sensitivity_data, %struct.il_chain_noise_data, [11 x i16], %struct.il_ht_config, i8, %struct.wait_queue_head, i32, %struct.il_rx_queue, ptr, i32, %struct.il_dma_ptr, %struct.il_dma_ptr, i32, i32, %struct.traffic_stats, %struct.traffic_stats, %struct.isr_stats, %struct.il_power_mgr, [6 x i8], %struct.spinlock, i32, [32 x %struct.il_station_entry], i32, [1 x i32], i32, [4 x %struct.atomic_t], i8, i8, ptr, ptr, i32, i64, %union.anon.139, %struct.il_hw_params, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.work_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i8, i8, i32, i16, i16, ptr, ptr, ptr, i32, i32, i8, %struct.work_struct, i8, i8, i8, %struct.work_struct, %struct.timer_list, %struct.timer_list, i8, %struct.led_classdev, i32, i32, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.il_spectrum_notification = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i8, [3 x i8], %struct.il_measurement_histogram, i32, i32 }
%struct.il_measurement_histogram = type { [8 x i32], [8 x i32] }
%struct.il_force_reset = type { i32, i32, i32, i32, i32 }
%struct.mac_address = type { [6 x i8] }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.il_qos_info = type { i32, %struct.il_qosparam_cmd }
%struct.il_qosparam_cmd = type { i32, [4 x %struct.il_ac_qos] }
%struct.il_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.anon.137 = type { i8, i8, i8, i8, i8 }
%struct.il_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8 }>
%struct.il_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.il_init_alive_resp = type { i8, i8, i16, [8 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [5 x [2 x i32]] }
%struct.il_alive_resp = type { i8, i8, i16, [8 x i8], i8, i8, i16, i32, i32, i32, i32 }
%struct.il_sensitivity_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [20 x i8], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.il_chain_noise_data = type { i32, i32, i32, i32, i32, i32, i32, i16, [3 x i8], [3 x i8], i8, i8 }
%struct.il_ht_config = type { i8, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.il_rx_queue = type { ptr, i32, [320 x %struct.il_rx_buf], [256 x ptr], i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, %struct.spinlock }
%struct.il_rx_buf = type { i32, ptr, %struct.list_head }
%struct.il_dma_ptr = type { i32, ptr, i32 }
%struct.traffic_stats = type { [12 x i32], [8 x i32], i32, i64 }
%struct.isr_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [255 x i32], i32, i32 }
%struct.il_power_mgr = type { %struct.il_powertable_cmd, %struct.il_powertable_cmd, i32, i8, i8 }
%struct.il_powertable_cmd = type { i16, i8, i8, i32, i32, [5 x i32], i32 }
%struct.il_station_entry = type { %struct.il_addsta_cmd, [9 x %struct.il_tid_data], i8, %struct.il_hw_key, ptr }
%struct.il_addsta_cmd = type { i8, [3 x i8], %struct.sta_id_modify, %struct.il4965_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }
%struct.sta_id_modify = type { [6 x i8], i16, i8, i8, i16 }
%struct.il4965_keyinfo = type { i16, i8, i8, [5 x i16], i8, i8, [16 x i8] }
%struct.il_tid_data = type { i16, i16, %struct.il_ht_agg }
%struct.il_ht_agg = type { i16, i16, i16, i16, i64, i32, i8 }
%struct.il_hw_key = type { i32, i32, i8, [32 x i8] }
%union.anon.139 = type { %struct.anon.140, [856 x i8] }
%struct.anon.140 = type { ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.il3945_notif_stats, %struct.il3945_notif_stats, %struct.il3945_notif_stats, %struct.il3945_notif_stats, i32, i32, i32, i64, [5 x %struct.il3945_clip_group] }
%struct.il3945_notif_stats = type { i32, %struct.iwl39_stats_rx, %struct.iwl39_stats_tx, %struct.iwl39_stats_general }
%struct.iwl39_stats_rx = type { %struct.iwl39_stats_rx_phy, %struct.iwl39_stats_rx_phy, %struct.iwl39_stats_rx_non_phy }
%struct.iwl39_stats_rx_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl39_stats_rx_non_phy = type { i32, i32, i32, i32, i32 }
%struct.iwl39_stats_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl39_stats_general = type { i32, %struct.stats_dbg, i32, i32, i32, i32, %struct.iwl39_stats_div }
%struct.stats_dbg = type { i32, i32, i32, [3 x i32] }
%struct.iwl39_stats_div = type { i32, i32, i32, i32 }
%struct.il3945_clip_group = type { [12 x i8] }
%struct.il_hw_params = type { i8, i8, i8, i16, i32, i8, i8, i8, i8, i16, i16, i32, i32, i8, i8, i8, i32, i32, i32, i32, i16, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.142, i32 }
%union.anon.142 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.136 = type { ptr }
%struct.anon.141 = type <{ %struct.il_rx_phy_res, i8, [3 x i8], i32, %struct.completion, i8, i8, i8, [4 x %struct.il_wep_key], %struct.il_notif_stats, %struct.il_notif_stats, %struct.il_notif_stats, %struct.il_notif_stats, i8 }>
%struct.il_rx_phy_res = type <{ i8, i8, i8, i8, i64, i32, i16, i16, [32 x i8], i32, i16, i16 }>
%struct.il_wep_key = type { i8, i8, [2 x i8], i8, [3 x i8], [16 x i8] }
%struct.il_notif_stats = type { i32, %struct.stats_rx, %struct.stats_tx, %struct.stats_general }
%struct.stats_rx = type { %struct.stats_rx_phy, %struct.stats_rx_phy, %struct.stats_rx_non_phy, %struct.stats_rx_ht_phy }
%struct.stats_rx_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats_rx_non_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats_rx_ht_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats_tx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stats_tx_non_phy_agg, i32 }
%struct.stats_tx_non_phy_agg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stats_general = type { %struct.stats_general_common, i32, i32 }
%struct.stats_general_common = type { i32, %struct.stats_dbg, i32, i32, i32, i32, %struct.stats_div, i32, i32 }
%struct.stats_div = type { i32, i32, i32, i32, i32, i32 }

@il4965_debugfs_ops = dso_local constant { %struct.il_debugfs_ops, [20 x i8] } { %struct.il_debugfs_ops { ptr @il4965_ucode_rx_stats_read, ptr @il4965_ucode_tx_stats_read, ptr @il4965_ucode_general_stats_read }, [20 x i8] zeroinitializer }, align 32
@il4965_ucode_rx_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can not allocate Buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il4965_ucode_rx_stats_read\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlegacy/4965-debug.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il4965_ucode_rx_stats_read._entry_ptr = internal global ptr @il4965_ucode_rx_stats_read._entry, section ".printk_index", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Statistics_Rx - OFDM:\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ina_cnt:\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fina_cnt:\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plcp_err:\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc32_err:\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"overrun_err:\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"early_overrun_err:\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crc32_good:\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"false_alarm_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fina_sync_err_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfd_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fina_timeout:\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unresponded_rts:\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxe_frame_lmt_ovrun:\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_ack_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_cts_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sent_ba_rsp_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsp_self_kill:\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mh_format_err:\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"re_acq_main_rssi_sum:\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Statistics_Rx - CCK:\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Statistics_Rx - GENERAL:\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_cts:\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_ack:\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non_bssid_frames:\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"filtered_frames:\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"non_channel_beacons:\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel_beacons:\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"num_missed_bcon:\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adc_rx_saturation_time:\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ina_detect_search_tm:\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_a:\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_b:\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"beacon_silence_rssi_c:\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"interference_data_flag:\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"channel_load:\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsp_false_alarms:\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_a:\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_b:\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"beacon_rssi_c:\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_a:\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_b:\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"beacon_energy_c:\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Statistics_Rx - OFDM_HT:\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"agg_crc32_good:\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agg_mpdu_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"agg_cnt:\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsupport_mcs:\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Statistics Flag(0x%X):\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Statistics have been cleared\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Operational Frequency: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.4 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.2 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09TGj Narrow Band: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%-32s    current  cumulative       delta         max\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  %-30s %10u  %10u  %10u  %10u\0A\00", [32 x i8] zeroinitializer }, align 32
@il4965_ucode_tx_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.63, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il4965_ucode_tx_stats_read\00", [37 x i8] zeroinitializer }, align 32
@il4965_ucode_tx_stats_read._entry_ptr = internal global ptr @il4965_ucode_tx_stats_read._entry, section ".printk_index", align 4
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Statistics_Tx:\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preamble:\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_detected_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt_prio_defer_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bt_prio_kill_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"few_bytes_cnt:\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"expected_ack_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"actual_ack_cnt:\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_msdu_cnt:\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"abort_nxt_frame_mismatch:\00", [38 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"abort_missing_nxt_frame:\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cts_timeout_collision:\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ack_ba_timeout_collision:\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"agg ba_timeout:\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"agg ba_resched_frames:\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"agg scd_query_agg_frame:\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"agg scd_query_no_agg:\00", [42 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"agg scd_query_agg:\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"agg scd_query_mismatch:\00", [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"agg frame_not_ready:\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"agg underrun:\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"agg bt_prio_kill:\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"agg rx_ba_rsp_cnt:\00", [45 x i8] zeroinitializer }, align 32
@il4965_ucode_general_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.89, ptr @.str.2, i32 637, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"il4965_ucode_general_stats_read\00", [32 x i8] zeroinitializer }, align 32
@il4965_ucode_general_stats_read._entry_ptr = internal global ptr @il4965_ucode_general_stats_read._entry, section ".printk_index", align 4
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Statistics_General:\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temperature:\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ttl_timestamp:\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_check:\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_count:\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait_for_silence_timeout_count:\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sleep_time:\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slots_out:\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slots_idle:\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_a:\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_b:\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exec_time:\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probe_time:\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_enable_counter:\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"num_of_sos_states:\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  %-30s %10u\0A\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"il4965_debugfs_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 730, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 63, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 92, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 94, i32 51 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 98, i32 51 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 102, i32 51 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 106, i32 51 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 110, i32 51 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 114, i32 51 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 120, i32 51 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 124, i32 51 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 129, i32 51 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 135, i32 51 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 139, i32 51 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 143, i32 51 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 148, i32 51 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 154, i32 51 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 158, i32 51 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 162, i32 51 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 167, i32 51 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 172, i32 51 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 178, i32 9 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 186, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 276, i32 9 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 278, i32 51 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 282, i32 51 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 286, i32 51 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 292, i32 51 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 298, i32 51 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 304, i32 51 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 310, i32 51 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 317, i32 9 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 324, i32 9 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 331, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 338, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 345, i32 9 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 352, i32 9 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 358, i32 51 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 363, i32 51 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 369, i32 51 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 374, i32 51 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 379, i32 51 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 384, i32 51 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 390, i32 51 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 396, i32 51 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 404, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 431, i32 51 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 435, i32 51 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 439, i32 51 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 443, i32 51 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 26, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 29, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 30, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 31, i32 47 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 32, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 33, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 34, i32 49 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 35, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 16, i32 5 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 14, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 468, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 482, i32 55 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 484, i32 51 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 488, i32 51 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 493, i32 51 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 498, i32 51 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 503, i32 51 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 507, i32 51 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 511, i32 51 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 515, i32 51 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 520, i32 51 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 524, i32 51 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 529, i32 9 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 536, i32 9 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 543, i32 9 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 550, i32 9 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 556, i32 51 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 561, i32 9 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 568, i32 9 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 575, i32 9 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 581, i32 51 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 587, i32 9 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 593, i32 51 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 599, i32 51 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 603, i32 51 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 608, i32 51 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 637, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 661, i32 9 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 663, i32 51 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 666, i32 51 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 669, i32 51 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 673, i32 51 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 678, i32 9 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 684, i32 51 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 689, i32 51 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 693, i32 51 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 698, i32 51 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 702, i32 51 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 706, i32 51 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 710, i32 51 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 714, i32 51 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 720, i32 51 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlegacy/4965-debug.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 13, i32 32 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @il4965_ucode_general_stats_read._entry, ptr @il4965_ucode_general_stats_read._entry_ptr, ptr @il4965_ucode_rx_stats_read._entry, ptr @il4965_ucode_rx_stats_read._entry_ptr, ptr @il4965_ucode_tx_stats_read._entry, ptr @il4965_ucode_tx_stats_read._entry_ptr, ptr @il4965_debugfs_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_debugfs_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_ucode_rx_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_ucode_tx_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_ucode_general_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_ucode_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8560, i32 noundef 3520, i32 noundef 2) #9
  %tobool2.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96
  %rx = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1
  %cck8 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1
  %general11 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2
  %ofdm_ht = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3
  %rx14 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1
  %cck18 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1
  %general21 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2
  %ofdm_ht24 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3
  %rx25 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1
  %cck29 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 11
  %general32 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 75
  %ofdm_ht35 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 159
  %rx36 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 387
  %cck40 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 467
  %general43 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 547
  %ofdm_ht46 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 631
  %call47 = tail call fastcc i32 @il4965_stats_flag(ptr noundef %1, ptr noundef nonnull %call1.i.i.i, i32 noundef 8560)
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 %call47
  %sub = sub i32 8560, %call47
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.5) #6
  %add49 = add i32 %call48, %call47
  %add.ptr50 = getelementptr i8, ptr %call1.i.i.i, i32 %add49
  %sub51 = sub i32 8560, %add49
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %rx, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %rx14 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rx14, align 1
  %13 = ptrtoint ptr %rx25 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %rx25, align 1
  %15 = ptrtoint ptr %rx36 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %rx36, align 1
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.6, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #6
  %add56 = add i32 %call55, %add49
  %add.ptr57 = getelementptr i8, ptr %call1.i.i.i, i32 %add56
  %sub58 = sub i32 8560, %add56
  %fina_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %fina_cnt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fina_cnt, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %fina_cnt59 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %fina_cnt59 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %fina_cnt59, align 1
  %fina_cnt60 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %fina_cnt60 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %fina_cnt60, align 1
  %fina_cnt61 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 391
  %24 = ptrtoint ptr %fina_cnt61 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %fina_cnt61, align 1
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.7, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #6
  %add63 = add i32 %call62, %add56
  %add.ptr64 = getelementptr i8, ptr %call1.i.i.i, i32 %add63
  %sub65 = sub i32 8560, %add63
  %plcp_err = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %plcp_err, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %plcp_err66 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %plcp_err66 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %plcp_err66, align 1
  %plcp_err67 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %plcp_err67 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %plcp_err67, align 1
  %plcp_err68 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 395
  %33 = ptrtoint ptr %plcp_err68 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %plcp_err68, align 1
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #6
  %add70 = add i32 %call69, %add63
  %add.ptr71 = getelementptr i8, ptr %call1.i.i.i, i32 %add70
  %sub72 = sub i32 8560, %add70
  %crc32_err = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %crc32_err to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %crc32_err, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %crc32_err73 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %crc32_err73 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %crc32_err73, align 1
  %crc32_err74 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %crc32_err74 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %crc32_err74, align 1
  %crc32_err75 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 399
  %42 = ptrtoint ptr %crc32_err75 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %crc32_err75, align 1
  %call76 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #6
  %add77 = add i32 %call76, %add70
  %add.ptr78 = getelementptr i8, ptr %call1.i.i.i, i32 %add77
  %sub79 = sub i32 8560, %add77
  %overrun_err = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %overrun_err to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %overrun_err, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %overrun_err80 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %overrun_err80 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %overrun_err80, align 1
  %overrun_err81 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %overrun_err81 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %overrun_err81, align 1
  %overrun_err82 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 403
  %51 = ptrtoint ptr %overrun_err82 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %overrun_err82, align 1
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr78, i32 noundef %sub79, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.10, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #6
  %add84 = add i32 %call83, %add77
  %add.ptr85 = getelementptr i8, ptr %call1.i.i.i, i32 %add84
  %sub86 = sub i32 8560, %add84
  %early_overrun_err = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 5
  %53 = ptrtoint ptr %early_overrun_err to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %early_overrun_err, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %early_overrun_err87 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %early_overrun_err87 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %early_overrun_err87, align 1
  %early_overrun_err88 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 11, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %early_overrun_err88 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %early_overrun_err88, align 1
  %early_overrun_err89 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 407
  %60 = ptrtoint ptr %early_overrun_err89 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %early_overrun_err89, align 1
  %call90 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.11, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #6
  %add91 = add i32 %call90, %add84
  %add.ptr92 = getelementptr i8, ptr %call1.i.i.i, i32 %add91
  %sub93 = sub i32 8560, %add91
  %crc32_good = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 6
  %62 = ptrtoint ptr %crc32_good to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %crc32_good, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %crc32_good94 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 6
  %65 = ptrtoint ptr %crc32_good94 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %crc32_good94, align 1
  %crc32_good95 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 3
  %67 = ptrtoint ptr %crc32_good95 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %crc32_good95, align 1
  %crc32_good96 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 411
  %69 = ptrtoint ptr %crc32_good96 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %crc32_good96, align 1
  %call97 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92, i32 noundef %sub93, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.12, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #6
  %add98 = add i32 %call97, %add91
  %add.ptr99 = getelementptr i8, ptr %call1.i.i.i, i32 %add98
  %sub100 = sub i32 8560, %add98
  %false_alarm_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 7
  %71 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %false_alarm_cnt, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %false_alarm_cnt101 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 7
  %74 = ptrtoint ptr %false_alarm_cnt101 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %false_alarm_cnt101, align 1
  %false_alarm_cnt102 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 7
  %76 = ptrtoint ptr %false_alarm_cnt102 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %false_alarm_cnt102, align 1
  %false_alarm_cnt103 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 415
  %78 = ptrtoint ptr %false_alarm_cnt103 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %false_alarm_cnt103, align 1
  %call104 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr99, i32 noundef %sub100, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.13, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #6
  %add105 = add i32 %call104, %add98
  %add.ptr106 = getelementptr i8, ptr %call1.i.i.i, i32 %add105
  %sub107 = sub i32 8560, %add105
  %fina_sync_err_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 8
  %80 = ptrtoint ptr %fina_sync_err_cnt to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %fina_sync_err_cnt, align 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %fina_sync_err_cnt108 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 8
  %83 = ptrtoint ptr %fina_sync_err_cnt108 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %fina_sync_err_cnt108, align 1
  %fina_sync_err_cnt109 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 11
  %85 = ptrtoint ptr %fina_sync_err_cnt109 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %fina_sync_err_cnt109, align 1
  %fina_sync_err_cnt110 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 419
  %87 = ptrtoint ptr %fina_sync_err_cnt110 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %fina_sync_err_cnt110, align 1
  %call111 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr106, i32 noundef %sub107, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.14, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #6
  %add112 = add i32 %call111, %add105
  %add.ptr113 = getelementptr i8, ptr %call1.i.i.i, i32 %add112
  %sub114 = sub i32 8560, %add112
  %sfd_timeout = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 9
  %89 = ptrtoint ptr %sfd_timeout to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %sfd_timeout, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %sfd_timeout115 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 9
  %92 = ptrtoint ptr %sfd_timeout115 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %sfd_timeout115, align 1
  %sfd_timeout116 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 3
  %94 = ptrtoint ptr %sfd_timeout116 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %sfd_timeout116, align 1
  %sfd_timeout117 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 423
  %96 = ptrtoint ptr %sfd_timeout117 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %sfd_timeout117, align 1
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.15, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #6
  %add119 = add i32 %call118, %add112
  %add.ptr120 = getelementptr i8, ptr %call1.i.i.i, i32 %add119
  %sub121 = sub i32 8560, %add119
  %fina_timeout = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 10
  %98 = ptrtoint ptr %fina_timeout to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %fina_timeout, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %fina_timeout122 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 10
  %101 = ptrtoint ptr %fina_timeout122 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %fina_timeout122, align 1
  %fina_timeout123 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 7
  %103 = ptrtoint ptr %fina_timeout123 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %fina_timeout123, align 1
  %fina_timeout124 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 427
  %105 = ptrtoint ptr %fina_timeout124 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %fina_timeout124, align 1
  %call125 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.16, i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106) #6
  %add126 = add i32 %call125, %add119
  %add.ptr127 = getelementptr i8, ptr %call1.i.i.i, i32 %add126
  %sub128 = sub i32 8560, %add126
  %unresponded_rts = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 11
  %107 = ptrtoint ptr %unresponded_rts to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %unresponded_rts, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %unresponded_rts129 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 11
  %110 = ptrtoint ptr %unresponded_rts129 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %unresponded_rts129, align 1
  %unresponded_rts130 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 11
  %112 = ptrtoint ptr %unresponded_rts130 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %unresponded_rts130, align 1
  %unresponded_rts131 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 431
  %114 = ptrtoint ptr %unresponded_rts131 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %unresponded_rts131, align 1
  %call132 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr127, i32 noundef %sub128, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.17, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115) #6
  %add133 = add i32 %call132, %add126
  %add.ptr134 = getelementptr i8, ptr %call1.i.i.i, i32 %add133
  %sub135 = sub i32 8560, %add133
  %rxe_frame_limit_overrun = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 12
  %116 = ptrtoint ptr %rxe_frame_limit_overrun to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %rxe_frame_limit_overrun, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %rxe_frame_limit_overrun136 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 12
  %119 = ptrtoint ptr %rxe_frame_limit_overrun136 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %rxe_frame_limit_overrun136, align 1
  %rxe_frame_limit_overrun137 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 3
  %121 = ptrtoint ptr %rxe_frame_limit_overrun137 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %rxe_frame_limit_overrun137, align 1
  %rxe_frame_limit_overrun138 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 435
  %123 = ptrtoint ptr %rxe_frame_limit_overrun138 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %rxe_frame_limit_overrun138, align 1
  %call139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr134, i32 noundef %sub135, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.18, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124) #6
  %add140 = add i32 %call139, %add133
  %add.ptr141 = getelementptr i8, ptr %call1.i.i.i, i32 %add140
  %sub142 = sub i32 8560, %add140
  %sent_ack_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 13
  %125 = ptrtoint ptr %sent_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %sent_ack_cnt, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %sent_ack_cnt143 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 13
  %128 = ptrtoint ptr %sent_ack_cnt143 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %sent_ack_cnt143, align 1
  %sent_ack_cnt144 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 7
  %130 = ptrtoint ptr %sent_ack_cnt144 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %sent_ack_cnt144, align 1
  %sent_ack_cnt145 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 439
  %132 = ptrtoint ptr %sent_ack_cnt145 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %sent_ack_cnt145, align 1
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr141, i32 noundef %sub142, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.19, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133) #6
  %add147 = add i32 %call146, %add140
  %add.ptr148 = getelementptr i8, ptr %call1.i.i.i, i32 %add147
  %sub149 = sub i32 8560, %add147
  %sent_cts_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 14
  %134 = ptrtoint ptr %sent_cts_cnt to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %sent_cts_cnt, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %sent_cts_cnt150 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 14
  %137 = ptrtoint ptr %sent_cts_cnt150 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %sent_cts_cnt150, align 1
  %sent_cts_cnt151 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 11
  %139 = ptrtoint ptr %sent_cts_cnt151 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %sent_cts_cnt151, align 1
  %sent_cts_cnt152 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 443
  %141 = ptrtoint ptr %sent_cts_cnt152 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %sent_cts_cnt152, align 1
  %call153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr148, i32 noundef %sub149, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.20, i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142) #6
  %add154 = add i32 %call153, %add147
  %add.ptr155 = getelementptr i8, ptr %call1.i.i.i, i32 %add154
  %sub156 = sub i32 8560, %add154
  %sent_ba_rsp_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 15
  %143 = ptrtoint ptr %sent_ba_rsp_cnt to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %sent_ba_rsp_cnt, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  %sent_ba_rsp_cnt157 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 15
  %146 = ptrtoint ptr %sent_ba_rsp_cnt157 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %sent_ba_rsp_cnt157, align 1
  %sent_ba_rsp_cnt158 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 3
  %148 = ptrtoint ptr %sent_ba_rsp_cnt158 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %sent_ba_rsp_cnt158, align 1
  %sent_ba_rsp_cnt159 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 447
  %150 = ptrtoint ptr %sent_ba_rsp_cnt159 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %sent_ba_rsp_cnt159, align 1
  %call160 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr155, i32 noundef %sub156, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.21, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151) #6
  %add161 = add i32 %call160, %add154
  %add.ptr162 = getelementptr i8, ptr %call1.i.i.i, i32 %add161
  %sub163 = sub i32 8560, %add161
  %dsp_self_kill = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 16
  %152 = ptrtoint ptr %dsp_self_kill to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %dsp_self_kill, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %dsp_self_kill164 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 16
  %155 = ptrtoint ptr %dsp_self_kill164 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %dsp_self_kill164, align 1
  %dsp_self_kill165 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 7
  %157 = ptrtoint ptr %dsp_self_kill165 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %dsp_self_kill165, align 1
  %dsp_self_kill166 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 451
  %159 = ptrtoint ptr %dsp_self_kill166 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %dsp_self_kill166, align 1
  %call167 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr162, i32 noundef %sub163, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.22, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %160) #6
  %add168 = add i32 %call167, %add161
  %add.ptr169 = getelementptr i8, ptr %call1.i.i.i, i32 %add168
  %sub170 = sub i32 8560, %add168
  %mh_format_err = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 17
  %161 = ptrtoint ptr %mh_format_err to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %mh_format_err, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %mh_format_err171 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 17
  %164 = ptrtoint ptr %mh_format_err171 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %mh_format_err171, align 1
  %mh_format_err172 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 11
  %166 = ptrtoint ptr %mh_format_err172 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %mh_format_err172, align 1
  %mh_format_err173 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 455
  %168 = ptrtoint ptr %mh_format_err173 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %mh_format_err173, align 1
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr169, i32 noundef %sub170, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.23, i32 noundef %163, i32 noundef %165, i32 noundef %167, i32 noundef %169) #6
  %add175 = add i32 %call174, %add168
  %add.ptr176 = getelementptr i8, ptr %call1.i.i.i, i32 %add175
  %sub177 = sub i32 8560, %add175
  %re_acq_main_rssi_sum = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 0, i32 18
  %170 = ptrtoint ptr %re_acq_main_rssi_sum to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %re_acq_main_rssi_sum, align 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  %re_acq_main_rssi_sum178 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 0, i32 18
  %173 = ptrtoint ptr %re_acq_main_rssi_sum178 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %re_acq_main_rssi_sum178, align 1
  %re_acq_main_rssi_sum179 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 3
  %175 = ptrtoint ptr %re_acq_main_rssi_sum179 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %re_acq_main_rssi_sum179, align 1
  %re_acq_main_rssi_sum180 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 459
  %177 = ptrtoint ptr %re_acq_main_rssi_sum180 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %re_acq_main_rssi_sum180, align 1
  %call181 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr176, i32 noundef %sub177, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.24, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178) #6
  %add182 = add i32 %call181, %add175
  %add.ptr183 = getelementptr i8, ptr %call1.i.i.i, i32 %add182
  %sub184 = sub i32 8560, %add182
  %call185 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr183, i32 noundef %sub184, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.25) #6
  %add186 = add i32 %add182, %call185
  %add.ptr187 = getelementptr i8, ptr %call1.i.i.i, i32 %add186
  %sub188 = sub i32 8560, %add186
  %179 = ptrtoint ptr %cck8 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %cck8, align 1
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %182 = ptrtoint ptr %cck18 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %cck18, align 1
  %184 = ptrtoint ptr %cck29 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %cck29, align 1
  %186 = ptrtoint ptr %cck40 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %cck40, align 1
  %call193 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr187, i32 noundef %sub188, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.6, i32 noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %187) #6
  %add194 = add i32 %call193, %add186
  %add.ptr195 = getelementptr i8, ptr %call1.i.i.i, i32 %add194
  %sub196 = sub i32 8560, %add194
  %fina_cnt197 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 1
  %188 = ptrtoint ptr %fina_cnt197 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %fina_cnt197, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %fina_cnt198 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 1
  %191 = ptrtoint ptr %fina_cnt198 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %fina_cnt198, align 1
  %fina_cnt199 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 12, i32 5, i32 0, i32 3
  %193 = ptrtoint ptr %fina_cnt199 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %fina_cnt199, align 1
  %fina_cnt200 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 471
  %195 = ptrtoint ptr %fina_cnt200 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %fina_cnt200, align 1
  %call201 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr195, i32 noundef %sub196, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.7, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %196) #6
  %add202 = add i32 %call201, %add194
  %add.ptr203 = getelementptr i8, ptr %call1.i.i.i, i32 %add202
  %sub204 = sub i32 8560, %add202
  %plcp_err205 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 2
  %197 = ptrtoint ptr %plcp_err205 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %plcp_err205, align 1
  %199 = tail call i32 @llvm.bswap.i32(i32 %198)
  %plcp_err206 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 2
  %200 = ptrtoint ptr %plcp_err206 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %plcp_err206, align 1
  %plcp_err207 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 3
  %202 = ptrtoint ptr %plcp_err207 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %plcp_err207, align 1
  %plcp_err208 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 475
  %204 = ptrtoint ptr %plcp_err208 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %plcp_err208, align 1
  %call209 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr203, i32 noundef %sub204, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.8, i32 noundef %199, i32 noundef %201, i32 noundef %203, i32 noundef %205) #6
  %add210 = add i32 %call209, %add202
  %add.ptr211 = getelementptr i8, ptr %call1.i.i.i, i32 %add210
  %sub212 = sub i32 8560, %add210
  %crc32_err213 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 3
  %206 = ptrtoint ptr %crc32_err213 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %crc32_err213, align 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  %crc32_err214 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 3
  %209 = ptrtoint ptr %crc32_err214 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %crc32_err214, align 1
  %crc32_err215 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 7
  %211 = ptrtoint ptr %crc32_err215 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %crc32_err215, align 1
  %crc32_err216 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 479
  %213 = ptrtoint ptr %crc32_err216 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %crc32_err216, align 1
  %call217 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr211, i32 noundef %sub212, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef %208, i32 noundef %210, i32 noundef %212, i32 noundef %214) #6
  %add218 = add i32 %call217, %add210
  %add.ptr219 = getelementptr i8, ptr %call1.i.i.i, i32 %add218
  %sub220 = sub i32 8560, %add218
  %overrun_err221 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 4
  %215 = ptrtoint ptr %overrun_err221 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %overrun_err221, align 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  %overrun_err222 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 4
  %218 = ptrtoint ptr %overrun_err222 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %overrun_err222, align 1
  %overrun_err223 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 11
  %220 = ptrtoint ptr %overrun_err223 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %overrun_err223, align 1
  %overrun_err224 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 483
  %222 = ptrtoint ptr %overrun_err224 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %overrun_err224, align 1
  %call225 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr219, i32 noundef %sub220, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.10, i32 noundef %217, i32 noundef %219, i32 noundef %221, i32 noundef %223) #6
  %add226 = add i32 %call225, %add218
  %add.ptr227 = getelementptr i8, ptr %call1.i.i.i, i32 %add226
  %sub228 = sub i32 8560, %add226
  %early_overrun_err229 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 5
  %224 = ptrtoint ptr %early_overrun_err229 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %early_overrun_err229, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  %early_overrun_err230 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 5
  %227 = ptrtoint ptr %early_overrun_err230 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %early_overrun_err230, align 1
  %early_overrun_err231 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 15
  %229 = ptrtoint ptr %early_overrun_err231 to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %early_overrun_err231, align 1
  %early_overrun_err232 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 487
  %231 = ptrtoint ptr %early_overrun_err232 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %early_overrun_err232, align 1
  %call233 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr227, i32 noundef %sub228, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.11, i32 noundef %226, i32 noundef %228, i32 noundef %230, i32 noundef %232) #6
  %add234 = add i32 %call233, %add226
  %add.ptr235 = getelementptr i8, ptr %call1.i.i.i, i32 %add234
  %sub236 = sub i32 8560, %add234
  %crc32_good237 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 6
  %233 = ptrtoint ptr %crc32_good237 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %crc32_good237, align 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  %crc32_good238 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 6
  %236 = ptrtoint ptr %crc32_good238 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %crc32_good238, align 1
  %crc32_good239 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 19
  %238 = ptrtoint ptr %crc32_good239 to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %crc32_good239, align 1
  %crc32_good240 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 491
  %240 = ptrtoint ptr %crc32_good240 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %crc32_good240, align 1
  %call241 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr235, i32 noundef %sub236, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.12, i32 noundef %235, i32 noundef %237, i32 noundef %239, i32 noundef %241) #6
  %add242 = add i32 %call241, %add234
  %add.ptr243 = getelementptr i8, ptr %call1.i.i.i, i32 %add242
  %sub244 = sub i32 8560, %add242
  %false_alarm_cnt245 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 7
  %242 = ptrtoint ptr %false_alarm_cnt245 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %false_alarm_cnt245, align 1
  %244 = tail call i32 @llvm.bswap.i32(i32 %243)
  %false_alarm_cnt246 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 7
  %245 = ptrtoint ptr %false_alarm_cnt246 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %false_alarm_cnt246, align 1
  %false_alarm_cnt247 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 23
  %247 = ptrtoint ptr %false_alarm_cnt247 to i32
  call void @__asan_loadN_noabort(i32 %247, i32 4)
  %248 = load i32, ptr %false_alarm_cnt247, align 1
  %false_alarm_cnt248 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 495
  %249 = ptrtoint ptr %false_alarm_cnt248 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %false_alarm_cnt248, align 1
  %call249 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr243, i32 noundef %sub244, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.13, i32 noundef %244, i32 noundef %246, i32 noundef %248, i32 noundef %250) #6
  %add250 = add i32 %call249, %add242
  %add.ptr251 = getelementptr i8, ptr %call1.i.i.i, i32 %add250
  %sub252 = sub i32 8560, %add250
  %fina_sync_err_cnt253 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 8
  %251 = ptrtoint ptr %fina_sync_err_cnt253 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %fina_sync_err_cnt253, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  %fina_sync_err_cnt254 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 8
  %254 = ptrtoint ptr %fina_sync_err_cnt254 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %fina_sync_err_cnt254, align 1
  %fina_sync_err_cnt255 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 27
  %256 = ptrtoint ptr %fina_sync_err_cnt255 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %fina_sync_err_cnt255, align 1
  %fina_sync_err_cnt256 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 499
  %258 = ptrtoint ptr %fina_sync_err_cnt256 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %fina_sync_err_cnt256, align 1
  %call257 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr251, i32 noundef %sub252, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.14, i32 noundef %253, i32 noundef %255, i32 noundef %257, i32 noundef %259) #6
  %add258 = add i32 %call257, %add250
  %add.ptr259 = getelementptr i8, ptr %call1.i.i.i, i32 %add258
  %sub260 = sub i32 8560, %add258
  %sfd_timeout261 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 9
  %260 = ptrtoint ptr %sfd_timeout261 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %sfd_timeout261, align 1
  %262 = tail call i32 @llvm.bswap.i32(i32 %261)
  %sfd_timeout262 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 9
  %263 = ptrtoint ptr %sfd_timeout262 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %sfd_timeout262, align 1
  %sfd_timeout263 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 31
  %265 = ptrtoint ptr %sfd_timeout263 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %sfd_timeout263, align 1
  %sfd_timeout264 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 503
  %267 = ptrtoint ptr %sfd_timeout264 to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %sfd_timeout264, align 1
  %call265 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr259, i32 noundef %sub260, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.15, i32 noundef %262, i32 noundef %264, i32 noundef %266, i32 noundef %268) #6
  %add266 = add i32 %call265, %add258
  %add.ptr267 = getelementptr i8, ptr %call1.i.i.i, i32 %add266
  %sub268 = sub i32 8560, %add266
  %fina_timeout269 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 10
  %269 = ptrtoint ptr %fina_timeout269 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %fina_timeout269, align 1
  %271 = tail call i32 @llvm.bswap.i32(i32 %270)
  %fina_timeout270 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 10
  %272 = ptrtoint ptr %fina_timeout270 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %fina_timeout270, align 1
  %fina_timeout271 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 35
  %274 = ptrtoint ptr %fina_timeout271 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %fina_timeout271, align 1
  %fina_timeout272 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 507
  %276 = ptrtoint ptr %fina_timeout272 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 4)
  %277 = load i32, ptr %fina_timeout272, align 1
  %call273 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr267, i32 noundef %sub268, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.16, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %277) #6
  %add274 = add i32 %call273, %add266
  %add.ptr275 = getelementptr i8, ptr %call1.i.i.i, i32 %add274
  %sub276 = sub i32 8560, %add274
  %unresponded_rts277 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 11
  %278 = ptrtoint ptr %unresponded_rts277 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %unresponded_rts277, align 1
  %280 = tail call i32 @llvm.bswap.i32(i32 %279)
  %unresponded_rts278 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 11
  %281 = ptrtoint ptr %unresponded_rts278 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %282 = load i32, ptr %unresponded_rts278, align 1
  %unresponded_rts279 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 39
  %283 = ptrtoint ptr %unresponded_rts279 to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %unresponded_rts279, align 1
  %unresponded_rts280 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 511
  %285 = ptrtoint ptr %unresponded_rts280 to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %unresponded_rts280, align 1
  %call281 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr275, i32 noundef %sub276, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.17, i32 noundef %280, i32 noundef %282, i32 noundef %284, i32 noundef %286) #6
  %add282 = add i32 %call281, %add274
  %add.ptr283 = getelementptr i8, ptr %call1.i.i.i, i32 %add282
  %sub284 = sub i32 8560, %add282
  %rxe_frame_limit_overrun285 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 12
  %287 = ptrtoint ptr %rxe_frame_limit_overrun285 to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %rxe_frame_limit_overrun285, align 1
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %rxe_frame_limit_overrun286 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 12
  %290 = ptrtoint ptr %rxe_frame_limit_overrun286 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %rxe_frame_limit_overrun286, align 1
  %rxe_frame_limit_overrun287 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 43
  %292 = ptrtoint ptr %rxe_frame_limit_overrun287 to i32
  call void @__asan_loadN_noabort(i32 %292, i32 4)
  %293 = load i32, ptr %rxe_frame_limit_overrun287, align 1
  %rxe_frame_limit_overrun288 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 515
  %294 = ptrtoint ptr %rxe_frame_limit_overrun288 to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %rxe_frame_limit_overrun288, align 1
  %call289 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr283, i32 noundef %sub284, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.18, i32 noundef %289, i32 noundef %291, i32 noundef %293, i32 noundef %295) #6
  %add290 = add i32 %call289, %add282
  %add.ptr291 = getelementptr i8, ptr %call1.i.i.i, i32 %add290
  %sub292 = sub i32 8560, %add290
  %sent_ack_cnt293 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 13
  %296 = ptrtoint ptr %sent_ack_cnt293 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %sent_ack_cnt293, align 1
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  %sent_ack_cnt294 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 13
  %299 = ptrtoint ptr %sent_ack_cnt294 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %sent_ack_cnt294, align 1
  %sent_ack_cnt295 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 47
  %301 = ptrtoint ptr %sent_ack_cnt295 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 4)
  %302 = load i32, ptr %sent_ack_cnt295, align 1
  %sent_ack_cnt296 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 519
  %303 = ptrtoint ptr %sent_ack_cnt296 to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %304 = load i32, ptr %sent_ack_cnt296, align 1
  %call297 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr291, i32 noundef %sub292, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.19, i32 noundef %298, i32 noundef %300, i32 noundef %302, i32 noundef %304) #6
  %add298 = add i32 %call297, %add290
  %add.ptr299 = getelementptr i8, ptr %call1.i.i.i, i32 %add298
  %sub300 = sub i32 8560, %add298
  %sent_cts_cnt301 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 14
  %305 = ptrtoint ptr %sent_cts_cnt301 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %sent_cts_cnt301, align 1
  %307 = tail call i32 @llvm.bswap.i32(i32 %306)
  %sent_cts_cnt302 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 14
  %308 = ptrtoint ptr %sent_cts_cnt302 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %sent_cts_cnt302, align 1
  %sent_cts_cnt303 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 51
  %310 = ptrtoint ptr %sent_cts_cnt303 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %sent_cts_cnt303, align 1
  %sent_cts_cnt304 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 523
  %312 = ptrtoint ptr %sent_cts_cnt304 to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %313 = load i32, ptr %sent_cts_cnt304, align 1
  %call305 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr299, i32 noundef %sub300, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.20, i32 noundef %307, i32 noundef %309, i32 noundef %311, i32 noundef %313) #6
  %add306 = add i32 %call305, %add298
  %add.ptr307 = getelementptr i8, ptr %call1.i.i.i, i32 %add306
  %sub308 = sub i32 8560, %add306
  %sent_ba_rsp_cnt309 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 15
  %314 = ptrtoint ptr %sent_ba_rsp_cnt309 to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %sent_ba_rsp_cnt309, align 1
  %316 = tail call i32 @llvm.bswap.i32(i32 %315)
  %sent_ba_rsp_cnt310 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 15
  %317 = ptrtoint ptr %sent_ba_rsp_cnt310 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 4)
  %318 = load i32, ptr %sent_ba_rsp_cnt310, align 1
  %sent_ba_rsp_cnt311 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 55
  %319 = ptrtoint ptr %sent_ba_rsp_cnt311 to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %sent_ba_rsp_cnt311, align 1
  %sent_ba_rsp_cnt312 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 527
  %321 = ptrtoint ptr %sent_ba_rsp_cnt312 to i32
  call void @__asan_loadN_noabort(i32 %321, i32 4)
  %322 = load i32, ptr %sent_ba_rsp_cnt312, align 1
  %call313 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr307, i32 noundef %sub308, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.21, i32 noundef %316, i32 noundef %318, i32 noundef %320, i32 noundef %322) #6
  %add314 = add i32 %call313, %add306
  %add.ptr315 = getelementptr i8, ptr %call1.i.i.i, i32 %add314
  %sub316 = sub i32 8560, %add314
  %dsp_self_kill317 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 16
  %323 = ptrtoint ptr %dsp_self_kill317 to i32
  call void @__asan_loadN_noabort(i32 %323, i32 4)
  %324 = load i32, ptr %dsp_self_kill317, align 1
  %325 = tail call i32 @llvm.bswap.i32(i32 %324)
  %dsp_self_kill318 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 16
  %326 = ptrtoint ptr %dsp_self_kill318 to i32
  call void @__asan_loadN_noabort(i32 %326, i32 4)
  %327 = load i32, ptr %dsp_self_kill318, align 1
  %dsp_self_kill319 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 59
  %328 = ptrtoint ptr %dsp_self_kill319 to i32
  call void @__asan_loadN_noabort(i32 %328, i32 4)
  %329 = load i32, ptr %dsp_self_kill319, align 1
  %dsp_self_kill320 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 531
  %330 = ptrtoint ptr %dsp_self_kill320 to i32
  call void @__asan_loadN_noabort(i32 %330, i32 4)
  %331 = load i32, ptr %dsp_self_kill320, align 1
  %call321 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr315, i32 noundef %sub316, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.22, i32 noundef %325, i32 noundef %327, i32 noundef %329, i32 noundef %331) #6
  %add322 = add i32 %call321, %add314
  %add.ptr323 = getelementptr i8, ptr %call1.i.i.i, i32 %add322
  %sub324 = sub i32 8560, %add322
  %mh_format_err325 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 17
  %332 = ptrtoint ptr %mh_format_err325 to i32
  call void @__asan_loadN_noabort(i32 %332, i32 4)
  %333 = load i32, ptr %mh_format_err325, align 1
  %334 = tail call i32 @llvm.bswap.i32(i32 %333)
  %mh_format_err326 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 17
  %335 = ptrtoint ptr %mh_format_err326 to i32
  call void @__asan_loadN_noabort(i32 %335, i32 4)
  %336 = load i32, ptr %mh_format_err326, align 1
  %mh_format_err327 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 63
  %337 = ptrtoint ptr %mh_format_err327 to i32
  call void @__asan_loadN_noabort(i32 %337, i32 4)
  %338 = load i32, ptr %mh_format_err327, align 1
  %mh_format_err328 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 535
  %339 = ptrtoint ptr %mh_format_err328 to i32
  call void @__asan_loadN_noabort(i32 %339, i32 4)
  %340 = load i32, ptr %mh_format_err328, align 1
  %call329 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr323, i32 noundef %sub324, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.23, i32 noundef %334, i32 noundef %336, i32 noundef %338, i32 noundef %340) #6
  %add330 = add i32 %call329, %add322
  %add.ptr331 = getelementptr i8, ptr %call1.i.i.i, i32 %add330
  %sub332 = sub i32 8560, %add330
  %re_acq_main_rssi_sum333 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 1, i32 18
  %341 = ptrtoint ptr %re_acq_main_rssi_sum333 to i32
  call void @__asan_loadN_noabort(i32 %341, i32 4)
  %342 = load i32, ptr %re_acq_main_rssi_sum333, align 1
  %343 = tail call i32 @llvm.bswap.i32(i32 %342)
  %re_acq_main_rssi_sum334 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 1, i32 18
  %344 = ptrtoint ptr %re_acq_main_rssi_sum334 to i32
  call void @__asan_loadN_noabort(i32 %344, i32 4)
  %345 = load i32, ptr %re_acq_main_rssi_sum334, align 1
  %re_acq_main_rssi_sum335 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 67
  %346 = ptrtoint ptr %re_acq_main_rssi_sum335 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 4)
  %347 = load i32, ptr %re_acq_main_rssi_sum335, align 1
  %re_acq_main_rssi_sum336 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 539
  %348 = ptrtoint ptr %re_acq_main_rssi_sum336 to i32
  call void @__asan_loadN_noabort(i32 %348, i32 4)
  %349 = load i32, ptr %re_acq_main_rssi_sum336, align 1
  %call337 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr331, i32 noundef %sub332, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.24, i32 noundef %343, i32 noundef %345, i32 noundef %347, i32 noundef %349) #6
  %add338 = add i32 %call337, %add330
  %add.ptr339 = getelementptr i8, ptr %call1.i.i.i, i32 %add338
  %sub340 = sub i32 8560, %add338
  %call341 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr339, i32 noundef %sub340, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.26) #6
  %add342 = add i32 %add338, %call341
  %add.ptr343 = getelementptr i8, ptr %call1.i.i.i, i32 %add342
  %sub344 = sub i32 8560, %add342
  %350 = ptrtoint ptr %general11 to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %351 = load i32, ptr %general11, align 1
  %352 = tail call i32 @llvm.bswap.i32(i32 %351)
  %353 = ptrtoint ptr %general21 to i32
  call void @__asan_loadN_noabort(i32 %353, i32 4)
  %354 = load i32, ptr %general21, align 1
  %355 = ptrtoint ptr %general32 to i32
  call void @__asan_loadN_noabort(i32 %355, i32 4)
  %356 = load i32, ptr %general32, align 1
  %357 = ptrtoint ptr %general43 to i32
  call void @__asan_loadN_noabort(i32 %357, i32 4)
  %358 = load i32, ptr %general43, align 1
  %call348 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr343, i32 noundef %sub344, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.27, i32 noundef %352, i32 noundef %354, i32 noundef %356, i32 noundef %358) #6
  %add349 = add i32 %call348, %add342
  %add.ptr350 = getelementptr i8, ptr %call1.i.i.i, i32 %add349
  %sub351 = sub i32 8560, %add349
  %bogus_ack = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 1
  %359 = ptrtoint ptr %bogus_ack to i32
  call void @__asan_loadN_noabort(i32 %359, i32 4)
  %360 = load i32, ptr %bogus_ack, align 1
  %361 = tail call i32 @llvm.bswap.i32(i32 %360)
  %bogus_ack352 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 1
  %362 = ptrtoint ptr %bogus_ack352 to i32
  call void @__asan_loadN_noabort(i32 %362, i32 4)
  %363 = load i32, ptr %bogus_ack352, align 1
  %bogus_ack353 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 79
  %364 = ptrtoint ptr %bogus_ack353 to i32
  call void @__asan_loadN_noabort(i32 %364, i32 4)
  %365 = load i32, ptr %bogus_ack353, align 1
  %bogus_ack354 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 551
  %366 = ptrtoint ptr %bogus_ack354 to i32
  call void @__asan_loadN_noabort(i32 %366, i32 4)
  %367 = load i32, ptr %bogus_ack354, align 1
  %call355 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr350, i32 noundef %sub351, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.28, i32 noundef %361, i32 noundef %363, i32 noundef %365, i32 noundef %367) #6
  %add356 = add i32 %call355, %add349
  %add.ptr357 = getelementptr i8, ptr %call1.i.i.i, i32 %add356
  %sub358 = sub i32 8560, %add356
  %non_bssid_frames = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 2
  %368 = ptrtoint ptr %non_bssid_frames to i32
  call void @__asan_loadN_noabort(i32 %368, i32 4)
  %369 = load i32, ptr %non_bssid_frames, align 1
  %370 = tail call i32 @llvm.bswap.i32(i32 %369)
  %non_bssid_frames359 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 2
  %371 = ptrtoint ptr %non_bssid_frames359 to i32
  call void @__asan_loadN_noabort(i32 %371, i32 4)
  %372 = load i32, ptr %non_bssid_frames359, align 1
  %non_bssid_frames360 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 83
  %373 = ptrtoint ptr %non_bssid_frames360 to i32
  call void @__asan_loadN_noabort(i32 %373, i32 4)
  %374 = load i32, ptr %non_bssid_frames360, align 1
  %non_bssid_frames361 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 555
  %375 = ptrtoint ptr %non_bssid_frames361 to i32
  call void @__asan_loadN_noabort(i32 %375, i32 4)
  %376 = load i32, ptr %non_bssid_frames361, align 1
  %call362 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr357, i32 noundef %sub358, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.29, i32 noundef %370, i32 noundef %372, i32 noundef %374, i32 noundef %376) #6
  %add363 = add i32 %call362, %add356
  %add.ptr364 = getelementptr i8, ptr %call1.i.i.i, i32 %add363
  %sub365 = sub i32 8560, %add363
  %filtered_frames = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 3
  %377 = ptrtoint ptr %filtered_frames to i32
  call void @__asan_loadN_noabort(i32 %377, i32 4)
  %378 = load i32, ptr %filtered_frames, align 1
  %379 = tail call i32 @llvm.bswap.i32(i32 %378)
  %filtered_frames366 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 3
  %380 = ptrtoint ptr %filtered_frames366 to i32
  call void @__asan_loadN_noabort(i32 %380, i32 4)
  %381 = load i32, ptr %filtered_frames366, align 1
  %filtered_frames367 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 87
  %382 = ptrtoint ptr %filtered_frames367 to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %filtered_frames367, align 1
  %filtered_frames368 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 559
  %384 = ptrtoint ptr %filtered_frames368 to i32
  call void @__asan_loadN_noabort(i32 %384, i32 4)
  %385 = load i32, ptr %filtered_frames368, align 1
  %call369 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr364, i32 noundef %sub365, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.30, i32 noundef %379, i32 noundef %381, i32 noundef %383, i32 noundef %385) #6
  %add370 = add i32 %call369, %add363
  %add.ptr371 = getelementptr i8, ptr %call1.i.i.i, i32 %add370
  %sub372 = sub i32 8560, %add370
  %non_channel_beacons = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 4
  %386 = ptrtoint ptr %non_channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %386, i32 4)
  %387 = load i32, ptr %non_channel_beacons, align 1
  %388 = tail call i32 @llvm.bswap.i32(i32 %387)
  %non_channel_beacons373 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 4
  %389 = ptrtoint ptr %non_channel_beacons373 to i32
  call void @__asan_loadN_noabort(i32 %389, i32 4)
  %390 = load i32, ptr %non_channel_beacons373, align 1
  %non_channel_beacons374 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 91
  %391 = ptrtoint ptr %non_channel_beacons374 to i32
  call void @__asan_loadN_noabort(i32 %391, i32 4)
  %392 = load i32, ptr %non_channel_beacons374, align 1
  %non_channel_beacons375 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 563
  %393 = ptrtoint ptr %non_channel_beacons375 to i32
  call void @__asan_loadN_noabort(i32 %393, i32 4)
  %394 = load i32, ptr %non_channel_beacons375, align 1
  %call376 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr371, i32 noundef %sub372, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.31, i32 noundef %388, i32 noundef %390, i32 noundef %392, i32 noundef %394) #6
  %add377 = add i32 %call376, %add370
  %add.ptr378 = getelementptr i8, ptr %call1.i.i.i, i32 %add377
  %sub379 = sub i32 8560, %add377
  %channel_beacons = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 5
  %395 = ptrtoint ptr %channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %395, i32 4)
  %396 = load i32, ptr %channel_beacons, align 1
  %397 = tail call i32 @llvm.bswap.i32(i32 %396)
  %channel_beacons380 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 5
  %398 = ptrtoint ptr %channel_beacons380 to i32
  call void @__asan_loadN_noabort(i32 %398, i32 4)
  %399 = load i32, ptr %channel_beacons380, align 1
  %channel_beacons381 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 95
  %400 = ptrtoint ptr %channel_beacons381 to i32
  call void @__asan_loadN_noabort(i32 %400, i32 4)
  %401 = load i32, ptr %channel_beacons381, align 1
  %channel_beacons382 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 567
  %402 = ptrtoint ptr %channel_beacons382 to i32
  call void @__asan_loadN_noabort(i32 %402, i32 4)
  %403 = load i32, ptr %channel_beacons382, align 1
  %call383 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr378, i32 noundef %sub379, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.32, i32 noundef %397, i32 noundef %399, i32 noundef %401, i32 noundef %403) #6
  %add384 = add i32 %call383, %add377
  %add.ptr385 = getelementptr i8, ptr %call1.i.i.i, i32 %add384
  %sub386 = sub i32 8560, %add384
  %num_missed_bcon = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 6
  %404 = ptrtoint ptr %num_missed_bcon to i32
  call void @__asan_loadN_noabort(i32 %404, i32 4)
  %405 = load i32, ptr %num_missed_bcon, align 1
  %406 = tail call i32 @llvm.bswap.i32(i32 %405)
  %num_missed_bcon387 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 6
  %407 = ptrtoint ptr %num_missed_bcon387 to i32
  call void @__asan_loadN_noabort(i32 %407, i32 4)
  %408 = load i32, ptr %num_missed_bcon387, align 1
  %num_missed_bcon388 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 99
  %409 = ptrtoint ptr %num_missed_bcon388 to i32
  call void @__asan_loadN_noabort(i32 %409, i32 4)
  %410 = load i32, ptr %num_missed_bcon388, align 1
  %num_missed_bcon389 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 571
  %411 = ptrtoint ptr %num_missed_bcon389 to i32
  call void @__asan_loadN_noabort(i32 %411, i32 4)
  %412 = load i32, ptr %num_missed_bcon389, align 1
  %call390 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr385, i32 noundef %sub386, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.33, i32 noundef %406, i32 noundef %408, i32 noundef %410, i32 noundef %412) #6
  %add391 = add i32 %call390, %add384
  %add.ptr392 = getelementptr i8, ptr %call1.i.i.i, i32 %add391
  %sub393 = sub i32 8560, %add391
  %adc_rx_saturation_time = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 7
  %413 = ptrtoint ptr %adc_rx_saturation_time to i32
  call void @__asan_loadN_noabort(i32 %413, i32 4)
  %414 = load i32, ptr %adc_rx_saturation_time, align 1
  %415 = tail call i32 @llvm.bswap.i32(i32 %414)
  %adc_rx_saturation_time394 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 7
  %416 = ptrtoint ptr %adc_rx_saturation_time394 to i32
  call void @__asan_loadN_noabort(i32 %416, i32 4)
  %417 = load i32, ptr %adc_rx_saturation_time394, align 1
  %adc_rx_saturation_time395 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 103
  %418 = ptrtoint ptr %adc_rx_saturation_time395 to i32
  call void @__asan_loadN_noabort(i32 %418, i32 4)
  %419 = load i32, ptr %adc_rx_saturation_time395, align 1
  %adc_rx_saturation_time396 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 575
  %420 = ptrtoint ptr %adc_rx_saturation_time396 to i32
  call void @__asan_loadN_noabort(i32 %420, i32 4)
  %421 = load i32, ptr %adc_rx_saturation_time396, align 1
  %call397 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr392, i32 noundef %sub393, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.34, i32 noundef %415, i32 noundef %417, i32 noundef %419, i32 noundef %421) #6
  %add398 = add i32 %call397, %add391
  %add.ptr399 = getelementptr i8, ptr %call1.i.i.i, i32 %add398
  %sub400 = sub i32 8560, %add398
  %ina_detection_search_time = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 8
  %422 = ptrtoint ptr %ina_detection_search_time to i32
  call void @__asan_loadN_noabort(i32 %422, i32 4)
  %423 = load i32, ptr %ina_detection_search_time, align 1
  %424 = tail call i32 @llvm.bswap.i32(i32 %423)
  %ina_detection_search_time401 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 8
  %425 = ptrtoint ptr %ina_detection_search_time401 to i32
  call void @__asan_loadN_noabort(i32 %425, i32 4)
  %426 = load i32, ptr %ina_detection_search_time401, align 1
  %ina_detection_search_time402 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 107
  %427 = ptrtoint ptr %ina_detection_search_time402 to i32
  call void @__asan_loadN_noabort(i32 %427, i32 4)
  %428 = load i32, ptr %ina_detection_search_time402, align 1
  %ina_detection_search_time403 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 579
  %429 = ptrtoint ptr %ina_detection_search_time403 to i32
  call void @__asan_loadN_noabort(i32 %429, i32 4)
  %430 = load i32, ptr %ina_detection_search_time403, align 1
  %call404 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr399, i32 noundef %sub400, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.35, i32 noundef %424, i32 noundef %426, i32 noundef %428, i32 noundef %430) #6
  %add405 = add i32 %call404, %add398
  %add.ptr406 = getelementptr i8, ptr %call1.i.i.i, i32 %add405
  %sub407 = sub i32 8560, %add405
  %beacon_silence_rssi_a = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 9
  %431 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %431, i32 4)
  %432 = load i32, ptr %beacon_silence_rssi_a, align 1
  %433 = tail call i32 @llvm.bswap.i32(i32 %432)
  %beacon_silence_rssi_a408 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 9
  %434 = ptrtoint ptr %beacon_silence_rssi_a408 to i32
  call void @__asan_loadN_noabort(i32 %434, i32 4)
  %435 = load i32, ptr %beacon_silence_rssi_a408, align 1
  %beacon_silence_rssi_a409 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 111
  %436 = ptrtoint ptr %beacon_silence_rssi_a409 to i32
  call void @__asan_loadN_noabort(i32 %436, i32 4)
  %437 = load i32, ptr %beacon_silence_rssi_a409, align 1
  %beacon_silence_rssi_a410 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 583
  %438 = ptrtoint ptr %beacon_silence_rssi_a410 to i32
  call void @__asan_loadN_noabort(i32 %438, i32 4)
  %439 = load i32, ptr %beacon_silence_rssi_a410, align 1
  %call411 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr406, i32 noundef %sub407, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.36, i32 noundef %433, i32 noundef %435, i32 noundef %437, i32 noundef %439) #6
  %add412 = add i32 %call411, %add405
  %add.ptr413 = getelementptr i8, ptr %call1.i.i.i, i32 %add412
  %sub414 = sub i32 8560, %add412
  %beacon_silence_rssi_b = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 10
  %440 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %440, i32 4)
  %441 = load i32, ptr %beacon_silence_rssi_b, align 1
  %442 = tail call i32 @llvm.bswap.i32(i32 %441)
  %beacon_silence_rssi_b415 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 10
  %443 = ptrtoint ptr %beacon_silence_rssi_b415 to i32
  call void @__asan_loadN_noabort(i32 %443, i32 4)
  %444 = load i32, ptr %beacon_silence_rssi_b415, align 1
  %beacon_silence_rssi_b416 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 115
  %445 = ptrtoint ptr %beacon_silence_rssi_b416 to i32
  call void @__asan_loadN_noabort(i32 %445, i32 4)
  %446 = load i32, ptr %beacon_silence_rssi_b416, align 1
  %beacon_silence_rssi_b417 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 587
  %447 = ptrtoint ptr %beacon_silence_rssi_b417 to i32
  call void @__asan_loadN_noabort(i32 %447, i32 4)
  %448 = load i32, ptr %beacon_silence_rssi_b417, align 1
  %call418 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr413, i32 noundef %sub414, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.37, i32 noundef %442, i32 noundef %444, i32 noundef %446, i32 noundef %448) #6
  %add419 = add i32 %call418, %add412
  %add.ptr420 = getelementptr i8, ptr %call1.i.i.i, i32 %add419
  %sub421 = sub i32 8560, %add419
  %beacon_silence_rssi_c = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 11
  %449 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %449, i32 4)
  %450 = load i32, ptr %beacon_silence_rssi_c, align 1
  %451 = tail call i32 @llvm.bswap.i32(i32 %450)
  %beacon_silence_rssi_c422 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 11
  %452 = ptrtoint ptr %beacon_silence_rssi_c422 to i32
  call void @__asan_loadN_noabort(i32 %452, i32 4)
  %453 = load i32, ptr %beacon_silence_rssi_c422, align 1
  %beacon_silence_rssi_c423 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 119
  %454 = ptrtoint ptr %beacon_silence_rssi_c423 to i32
  call void @__asan_loadN_noabort(i32 %454, i32 4)
  %455 = load i32, ptr %beacon_silence_rssi_c423, align 1
  %beacon_silence_rssi_c424 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 591
  %456 = ptrtoint ptr %beacon_silence_rssi_c424 to i32
  call void @__asan_loadN_noabort(i32 %456, i32 4)
  %457 = load i32, ptr %beacon_silence_rssi_c424, align 1
  %call425 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr420, i32 noundef %sub421, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.38, i32 noundef %451, i32 noundef %453, i32 noundef %455, i32 noundef %457) #6
  %add426 = add i32 %call425, %add419
  %add.ptr427 = getelementptr i8, ptr %call1.i.i.i, i32 %add426
  %sub428 = sub i32 8560, %add426
  %interference_data_flag = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 12
  %458 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %458, i32 4)
  %459 = load i32, ptr %interference_data_flag, align 1
  %460 = tail call i32 @llvm.bswap.i32(i32 %459)
  %interference_data_flag429 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 12
  %461 = ptrtoint ptr %interference_data_flag429 to i32
  call void @__asan_loadN_noabort(i32 %461, i32 4)
  %462 = load i32, ptr %interference_data_flag429, align 1
  %interference_data_flag430 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 123
  %463 = ptrtoint ptr %interference_data_flag430 to i32
  call void @__asan_loadN_noabort(i32 %463, i32 4)
  %464 = load i32, ptr %interference_data_flag430, align 1
  %interference_data_flag431 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 595
  %465 = ptrtoint ptr %interference_data_flag431 to i32
  call void @__asan_loadN_noabort(i32 %465, i32 4)
  %466 = load i32, ptr %interference_data_flag431, align 1
  %call432 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr427, i32 noundef %sub428, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.39, i32 noundef %460, i32 noundef %462, i32 noundef %464, i32 noundef %466) #6
  %add433 = add i32 %call432, %add426
  %add.ptr434 = getelementptr i8, ptr %call1.i.i.i, i32 %add433
  %sub435 = sub i32 8560, %add433
  %channel_load = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 13
  %467 = ptrtoint ptr %channel_load to i32
  call void @__asan_loadN_noabort(i32 %467, i32 4)
  %468 = load i32, ptr %channel_load, align 1
  %469 = tail call i32 @llvm.bswap.i32(i32 %468)
  %channel_load436 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 13
  %470 = ptrtoint ptr %channel_load436 to i32
  call void @__asan_loadN_noabort(i32 %470, i32 4)
  %471 = load i32, ptr %channel_load436, align 1
  %channel_load437 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 127
  %472 = ptrtoint ptr %channel_load437 to i32
  call void @__asan_loadN_noabort(i32 %472, i32 4)
  %473 = load i32, ptr %channel_load437, align 1
  %channel_load438 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 599
  %474 = ptrtoint ptr %channel_load438 to i32
  call void @__asan_loadN_noabort(i32 %474, i32 4)
  %475 = load i32, ptr %channel_load438, align 1
  %call439 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr434, i32 noundef %sub435, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.40, i32 noundef %469, i32 noundef %471, i32 noundef %473, i32 noundef %475) #6
  %add440 = add i32 %call439, %add433
  %add.ptr441 = getelementptr i8, ptr %call1.i.i.i, i32 %add440
  %sub442 = sub i32 8560, %add440
  %dsp_false_alarms = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 14
  %476 = ptrtoint ptr %dsp_false_alarms to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %dsp_false_alarms, align 1
  %478 = tail call i32 @llvm.bswap.i32(i32 %477)
  %dsp_false_alarms443 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 14
  %479 = ptrtoint ptr %dsp_false_alarms443 to i32
  call void @__asan_loadN_noabort(i32 %479, i32 4)
  %480 = load i32, ptr %dsp_false_alarms443, align 1
  %dsp_false_alarms444 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 131
  %481 = ptrtoint ptr %dsp_false_alarms444 to i32
  call void @__asan_loadN_noabort(i32 %481, i32 4)
  %482 = load i32, ptr %dsp_false_alarms444, align 1
  %dsp_false_alarms445 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 603
  %483 = ptrtoint ptr %dsp_false_alarms445 to i32
  call void @__asan_loadN_noabort(i32 %483, i32 4)
  %484 = load i32, ptr %dsp_false_alarms445, align 1
  %call446 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr441, i32 noundef %sub442, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.41, i32 noundef %478, i32 noundef %480, i32 noundef %482, i32 noundef %484) #6
  %add447 = add i32 %call446, %add440
  %add.ptr448 = getelementptr i8, ptr %call1.i.i.i, i32 %add447
  %sub449 = sub i32 8560, %add447
  %beacon_rssi_a = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 15
  %485 = ptrtoint ptr %beacon_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %485, i32 4)
  %486 = load i32, ptr %beacon_rssi_a, align 1
  %487 = tail call i32 @llvm.bswap.i32(i32 %486)
  %beacon_rssi_a450 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 15
  %488 = ptrtoint ptr %beacon_rssi_a450 to i32
  call void @__asan_loadN_noabort(i32 %488, i32 4)
  %489 = load i32, ptr %beacon_rssi_a450, align 1
  %beacon_rssi_a451 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 135
  %490 = ptrtoint ptr %beacon_rssi_a451 to i32
  call void @__asan_loadN_noabort(i32 %490, i32 4)
  %491 = load i32, ptr %beacon_rssi_a451, align 1
  %beacon_rssi_a452 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 607
  %492 = ptrtoint ptr %beacon_rssi_a452 to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %beacon_rssi_a452, align 1
  %call453 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr448, i32 noundef %sub449, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.42, i32 noundef %487, i32 noundef %489, i32 noundef %491, i32 noundef %493) #6
  %add454 = add i32 %call453, %add447
  %add.ptr455 = getelementptr i8, ptr %call1.i.i.i, i32 %add454
  %sub456 = sub i32 8560, %add454
  %beacon_rssi_b = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 16
  %494 = ptrtoint ptr %beacon_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %494, i32 4)
  %495 = load i32, ptr %beacon_rssi_b, align 1
  %496 = tail call i32 @llvm.bswap.i32(i32 %495)
  %beacon_rssi_b457 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 16
  %497 = ptrtoint ptr %beacon_rssi_b457 to i32
  call void @__asan_loadN_noabort(i32 %497, i32 4)
  %498 = load i32, ptr %beacon_rssi_b457, align 1
  %beacon_rssi_b458 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 139
  %499 = ptrtoint ptr %beacon_rssi_b458 to i32
  call void @__asan_loadN_noabort(i32 %499, i32 4)
  %500 = load i32, ptr %beacon_rssi_b458, align 1
  %beacon_rssi_b459 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 611
  %501 = ptrtoint ptr %beacon_rssi_b459 to i32
  call void @__asan_loadN_noabort(i32 %501, i32 4)
  %502 = load i32, ptr %beacon_rssi_b459, align 1
  %call460 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr455, i32 noundef %sub456, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.43, i32 noundef %496, i32 noundef %498, i32 noundef %500, i32 noundef %502) #6
  %add461 = add i32 %call460, %add454
  %add.ptr462 = getelementptr i8, ptr %call1.i.i.i, i32 %add461
  %sub463 = sub i32 8560, %add461
  %beacon_rssi_c = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 17
  %503 = ptrtoint ptr %beacon_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %503, i32 4)
  %504 = load i32, ptr %beacon_rssi_c, align 1
  %505 = tail call i32 @llvm.bswap.i32(i32 %504)
  %beacon_rssi_c464 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 17
  %506 = ptrtoint ptr %beacon_rssi_c464 to i32
  call void @__asan_loadN_noabort(i32 %506, i32 4)
  %507 = load i32, ptr %beacon_rssi_c464, align 1
  %beacon_rssi_c465 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 143
  %508 = ptrtoint ptr %beacon_rssi_c465 to i32
  call void @__asan_loadN_noabort(i32 %508, i32 4)
  %509 = load i32, ptr %beacon_rssi_c465, align 1
  %beacon_rssi_c466 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 615
  %510 = ptrtoint ptr %beacon_rssi_c466 to i32
  call void @__asan_loadN_noabort(i32 %510, i32 4)
  %511 = load i32, ptr %beacon_rssi_c466, align 1
  %call467 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr462, i32 noundef %sub463, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.44, i32 noundef %505, i32 noundef %507, i32 noundef %509, i32 noundef %511) #6
  %add468 = add i32 %call467, %add461
  %add.ptr469 = getelementptr i8, ptr %call1.i.i.i, i32 %add468
  %sub470 = sub i32 8560, %add468
  %beacon_energy_a = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 18
  %512 = ptrtoint ptr %beacon_energy_a to i32
  call void @__asan_loadN_noabort(i32 %512, i32 4)
  %513 = load i32, ptr %beacon_energy_a, align 1
  %514 = tail call i32 @llvm.bswap.i32(i32 %513)
  %beacon_energy_a471 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 18
  %515 = ptrtoint ptr %beacon_energy_a471 to i32
  call void @__asan_loadN_noabort(i32 %515, i32 4)
  %516 = load i32, ptr %beacon_energy_a471, align 1
  %beacon_energy_a472 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 147
  %517 = ptrtoint ptr %beacon_energy_a472 to i32
  call void @__asan_loadN_noabort(i32 %517, i32 4)
  %518 = load i32, ptr %beacon_energy_a472, align 1
  %beacon_energy_a473 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 619
  %519 = ptrtoint ptr %beacon_energy_a473 to i32
  call void @__asan_loadN_noabort(i32 %519, i32 4)
  %520 = load i32, ptr %beacon_energy_a473, align 1
  %call474 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr469, i32 noundef %sub470, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45, i32 noundef %514, i32 noundef %516, i32 noundef %518, i32 noundef %520) #6
  %add475 = add i32 %call474, %add468
  %add.ptr476 = getelementptr i8, ptr %call1.i.i.i, i32 %add475
  %sub477 = sub i32 8560, %add475
  %beacon_energy_b = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 19
  %521 = ptrtoint ptr %beacon_energy_b to i32
  call void @__asan_loadN_noabort(i32 %521, i32 4)
  %522 = load i32, ptr %beacon_energy_b, align 1
  %523 = tail call i32 @llvm.bswap.i32(i32 %522)
  %beacon_energy_b478 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 19
  %524 = ptrtoint ptr %beacon_energy_b478 to i32
  call void @__asan_loadN_noabort(i32 %524, i32 4)
  %525 = load i32, ptr %beacon_energy_b478, align 1
  %beacon_energy_b479 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 151
  %526 = ptrtoint ptr %beacon_energy_b479 to i32
  call void @__asan_loadN_noabort(i32 %526, i32 4)
  %527 = load i32, ptr %beacon_energy_b479, align 1
  %beacon_energy_b480 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 623
  %528 = ptrtoint ptr %beacon_energy_b480 to i32
  call void @__asan_loadN_noabort(i32 %528, i32 4)
  %529 = load i32, ptr %beacon_energy_b480, align 1
  %call481 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr476, i32 noundef %sub477, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.46, i32 noundef %523, i32 noundef %525, i32 noundef %527, i32 noundef %529) #6
  %add482 = add i32 %call481, %add475
  %add.ptr483 = getelementptr i8, ptr %call1.i.i.i, i32 %add482
  %sub484 = sub i32 8560, %add482
  %beacon_energy_c = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 2, i32 20
  %530 = ptrtoint ptr %beacon_energy_c to i32
  call void @__asan_loadN_noabort(i32 %530, i32 4)
  %531 = load i32, ptr %beacon_energy_c, align 1
  %532 = tail call i32 @llvm.bswap.i32(i32 %531)
  %beacon_energy_c485 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 2, i32 20
  %533 = ptrtoint ptr %beacon_energy_c485 to i32
  call void @__asan_loadN_noabort(i32 %533, i32 4)
  %534 = load i32, ptr %beacon_energy_c485, align 1
  %beacon_energy_c486 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 155
  %535 = ptrtoint ptr %beacon_energy_c486 to i32
  call void @__asan_loadN_noabort(i32 %535, i32 4)
  %536 = load i32, ptr %beacon_energy_c486, align 1
  %beacon_energy_c487 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 627
  %537 = ptrtoint ptr %beacon_energy_c487 to i32
  call void @__asan_loadN_noabort(i32 %537, i32 4)
  %538 = load i32, ptr %beacon_energy_c487, align 1
  %call488 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr483, i32 noundef %sub484, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.47, i32 noundef %532, i32 noundef %534, i32 noundef %536, i32 noundef %538) #6
  %add489 = add i32 %call488, %add482
  %add.ptr490 = getelementptr i8, ptr %call1.i.i.i, i32 %add489
  %sub491 = sub i32 8560, %add489
  %call492 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr490, i32 noundef %sub491, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.48) #6
  %add493 = add i32 %add489, %call492
  %add.ptr494 = getelementptr i8, ptr %call1.i.i.i, i32 %add493
  %sub495 = sub i32 8560, %add493
  %539 = ptrtoint ptr %ofdm_ht to i32
  call void @__asan_loadN_noabort(i32 %539, i32 4)
  %540 = load i32, ptr %ofdm_ht, align 1
  %541 = tail call i32 @llvm.bswap.i32(i32 %540)
  %542 = ptrtoint ptr %ofdm_ht24 to i32
  call void @__asan_loadN_noabort(i32 %542, i32 4)
  %543 = load i32, ptr %ofdm_ht24, align 1
  %544 = ptrtoint ptr %ofdm_ht35 to i32
  call void @__asan_loadN_noabort(i32 %544, i32 4)
  %545 = load i32, ptr %ofdm_ht35, align 1
  %546 = ptrtoint ptr %ofdm_ht46 to i32
  call void @__asan_loadN_noabort(i32 %546, i32 4)
  %547 = load i32, ptr %ofdm_ht46, align 1
  %call500 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr494, i32 noundef %sub495, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.8, i32 noundef %541, i32 noundef %543, i32 noundef %545, i32 noundef %547) #6
  %add501 = add i32 %call500, %add493
  %add.ptr502 = getelementptr i8, ptr %call1.i.i.i, i32 %add501
  %sub503 = sub i32 8560, %add501
  %overrun_err504 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 1
  %548 = ptrtoint ptr %overrun_err504 to i32
  call void @__asan_loadN_noabort(i32 %548, i32 4)
  %549 = load i32, ptr %overrun_err504, align 1
  %550 = tail call i32 @llvm.bswap.i32(i32 %549)
  %overrun_err505 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 1
  %551 = ptrtoint ptr %overrun_err505 to i32
  call void @__asan_loadN_noabort(i32 %551, i32 4)
  %552 = load i32, ptr %overrun_err505, align 1
  %overrun_err506 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 163
  %553 = ptrtoint ptr %overrun_err506 to i32
  call void @__asan_loadN_noabort(i32 %553, i32 4)
  %554 = load i32, ptr %overrun_err506, align 1
  %overrun_err507 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 635
  %555 = ptrtoint ptr %overrun_err507 to i32
  call void @__asan_loadN_noabort(i32 %555, i32 4)
  %556 = load i32, ptr %overrun_err507, align 1
  %call508 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr502, i32 noundef %sub503, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.10, i32 noundef %550, i32 noundef %552, i32 noundef %554, i32 noundef %556) #6
  %add509 = add i32 %call508, %add501
  %add.ptr510 = getelementptr i8, ptr %call1.i.i.i, i32 %add509
  %sub511 = sub i32 8560, %add509
  %early_overrun_err512 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 2
  %557 = ptrtoint ptr %early_overrun_err512 to i32
  call void @__asan_loadN_noabort(i32 %557, i32 4)
  %558 = load i32, ptr %early_overrun_err512, align 1
  %559 = tail call i32 @llvm.bswap.i32(i32 %558)
  %early_overrun_err513 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 2
  %560 = ptrtoint ptr %early_overrun_err513 to i32
  call void @__asan_loadN_noabort(i32 %560, i32 4)
  %561 = load i32, ptr %early_overrun_err513, align 1
  %early_overrun_err514 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 167
  %562 = ptrtoint ptr %early_overrun_err514 to i32
  call void @__asan_loadN_noabort(i32 %562, i32 4)
  %563 = load i32, ptr %early_overrun_err514, align 1
  %early_overrun_err515 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 639
  %564 = ptrtoint ptr %early_overrun_err515 to i32
  call void @__asan_loadN_noabort(i32 %564, i32 4)
  %565 = load i32, ptr %early_overrun_err515, align 1
  %call516 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr510, i32 noundef %sub511, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.11, i32 noundef %559, i32 noundef %561, i32 noundef %563, i32 noundef %565) #6
  %add517 = add i32 %call516, %add509
  %add.ptr518 = getelementptr i8, ptr %call1.i.i.i, i32 %add517
  %sub519 = sub i32 8560, %add517
  %crc32_good520 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 3
  %566 = ptrtoint ptr %crc32_good520 to i32
  call void @__asan_loadN_noabort(i32 %566, i32 4)
  %567 = load i32, ptr %crc32_good520, align 1
  %568 = tail call i32 @llvm.bswap.i32(i32 %567)
  %crc32_good521 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 3
  %569 = ptrtoint ptr %crc32_good521 to i32
  call void @__asan_loadN_noabort(i32 %569, i32 4)
  %570 = load i32, ptr %crc32_good521, align 1
  %crc32_good522 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 171
  %571 = ptrtoint ptr %crc32_good522 to i32
  call void @__asan_loadN_noabort(i32 %571, i32 4)
  %572 = load i32, ptr %crc32_good522, align 1
  %crc32_good523 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 643
  %573 = ptrtoint ptr %crc32_good523 to i32
  call void @__asan_loadN_noabort(i32 %573, i32 4)
  %574 = load i32, ptr %crc32_good523, align 1
  %call524 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr518, i32 noundef %sub519, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.12, i32 noundef %568, i32 noundef %570, i32 noundef %572, i32 noundef %574) #6
  %add525 = add i32 %call524, %add517
  %add.ptr526 = getelementptr i8, ptr %call1.i.i.i, i32 %add525
  %sub527 = sub i32 8560, %add525
  %crc32_err528 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 4
  %575 = ptrtoint ptr %crc32_err528 to i32
  call void @__asan_loadN_noabort(i32 %575, i32 4)
  %576 = load i32, ptr %crc32_err528, align 1
  %577 = tail call i32 @llvm.bswap.i32(i32 %576)
  %crc32_err529 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 4
  %578 = ptrtoint ptr %crc32_err529 to i32
  call void @__asan_loadN_noabort(i32 %578, i32 4)
  %579 = load i32, ptr %crc32_err529, align 1
  %crc32_err530 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 175
  %580 = ptrtoint ptr %crc32_err530 to i32
  call void @__asan_loadN_noabort(i32 %580, i32 4)
  %581 = load i32, ptr %crc32_err530, align 1
  %crc32_err531 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 647
  %582 = ptrtoint ptr %crc32_err531 to i32
  call void @__asan_loadN_noabort(i32 %582, i32 4)
  %583 = load i32, ptr %crc32_err531, align 1
  %call532 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr526, i32 noundef %sub527, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef %577, i32 noundef %579, i32 noundef %581, i32 noundef %583) #6
  %add533 = add i32 %call532, %add525
  %add.ptr534 = getelementptr i8, ptr %call1.i.i.i, i32 %add533
  %sub535 = sub i32 8560, %add533
  %mh_format_err536 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 5
  %584 = ptrtoint ptr %mh_format_err536 to i32
  call void @__asan_loadN_noabort(i32 %584, i32 4)
  %585 = load i32, ptr %mh_format_err536, align 1
  %586 = tail call i32 @llvm.bswap.i32(i32 %585)
  %mh_format_err537 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 5
  %587 = ptrtoint ptr %mh_format_err537 to i32
  call void @__asan_loadN_noabort(i32 %587, i32 4)
  %588 = load i32, ptr %mh_format_err537, align 1
  %mh_format_err538 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 179
  %589 = ptrtoint ptr %mh_format_err538 to i32
  call void @__asan_loadN_noabort(i32 %589, i32 4)
  %590 = load i32, ptr %mh_format_err538, align 1
  %mh_format_err539 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 651
  %591 = ptrtoint ptr %mh_format_err539 to i32
  call void @__asan_loadN_noabort(i32 %591, i32 4)
  %592 = load i32, ptr %mh_format_err539, align 1
  %call540 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr534, i32 noundef %sub535, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.23, i32 noundef %586, i32 noundef %588, i32 noundef %590, i32 noundef %592) #6
  %add541 = add i32 %call540, %add533
  %add.ptr542 = getelementptr i8, ptr %call1.i.i.i, i32 %add541
  %sub543 = sub i32 8560, %add541
  %agg_crc32_good = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 6
  %593 = ptrtoint ptr %agg_crc32_good to i32
  call void @__asan_loadN_noabort(i32 %593, i32 4)
  %594 = load i32, ptr %agg_crc32_good, align 1
  %595 = tail call i32 @llvm.bswap.i32(i32 %594)
  %agg_crc32_good544 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 6
  %596 = ptrtoint ptr %agg_crc32_good544 to i32
  call void @__asan_loadN_noabort(i32 %596, i32 4)
  %597 = load i32, ptr %agg_crc32_good544, align 1
  %agg_crc32_good545 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 183
  %598 = ptrtoint ptr %agg_crc32_good545 to i32
  call void @__asan_loadN_noabort(i32 %598, i32 4)
  %599 = load i32, ptr %agg_crc32_good545, align 1
  %agg_crc32_good546 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 655
  %600 = ptrtoint ptr %agg_crc32_good546 to i32
  call void @__asan_loadN_noabort(i32 %600, i32 4)
  %601 = load i32, ptr %agg_crc32_good546, align 1
  %call547 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr542, i32 noundef %sub543, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.49, i32 noundef %595, i32 noundef %597, i32 noundef %599, i32 noundef %601) #6
  %add548 = add i32 %call547, %add541
  %add.ptr549 = getelementptr i8, ptr %call1.i.i.i, i32 %add548
  %sub550 = sub i32 8560, %add548
  %agg_mpdu_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 7
  %602 = ptrtoint ptr %agg_mpdu_cnt to i32
  call void @__asan_loadN_noabort(i32 %602, i32 4)
  %603 = load i32, ptr %agg_mpdu_cnt, align 1
  %604 = tail call i32 @llvm.bswap.i32(i32 %603)
  %agg_mpdu_cnt551 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 7
  %605 = ptrtoint ptr %agg_mpdu_cnt551 to i32
  call void @__asan_loadN_noabort(i32 %605, i32 4)
  %606 = load i32, ptr %agg_mpdu_cnt551, align 1
  %agg_mpdu_cnt552 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 187
  %607 = ptrtoint ptr %agg_mpdu_cnt552 to i32
  call void @__asan_loadN_noabort(i32 %607, i32 4)
  %608 = load i32, ptr %agg_mpdu_cnt552, align 1
  %agg_mpdu_cnt553 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 659
  %609 = ptrtoint ptr %agg_mpdu_cnt553 to i32
  call void @__asan_loadN_noabort(i32 %609, i32 4)
  %610 = load i32, ptr %agg_mpdu_cnt553, align 1
  %call554 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr549, i32 noundef %sub550, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.50, i32 noundef %604, i32 noundef %606, i32 noundef %608, i32 noundef %610) #6
  %add555 = add i32 %call554, %add548
  %add.ptr556 = getelementptr i8, ptr %call1.i.i.i, i32 %add555
  %sub557 = sub i32 8560, %add555
  %agg_cnt = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 8
  %611 = ptrtoint ptr %agg_cnt to i32
  call void @__asan_loadN_noabort(i32 %611, i32 4)
  %612 = load i32, ptr %agg_cnt, align 1
  %613 = tail call i32 @llvm.bswap.i32(i32 %612)
  %agg_cnt558 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 8
  %614 = ptrtoint ptr %agg_cnt558 to i32
  call void @__asan_loadN_noabort(i32 %614, i32 4)
  %615 = load i32, ptr %agg_cnt558, align 1
  %agg_cnt559 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 191
  %616 = ptrtoint ptr %agg_cnt559 to i32
  call void @__asan_loadN_noabort(i32 %616, i32 4)
  %617 = load i32, ptr %agg_cnt559, align 1
  %agg_cnt560 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 663
  %618 = ptrtoint ptr %agg_cnt560 to i32
  call void @__asan_loadN_noabort(i32 %618, i32 4)
  %619 = load i32, ptr %agg_cnt560, align 1
  %call561 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr556, i32 noundef %sub557, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.51, i32 noundef %613, i32 noundef %615, i32 noundef %617, i32 noundef %619) #6
  %add562 = add i32 %call561, %add555
  %add.ptr563 = getelementptr i8, ptr %call1.i.i.i, i32 %add562
  %sub564 = sub i32 8560, %add562
  %unsupport_mcs = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 9, i32 1, i32 3, i32 9
  %620 = ptrtoint ptr %unsupport_mcs to i32
  call void @__asan_loadN_noabort(i32 %620, i32 4)
  %621 = load i32, ptr %unsupport_mcs, align 1
  %622 = tail call i32 @llvm.bswap.i32(i32 %621)
  %unsupport_mcs565 = getelementptr inbounds %struct.anon.141, ptr %7, i32 0, i32 10, i32 1, i32 3, i32 9
  %623 = ptrtoint ptr %unsupport_mcs565 to i32
  call void @__asan_loadN_noabort(i32 %623, i32 4)
  %624 = load i32, ptr %unsupport_mcs565, align 1
  %unsupport_mcs566 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 195
  %625 = ptrtoint ptr %unsupport_mcs566 to i32
  call void @__asan_loadN_noabort(i32 %625, i32 4)
  %626 = load i32, ptr %unsupport_mcs566, align 1
  %unsupport_mcs567 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 667
  %627 = ptrtoint ptr %unsupport_mcs567 to i32
  call void @__asan_loadN_noabort(i32 %627, i32 4)
  %628 = load i32, ptr %unsupport_mcs567, align 1
  %call568 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr563, i32 noundef %sub564, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.52, i32 noundef %622, i32 noundef %624, i32 noundef %626, i32 noundef %628) #6
  %add569 = add i32 %call568, %add562
  %call570 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call1.i.i.i, i32 noundef %add569) #6
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call570, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_ucode_tx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 5050) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96
  %tx5 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2
  %tx6 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2
  %tx7 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 199
  %tx8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 671
  %call9 = tail call fastcc i32 @il4965_stats_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 5050)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call9
  %sub = sub i32 5050, %call9
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.64) #6
  %add11 = add i32 %call10, %call9
  %add.ptr12 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub13 = sub i32 5050, %add11
  %9 = ptrtoint ptr %tx5 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %tx5, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %tx6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %tx6, align 1
  %14 = ptrtoint ptr %tx7 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %tx7, align 1
  %16 = ptrtoint ptr %tx8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %tx8, align 1
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #6
  %add18 = add i32 %call17, %add11
  %add.ptr19 = getelementptr i8, ptr %call7.i.i, i32 %add18
  %sub20 = sub i32 5050, %add18
  %rx_detected_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 1
  %18 = ptrtoint ptr %rx_detected_cnt to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %rx_detected_cnt, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %rx_detected_cnt21 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 1
  %21 = ptrtoint ptr %rx_detected_cnt21 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %rx_detected_cnt21, align 1
  %rx_detected_cnt22 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 203
  %23 = ptrtoint ptr %rx_detected_cnt22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %rx_detected_cnt22, align 1
  %rx_detected_cnt23 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 675
  %25 = ptrtoint ptr %rx_detected_cnt23 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %rx_detected_cnt23, align 1
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.66, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #6
  %add25 = add i32 %call24, %add18
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 5050, %add25
  %bt_prio_defer_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 2
  %27 = ptrtoint ptr %bt_prio_defer_cnt to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %bt_prio_defer_cnt, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %bt_prio_defer_cnt28 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 2
  %30 = ptrtoint ptr %bt_prio_defer_cnt28 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %bt_prio_defer_cnt28, align 1
  %bt_prio_defer_cnt29 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 207
  %32 = ptrtoint ptr %bt_prio_defer_cnt29 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %bt_prio_defer_cnt29, align 1
  %bt_prio_defer_cnt30 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 679
  %34 = ptrtoint ptr %bt_prio_defer_cnt30 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %bt_prio_defer_cnt30, align 1
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.67, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #6
  %add32 = add i32 %call31, %add25
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 5050, %add32
  %bt_prio_kill_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 3
  %36 = ptrtoint ptr %bt_prio_kill_cnt to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %bt_prio_kill_cnt, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %bt_prio_kill_cnt35 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 3
  %39 = ptrtoint ptr %bt_prio_kill_cnt35 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %bt_prio_kill_cnt35, align 1
  %bt_prio_kill_cnt36 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 211
  %41 = ptrtoint ptr %bt_prio_kill_cnt36 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %bt_prio_kill_cnt36, align 1
  %bt_prio_kill_cnt37 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 683
  %43 = ptrtoint ptr %bt_prio_kill_cnt37 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %bt_prio_kill_cnt37, align 1
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.68, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #6
  %add39 = add i32 %call38, %add32
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub41 = sub i32 5050, %add39
  %few_bytes_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 4
  %45 = ptrtoint ptr %few_bytes_cnt to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %few_bytes_cnt, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %few_bytes_cnt42 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 4
  %48 = ptrtoint ptr %few_bytes_cnt42 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %few_bytes_cnt42, align 1
  %few_bytes_cnt43 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 215
  %50 = ptrtoint ptr %few_bytes_cnt43 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %few_bytes_cnt43, align 1
  %few_bytes_cnt44 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 687
  %52 = ptrtoint ptr %few_bytes_cnt44 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %few_bytes_cnt44, align 1
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.69, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53) #6
  %add46 = add i32 %call45, %add39
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 5050, %add46
  %cts_timeout = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 5
  %54 = ptrtoint ptr %cts_timeout to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %cts_timeout, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %cts_timeout49 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 5
  %57 = ptrtoint ptr %cts_timeout49 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %cts_timeout49, align 1
  %cts_timeout50 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 219
  %59 = ptrtoint ptr %cts_timeout50 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %cts_timeout50, align 1
  %cts_timeout51 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 691
  %61 = ptrtoint ptr %cts_timeout51 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %cts_timeout51, align 1
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.70, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #6
  %add53 = add i32 %call52, %add46
  %add.ptr54 = getelementptr i8, ptr %call7.i.i, i32 %add53
  %sub55 = sub i32 5050, %add53
  %ack_timeout = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 6
  %63 = ptrtoint ptr %ack_timeout to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ack_timeout, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %ack_timeout56 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 6
  %66 = ptrtoint ptr %ack_timeout56 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %ack_timeout56, align 1
  %ack_timeout57 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 223
  %68 = ptrtoint ptr %ack_timeout57 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %ack_timeout57, align 1
  %ack_timeout58 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 695
  %70 = ptrtoint ptr %ack_timeout58 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %ack_timeout58, align 1
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.71, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #6
  %add60 = add i32 %call59, %add53
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %add60
  %sub62 = sub i32 5050, %add60
  %expected_ack_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 7
  %72 = ptrtoint ptr %expected_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %expected_ack_cnt, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %expected_ack_cnt63 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 7
  %75 = ptrtoint ptr %expected_ack_cnt63 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %expected_ack_cnt63, align 1
  %expected_ack_cnt64 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 227
  %77 = ptrtoint ptr %expected_ack_cnt64 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %expected_ack_cnt64, align 1
  %expected_ack_cnt65 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 699
  %79 = ptrtoint ptr %expected_ack_cnt65 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %expected_ack_cnt65, align 1
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #6
  %add67 = add i32 %call66, %add60
  %add.ptr68 = getelementptr i8, ptr %call7.i.i, i32 %add67
  %sub69 = sub i32 5050, %add67
  %actual_ack_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 8
  %81 = ptrtoint ptr %actual_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %actual_ack_cnt, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %actual_ack_cnt70 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 8
  %84 = ptrtoint ptr %actual_ack_cnt70 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %actual_ack_cnt70, align 1
  %actual_ack_cnt71 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 231
  %86 = ptrtoint ptr %actual_ack_cnt71 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %actual_ack_cnt71, align 1
  %actual_ack_cnt72 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 703
  %88 = ptrtoint ptr %actual_ack_cnt72 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %actual_ack_cnt72, align 1
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.73, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89) #6
  %add74 = add i32 %call73, %add67
  %add.ptr75 = getelementptr i8, ptr %call7.i.i, i32 %add74
  %sub76 = sub i32 5050, %add74
  %dump_msdu_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 9
  %90 = ptrtoint ptr %dump_msdu_cnt to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %dump_msdu_cnt, align 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %dump_msdu_cnt77 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 9
  %93 = ptrtoint ptr %dump_msdu_cnt77 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %dump_msdu_cnt77, align 1
  %dump_msdu_cnt78 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 235
  %95 = ptrtoint ptr %dump_msdu_cnt78 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %dump_msdu_cnt78, align 1
  %dump_msdu_cnt79 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 707
  %97 = ptrtoint ptr %dump_msdu_cnt79 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %dump_msdu_cnt79, align 1
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.74, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98) #6
  %add81 = add i32 %call80, %add74
  %add.ptr82 = getelementptr i8, ptr %call7.i.i, i32 %add81
  %sub83 = sub i32 5050, %add81
  %burst_abort_next_frame_mismatch_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 10
  %99 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %burst_abort_next_frame_mismatch_cnt, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %burst_abort_next_frame_mismatch_cnt84 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 10
  %102 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt84 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %burst_abort_next_frame_mismatch_cnt84, align 1
  %burst_abort_next_frame_mismatch_cnt85 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 239
  %104 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt85 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %burst_abort_next_frame_mismatch_cnt85, align 1
  %burst_abort_next_frame_mismatch_cnt86 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 711
  %106 = ptrtoint ptr %burst_abort_next_frame_mismatch_cnt86 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %burst_abort_next_frame_mismatch_cnt86, align 1
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.75, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107) #6
  %add88 = add i32 %call87, %add81
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 5050, %add88
  %burst_abort_missing_next_frame_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 11
  %108 = ptrtoint ptr %burst_abort_missing_next_frame_cnt to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %burst_abort_missing_next_frame_cnt, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %burst_abort_missing_next_frame_cnt91 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 11
  %111 = ptrtoint ptr %burst_abort_missing_next_frame_cnt91 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %burst_abort_missing_next_frame_cnt91, align 1
  %burst_abort_missing_next_frame_cnt92 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 243
  %113 = ptrtoint ptr %burst_abort_missing_next_frame_cnt92 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %burst_abort_missing_next_frame_cnt92, align 1
  %burst_abort_missing_next_frame_cnt93 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 715
  %115 = ptrtoint ptr %burst_abort_missing_next_frame_cnt93 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %burst_abort_missing_next_frame_cnt93, align 1
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.76, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116) #6
  %add95 = add i32 %call94, %add88
  %add.ptr96 = getelementptr i8, ptr %call7.i.i, i32 %add95
  %sub97 = sub i32 5050, %add95
  %cts_timeout_collision = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 12
  %117 = ptrtoint ptr %cts_timeout_collision to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %cts_timeout_collision, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %cts_timeout_collision98 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 12
  %120 = ptrtoint ptr %cts_timeout_collision98 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %cts_timeout_collision98, align 1
  %cts_timeout_collision99 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 247
  %122 = ptrtoint ptr %cts_timeout_collision99 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %cts_timeout_collision99, align 1
  %cts_timeout_collision100 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 719
  %124 = ptrtoint ptr %cts_timeout_collision100 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %cts_timeout_collision100, align 1
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.77, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125) #6
  %add102 = add i32 %call101, %add95
  %add.ptr103 = getelementptr i8, ptr %call7.i.i, i32 %add102
  %sub104 = sub i32 5050, %add102
  %ack_or_ba_timeout_collision = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 13
  %126 = ptrtoint ptr %ack_or_ba_timeout_collision to i32
  call void @__asan_loadN_noabort(i32 %126, i32 4)
  %127 = load i32, ptr %ack_or_ba_timeout_collision, align 1
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %ack_or_ba_timeout_collision105 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 13
  %129 = ptrtoint ptr %ack_or_ba_timeout_collision105 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %ack_or_ba_timeout_collision105, align 1
  %ack_or_ba_timeout_collision106 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 251
  %131 = ptrtoint ptr %ack_or_ba_timeout_collision106 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %ack_or_ba_timeout_collision106, align 1
  %ack_or_ba_timeout_collision107 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 723
  %133 = ptrtoint ptr %ack_or_ba_timeout_collision107 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %ack_or_ba_timeout_collision107, align 1
  %call108 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr103, i32 noundef %sub104, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.78, i32 noundef %128, i32 noundef %130, i32 noundef %132, i32 noundef %134) #6
  %add109 = add i32 %call108, %add102
  %add.ptr110 = getelementptr i8, ptr %call7.i.i, i32 %add109
  %sub111 = sub i32 5050, %add109
  %agg = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14
  %135 = ptrtoint ptr %agg to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %agg, align 1
  %137 = tail call i32 @llvm.bswap.i32(i32 %136)
  %agg112 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14
  %138 = ptrtoint ptr %agg112 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %agg112, align 1
  %agg114 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 255
  %140 = ptrtoint ptr %agg114 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %agg114, align 1
  %agg116 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 727
  %142 = ptrtoint ptr %agg116 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %agg116, align 1
  %call118 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr110, i32 noundef %sub111, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.79, i32 noundef %137, i32 noundef %139, i32 noundef %141, i32 noundef %143) #6
  %add119 = add i32 %call118, %add109
  %add.ptr120 = getelementptr i8, ptr %call7.i.i, i32 %add119
  %sub121 = sub i32 5050, %add119
  %ba_reschedule_frames = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 1
  %144 = ptrtoint ptr %ba_reschedule_frames to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %ba_reschedule_frames, align 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %ba_reschedule_frames124 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 1
  %147 = ptrtoint ptr %ba_reschedule_frames124 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %148 = load i32, ptr %ba_reschedule_frames124, align 1
  %ba_reschedule_frames126 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 259
  %149 = ptrtoint ptr %ba_reschedule_frames126 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %ba_reschedule_frames126, align 1
  %ba_reschedule_frames128 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 731
  %151 = ptrtoint ptr %ba_reschedule_frames128 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 4)
  %152 = load i32, ptr %ba_reschedule_frames128, align 1
  %call129 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr120, i32 noundef %sub121, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.80, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152) #6
  %add130 = add i32 %call129, %add119
  %add.ptr131 = getelementptr i8, ptr %call7.i.i, i32 %add130
  %sub132 = sub i32 5050, %add130
  %scd_query_agg_frame_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 2
  %153 = ptrtoint ptr %scd_query_agg_frame_cnt to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %scd_query_agg_frame_cnt, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %scd_query_agg_frame_cnt135 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 2
  %156 = ptrtoint ptr %scd_query_agg_frame_cnt135 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %scd_query_agg_frame_cnt135, align 1
  %scd_query_agg_frame_cnt137 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 263
  %158 = ptrtoint ptr %scd_query_agg_frame_cnt137 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %scd_query_agg_frame_cnt137, align 1
  %scd_query_agg_frame_cnt139 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 735
  %160 = ptrtoint ptr %scd_query_agg_frame_cnt139 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %scd_query_agg_frame_cnt139, align 1
  %call140 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr131, i32 noundef %sub132, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.81, i32 noundef %155, i32 noundef %157, i32 noundef %159, i32 noundef %161) #6
  %add141 = add i32 %call140, %add130
  %add.ptr142 = getelementptr i8, ptr %call7.i.i, i32 %add141
  %sub143 = sub i32 5050, %add141
  %scd_query_no_agg = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 3
  %162 = ptrtoint ptr %scd_query_no_agg to i32
  call void @__asan_loadN_noabort(i32 %162, i32 4)
  %163 = load i32, ptr %scd_query_no_agg, align 1
  %164 = tail call i32 @llvm.bswap.i32(i32 %163)
  %scd_query_no_agg146 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 3
  %165 = ptrtoint ptr %scd_query_no_agg146 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %scd_query_no_agg146, align 1
  %scd_query_no_agg148 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 267
  %167 = ptrtoint ptr %scd_query_no_agg148 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %scd_query_no_agg148, align 1
  %scd_query_no_agg150 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 739
  %169 = ptrtoint ptr %scd_query_no_agg150 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %scd_query_no_agg150, align 1
  %call151 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142, i32 noundef %sub143, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.82, i32 noundef %164, i32 noundef %166, i32 noundef %168, i32 noundef %170) #6
  %add152 = add i32 %call151, %add141
  %add.ptr153 = getelementptr i8, ptr %call7.i.i, i32 %add152
  %sub154 = sub i32 5050, %add152
  %scd_query_agg = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 4
  %171 = ptrtoint ptr %scd_query_agg to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %scd_query_agg, align 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172)
  %scd_query_agg157 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 4
  %174 = ptrtoint ptr %scd_query_agg157 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %scd_query_agg157, align 1
  %scd_query_agg159 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 271
  %176 = ptrtoint ptr %scd_query_agg159 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 4)
  %177 = load i32, ptr %scd_query_agg159, align 1
  %scd_query_agg161 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 743
  %178 = ptrtoint ptr %scd_query_agg161 to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %scd_query_agg161, align 1
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr153, i32 noundef %sub154, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.83, i32 noundef %173, i32 noundef %175, i32 noundef %177, i32 noundef %179) #6
  %add163 = add i32 %call162, %add152
  %add.ptr164 = getelementptr i8, ptr %call7.i.i, i32 %add163
  %sub165 = sub i32 5050, %add163
  %scd_query_mismatch = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 5
  %180 = ptrtoint ptr %scd_query_mismatch to i32
  call void @__asan_loadN_noabort(i32 %180, i32 4)
  %181 = load i32, ptr %scd_query_mismatch, align 1
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  %scd_query_mismatch168 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 5
  %183 = ptrtoint ptr %scd_query_mismatch168 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %scd_query_mismatch168, align 1
  %scd_query_mismatch170 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 275
  %185 = ptrtoint ptr %scd_query_mismatch170 to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %186 = load i32, ptr %scd_query_mismatch170, align 1
  %scd_query_mismatch172 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 747
  %187 = ptrtoint ptr %scd_query_mismatch172 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %scd_query_mismatch172, align 1
  %call173 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.84, i32 noundef %182, i32 noundef %184, i32 noundef %186, i32 noundef %188) #6
  %add174 = add i32 %call173, %add163
  %add.ptr175 = getelementptr i8, ptr %call7.i.i, i32 %add174
  %sub176 = sub i32 5050, %add174
  %frame_not_ready = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 6
  %189 = ptrtoint ptr %frame_not_ready to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %frame_not_ready, align 1
  %191 = tail call i32 @llvm.bswap.i32(i32 %190)
  %frame_not_ready179 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 6
  %192 = ptrtoint ptr %frame_not_ready179 to i32
  call void @__asan_loadN_noabort(i32 %192, i32 4)
  %193 = load i32, ptr %frame_not_ready179, align 1
  %frame_not_ready181 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 279
  %194 = ptrtoint ptr %frame_not_ready181 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %frame_not_ready181, align 1
  %frame_not_ready183 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 751
  %196 = ptrtoint ptr %frame_not_ready183 to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %frame_not_ready183, align 1
  %call184 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr175, i32 noundef %sub176, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.85, i32 noundef %191, i32 noundef %193, i32 noundef %195, i32 noundef %197) #6
  %add185 = add i32 %call184, %add174
  %add.ptr186 = getelementptr i8, ptr %call7.i.i, i32 %add185
  %sub187 = sub i32 5050, %add185
  %underrun = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 7
  %198 = ptrtoint ptr %underrun to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %underrun, align 1
  %200 = tail call i32 @llvm.bswap.i32(i32 %199)
  %underrun190 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 7
  %201 = ptrtoint ptr %underrun190 to i32
  call void @__asan_loadN_noabort(i32 %201, i32 4)
  %202 = load i32, ptr %underrun190, align 1
  %underrun192 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 283
  %203 = ptrtoint ptr %underrun192 to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %underrun192, align 1
  %underrun194 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 755
  %205 = ptrtoint ptr %underrun194 to i32
  call void @__asan_loadN_noabort(i32 %205, i32 4)
  %206 = load i32, ptr %underrun194, align 1
  %call195 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr186, i32 noundef %sub187, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.86, i32 noundef %200, i32 noundef %202, i32 noundef %204, i32 noundef %206) #6
  %add196 = add i32 %call195, %add185
  %add.ptr197 = getelementptr i8, ptr %call7.i.i, i32 %add196
  %sub198 = sub i32 5050, %add196
  %bt_prio_kill = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 8
  %207 = ptrtoint ptr %bt_prio_kill to i32
  call void @__asan_loadN_noabort(i32 %207, i32 4)
  %208 = load i32, ptr %bt_prio_kill, align 1
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  %bt_prio_kill201 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 8
  %210 = ptrtoint ptr %bt_prio_kill201 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %bt_prio_kill201, align 1
  %bt_prio_kill203 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 287
  %212 = ptrtoint ptr %bt_prio_kill203 to i32
  call void @__asan_loadN_noabort(i32 %212, i32 4)
  %213 = load i32, ptr %bt_prio_kill203, align 1
  %bt_prio_kill205 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 759
  %214 = ptrtoint ptr %bt_prio_kill205 to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %bt_prio_kill205, align 1
  %call206 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197, i32 noundef %sub198, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.87, i32 noundef %209, i32 noundef %211, i32 noundef %213, i32 noundef %215) #6
  %add207 = add i32 %call206, %add196
  %add.ptr208 = getelementptr i8, ptr %call7.i.i, i32 %add207
  %sub209 = sub i32 5050, %add207
  %rx_ba_rsp_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 2, i32 14, i32 9
  %216 = ptrtoint ptr %rx_ba_rsp_cnt to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %rx_ba_rsp_cnt, align 1
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  %rx_ba_rsp_cnt212 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 2, i32 14, i32 9
  %219 = ptrtoint ptr %rx_ba_rsp_cnt212 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %rx_ba_rsp_cnt212, align 1
  %rx_ba_rsp_cnt214 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 291
  %221 = ptrtoint ptr %rx_ba_rsp_cnt214 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %rx_ba_rsp_cnt214, align 1
  %rx_ba_rsp_cnt216 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 763
  %223 = ptrtoint ptr %rx_ba_rsp_cnt216 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %rx_ba_rsp_cnt216, align 1
  %call217 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr208, i32 noundef %sub209, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.88, i32 noundef %218, i32 noundef %220, i32 noundef %222, i32 noundef %224) #6
  %add218 = add i32 %call217, %add207
  %call219 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add218) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call219, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_ucode_general_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %status.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 77
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1140) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96
  %general5 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3
  %dbg9 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 1
  %div13 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 6
  %dbg19 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 1
  %div23 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 6
  %dbg31 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 303
  %dbg35 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 775
  %div39 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 343
  %div43 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 815
  %call44 = tail call fastcc i32 @il4965_stats_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 1140)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call44
  %sub = sub i32 1140, %call44
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.90) #6
  %add46 = add i32 %call45, %call44
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 1140, %add46
  %9 = ptrtoint ptr %general5 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %general5, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %call49 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.91, i32 noundef %11) #6
  %add50 = add i32 %call49, %add46
  %add.ptr51 = getelementptr i8, ptr %call7.i.i, i32 %add50
  %sub52 = sub i32 1140, %add50
  %ttl_timestamp = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 5
  %12 = ptrtoint ptr %ttl_timestamp to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %ttl_timestamp, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %call53 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr51, i32 noundef %sub52, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.92, i32 noundef %14) #6
  %add54 = add i32 %call53, %add50
  %add.ptr55 = getelementptr i8, ptr %call7.i.i, i32 %add54
  %sub56 = sub i32 1140, %add54
  %15 = ptrtoint ptr %dbg9 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %dbg9, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %dbg19 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %dbg19, align 1
  %20 = ptrtoint ptr %dbg31 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %dbg31, align 1
  %22 = ptrtoint ptr %dbg35 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %dbg35, align 1
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr55, i32 noundef %sub56, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.93, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #6
  %add61 = add i32 %call60, %add54
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 %add61
  %sub63 = sub i32 1140, %add61
  %burst_count = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %burst_count to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %burst_count, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %burst_count64 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %burst_count64 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %burst_count64, align 1
  %burst_count65 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 307
  %29 = ptrtoint ptr %burst_count65 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %burst_count65, align 1
  %burst_count66 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 779
  %31 = ptrtoint ptr %burst_count66 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %burst_count66, align 1
  %call67 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.94, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #6
  %add68 = add i32 %call67, %add61
  %add.ptr69 = getelementptr i8, ptr %call7.i.i, i32 %add68
  %sub70 = sub i32 1140, %add68
  %wait_for_silence_timeout_cnt = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %wait_for_silence_timeout_cnt to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %wait_for_silence_timeout_cnt, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %wait_for_silence_timeout_cnt71 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %wait_for_silence_timeout_cnt71 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %wait_for_silence_timeout_cnt71, align 1
  %wait_for_silence_timeout_cnt72 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 311
  %38 = ptrtoint ptr %wait_for_silence_timeout_cnt72 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %wait_for_silence_timeout_cnt72, align 1
  %wait_for_silence_timeout_cnt73 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 783
  %40 = ptrtoint ptr %wait_for_silence_timeout_cnt73 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %wait_for_silence_timeout_cnt73, align 1
  %call74 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr69, i32 noundef %sub70, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.95, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #6
  %add75 = add i32 %call74, %add68
  %add.ptr76 = getelementptr i8, ptr %call7.i.i, i32 %add75
  %sub77 = sub i32 1140, %add75
  %sleep_time = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 2
  %42 = ptrtoint ptr %sleep_time to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %sleep_time, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %sleep_time78 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 2
  %45 = ptrtoint ptr %sleep_time78 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %sleep_time78, align 1
  %sleep_time79 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 327
  %47 = ptrtoint ptr %sleep_time79 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %sleep_time79, align 1
  %sleep_time80 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 799
  %49 = ptrtoint ptr %sleep_time80 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %sleep_time80, align 1
  %call81 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr76, i32 noundef %sub77, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.96, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50) #6
  %add82 = add i32 %call81, %add75
  %add.ptr83 = getelementptr i8, ptr %call7.i.i, i32 %add82
  %sub84 = sub i32 1140, %add82
  %slots_out = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 3
  %51 = ptrtoint ptr %slots_out to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %slots_out, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %slots_out85 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 3
  %54 = ptrtoint ptr %slots_out85 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %slots_out85, align 1
  %slots_out86 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 331
  %56 = ptrtoint ptr %slots_out86 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %slots_out86, align 1
  %slots_out87 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 803
  %58 = ptrtoint ptr %slots_out87 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %slots_out87, align 1
  %call88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr83, i32 noundef %sub84, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.97, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #6
  %add89 = add i32 %call88, %add82
  %add.ptr90 = getelementptr i8, ptr %call7.i.i, i32 %add89
  %sub91 = sub i32 1140, %add89
  %slots_idle = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 4
  %60 = ptrtoint ptr %slots_idle to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %slots_idle, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %slots_idle92 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 4
  %63 = ptrtoint ptr %slots_idle92 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %slots_idle92, align 1
  %slots_idle93 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 335
  %65 = ptrtoint ptr %slots_idle93 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %slots_idle93, align 1
  %slots_idle94 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 807
  %67 = ptrtoint ptr %slots_idle94 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %slots_idle94, align 1
  %call95 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr90, i32 noundef %sub91, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.98, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68) #6
  %add96 = add i32 %call95, %add89
  %add.ptr97 = getelementptr i8, ptr %call7.i.i, i32 %add96
  %sub98 = sub i32 1140, %add96
  %69 = ptrtoint ptr %div13 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %div13, align 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = ptrtoint ptr %div23 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %div23, align 1
  %74 = ptrtoint ptr %div39 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %div39, align 1
  %76 = ptrtoint ptr %div43 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %div43, align 1
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr97, i32 noundef %sub98, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.99, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #6
  %add103 = add i32 %call102, %add96
  %add.ptr104 = getelementptr i8, ptr %call7.i.i, i32 %add103
  %sub105 = sub i32 1140, %add103
  %tx_on_b = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 6, i32 1
  %78 = ptrtoint ptr %tx_on_b to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %tx_on_b, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %tx_on_b106 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %tx_on_b106 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %tx_on_b106, align 1
  %tx_on_b107 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 347
  %83 = ptrtoint ptr %tx_on_b107 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %tx_on_b107, align 1
  %tx_on_b108 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 819
  %85 = ptrtoint ptr %tx_on_b108 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %tx_on_b108, align 1
  %call109 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.100, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86) #6
  %add110 = add i32 %call109, %add103
  %add.ptr111 = getelementptr i8, ptr %call7.i.i, i32 %add110
  %sub112 = sub i32 1140, %add110
  %exec_time = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 6, i32 2
  %87 = ptrtoint ptr %exec_time to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %exec_time, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %exec_time113 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 6, i32 2
  %90 = ptrtoint ptr %exec_time113 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %exec_time113, align 1
  %exec_time114 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 351
  %92 = ptrtoint ptr %exec_time114 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %exec_time114, align 1
  %exec_time115 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 823
  %94 = ptrtoint ptr %exec_time115 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %exec_time115, align 1
  %call116 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr111, i32 noundef %sub112, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.101, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95) #6
  %add117 = add i32 %call116, %add110
  %add.ptr118 = getelementptr i8, ptr %call7.i.i, i32 %add117
  %sub119 = sub i32 1140, %add117
  %probe_time = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 6, i32 3
  %96 = ptrtoint ptr %probe_time to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %probe_time, align 1
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %probe_time120 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 6, i32 3
  %99 = ptrtoint ptr %probe_time120 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %probe_time120, align 1
  %probe_time121 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 355
  %101 = ptrtoint ptr %probe_time121 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %probe_time121, align 1
  %probe_time122 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 827
  %103 = ptrtoint ptr %probe_time122 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %probe_time122, align 1
  %call123 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr118, i32 noundef %sub119, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.102, i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104) #6
  %add124 = add i32 %call123, %add117
  %add.ptr125 = getelementptr i8, ptr %call7.i.i, i32 %add124
  %sub126 = sub i32 1140, %add124
  %rx_enable_counter = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 7
  %105 = ptrtoint ptr %rx_enable_counter to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %rx_enable_counter, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %rx_enable_counter127 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 7
  %108 = ptrtoint ptr %rx_enable_counter127 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %rx_enable_counter127, align 1
  %rx_enable_counter128 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 367
  %110 = ptrtoint ptr %rx_enable_counter128 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %rx_enable_counter128, align 1
  %rx_enable_counter129 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 839
  %112 = ptrtoint ptr %rx_enable_counter129 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %rx_enable_counter129, align 1
  %call130 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr125, i32 noundef %sub126, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.103, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %113) #6
  %add131 = add i32 %call130, %add124
  %add.ptr132 = getelementptr i8, ptr %call7.i.i, i32 %add131
  %sub133 = sub i32 1140, %add131
  %num_of_sos_states = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 9, i32 3, i32 0, i32 8
  %114 = ptrtoint ptr %num_of_sos_states to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %num_of_sos_states, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %num_of_sos_states134 = getelementptr inbounds %struct.anon.141, ptr %8, i32 0, i32 10, i32 3, i32 0, i32 8
  %117 = ptrtoint ptr %num_of_sos_states134 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %num_of_sos_states134, align 1
  %num_of_sos_states135 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 371
  %119 = ptrtoint ptr %num_of_sos_states135 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %num_of_sos_states135, align 1
  %num_of_sos_states136 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 1, i32 843
  %121 = ptrtoint ptr %num_of_sos_states136 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %num_of_sos_states136, align 1
  %call137 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr132, i32 noundef %sub133, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.104, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122) #6
  %add138 = add i32 %call137, %add131
  %call139 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add138) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call139, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_stats_flag(ptr nocapture noundef readonly %il, ptr noundef %buf, i32 noundef %bufsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96
  %stats = getelementptr inbounds %struct.anon.141, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %stats, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.53, i32 noundef %3) #6
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call
  %sub3 = sub i32 %bufsz, %call
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.54) #6
  %add5 = add i32 %call4, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p.0 = phi i32 [ %add5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %p.0
  %sub7 = sub i32 %bufsz, %p.0
  %and8 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool9.not, ptr @.str.57, ptr @.str.56
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond) #6
  %add11 = add i32 %call10, %p.0
  %add.ptr12 = getelementptr i8, ptr %buf, i32 %add11
  %sub13 = sub i32 %bufsz, %add11
  %and14 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.60, ptr @.str.59
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond16) #6
  %add18 = add i32 %add11, %call17
  ret i32 %add18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @il4965_debugfs_ops, !1, !"il4965_debugfs_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 730, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 63, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @il4965_ucode_rx_stats_read._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @il4965_ucode_rx_stats_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 92, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 94, i32 51}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 98, i32 51}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 102, i32 51}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 106, i32 51}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 110, i32 51}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 114, i32 51}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 120, i32 51}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 124, i32 51}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 129, i32 51}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 135, i32 51}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 139, i32 51}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 143, i32 51}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 148, i32 51}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 154, i32 51}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 158, i32 51}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 162, i32 51}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 167, i32 51}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 172, i32 51}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 178, i32 9}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 186, i32 9}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 276, i32 9}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 278, i32 51}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 282, i32 51}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 286, i32 51}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 292, i32 51}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 298, i32 51}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 304, i32 51}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 310, i32 51}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 317, i32 9}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 324, i32 9}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 331, i32 9}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 338, i32 9}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 345, i32 9}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 352, i32 9}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 358, i32 51}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 363, i32 51}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 369, i32 51}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 374, i32 51}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 379, i32 51}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 384, i32 51}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 390, i32 51}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 396, i32 51}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 404, i32 9}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 431, i32 51}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 435, i32 51}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 439, i32 51}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 443, i32 51}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 26, i32 37}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 29, i32 11}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 30, i32 37}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 31, i32 47}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 32, i32 10}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 33, i32 37}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 34, i32 49}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 35, i32 10}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 16, i32 5}
!124 = distinct !{null, !125, !"fmt_header", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 15, i32 20}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 14, i32 32}
!128 = distinct !{null, !129, !"fmt_table", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 14, i32 20}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 468, i32 3}
!132 = !{ptr @il4965_ucode_tx_stats_read._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @il4965_ucode_tx_stats_read._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 482, i32 55}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 484, i32 51}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 488, i32 51}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 493, i32 51}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 498, i32 51}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 503, i32 51}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 507, i32 51}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 511, i32 51}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 515, i32 51}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 520, i32 51}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 524, i32 51}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 529, i32 9}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 536, i32 9}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 543, i32 9}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 550, i32 9}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 556, i32 51}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 561, i32 9}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 568, i32 9}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 575, i32 9}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 581, i32 51}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 587, i32 9}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 593, i32 51}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 599, i32 51}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 603, i32 51}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 608, i32 51}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 637, i32 3}
!186 = !{ptr @il4965_ucode_general_stats_read._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @il4965_ucode_general_stats_read._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 661, i32 9}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 663, i32 51}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 666, i32 51}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 669, i32 51}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 673, i32 51}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 678, i32 9}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 684, i32 51}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 689, i32 51}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 693, i32 51}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 698, i32 51}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 702, i32 51}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 706, i32 51}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 710, i32 51}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 714, i32 51}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 720, i32 51}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 13, i32 32}
!220 = distinct !{null, !221, !"fmt_value", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-debug.c", i32 13, i32 20}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
