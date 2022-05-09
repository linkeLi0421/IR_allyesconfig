; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/3945-debug.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/3945-debug.c"
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

@il3945_debugfs_ops = dso_local constant { %struct.il_debugfs_ops, [20 x i8] } { %struct.il_debugfs_ops { ptr @il3945_ucode_rx_stats_read, ptr @il3945_ucode_tx_stats_read, ptr @il3945_ucode_general_stats_read }, [20 x i8] zeroinitializer }, align 32
@il3945_ucode_rx_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can not allocate Buffer\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il3945_ucode_rx_stats_read\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlegacy/3945-debug.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il3945_ucode_rx_stats_read._entry_ptr = internal global ptr @il3945_ucode_rx_stats_read._entry, section ".printk_index", align 4
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%-32s     currentaccumulative      delta         max\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Statistics_Rx - OFDM:\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  %-30s %10u  %10u  %10u  %10u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ina_cnt:\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fina_cnt:\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"plcp_err:\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"crc32_err:\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"overrun_err:\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"early_overrun_err:\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"crc32_good:\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"false_alarm_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fina_sync_err_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sfd_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fina_timeout:\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unresponded_rts:\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxe_frame_lmt_ovrun:\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_ack_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_cts_cnt:\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Statistics_Rx - CCK:\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Statistics_Rx - GENERAL:\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_cts:\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bogus_ack:\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"non_bssid_frames:\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"filtered_frames:\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"non_channel_beacons:\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Statistics Flag(0x%X):\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Statistics have been cleared\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Operational Frequency: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.4 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.2 GHz\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09TGj Narrow Band: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@il3945_ucode_tx_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il3945_ucode_tx_stats_read\00", [37 x i8] zeroinitializer }, align 32
@il3945_ucode_tx_stats_read._entry_ptr = internal global ptr @il3945_ucode_tx_stats_read._entry, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Statistics_Tx:\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preamble:\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_detected_cnt:\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt_prio_defer_cnt:\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bt_prio_kill_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"few_bytes_cnt:\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cts_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ack_timeout:\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"expected_ack_cnt:\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"actual_ack_cnt:\00", [16 x i8] zeroinitializer }, align 32
@il3945_ucode_general_stats_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.49, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"il3945_ucode_general_stats_read\00", [32 x i8] zeroinitializer }, align 32
@il3945_ucode_general_stats_read._entry_ptr = internal global ptr @il3945_ucode_general_stats_read._entry, section ".printk_index", align 4
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Statistics_General:\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_check:\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"burst_count:\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sleep_time:\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"slots_out:\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slots_idle:\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ttl_timestamp:\09\09\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_a:\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_on_b:\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"exec_time:\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probe_time:\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"il3945_debugfs_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 489, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 54, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 79, i32 9 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 81, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 84, i32 9 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 84, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 89, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 94, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 99, i32 45 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 104, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 109, i32 45 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 116, i32 45 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 121, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 127, i32 45 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 134, i32 45 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 139, i32 45 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 144, i32 45 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 151, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 158, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 163, i32 45 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 171, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 259, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 262, i32 45 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 267, i32 45 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 272, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 279, i32 45 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 287, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 19, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 23, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 24, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 26, i32 33 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 26, i32 45 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 27, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 29, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 29, i32 47 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 314, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 332, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 335, i32 45 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 340, i32 45 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 346, i32 45 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 352, i32 45 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 358, i32 45 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 363, i32 45 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 368, i32 45 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 373, i32 45 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 379, i32 45 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 407, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 433, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 436, i32 45 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 441, i32 45 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 446, i32 45 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 452, i32 45 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 457, i32 45 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 462, i32 40 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 466, i32 45 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 471, i32 45 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 476, i32 45 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlegacy/3945-debug.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 481, i32 45 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @il3945_ucode_general_stats_read._entry, ptr @il3945_ucode_general_stats_read._entry_ptr, ptr @il3945_ucode_rx_stats_read._entry, ptr @il3945_ucode_rx_stats_read._entry_ptr, ptr @il3945_ucode_tx_stats_read._entry, ptr @il3945_ucode_tx_stats_read._entry_ptr, ptr @il3945_debugfs_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_debugfs_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_ucode_rx_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_ucode_tx_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_ucode_general_stats_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_ucode_rx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 3600) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1
  %cck8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1
  %general11 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 2
  %rx12 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1
  %cck16 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1
  %general19 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 2
  %rx20 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1
  %cck24 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1
  %general27 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 2
  %rx28 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1
  %cck32 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1
  %general35 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 2
  %call36 = tail call fastcc i32 @il3945_stats_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 3600)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call36
  %sub = sub i32 3600, %call36
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #5
  %add38 = add i32 %call37, %call36
  %add.ptr39 = getelementptr i8, ptr %call7.i.i, i32 %add38
  %sub40 = sub i32 3600, %add38
  %8 = ptrtoint ptr %rx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %rx, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %rx12 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rx12, align 1
  %13 = ptrtoint ptr %rx20 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %rx20, align 1
  %15 = ptrtoint ptr %rx28 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %rx28, align 1
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr39, i32 noundef %sub40, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #5
  %add45 = add i32 %call44, %add38
  %add.ptr46 = getelementptr i8, ptr %call7.i.i, i32 %add45
  %sub47 = sub i32 3600, %add45
  %fina_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %fina_cnt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %fina_cnt, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %fina_cnt48 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %fina_cnt48 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %fina_cnt48, align 1
  %fina_cnt49 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %fina_cnt49 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %fina_cnt49, align 1
  %fina_cnt50 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %fina_cnt50 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %fina_cnt50, align 1
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr46, i32 noundef %sub47, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #5
  %add52 = add i32 %call51, %add45
  %add.ptr53 = getelementptr i8, ptr %call7.i.i, i32 %add52
  %sub54 = sub i32 3600, %add52
  %plcp_err = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %plcp_err, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %plcp_err55 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %plcp_err55 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %plcp_err55, align 1
  %plcp_err56 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %plcp_err56 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %plcp_err56, align 1
  %plcp_err57 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %plcp_err57 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %plcp_err57, align 1
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr53, i32 noundef %sub54, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #5
  %add59 = add i32 %call58, %add52
  %add.ptr60 = getelementptr i8, ptr %call7.i.i, i32 %add59
  %sub61 = sub i32 3600, %add59
  %crc32_err = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %crc32_err to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %crc32_err, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %crc32_err62 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 3
  %38 = ptrtoint ptr %crc32_err62 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %crc32_err62, align 1
  %crc32_err63 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %crc32_err63 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %crc32_err63, align 1
  %crc32_err64 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 3
  %42 = ptrtoint ptr %crc32_err64 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %crc32_err64, align 1
  %call65 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr60, i32 noundef %sub61, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #5
  %add66 = add i32 %call65, %add59
  %add.ptr67 = getelementptr i8, ptr %call7.i.i, i32 %add66
  %sub68 = sub i32 3600, %add66
  %overrun_err = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %overrun_err to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %overrun_err, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %overrun_err69 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %overrun_err69 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %overrun_err69, align 1
  %overrun_err70 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %overrun_err70 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %overrun_err70, align 1
  %overrun_err71 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 4
  %51 = ptrtoint ptr %overrun_err71 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %overrun_err71, align 1
  %call72 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr67, i32 noundef %sub68, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #5
  %add73 = add i32 %call72, %add66
  %add.ptr74 = getelementptr i8, ptr %call7.i.i, i32 %add73
  %sub75 = sub i32 3600, %add73
  %early_overrun_err = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 5
  %53 = ptrtoint ptr %early_overrun_err to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %early_overrun_err, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %early_overrun_err76 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %early_overrun_err76 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %early_overrun_err76, align 1
  %early_overrun_err77 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 5
  %58 = ptrtoint ptr %early_overrun_err77 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %early_overrun_err77, align 1
  %early_overrun_err78 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 5
  %60 = ptrtoint ptr %early_overrun_err78 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %early_overrun_err78, align 1
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #5
  %add80 = add i32 %call79, %add73
  %add.ptr81 = getelementptr i8, ptr %call7.i.i, i32 %add80
  %sub82 = sub i32 3600, %add80
  %crc32_good = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 6
  %62 = ptrtoint ptr %crc32_good to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %crc32_good, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %crc32_good83 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 6
  %65 = ptrtoint ptr %crc32_good83 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %crc32_good83, align 1
  %crc32_good84 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 6
  %67 = ptrtoint ptr %crc32_good84 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %crc32_good84, align 1
  %crc32_good85 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 6
  %69 = ptrtoint ptr %crc32_good85 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %crc32_good85, align 1
  %call86 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr81, i32 noundef %sub82, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #5
  %add87 = add i32 %call86, %add80
  %add.ptr88 = getelementptr i8, ptr %call7.i.i, i32 %add87
  %sub89 = sub i32 3600, %add87
  %false_alarm_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 7
  %71 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %false_alarm_cnt, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %false_alarm_cnt90 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 7
  %74 = ptrtoint ptr %false_alarm_cnt90 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %false_alarm_cnt90, align 1
  %false_alarm_cnt91 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 7
  %76 = ptrtoint ptr %false_alarm_cnt91 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %false_alarm_cnt91, align 1
  %false_alarm_cnt92 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 7
  %78 = ptrtoint ptr %false_alarm_cnt92 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %false_alarm_cnt92, align 1
  %call93 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr88, i32 noundef %sub89, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #5
  %add94 = add i32 %call93, %add87
  %add.ptr95 = getelementptr i8, ptr %call7.i.i, i32 %add94
  %sub96 = sub i32 3600, %add94
  %fina_sync_err_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 8
  %80 = ptrtoint ptr %fina_sync_err_cnt to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %fina_sync_err_cnt, align 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %fina_sync_err_cnt97 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 8
  %83 = ptrtoint ptr %fina_sync_err_cnt97 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %fina_sync_err_cnt97, align 1
  %fina_sync_err_cnt98 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 8
  %85 = ptrtoint ptr %fina_sync_err_cnt98 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %fina_sync_err_cnt98, align 1
  %fina_sync_err_cnt99 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 8
  %87 = ptrtoint ptr %fina_sync_err_cnt99 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %fina_sync_err_cnt99, align 1
  %call100 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr95, i32 noundef %sub96, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #5
  %add101 = add i32 %call100, %add94
  %add.ptr102 = getelementptr i8, ptr %call7.i.i, i32 %add101
  %sub103 = sub i32 3600, %add101
  %sfd_timeout = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 9
  %89 = ptrtoint ptr %sfd_timeout to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %sfd_timeout, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %sfd_timeout104 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 9
  %92 = ptrtoint ptr %sfd_timeout104 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %sfd_timeout104, align 1
  %sfd_timeout105 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 9
  %94 = ptrtoint ptr %sfd_timeout105 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %sfd_timeout105, align 1
  %sfd_timeout106 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 9
  %96 = ptrtoint ptr %sfd_timeout106 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %sfd_timeout106, align 1
  %call107 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr102, i32 noundef %sub103, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #5
  %add108 = add i32 %call107, %add101
  %add.ptr109 = getelementptr i8, ptr %call7.i.i, i32 %add108
  %sub110 = sub i32 3600, %add108
  %fina_timeout = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 10
  %98 = ptrtoint ptr %fina_timeout to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %fina_timeout, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %fina_timeout111 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 10
  %101 = ptrtoint ptr %fina_timeout111 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %fina_timeout111, align 1
  %fina_timeout112 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 10
  %103 = ptrtoint ptr %fina_timeout112 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %fina_timeout112, align 1
  %fina_timeout113 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 10
  %105 = ptrtoint ptr %fina_timeout113 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %fina_timeout113, align 1
  %call114 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr109, i32 noundef %sub110, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18, i32 noundef %100, i32 noundef %102, i32 noundef %104, i32 noundef %106) #5
  %add115 = add i32 %call114, %add108
  %add.ptr116 = getelementptr i8, ptr %call7.i.i, i32 %add115
  %sub117 = sub i32 3600, %add115
  %unresponded_rts = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 11
  %107 = ptrtoint ptr %unresponded_rts to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %unresponded_rts, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %unresponded_rts118 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 11
  %110 = ptrtoint ptr %unresponded_rts118 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %unresponded_rts118, align 1
  %unresponded_rts119 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 11
  %112 = ptrtoint ptr %unresponded_rts119 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %unresponded_rts119, align 1
  %unresponded_rts120 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 11
  %114 = ptrtoint ptr %unresponded_rts120 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %unresponded_rts120, align 1
  %call121 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr116, i32 noundef %sub117, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115) #5
  %add122 = add i32 %call121, %add115
  %add.ptr123 = getelementptr i8, ptr %call7.i.i, i32 %add122
  %sub124 = sub i32 3600, %add122
  %rxe_frame_limit_overrun = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 12
  %116 = ptrtoint ptr %rxe_frame_limit_overrun to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %rxe_frame_limit_overrun, align 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %rxe_frame_limit_overrun125 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 12
  %119 = ptrtoint ptr %rxe_frame_limit_overrun125 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %rxe_frame_limit_overrun125, align 1
  %rxe_frame_limit_overrun126 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 12
  %121 = ptrtoint ptr %rxe_frame_limit_overrun126 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %rxe_frame_limit_overrun126, align 1
  %rxe_frame_limit_overrun127 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 12
  %123 = ptrtoint ptr %rxe_frame_limit_overrun127 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %124 = load i32, ptr %rxe_frame_limit_overrun127, align 1
  %call128 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124) #5
  %add129 = add i32 %call128, %add122
  %add.ptr130 = getelementptr i8, ptr %call7.i.i, i32 %add129
  %sub131 = sub i32 3600, %add129
  %sent_ack_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 13
  %125 = ptrtoint ptr %sent_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %sent_ack_cnt, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %sent_ack_cnt132 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 13
  %128 = ptrtoint ptr %sent_ack_cnt132 to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %sent_ack_cnt132, align 1
  %sent_ack_cnt133 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 13
  %130 = ptrtoint ptr %sent_ack_cnt133 to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %sent_ack_cnt133, align 1
  %sent_ack_cnt134 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 13
  %132 = ptrtoint ptr %sent_ack_cnt134 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %sent_ack_cnt134, align 1
  %call135 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr130, i32 noundef %sub131, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133) #5
  %add136 = add i32 %call135, %add129
  %add.ptr137 = getelementptr i8, ptr %call7.i.i, i32 %add136
  %sub138 = sub i32 3600, %add136
  %sent_cts_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 0, i32 14
  %134 = ptrtoint ptr %sent_cts_cnt to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %sent_cts_cnt, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %sent_cts_cnt139 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 0, i32 14
  %137 = ptrtoint ptr %sent_cts_cnt139 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %sent_cts_cnt139, align 1
  %sent_cts_cnt140 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 0, i32 14
  %139 = ptrtoint ptr %sent_cts_cnt140 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %sent_cts_cnt140, align 1
  %sent_cts_cnt141 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 0, i32 14
  %141 = ptrtoint ptr %sent_cts_cnt141 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %sent_cts_cnt141, align 1
  %call142 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr137, i32 noundef %sub138, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, i32 noundef %136, i32 noundef %138, i32 noundef %140, i32 noundef %142) #5
  %add143 = add i32 %call142, %add136
  %add.ptr144 = getelementptr i8, ptr %call7.i.i, i32 %add143
  %sub145 = sub i32 3600, %add143
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr144, i32 noundef %sub145, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.23) #5
  %add147 = add i32 %add143, %call146
  %add.ptr148 = getelementptr i8, ptr %call7.i.i, i32 %add147
  %sub149 = sub i32 3600, %add147
  %143 = ptrtoint ptr %cck8 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %cck8, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144)
  %146 = ptrtoint ptr %cck16 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %cck16, align 1
  %148 = ptrtoint ptr %cck24 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %cck24, align 1
  %150 = ptrtoint ptr %cck32 to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %cck32, align 1
  %call154 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr148, i32 noundef %sub149, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %145, i32 noundef %147, i32 noundef %149, i32 noundef %151) #5
  %add155 = add i32 %call154, %add147
  %add.ptr156 = getelementptr i8, ptr %call7.i.i, i32 %add155
  %sub157 = sub i32 3600, %add155
  %fina_cnt158 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 1
  %152 = ptrtoint ptr %fina_cnt158 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %fina_cnt158, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153)
  %fina_cnt159 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 1
  %155 = ptrtoint ptr %fina_cnt159 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %156 = load i32, ptr %fina_cnt159, align 1
  %fina_cnt160 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 1
  %157 = ptrtoint ptr %fina_cnt160 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %fina_cnt160, align 1
  %fina_cnt161 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 1
  %159 = ptrtoint ptr %fina_cnt161 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %fina_cnt161, align 1
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr156, i32 noundef %sub157, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %160) #5
  %add163 = add i32 %call162, %add155
  %add.ptr164 = getelementptr i8, ptr %call7.i.i, i32 %add163
  %sub165 = sub i32 3600, %add163
  %plcp_err166 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 2
  %161 = ptrtoint ptr %plcp_err166 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %plcp_err166, align 1
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %plcp_err167 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 2
  %164 = ptrtoint ptr %plcp_err167 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %plcp_err167, align 1
  %plcp_err168 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 2
  %166 = ptrtoint ptr %plcp_err168 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %plcp_err168, align 1
  %plcp_err169 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 2
  %168 = ptrtoint ptr %plcp_err169 to i32
  call void @__asan_loadN_noabort(i32 %168, i32 4)
  %169 = load i32, ptr %plcp_err169, align 1
  %call170 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr164, i32 noundef %sub165, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %163, i32 noundef %165, i32 noundef %167, i32 noundef %169) #5
  %add171 = add i32 %call170, %add163
  %add.ptr172 = getelementptr i8, ptr %call7.i.i, i32 %add171
  %sub173 = sub i32 3600, %add171
  %crc32_err174 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 3
  %170 = ptrtoint ptr %crc32_err174 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %crc32_err174, align 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  %crc32_err175 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 3
  %173 = ptrtoint ptr %crc32_err175 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %crc32_err175, align 1
  %crc32_err176 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 3
  %175 = ptrtoint ptr %crc32_err176 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %crc32_err176, align 1
  %crc32_err177 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 3
  %177 = ptrtoint ptr %crc32_err177 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %crc32_err177, align 1
  %call178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr172, i32 noundef %sub173, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %172, i32 noundef %174, i32 noundef %176, i32 noundef %178) #5
  %add179 = add i32 %call178, %add171
  %add.ptr180 = getelementptr i8, ptr %call7.i.i, i32 %add179
  %sub181 = sub i32 3600, %add179
  %overrun_err182 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 4
  %179 = ptrtoint ptr %overrun_err182 to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %180 = load i32, ptr %overrun_err182, align 1
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %overrun_err183 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 4
  %182 = ptrtoint ptr %overrun_err183 to i32
  call void @__asan_loadN_noabort(i32 %182, i32 4)
  %183 = load i32, ptr %overrun_err183, align 1
  %overrun_err184 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 4
  %184 = ptrtoint ptr %overrun_err184 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %overrun_err184, align 1
  %overrun_err185 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 4
  %186 = ptrtoint ptr %overrun_err185 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %overrun_err185, align 1
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr180, i32 noundef %sub181, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %187) #5
  %add187 = add i32 %call186, %add179
  %add.ptr188 = getelementptr i8, ptr %call7.i.i, i32 %add187
  %sub189 = sub i32 3600, %add187
  %early_overrun_err190 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 5
  %188 = ptrtoint ptr %early_overrun_err190 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %early_overrun_err190, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %early_overrun_err191 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 5
  %191 = ptrtoint ptr %early_overrun_err191 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %early_overrun_err191, align 1
  %early_overrun_err192 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 5
  %193 = ptrtoint ptr %early_overrun_err192 to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %early_overrun_err192, align 1
  %early_overrun_err193 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 5
  %195 = ptrtoint ptr %early_overrun_err193 to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %early_overrun_err193, align 1
  %call194 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %196) #5
  %add195 = add i32 %call194, %add187
  %add.ptr196 = getelementptr i8, ptr %call7.i.i, i32 %add195
  %sub197 = sub i32 3600, %add195
  %crc32_good198 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 6
  %197 = ptrtoint ptr %crc32_good198 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %crc32_good198, align 1
  %199 = tail call i32 @llvm.bswap.i32(i32 %198)
  %crc32_good199 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 6
  %200 = ptrtoint ptr %crc32_good199 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %crc32_good199, align 1
  %crc32_good200 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 6
  %202 = ptrtoint ptr %crc32_good200 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %crc32_good200, align 1
  %crc32_good201 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 6
  %204 = ptrtoint ptr %crc32_good201 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %crc32_good201, align 1
  %call202 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr196, i32 noundef %sub197, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i32 noundef %199, i32 noundef %201, i32 noundef %203, i32 noundef %205) #5
  %add203 = add i32 %call202, %add195
  %add.ptr204 = getelementptr i8, ptr %call7.i.i, i32 %add203
  %sub205 = sub i32 3600, %add203
  %false_alarm_cnt206 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 7
  %206 = ptrtoint ptr %false_alarm_cnt206 to i32
  call void @__asan_loadN_noabort(i32 %206, i32 4)
  %207 = load i32, ptr %false_alarm_cnt206, align 1
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  %false_alarm_cnt207 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 7
  %209 = ptrtoint ptr %false_alarm_cnt207 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %false_alarm_cnt207, align 1
  %false_alarm_cnt208 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 7
  %211 = ptrtoint ptr %false_alarm_cnt208 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %false_alarm_cnt208, align 1
  %false_alarm_cnt209 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 7
  %213 = ptrtoint ptr %false_alarm_cnt209 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %false_alarm_cnt209, align 1
  %call210 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr204, i32 noundef %sub205, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %208, i32 noundef %210, i32 noundef %212, i32 noundef %214) #5
  %add211 = add i32 %call210, %add203
  %add.ptr212 = getelementptr i8, ptr %call7.i.i, i32 %add211
  %sub213 = sub i32 3600, %add211
  %fina_sync_err_cnt214 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 8
  %215 = ptrtoint ptr %fina_sync_err_cnt214 to i32
  call void @__asan_loadN_noabort(i32 %215, i32 4)
  %216 = load i32, ptr %fina_sync_err_cnt214, align 1
  %217 = tail call i32 @llvm.bswap.i32(i32 %216)
  %fina_sync_err_cnt215 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 8
  %218 = ptrtoint ptr %fina_sync_err_cnt215 to i32
  call void @__asan_loadN_noabort(i32 %218, i32 4)
  %219 = load i32, ptr %fina_sync_err_cnt215, align 1
  %fina_sync_err_cnt216 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 8
  %220 = ptrtoint ptr %fina_sync_err_cnt216 to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %fina_sync_err_cnt216, align 1
  %fina_sync_err_cnt217 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 8
  %222 = ptrtoint ptr %fina_sync_err_cnt217 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %fina_sync_err_cnt217, align 1
  %call218 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr212, i32 noundef %sub213, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16, i32 noundef %217, i32 noundef %219, i32 noundef %221, i32 noundef %223) #5
  %add219 = add i32 %call218, %add211
  %add.ptr220 = getelementptr i8, ptr %call7.i.i, i32 %add219
  %sub221 = sub i32 3600, %add219
  %sfd_timeout222 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 9
  %224 = ptrtoint ptr %sfd_timeout222 to i32
  call void @__asan_loadN_noabort(i32 %224, i32 4)
  %225 = load i32, ptr %sfd_timeout222, align 1
  %226 = tail call i32 @llvm.bswap.i32(i32 %225)
  %sfd_timeout223 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 9
  %227 = ptrtoint ptr %sfd_timeout223 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %228 = load i32, ptr %sfd_timeout223, align 1
  %sfd_timeout224 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 9
  %229 = ptrtoint ptr %sfd_timeout224 to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %230 = load i32, ptr %sfd_timeout224, align 1
  %sfd_timeout225 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 9
  %231 = ptrtoint ptr %sfd_timeout225 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %sfd_timeout225, align 1
  %call226 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr220, i32 noundef %sub221, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %226, i32 noundef %228, i32 noundef %230, i32 noundef %232) #5
  %add227 = add i32 %call226, %add219
  %add.ptr228 = getelementptr i8, ptr %call7.i.i, i32 %add227
  %sub229 = sub i32 3600, %add227
  %fina_timeout230 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 10
  %233 = ptrtoint ptr %fina_timeout230 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %fina_timeout230, align 1
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  %fina_timeout231 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 10
  %236 = ptrtoint ptr %fina_timeout231 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %fina_timeout231, align 1
  %fina_timeout232 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 10
  %238 = ptrtoint ptr %fina_timeout232 to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %fina_timeout232, align 1
  %fina_timeout233 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 10
  %240 = ptrtoint ptr %fina_timeout233 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %fina_timeout233, align 1
  %call234 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr228, i32 noundef %sub229, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18, i32 noundef %235, i32 noundef %237, i32 noundef %239, i32 noundef %241) #5
  %add235 = add i32 %call234, %add227
  %add.ptr236 = getelementptr i8, ptr %call7.i.i, i32 %add235
  %sub237 = sub i32 3600, %add235
  %unresponded_rts238 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 11
  %242 = ptrtoint ptr %unresponded_rts238 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %unresponded_rts238, align 1
  %244 = tail call i32 @llvm.bswap.i32(i32 %243)
  %unresponded_rts239 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 11
  %245 = ptrtoint ptr %unresponded_rts239 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %unresponded_rts239, align 1
  %unresponded_rts240 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 11
  %247 = ptrtoint ptr %unresponded_rts240 to i32
  call void @__asan_loadN_noabort(i32 %247, i32 4)
  %248 = load i32, ptr %unresponded_rts240, align 1
  %unresponded_rts241 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 11
  %249 = ptrtoint ptr %unresponded_rts241 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %unresponded_rts241, align 1
  %call242 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr236, i32 noundef %sub237, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19, i32 noundef %244, i32 noundef %246, i32 noundef %248, i32 noundef %250) #5
  %add243 = add i32 %call242, %add235
  %add.ptr244 = getelementptr i8, ptr %call7.i.i, i32 %add243
  %sub245 = sub i32 3600, %add243
  %rxe_frame_limit_overrun246 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 12
  %251 = ptrtoint ptr %rxe_frame_limit_overrun246 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %rxe_frame_limit_overrun246, align 1
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  %rxe_frame_limit_overrun247 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 12
  %254 = ptrtoint ptr %rxe_frame_limit_overrun247 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %rxe_frame_limit_overrun247, align 1
  %rxe_frame_limit_overrun248 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 12
  %256 = ptrtoint ptr %rxe_frame_limit_overrun248 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %rxe_frame_limit_overrun248, align 1
  %rxe_frame_limit_overrun249 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 12
  %258 = ptrtoint ptr %rxe_frame_limit_overrun249 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %rxe_frame_limit_overrun249, align 1
  %call250 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr244, i32 noundef %sub245, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, i32 noundef %253, i32 noundef %255, i32 noundef %257, i32 noundef %259) #5
  %add251 = add i32 %call250, %add243
  %add.ptr252 = getelementptr i8, ptr %call7.i.i, i32 %add251
  %sub253 = sub i32 3600, %add251
  %sent_ack_cnt254 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 13
  %260 = ptrtoint ptr %sent_ack_cnt254 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %261 = load i32, ptr %sent_ack_cnt254, align 1
  %262 = tail call i32 @llvm.bswap.i32(i32 %261)
  %sent_ack_cnt255 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 13
  %263 = ptrtoint ptr %sent_ack_cnt255 to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %sent_ack_cnt255, align 1
  %sent_ack_cnt256 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 13
  %265 = ptrtoint ptr %sent_ack_cnt256 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %266 = load i32, ptr %sent_ack_cnt256, align 1
  %sent_ack_cnt257 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 13
  %267 = ptrtoint ptr %sent_ack_cnt257 to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %sent_ack_cnt257, align 1
  %call258 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr252, i32 noundef %sub253, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef %262, i32 noundef %264, i32 noundef %266, i32 noundef %268) #5
  %add259 = add i32 %call258, %add251
  %add.ptr260 = getelementptr i8, ptr %call7.i.i, i32 %add259
  %sub261 = sub i32 3600, %add259
  %sent_cts_cnt262 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 1, i32 14
  %269 = ptrtoint ptr %sent_cts_cnt262 to i32
  call void @__asan_loadN_noabort(i32 %269, i32 4)
  %270 = load i32, ptr %sent_cts_cnt262, align 1
  %271 = tail call i32 @llvm.bswap.i32(i32 %270)
  %sent_cts_cnt263 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 1, i32 14
  %272 = ptrtoint ptr %sent_cts_cnt263 to i32
  call void @__asan_loadN_noabort(i32 %272, i32 4)
  %273 = load i32, ptr %sent_cts_cnt263, align 1
  %sent_cts_cnt264 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 1, i32 14
  %274 = ptrtoint ptr %sent_cts_cnt264 to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %sent_cts_cnt264, align 1
  %sent_cts_cnt265 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 1, i32 14
  %276 = ptrtoint ptr %sent_cts_cnt265 to i32
  call void @__asan_loadN_noabort(i32 %276, i32 4)
  %277 = load i32, ptr %sent_cts_cnt265, align 1
  %call266 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr260, i32 noundef %sub261, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, i32 noundef %271, i32 noundef %273, i32 noundef %275, i32 noundef %277) #5
  %add267 = add i32 %call266, %add259
  %add.ptr268 = getelementptr i8, ptr %call7.i.i, i32 %add267
  %sub269 = sub i32 3600, %add267
  %call270 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr268, i32 noundef %sub269, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24) #5
  %add271 = add i32 %add267, %call270
  %add.ptr272 = getelementptr i8, ptr %call7.i.i, i32 %add271
  %sub273 = sub i32 3600, %add271
  %278 = ptrtoint ptr %general11 to i32
  call void @__asan_loadN_noabort(i32 %278, i32 4)
  %279 = load i32, ptr %general11, align 1
  %280 = tail call i32 @llvm.bswap.i32(i32 %279)
  %281 = ptrtoint ptr %general19 to i32
  call void @__asan_loadN_noabort(i32 %281, i32 4)
  %282 = load i32, ptr %general19, align 1
  %283 = ptrtoint ptr %general27 to i32
  call void @__asan_loadN_noabort(i32 %283, i32 4)
  %284 = load i32, ptr %general27, align 1
  %285 = ptrtoint ptr %general35 to i32
  call void @__asan_loadN_noabort(i32 %285, i32 4)
  %286 = load i32, ptr %general35, align 1
  %call277 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr272, i32 noundef %sub273, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.25, i32 noundef %280, i32 noundef %282, i32 noundef %284, i32 noundef %286) #5
  %add278 = add i32 %call277, %add271
  %add.ptr279 = getelementptr i8, ptr %call7.i.i, i32 %add278
  %sub280 = sub i32 3600, %add278
  %bogus_ack = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 2, i32 1
  %287 = ptrtoint ptr %bogus_ack to i32
  call void @__asan_loadN_noabort(i32 %287, i32 4)
  %288 = load i32, ptr %bogus_ack, align 1
  %289 = tail call i32 @llvm.bswap.i32(i32 %288)
  %bogus_ack281 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 2, i32 1
  %290 = ptrtoint ptr %bogus_ack281 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 4)
  %291 = load i32, ptr %bogus_ack281, align 1
  %bogus_ack282 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 2, i32 1
  %292 = ptrtoint ptr %bogus_ack282 to i32
  call void @__asan_loadN_noabort(i32 %292, i32 4)
  %293 = load i32, ptr %bogus_ack282, align 1
  %bogus_ack283 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 2, i32 1
  %294 = ptrtoint ptr %bogus_ack283 to i32
  call void @__asan_loadN_noabort(i32 %294, i32 4)
  %295 = load i32, ptr %bogus_ack283, align 1
  %call284 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr279, i32 noundef %sub280, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.26, i32 noundef %289, i32 noundef %291, i32 noundef %293, i32 noundef %295) #5
  %add285 = add i32 %call284, %add278
  %add.ptr286 = getelementptr i8, ptr %call7.i.i, i32 %add285
  %sub287 = sub i32 3600, %add285
  %non_bssid_frames = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 2, i32 2
  %296 = ptrtoint ptr %non_bssid_frames to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %non_bssid_frames, align 1
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  %non_bssid_frames288 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 2, i32 2
  %299 = ptrtoint ptr %non_bssid_frames288 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %non_bssid_frames288, align 1
  %non_bssid_frames289 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 2, i32 2
  %301 = ptrtoint ptr %non_bssid_frames289 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 4)
  %302 = load i32, ptr %non_bssid_frames289, align 1
  %non_bssid_frames290 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 2, i32 2
  %303 = ptrtoint ptr %non_bssid_frames290 to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %304 = load i32, ptr %non_bssid_frames290, align 1
  %call291 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr286, i32 noundef %sub287, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.27, i32 noundef %298, i32 noundef %300, i32 noundef %302, i32 noundef %304) #5
  %add292 = add i32 %call291, %add285
  %add.ptr293 = getelementptr i8, ptr %call7.i.i, i32 %add292
  %sub294 = sub i32 3600, %add292
  %filtered_frames = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 2, i32 3
  %305 = ptrtoint ptr %filtered_frames to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %filtered_frames, align 1
  %307 = tail call i32 @llvm.bswap.i32(i32 %306)
  %filtered_frames295 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 2, i32 3
  %308 = ptrtoint ptr %filtered_frames295 to i32
  call void @__asan_loadN_noabort(i32 %308, i32 4)
  %309 = load i32, ptr %filtered_frames295, align 1
  %filtered_frames296 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 2, i32 3
  %310 = ptrtoint ptr %filtered_frames296 to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %filtered_frames296, align 1
  %filtered_frames297 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 2, i32 3
  %312 = ptrtoint ptr %filtered_frames297 to i32
  call void @__asan_loadN_noabort(i32 %312, i32 4)
  %313 = load i32, ptr %filtered_frames297, align 1
  %call298 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr293, i32 noundef %sub294, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.28, i32 noundef %307, i32 noundef %309, i32 noundef %311, i32 noundef %313) #5
  %add299 = add i32 %call298, %add292
  %add.ptr300 = getelementptr i8, ptr %call7.i.i, i32 %add299
  %sub301 = sub i32 3600, %add299
  %non_channel_beacons = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 1, i32 2, i32 4
  %314 = ptrtoint ptr %non_channel_beacons to i32
  call void @__asan_loadN_noabort(i32 %314, i32 4)
  %315 = load i32, ptr %non_channel_beacons, align 1
  %316 = tail call i32 @llvm.bswap.i32(i32 %315)
  %non_channel_beacons302 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 1, i32 2, i32 4
  %317 = ptrtoint ptr %non_channel_beacons302 to i32
  call void @__asan_loadN_noabort(i32 %317, i32 4)
  %318 = load i32, ptr %non_channel_beacons302, align 1
  %non_channel_beacons303 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 1, i32 2, i32 4
  %319 = ptrtoint ptr %non_channel_beacons303 to i32
  call void @__asan_loadN_noabort(i32 %319, i32 4)
  %320 = load i32, ptr %non_channel_beacons303, align 1
  %non_channel_beacons304 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 1, i32 2, i32 4
  %321 = ptrtoint ptr %non_channel_beacons304 to i32
  call void @__asan_loadN_noabort(i32 %321, i32 4)
  %322 = load i32, ptr %non_channel_beacons304, align 1
  %call305 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr300, i32 noundef %sub301, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.29, i32 noundef %316, i32 noundef %318, i32 noundef %320, i32 noundef %322) #5
  %add306 = add i32 %call305, %add299
  %call307 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add306) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call307, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_ucode_tx_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1978) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx5 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2
  %tx6 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2
  %tx7 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2
  %tx8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2
  %call9 = tail call fastcc i32 @il3945_stats_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 1978)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call9
  %sub = sub i32 1978, %call9
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.39) #5
  %add11 = add i32 %call10, %call9
  %add.ptr12 = getelementptr i8, ptr %call7.i.i, i32 %add11
  %sub13 = sub i32 1978, %add11
  %8 = ptrtoint ptr %tx5 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %tx5, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %tx6 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %tx6, align 1
  %13 = ptrtoint ptr %tx7 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %tx7, align 1
  %15 = ptrtoint ptr %tx8 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %tx8, align 1
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.40, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #5
  %add18 = add i32 %call17, %add11
  %add.ptr19 = getelementptr i8, ptr %call7.i.i, i32 %add18
  %sub20 = sub i32 1978, %add18
  %rx_detected_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 1
  %17 = ptrtoint ptr %rx_detected_cnt to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %rx_detected_cnt, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %rx_detected_cnt21 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 1
  %20 = ptrtoint ptr %rx_detected_cnt21 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %rx_detected_cnt21, align 1
  %rx_detected_cnt22 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 1
  %22 = ptrtoint ptr %rx_detected_cnt22 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %rx_detected_cnt22, align 1
  %rx_detected_cnt23 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 1
  %24 = ptrtoint ptr %rx_detected_cnt23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rx_detected_cnt23, align 1
  %call24 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr19, i32 noundef %sub20, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.41, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #5
  %add25 = add i32 %call24, %add18
  %add.ptr26 = getelementptr i8, ptr %call7.i.i, i32 %add25
  %sub27 = sub i32 1978, %add25
  %bt_prio_defer_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 2
  %26 = ptrtoint ptr %bt_prio_defer_cnt to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %bt_prio_defer_cnt, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %bt_prio_defer_cnt28 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 2
  %29 = ptrtoint ptr %bt_prio_defer_cnt28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %bt_prio_defer_cnt28, align 1
  %bt_prio_defer_cnt29 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 2
  %31 = ptrtoint ptr %bt_prio_defer_cnt29 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %bt_prio_defer_cnt29, align 1
  %bt_prio_defer_cnt30 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 2
  %33 = ptrtoint ptr %bt_prio_defer_cnt30 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %bt_prio_defer_cnt30, align 1
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr26, i32 noundef %sub27, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.42, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #5
  %add32 = add i32 %call31, %add25
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 1978, %add32
  %bt_prio_kill_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 3
  %35 = ptrtoint ptr %bt_prio_kill_cnt to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %bt_prio_kill_cnt, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %bt_prio_kill_cnt35 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 3
  %38 = ptrtoint ptr %bt_prio_kill_cnt35 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %bt_prio_kill_cnt35, align 1
  %bt_prio_kill_cnt36 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 3
  %40 = ptrtoint ptr %bt_prio_kill_cnt36 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %bt_prio_kill_cnt36, align 1
  %bt_prio_kill_cnt37 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 3
  %42 = ptrtoint ptr %bt_prio_kill_cnt37 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %bt_prio_kill_cnt37, align 1
  %call38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #5
  %add39 = add i32 %call38, %add32
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub41 = sub i32 1978, %add39
  %few_bytes_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 4
  %44 = ptrtoint ptr %few_bytes_cnt to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %few_bytes_cnt, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %few_bytes_cnt42 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 4
  %47 = ptrtoint ptr %few_bytes_cnt42 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %few_bytes_cnt42, align 1
  %few_bytes_cnt43 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 4
  %49 = ptrtoint ptr %few_bytes_cnt43 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %few_bytes_cnt43, align 1
  %few_bytes_cnt44 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 4
  %51 = ptrtoint ptr %few_bytes_cnt44 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %few_bytes_cnt44, align 1
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #5
  %add46 = add i32 %call45, %add39
  %add.ptr47 = getelementptr i8, ptr %call7.i.i, i32 %add46
  %sub48 = sub i32 1978, %add46
  %cts_timeout = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 5
  %53 = ptrtoint ptr %cts_timeout to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %cts_timeout, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %cts_timeout49 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 5
  %56 = ptrtoint ptr %cts_timeout49 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %cts_timeout49, align 1
  %cts_timeout50 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 5
  %58 = ptrtoint ptr %cts_timeout50 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %cts_timeout50, align 1
  %cts_timeout51 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 5
  %60 = ptrtoint ptr %cts_timeout51 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %cts_timeout51, align 1
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr47, i32 noundef %sub48, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.45, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #5
  %add53 = add i32 %call52, %add46
  %add.ptr54 = getelementptr i8, ptr %call7.i.i, i32 %add53
  %sub55 = sub i32 1978, %add53
  %ack_timeout = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 6
  %62 = ptrtoint ptr %ack_timeout to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ack_timeout, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %ack_timeout56 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 6
  %65 = ptrtoint ptr %ack_timeout56 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ack_timeout56, align 1
  %ack_timeout57 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 6
  %67 = ptrtoint ptr %ack_timeout57 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %ack_timeout57, align 1
  %ack_timeout58 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 6
  %69 = ptrtoint ptr %ack_timeout58 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %ack_timeout58, align 1
  %call59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.46, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #5
  %add60 = add i32 %call59, %add53
  %add.ptr61 = getelementptr i8, ptr %call7.i.i, i32 %add60
  %sub62 = sub i32 1978, %add60
  %expected_ack_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 7
  %71 = ptrtoint ptr %expected_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %expected_ack_cnt, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %expected_ack_cnt63 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 7
  %74 = ptrtoint ptr %expected_ack_cnt63 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %expected_ack_cnt63, align 1
  %expected_ack_cnt64 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 7
  %76 = ptrtoint ptr %expected_ack_cnt64 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %expected_ack_cnt64, align 1
  %expected_ack_cnt65 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 7
  %78 = ptrtoint ptr %expected_ack_cnt65 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %expected_ack_cnt65, align 1
  %call66 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr61, i32 noundef %sub62, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.47, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #5
  %add67 = add i32 %call66, %add60
  %add.ptr68 = getelementptr i8, ptr %call7.i.i, i32 %add67
  %sub69 = sub i32 1978, %add67
  %actual_ack_cnt = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 2, i32 8
  %80 = ptrtoint ptr %actual_ack_cnt to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %actual_ack_cnt, align 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %actual_ack_cnt70 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 2, i32 8
  %83 = ptrtoint ptr %actual_ack_cnt70 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %actual_ack_cnt70, align 1
  %actual_ack_cnt71 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 2, i32 8
  %85 = ptrtoint ptr %actual_ack_cnt71 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %actual_ack_cnt71, align 1
  %actual_ack_cnt72 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 2, i32 8
  %87 = ptrtoint ptr %actual_ack_cnt72 to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %actual_ack_cnt72, align 1
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.48, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #5
  %add74 = add i32 %call73, %add67
  %call75 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add74) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call75, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_ucode_general_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 900) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dbg8 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 1
  %div11 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 6
  %dbg17 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 1
  %dbg20 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 1
  %dbg23 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 1
  %div26 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 6
  %div29 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 6
  %div32 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 6
  %call33 = tail call fastcc i32 @il3945_stats_flag(ptr noundef %1, ptr noundef nonnull %call7.i.i, i32 noundef 900)
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %call33
  %sub = sub i32 900, %call33
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #5
  %add35 = add i32 %call34, %call33
  %add.ptr36 = getelementptr i8, ptr %call7.i.i, i32 %add35
  %sub37 = sub i32 900, %add35
  %8 = ptrtoint ptr %dbg8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %dbg8, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %dbg17 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %dbg17, align 1
  %13 = ptrtoint ptr %dbg20 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %dbg20, align 1
  %15 = ptrtoint ptr %dbg23 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %dbg23, align 1
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr36, i32 noundef %sub37, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.51, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #5
  %add42 = add i32 %call41, %add35
  %add.ptr43 = getelementptr i8, ptr %call7.i.i, i32 %add42
  %sub44 = sub i32 900, %add42
  %burst_count = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %burst_count to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %burst_count, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %burst_count45 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 1, i32 1
  %20 = ptrtoint ptr %burst_count45 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %burst_count45, align 1
  %burst_count46 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 1, i32 1
  %22 = ptrtoint ptr %burst_count46 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %burst_count46, align 1
  %burst_count47 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %burst_count47 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %burst_count47, align 1
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.52, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #5
  %add49 = add i32 %call48, %add42
  %add.ptr50 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub51 = sub i32 900, %add49
  %sleep_time = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 2
  %26 = ptrtoint ptr %sleep_time to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %sleep_time, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %sleep_time52 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 2
  %29 = ptrtoint ptr %sleep_time52 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %sleep_time52, align 1
  %sleep_time53 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 2
  %31 = ptrtoint ptr %sleep_time53 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %sleep_time53, align 1
  %sleep_time54 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 2
  %33 = ptrtoint ptr %sleep_time54 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %sleep_time54, align 1
  %call55 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.53, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #5
  %add56 = add i32 %call55, %add49
  %add.ptr57 = getelementptr i8, ptr %call7.i.i, i32 %add56
  %sub58 = sub i32 900, %add56
  %slots_out = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 3
  %35 = ptrtoint ptr %slots_out to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %slots_out, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %slots_out59 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 3
  %38 = ptrtoint ptr %slots_out59 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %slots_out59, align 1
  %slots_out60 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 3
  %40 = ptrtoint ptr %slots_out60 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %slots_out60, align 1
  %slots_out61 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 3
  %42 = ptrtoint ptr %slots_out61 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %slots_out61, align 1
  %call62 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr57, i32 noundef %sub58, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.54, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #5
  %add63 = add i32 %call62, %add56
  %add.ptr64 = getelementptr i8, ptr %call7.i.i, i32 %add63
  %sub65 = sub i32 900, %add63
  %slots_idle = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 4
  %44 = ptrtoint ptr %slots_idle to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %slots_idle, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %slots_idle66 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 4
  %47 = ptrtoint ptr %slots_idle66 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %slots_idle66, align 1
  %slots_idle67 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 4
  %49 = ptrtoint ptr %slots_idle67 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %slots_idle67, align 1
  %slots_idle68 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 4
  %51 = ptrtoint ptr %slots_idle68 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %slots_idle68, align 1
  %call69 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr64, i32 noundef %sub65, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.55, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #5
  %add70 = add i32 %call69, %add63
  %add.ptr71 = getelementptr i8, ptr %call7.i.i, i32 %add70
  %sub72 = sub i32 900, %add70
  %ttl_timestamp = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 5
  %53 = ptrtoint ptr %ttl_timestamp to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %ttl_timestamp, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.56, i32 noundef %55) #5
  %add74 = add i32 %call73, %add70
  %add.ptr75 = getelementptr i8, ptr %call7.i.i, i32 %add74
  %sub76 = sub i32 900, %add74
  %56 = ptrtoint ptr %div11 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %div11, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %div26 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %div26, align 1
  %61 = ptrtoint ptr %div29 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %div29, align 1
  %63 = ptrtoint ptr %div32 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %div32, align 1
  %call80 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr75, i32 noundef %sub76, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.57, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #5
  %add81 = add i32 %call80, %add74
  %add.ptr82 = getelementptr i8, ptr %call7.i.i, i32 %add81
  %sub83 = sub i32 900, %add81
  %tx_on_b = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 6, i32 1
  %65 = ptrtoint ptr %tx_on_b to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %tx_on_b, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %tx_on_b84 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 6, i32 1
  %68 = ptrtoint ptr %tx_on_b84 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %tx_on_b84, align 1
  %tx_on_b85 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 6, i32 1
  %70 = ptrtoint ptr %tx_on_b85 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %tx_on_b85, align 1
  %tx_on_b86 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 6, i32 1
  %72 = ptrtoint ptr %tx_on_b86 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %tx_on_b86, align 1
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82, i32 noundef %sub83, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.58, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #5
  %add88 = add i32 %call87, %add81
  %add.ptr89 = getelementptr i8, ptr %call7.i.i, i32 %add88
  %sub90 = sub i32 900, %add88
  %exec_time = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 6, i32 2
  %74 = ptrtoint ptr %exec_time to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %exec_time, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %exec_time91 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 6, i32 2
  %77 = ptrtoint ptr %exec_time91 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %exec_time91, align 1
  %exec_time92 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 6, i32 2
  %79 = ptrtoint ptr %exec_time92 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %exec_time92, align 1
  %exec_time93 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 6, i32 2
  %81 = ptrtoint ptr %exec_time93 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %exec_time93, align 1
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr89, i32 noundef %sub90, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.59, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82) #5
  %add95 = add i32 %call94, %add88
  %add.ptr96 = getelementptr i8, ptr %call7.i.i, i32 %add95
  %sub97 = sub i32 900, %add95
  %probe_time = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 4, i32 3, i32 6, i32 3
  %83 = ptrtoint ptr %probe_time to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %probe_time, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %probe_time98 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 5, i32 3, i32 6, i32 3
  %86 = ptrtoint ptr %probe_time98 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %probe_time98, align 1
  %probe_time99 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 6, i32 3, i32 6, i32 3
  %88 = ptrtoint ptr %probe_time99 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %probe_time99, align 1
  %probe_time100 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 7, i32 3, i32 6, i32 3
  %90 = ptrtoint ptr %probe_time100 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %probe_time100, align 1
  %call101 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr96, i32 noundef %sub97, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.60, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91) #5
  %add102 = add i32 %call101, %add95
  %call103 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add102) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call103, %if.end4 ], [ -12, %do.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il3945_stats_flag(ptr nocapture noundef readonly %il, ptr noundef %buf, i32 noundef %bufsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 4
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef %bufsz, ptr noundef nonnull @.str.30, i32 noundef %2) #5
  %3 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats, align 8
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %call
  %sub4 = sub i32 %bufsz, %call
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr3, i32 noundef %sub4, ptr noundef nonnull @.str.31) #5
  %add6 = add i32 %call5, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p.0 = phi i32 [ %add6, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %buf, i32 %p.0
  %sub8 = sub i32 %bufsz, %p.0
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stats, align 8
  %8 = and i32 %7, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool12.not, ptr @.str.34, ptr @.str.33
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond) #5
  %add14 = add i32 %call13, %p.0
  %add.ptr15 = getelementptr i8, ptr %buf, i32 %add14
  %sub16 = sub i32 %bufsz, %add14
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stats, align 8
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.37, ptr @.str.36
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond21) #5
  %add23 = add i32 %call22, %add14
  ret i32 %add23
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @il3945_debugfs_ops, !1, !"il3945_debugfs_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 489, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 54, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @il3945_ucode_rx_stats_read._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @il3945_ucode_rx_stats_read._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 79, i32 9}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 81, i32 9}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 84, i32 9}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 84, i32 45}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 89, i32 45}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 94, i32 45}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 99, i32 45}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 104, i32 45}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 109, i32 45}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 116, i32 45}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 121, i32 45}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 127, i32 45}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 134, i32 45}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 139, i32 45}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 144, i32 45}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 151, i32 9}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 158, i32 45}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 163, i32 45}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 171, i32 9}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 259, i32 9}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 262, i32 45}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 267, i32 45}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 272, i32 45}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 279, i32 45}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 287, i32 9}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 19, i32 37}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 23, i32 11}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 24, i32 37}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 26, i32 33}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 26, i32 45}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 27, i32 37}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 29, i32 35}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 29, i32 47}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 314, i32 3}
!78 = !{ptr @il3945_ucode_tx_stats_read._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @il3945_ucode_tx_stats_read._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 332, i32 9}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 335, i32 45}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 340, i32 45}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 346, i32 45}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 352, i32 45}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 358, i32 45}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 363, i32 45}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 368, i32 45}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 373, i32 45}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 379, i32 45}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 407, i32 3}
!102 = !{ptr @il3945_ucode_general_stats_read._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @il3945_ucode_general_stats_read._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 433, i32 9}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 436, i32 45}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 441, i32 45}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 446, i32 45}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 452, i32 45}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 457, i32 45}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 462, i32 40}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 466, i32 45}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 471, i32 45}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 476, i32 45}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-debug.c", i32 481, i32 45}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
