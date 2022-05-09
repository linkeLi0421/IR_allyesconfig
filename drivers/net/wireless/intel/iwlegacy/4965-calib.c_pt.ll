; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/4965-calib.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/4965-calib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.il_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, [255 x ptr], [6 x %struct.ieee80211_supported_band], %struct.il_spectrum_notification, i8, i32, i32, i32, %struct.il_force_reset, ptr, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, [6 x i8], i8, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, [1 x %struct.mac_address], i32, i32, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, i32, i8, [25 x i8], ptr, %struct.il_qos_info, %struct.anon.137, %struct.il_rxon_cmd, %struct.il_rxon_cmd, %struct.il_rxon_time_cmd, i16, %struct.il_init_alive_resp, %struct.il_alive_resp, i16, i8, %struct.il_sensitivity_data, %struct.il_chain_noise_data, [11 x i16], %struct.il_ht_config, i8, %struct.wait_queue_head, i32, %struct.il_rx_queue, ptr, i32, %struct.il_dma_ptr, %struct.il_dma_ptr, i32, i32, %struct.traffic_stats, %struct.traffic_stats, %struct.isr_stats, %struct.il_power_mgr, [6 x i8], %struct.spinlock, i32, [32 x %struct.il_station_entry], i32, [1 x i32], i32, [4 x %struct.atomic_t], i8, i8, ptr, ptr, i32, i64, %union.anon.139, %struct.il_hw_params, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.work_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i8, i8, i32, i16, i16, ptr, ptr, ptr, i32, i32, i8, %struct.work_struct, i8, i8, i8, %struct.work_struct, %struct.timer_list, %struct.timer_list, i8, %struct.led_classdev, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
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
%struct.il_sensitivity_ranges = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.il_sensitivity_cmd = type { i16, [11 x i16] }
%struct.il_host_cmd = type { ptr, i32, ptr, i32, i16, i8 }
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
%struct.il_cfg = type { ptr, ptr, i32, i32, i8, i8, i32, i16, i16, ptr, ptr, [6 x i8], i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i8, i8, i8, i8, [7 x i32] }
%struct.il_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.il_calib_diff_gain_cmd = type { %struct.il_calib_hdr, i8, i8, i8, i8 }
%struct.il_calib_hdr = type { i8, i8, i8, i8 }

@il4965_init_sensitivity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Start il4965_init_sensitivity\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_init_sensitivity\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlegacy/4965-calib.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il4965_init_sensitivity._entry_ptr = internal global ptr @il4965_init_sensitivity._entry, section ".printk_index", align 4
@il4965_init_sensitivity._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s <<return 0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@il4965_init_sensitivity._entry_ptr.7 = internal global ptr @il4965_init_sensitivity._entry.5, section ".printk_index", align 4
@il4965_sensitivity_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 505, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s << - not associated\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"il4965_sensitivity_calibration\00", [33 x i8] zeroinitializer }, align 32
@il4965_sensitivity_calibration._entry_ptr = internal global ptr @il4965_sensitivity_calibration._entry, section ".printk_index", align 4
@il4965_sensitivity_calibration._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s << invalid data.\0A\00", [43 x i8] zeroinitializer }, align 32
@il4965_sensitivity_calibration._entry_ptr.12 = internal global ptr @il4965_sensitivity_calibration._entry.10, section ".printk_index", align 4
@il4965_sensitivity_calibration._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s rx_enable_time = %u usecs\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_sensitivity_calibration._entry_ptr.15 = internal global ptr @il4965_sensitivity_calibration._entry.13, section ".printk_index", align 4
@il4965_sensitivity_calibration._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 543, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s << RX Enable Time == 0!\0A\00", [36 x i8] zeroinitializer }, align 32
@il4965_sensitivity_calibration._entry_ptr.18 = internal global ptr @il4965_sensitivity_calibration._entry.16, section ".printk_index", align 4
@il4965_sensitivity_calibration._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 583, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s cck: fa %u badp %u  ofdm: fa %u badp %u\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_sensitivity_calibration._entry_ptr.21 = internal global ptr @il4965_sensitivity_calibration._entry.19, section ".printk_index", align 4
@__const.il4965_chain_noise_calibration.average_sig = private unnamed_addr constant [3 x i32] [i32 65535, i32 0, i32 0], align 4
@il4965_chain_noise_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Wait for noise calib reset\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"il4965_chain_noise_calibration\00", [33 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr = internal global ptr @il4965_chain_noise_calibration._entry, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s  << Interference data unavailable\0A\00", [58 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.26 = internal global ptr @il4965_chain_noise_calibration._entry.24, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 835, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Stats not from chan=%d, band24=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.29 = internal global ptr @il4965_chain_noise_calibration._entry.27, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s chan=%d, band24=%d, beacon=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.32 = internal global ptr @il4965_chain_noise_calibration._entry.30, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 870, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s chain_sig: a %d b %d c %d\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.35 = internal global ptr @il4965_chain_noise_calibration._entry.33, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.23, ptr @.str.2, i32 872, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s chain_noise: a %d b %d c %d\0A\00", [32 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.38 = internal global ptr @il4965_chain_noise_calibration._entry.36, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.23, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s average_noise: a %d b %d c %d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.41 = internal global ptr @il4965_chain_noise_calibration._entry.39, section ".printk_index", align 4
@il4965_chain_noise_calibration._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.23, ptr @.str.2, i32 905, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s min_average_noise = %d, antenna %d\0A\00", [57 x i8] zeroinitializer }, align 32
@il4965_chain_noise_calibration._entry_ptr.44 = internal global ptr @il4965_chain_noise_calibration._entry.42, section ".printk_index", align 4
@il_debug_level = external dso_local local_unnamed_addr global i32, align 4
@il4965_sensitivity_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s No change in C_SENSITIVITY\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_sensitivity_write\00", [39 x i8] zeroinitializer }, align 32
@il4965_sensitivity_write._entry_ptr = internal global ptr @il4965_sensitivity_write._entry, section ".printk_index", align 4
@il4965_prepare_legacy_sensitivity_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s ofdm: ac %u mrc %u x1 %u mrc_x1 %u thresh %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"il4965_prepare_legacy_sensitivity_tbl\00", [58 x i8] zeroinitializer }, align 32
@il4965_prepare_legacy_sensitivity_tbl._entry_ptr = internal global ptr @il4965_prepare_legacy_sensitivity_tbl._entry, section ".printk_index", align 4
@il4965_prepare_legacy_sensitivity_tbl._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s cck: ac %u mrc %u thresh %u\0A\00", [32 x i8] zeroinitializer }, align 32
@il4965_prepare_legacy_sensitivity_tbl._entry_ptr.51 = internal global ptr @il4965_prepare_legacy_sensitivity_tbl._entry.49, section ".printk_index", align 4
@il4965_sens_auto_corr_ofdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s norm FA %u > max FA %u)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il4965_sens_auto_corr_ofdm\00", [37 x i8] zeroinitializer }, align 32
@il4965_sens_auto_corr_ofdm._entry_ptr = internal global ptr @il4965_sens_auto_corr_ofdm._entry, section ".printk_index", align 4
@il4965_sens_auto_corr_ofdm._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s norm FA %u < min FA %u\0A\00", [37 x i8] zeroinitializer }, align 32
@il4965_sens_auto_corr_ofdm._entry_ptr.56 = internal global ptr @il4965_sens_auto_corr_ofdm._entry.54, section ".printk_index", align 4
@il4965_sens_auto_corr_ofdm._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s min FA %u < norm FA %u < max FA %u OK\0A\00", [54 x i8] zeroinitializer }, align 32
@il4965_sens_auto_corr_ofdm._entry_ptr.59 = internal global ptr @il4965_sens_auto_corr_ofdm._entry.57, section ".printk_index", align 4
@il4965_sens_energy_cck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 151, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s silence a %u, b %u, c %u, 20-bcn max %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il4965_sens_energy_cck\00", [41 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr = internal global ptr @il4965_sens_energy_cck._entry, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s rx energy a %u, b %u, c %u, 10-bcn max/min %u\0A\00", [46 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.64 = internal global ptr @il4965_sens_energy_cck._entry.62, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s consecutive bcns with few false alarms = %u\0A\00", [48 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.67 = internal global ptr @il4965_sens_energy_cck._entry.65, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s norm FA %u > max FA %u\0A\00", [37 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.70 = internal global ptr @il4965_sens_energy_cck._entry.68, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.61, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s ... reducing sensitivity\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.73 = internal global ptr @il4965_sens_energy_cck._entry.71, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.61, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s norm FA %u < min FA %u, silence diff %d\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.76 = internal global ptr @il4965_sens_energy_cck._entry.74, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.61, ptr @.str.2, i32 222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s ... increasing sensitivity\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.79 = internal global ptr @il4965_sens_energy_cck._entry.77, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.61, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s ... but not changing sensitivity\0A\00", [59 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.82 = internal global ptr @il4965_sens_energy_cck._entry.80, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.61, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s  FA in safe zone\0A\00", [43 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.85 = internal global ptr @il4965_sens_energy_cck._entry.83, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.61, ptr @.str.2, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s ... increasing margin\0A\00", [38 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.88 = internal global ptr @il4965_sens_energy_cck._entry.86, section ".printk_index", align 4
@il4965_sens_energy_cck._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.61, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s new nrg_th_cck %u\0A\00", [42 x i8] zeroinitializer }, align 32
@il4965_sens_energy_cck._entry_ptr.91 = internal global ptr @il4965_sens_energy_cck._entry.89, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 643, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s average_sig: a %d b %d c %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_find_disconn_antenna\00", [36 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr = internal global ptr @il4965_find_disconn_antenna._entry, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 645, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s max_average_sig = %d, antenna %d\0A\00", [59 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr.96 = internal global ptr @il4965_find_disconn_antenna._entry.94, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 660, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s i = %d  rssiDelta = %d  disconn_array[i] = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr.99 = internal global ptr @il4965_find_disconn_antenna._entry.97, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s All Tx chains are disconnected- declare %d as connected\0A\00", [36 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr.102 = internal global ptr @il4965_find_disconn_antenna._entry.100, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.93, ptr @.str.2, i32 708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s Detected that not all antennas are connected! Connected: %#x, valid: %#x.\0A\00", [50 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr.105 = internal global ptr @il4965_find_disconn_antenna._entry.103, section ".printk_index", align 4
@il4965_find_disconn_antenna._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.93, ptr @.str.2, i32 712, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s active_chains (bitwise) = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@il4965_find_disconn_antenna._entry_ptr.108 = internal global ptr @il4965_find_disconn_antenna._entry.106, section ".printk_index", align 4
@il4965_gain_computation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s delta_gain_codes: a %d b %d c %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_gain_computation\00", [40 x i8] zeroinitializer }, align 32
@il4965_gain_computation._entry_ptr = internal global ptr @il4965_gain_computation._entry, section ".printk_index", align 4
@il4965_gain_computation._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s fail sending cmd C_PHY_CALIBRATION\0A\00", [57 x i8] zeroinitializer }, align 32
@il4965_gain_computation._entry_ptr.113 = internal global ptr @il4965_gain_computation._entry.111, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 439, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 480, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 505, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 516, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 540, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 543, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 582, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 808, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 817, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 834, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 867, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 869, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 871, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 901, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 904, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 417, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 382, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 387, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 306, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 329, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 348, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 150, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 173, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 183, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 189, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 191, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 208, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 222, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 227, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 232, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 242, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 256, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 642, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 644, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 658, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 698, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 706, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 712, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 743, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlegacy/4965-calib.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 758, i32 4 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @il4965_chain_noise_calibration._entry, ptr @il4965_chain_noise_calibration._entry.24, ptr @il4965_chain_noise_calibration._entry.27, ptr @il4965_chain_noise_calibration._entry.30, ptr @il4965_chain_noise_calibration._entry.33, ptr @il4965_chain_noise_calibration._entry.36, ptr @il4965_chain_noise_calibration._entry.39, ptr @il4965_chain_noise_calibration._entry.42, ptr @il4965_chain_noise_calibration._entry_ptr, ptr @il4965_chain_noise_calibration._entry_ptr.26, ptr @il4965_chain_noise_calibration._entry_ptr.29, ptr @il4965_chain_noise_calibration._entry_ptr.32, ptr @il4965_chain_noise_calibration._entry_ptr.35, ptr @il4965_chain_noise_calibration._entry_ptr.38, ptr @il4965_chain_noise_calibration._entry_ptr.41, ptr @il4965_chain_noise_calibration._entry_ptr.44, ptr @il4965_find_disconn_antenna._entry, ptr @il4965_find_disconn_antenna._entry.100, ptr @il4965_find_disconn_antenna._entry.103, ptr @il4965_find_disconn_antenna._entry.106, ptr @il4965_find_disconn_antenna._entry.94, ptr @il4965_find_disconn_antenna._entry.97, ptr @il4965_find_disconn_antenna._entry_ptr, ptr @il4965_find_disconn_antenna._entry_ptr.102, ptr @il4965_find_disconn_antenna._entry_ptr.105, ptr @il4965_find_disconn_antenna._entry_ptr.108, ptr @il4965_find_disconn_antenna._entry_ptr.96, ptr @il4965_find_disconn_antenna._entry_ptr.99, ptr @il4965_gain_computation._entry, ptr @il4965_gain_computation._entry.111, ptr @il4965_gain_computation._entry_ptr, ptr @il4965_gain_computation._entry_ptr.113, ptr @il4965_init_sensitivity._entry, ptr @il4965_init_sensitivity._entry.5, ptr @il4965_init_sensitivity._entry_ptr, ptr @il4965_init_sensitivity._entry_ptr.7, ptr @il4965_prepare_legacy_sensitivity_tbl._entry, ptr @il4965_prepare_legacy_sensitivity_tbl._entry.49, ptr @il4965_prepare_legacy_sensitivity_tbl._entry_ptr, ptr @il4965_prepare_legacy_sensitivity_tbl._entry_ptr.51, ptr @il4965_sens_auto_corr_ofdm._entry, ptr @il4965_sens_auto_corr_ofdm._entry.54, ptr @il4965_sens_auto_corr_ofdm._entry.57, ptr @il4965_sens_auto_corr_ofdm._entry_ptr, ptr @il4965_sens_auto_corr_ofdm._entry_ptr.56, ptr @il4965_sens_auto_corr_ofdm._entry_ptr.59, ptr @il4965_sens_energy_cck._entry, ptr @il4965_sens_energy_cck._entry.62, ptr @il4965_sens_energy_cck._entry.65, ptr @il4965_sens_energy_cck._entry.68, ptr @il4965_sens_energy_cck._entry.71, ptr @il4965_sens_energy_cck._entry.74, ptr @il4965_sens_energy_cck._entry.77, ptr @il4965_sens_energy_cck._entry.80, ptr @il4965_sens_energy_cck._entry.83, ptr @il4965_sens_energy_cck._entry.86, ptr @il4965_sens_energy_cck._entry.89, ptr @il4965_sens_energy_cck._entry_ptr, ptr @il4965_sens_energy_cck._entry_ptr.64, ptr @il4965_sens_energy_cck._entry_ptr.67, ptr @il4965_sens_energy_cck._entry_ptr.70, ptr @il4965_sens_energy_cck._entry_ptr.73, ptr @il4965_sens_energy_cck._entry_ptr.76, ptr @il4965_sens_energy_cck._entry_ptr.79, ptr @il4965_sens_energy_cck._entry_ptr.82, ptr @il4965_sens_energy_cck._entry_ptr.85, ptr @il4965_sens_energy_cck._entry_ptr.88, ptr @il4965_sens_energy_cck._entry_ptr.91, ptr @il4965_sensitivity_calibration._entry, ptr @il4965_sensitivity_calibration._entry.10, ptr @il4965_sensitivity_calibration._entry.13, ptr @il4965_sensitivity_calibration._entry.16, ptr @il4965_sensitivity_calibration._entry.19, ptr @il4965_sensitivity_calibration._entry_ptr, ptr @il4965_sensitivity_calibration._entry_ptr.12, ptr @il4965_sensitivity_calibration._entry_ptr.15, ptr @il4965_sensitivity_calibration._entry_ptr.18, ptr @il4965_sensitivity_calibration._entry_ptr.21, ptr @il4965_sensitivity_write._entry, ptr @il4965_sensitivity_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_init_sensitivity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_init_sensitivity._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_calibration._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_calibration._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_calibration._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_calibration._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_calibration._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sensitivity_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_prepare_legacy_sensitivity_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_prepare_legacy_sensitivity_tbl._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_auto_corr_ofdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_auto_corr_ofdm._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_auto_corr_ofdm._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_sens_energy_cck._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_find_disconn_antenna._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_gain_computation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_gain_computation._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_init_sensitivity(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sens = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 21
  %0 = ptrtoint ptr %sens to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sens, align 4
  %disable_sens_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 124
  %2 = ptrtoint ptr %disable_sens_cal to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_sens_cal, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %il_get_debug_level.exit.do.end6_crit_edge, label %do.end

il_get_debug_level.exit.do.end6_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end6

do.end6:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end6_crit_edge
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end6.cleanup_crit_edge, label %if.end8

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end6
  %sensitivity_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64
  %auto_corr_min_ofdm = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 4
  %11 = call ptr @memset(ptr %sensitivity_data, i32 0, i32 144)
  %12 = ptrtoint ptr %auto_corr_min_ofdm to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %auto_corr_min_ofdm, align 2
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %sensitivity_data, align 4
  %auto_corr_min_ofdm_mrc = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %auto_corr_min_ofdm_mrc to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %auto_corr_min_ofdm_mrc, align 2
  %conv17 = zext i16 %16 to i32
  %auto_corr_ofdm_mrc = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 1
  %17 = ptrtoint ptr %auto_corr_ofdm_mrc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17, ptr %auto_corr_ofdm_mrc, align 4
  %auto_corr_min_ofdm_x1 = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %auto_corr_min_ofdm_x1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %auto_corr_min_ofdm_x1, align 2
  %conv18 = zext i16 %19 to i32
  %auto_corr_ofdm_x1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 2
  %20 = ptrtoint ptr %auto_corr_ofdm_x1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv18, ptr %auto_corr_ofdm_x1, align 4
  %auto_corr_min_ofdm_mrc_x1 = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %auto_corr_min_ofdm_mrc_x1 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %auto_corr_min_ofdm_mrc_x1, align 2
  %conv19 = zext i16 %22 to i32
  %auto_corr_ofdm_mrc_x1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 3
  %23 = ptrtoint ptr %auto_corr_ofdm_mrc_x1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv19, ptr %auto_corr_ofdm_mrc_x1, align 4
  %auto_corr_cck = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 4
  %24 = ptrtoint ptr %auto_corr_cck to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 125, ptr %auto_corr_cck, align 4
  %auto_corr_min_cck_mrc = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %auto_corr_min_cck_mrc to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %auto_corr_min_cck_mrc, align 2
  %conv20 = zext i16 %26 to i32
  %auto_corr_cck_mrc = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 5
  %27 = ptrtoint ptr %auto_corr_cck_mrc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv20, ptr %auto_corr_cck_mrc, align 4
  %nrg_th_cck = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %nrg_th_cck to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nrg_th_cck, align 2
  %conv21 = zext i16 %29 to i32
  %nrg_th_cck22 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %30 = ptrtoint ptr %nrg_th_cck22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv21, ptr %nrg_th_cck22, align 4
  %nrg_th_ofdm = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %nrg_th_ofdm to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nrg_th_ofdm, align 2
  %conv23 = zext i16 %32 to i32
  %nrg_th_ofdm24 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 20
  %33 = ptrtoint ptr %nrg_th_ofdm24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv23, ptr %nrg_th_ofdm24, align 4
  %barker_corr_th_min = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %barker_corr_th_min to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %barker_corr_th_min, align 2
  %barker_corr_th_min25 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 21
  %36 = ptrtoint ptr %barker_corr_th_min25 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %barker_corr_th_min25, align 4
  %barker_corr_th_min_mrc = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 17
  %37 = ptrtoint ptr %barker_corr_th_min_mrc to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %barker_corr_th_min_mrc, align 2
  %barker_corr_th_min_mrc26 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 22
  %39 = ptrtoint ptr %barker_corr_th_min_mrc26 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %barker_corr_th_min_mrc26, align 2
  %nrg_th_cca = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %nrg_th_cca to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nrg_th_cca, align 2
  %nrg_th_cca27 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 23
  %42 = ptrtoint ptr %nrg_th_cca27 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %nrg_th_cca27, align 4
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 6
  %43 = call ptr @memset(ptr %last_bad_plcp_cnt_ofdm, i32 0, i32 16)
  %call28 = tail call fastcc i32 @il4965_sensitivity_write(ptr noundef %il)
  %44 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i93 = icmp eq i32 %45, 0
  br i1 %tobool.not.i93, label %if.else.i94, label %if.end8.il_get_debug_level.exit96_crit_edge

if.end8.il_get_debug_level.exit96_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit96

if.else.i94:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %46 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit96

il_get_debug_level.exit96:                        ; preds = %if.else.i94, %if.end8.il_get_debug_level.exit96_crit_edge
  %retval.0.i95 = phi i32 [ %46, %if.else.i94 ], [ %45, %if.end8.il_get_debug_level.exit96_crit_edge ]
  %and31 = and i32 %retval.0.i95, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %il_get_debug_level.exit96.cleanup_crit_edge, label %do.end36

il_get_debug_level.exit96.cleanup_crit_edge:      ; preds = %il_get_debug_level.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end36:                                         ; preds = %il_get_debug_level.exit96
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %il, align 8
  %wiphy38 = getelementptr inbounds %struct.ieee80211_hw, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %wiphy38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wiphy38, align 8
  %dev39 = getelementptr inbounds %struct.wiphy, ptr %50, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %call28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %il_get_debug_level.exit96.cleanup_crit_edge, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_sensitivity_write(ptr noundef %il) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.il_sensitivity_cmd, align 2
  %cmd_out = alloca %struct.il_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmd) #6
  %0 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 3
  %4 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 4
  %5 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 5
  %6 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 6
  %7 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 7
  %8 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 8
  %9 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 9
  %10 = getelementptr inbounds %struct.il_sensitivity_cmd, ptr %cmd, i32 0, i32 1, i32 10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd_out) #6
  %11 = getelementptr inbounds i8, ptr %cmd_out, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %cmd_out to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd, ptr %cmd_out, align 4
  %reply_page = getelementptr inbounds %struct.il_host_cmd, ptr %cmd_out, i32 0, i32 1
  %14 = ptrtoint ptr %reply_page to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %reply_page, align 4
  %callback = getelementptr inbounds %struct.il_host_cmd, ptr %cmd_out, i32 0, i32 2
  %15 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %callback, align 4
  %flags = getelementptr inbounds %struct.il_host_cmd, ptr %cmd_out, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %flags, align 4
  %len = getelementptr inbounds %struct.il_host_cmd, ptr %cmd_out, i32 0, i32 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %len, align 4
  %id = getelementptr inbounds %struct.il_host_cmd, ptr %cmd_out, i32 0, i32 5
  %18 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -88, ptr %id, align 2
  %sensitivity_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %cmd, align 2
  %20 = ptrtoint ptr %sensitivity_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sensitivity_data, align 4
  %conv.i = trunc i32 %21 to i16
  %22 = call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %5, align 2
  %auto_corr_ofdm_mrc.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 1
  %24 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %auto_corr_ofdm_mrc.i, align 4
  %conv1.i = trunc i32 %25 to i16
  %26 = call i16 @llvm.bswap.i16(i16 %conv1.i) #6
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %6, align 2
  %auto_corr_ofdm_x1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 2
  %28 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %auto_corr_ofdm_x1.i, align 4
  %conv3.i = trunc i32 %29 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv3.i) #6
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %2, align 2
  %auto_corr_ofdm_mrc_x1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 3
  %32 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  %conv5.i = trunc i32 %33 to i16
  %34 = call i16 @llvm.bswap.i16(i16 %conv5.i) #6
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %3, align 2
  %auto_corr_cck.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 4
  %36 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %auto_corr_cck.i, align 4
  %conv7.i = trunc i32 %37 to i16
  %38 = call i16 @llvm.bswap.i16(i16 %conv7.i) #6
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %9, align 2
  %auto_corr_cck_mrc.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 5
  %40 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %conv9.i = trunc i32 %41 to i16
  %42 = call i16 @llvm.bswap.i16(i16 %conv9.i) #6
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %4, align 2
  %nrg_th_cck.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %44 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nrg_th_cck.i, align 4
  %conv11.i = trunc i32 %45 to i16
  %46 = call i16 @llvm.bswap.i16(i16 %conv11.i) #6
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %0, align 2
  %nrg_th_ofdm.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 20
  %48 = ptrtoint ptr %nrg_th_ofdm.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nrg_th_ofdm.i, align 4
  %conv13.i = trunc i32 %49 to i16
  %50 = call i16 @llvm.bswap.i16(i16 %conv13.i) #6
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %1, align 2
  %barker_corr_th_min.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 21
  %52 = ptrtoint ptr %barker_corr_th_min.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %barker_corr_th_min.i, align 4
  %54 = call i16 @llvm.bswap.i16(i16 %53) #6
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %7, align 2
  %barker_corr_th_min_mrc.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 22
  %56 = ptrtoint ptr %barker_corr_th_min_mrc.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %barker_corr_th_min_mrc.i, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57) #6
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %8, align 2
  %nrg_th_cca.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 23
  %60 = ptrtoint ptr %nrg_th_cca.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nrg_th_cca.i, align 4
  %62 = call i16 @llvm.bswap.i16(i16 %61) #6
  %63 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %10, align 2
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %64 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.il_get_debug_level.exit.i_crit_edge

entry.il_get_debug_level.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %66 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %entry.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %66, %if.else.i.i ], [ %65, %entry.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %il_get_debug_level.exit.i.do.body25.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.body25.i_crit_edge:  ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %70, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33, i32 noundef %49) #9
  br label %do.body25.i

do.body25.i:                                      ; preds = %do.end.i, %il_get_debug_level.exit.i.do.body25.i_crit_edge
  %71 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i72.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i72.i, label %if.else.i73.i, label %do.body25.i.il_get_debug_level.exit75.i_crit_edge

do.body25.i.il_get_debug_level.exit75.i_crit_edge: ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit75.i

if.else.i73.i:                                    ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %73 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit75.i

il_get_debug_level.exit75.i:                      ; preds = %if.else.i73.i, %do.body25.i.il_get_debug_level.exit75.i_crit_edge
  %retval.0.i74.i = phi i32 [ %73, %if.else.i73.i ], [ %72, %do.body25.i.il_get_debug_level.exit75.i_crit_edge ]
  %and27.i = and i32 %retval.0.i74.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %il_get_debug_level.exit75.i.il4965_prepare_legacy_sensitivity_tbl.exit_crit_edge, label %do.end31.i

il_get_debug_level.exit75.i.il4965_prepare_legacy_sensitivity_tbl.exit_crit_edge: ; preds = %il_get_debug_level.exit75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il4965_prepare_legacy_sensitivity_tbl.exit

do.end31.i:                                       ; preds = %il_get_debug_level.exit75.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %il, align 8
  %wiphy33.i = getelementptr inbounds %struct.ieee80211_hw, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wiphy33.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy33.i, align 8
  %dev34.i = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  %78 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %auto_corr_cck.i, align 4
  %80 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %82 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nrg_th_cck.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %79, i32 noundef %81, i32 noundef %83) #9
  br label %il4965_prepare_legacy_sensitivity_tbl.exit

il4965_prepare_legacy_sensitivity_tbl.exit:       ; preds = %do.end31.i, %il_get_debug_level.exit75.i.il4965_prepare_legacy_sensitivity_tbl.exit_crit_edge
  %84 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 256, ptr %cmd, align 2
  %sensitivity_tbl = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 66
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(22) %0, ptr noundef dereferenceable(22) %sensitivity_tbl, i32 22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %il4965_prepare_legacy_sensitivity_tbl.exit
  %85 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i25 = icmp eq i32 %86, 0
  br i1 %tobool.not.i25, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %87 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %87, %if.else.i ], [ %86, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #9
  br label %cleanup

if.end11:                                         ; preds = %il4965_prepare_legacy_sensitivity_tbl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %92 = call ptr @memcpy(ptr %sensitivity_tbl, ptr %0, i32 22)
  %call16 = call i32 @il_send_cmd(ptr noundef %il, ptr noundef nonnull %cmd_out) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end11 ], [ 0, %do.end ], [ 0, %il_get_debug_level.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd_out) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_sensitivity_calibration(ptr noundef %il, ptr nocapture noundef readonly %resp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_sens_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 124
  %0 = ptrtoint ptr %disable_sens_cal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disable_sens_cal, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_flags.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %2 = ptrtoint ptr %filter_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %filter_flags.i.i, align 1
  %4 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %do.body, label %do.body12

do.body:                                          ; preds = %if.end
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %5 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %7 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.else.i ], [ %6, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 30
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %interference_data_flag = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 12
  %12 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %interference_data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %13)
  %cmp23.not = icmp eq i32 %13, 16777216
  br i1 %cmp23.not, label %if.end41, label %do.body26

do.body26:                                        ; preds = %do.body12
  %debug_level.i229 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %14 = ptrtoint ptr %debug_level.i229 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_level.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i230 = icmp eq i32 %15, 0
  br i1 %tobool.not.i230, label %if.else.i231, label %do.body26.il_get_debug_level.exit233_crit_edge

do.body26.il_get_debug_level.exit233_crit_edge:   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit233

if.else.i231:                                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %16 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit233

il_get_debug_level.exit233:                       ; preds = %if.else.i231, %do.body26.il_get_debug_level.exit233_crit_edge
  %retval.0.i232 = phi i32 [ %16, %if.else.i231 ], [ %15, %do.body26.il_get_debug_level.exit233_crit_edge ]
  %and28 = and i32 %retval.0.i232, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %il_get_debug_level.exit233.do.end39_crit_edge, label %do.end33

il_get_debug_level.exit233.do.end39_crit_edge:    ; preds = %il_get_debug_level.exit233
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end33:                                         ; preds = %il_get_debug_level.exit233
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %il, align 8
  %wiphy35 = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy35, align 8
  %dev36 = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #9
  br label %do.end39

do.end39:                                         ; preds = %do.end33, %il_get_debug_level.exit233.do.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  br label %cleanup

if.end41:                                         ; preds = %do.body12
  %channel_load = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 13
  %21 = ptrtoint ptr %channel_load to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %channel_load, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %false_alarm_cnt = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 1, i32 7
  %24 = ptrtoint ptr %false_alarm_cnt to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %false_alarm_cnt, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %false_alarm_cnt42 = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 0, i32 7
  %27 = ptrtoint ptr %false_alarm_cnt42 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %false_alarm_cnt42, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %plcp_err = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 1, i32 2
  %30 = ptrtoint ptr %plcp_err to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %plcp_err, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %plcp_err43 = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %plcp_err43 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %plcp_err43, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %beacon_silence_rssi_a = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 9
  %36 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %beacon_silence_rssi_a, align 1
  %38 = lshr i32 %37, 16
  %beacon_silence_rssi_b = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 10
  %39 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %beacon_silence_rssi_b, align 1
  %41 = lshr i32 %40, 16
  %beacon_silence_rssi_c = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 11
  %42 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %beacon_silence_rssi_c, align 1
  %44 = lshr i32 %43, 16
  %beacon_energy_a = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 18
  %45 = ptrtoint ptr %beacon_energy_a to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %beacon_energy_a, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %beacon_energy_b = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 19
  %48 = ptrtoint ptr %beacon_energy_b to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %beacon_energy_b, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %beacon_energy_c = getelementptr inbounds %struct.il_notif_stats, ptr %resp, i32 0, i32 1, i32 2, i32 20
  %51 = ptrtoint ptr %beacon_energy_c to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %beacon_energy_c, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  %debug_level.i234 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %54 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i235 = icmp eq i32 %55, 0
  br i1 %tobool.not.i235, label %if.else.i236, label %if.end41.il_get_debug_level.exit238_crit_edge

if.end41.il_get_debug_level.exit238_crit_edge:    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit238

if.else.i236:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %56 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit238

il_get_debug_level.exit238:                       ; preds = %if.else.i236, %if.end41.il_get_debug_level.exit238_crit_edge
  %retval.0.i237 = phi i32 [ %56, %if.else.i236 ], [ %55, %if.end41.il_get_debug_level.exit238_crit_edge ]
  %and53 = and i32 %retval.0.i237, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %il_get_debug_level.exit238.do.end64_crit_edge, label %do.end58

il_get_debug_level.exit238.do.end64_crit_edge:    ; preds = %il_get_debug_level.exit238
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end64

do.end58:                                         ; preds = %il_get_debug_level.exit238
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %il, align 8
  %wiphy60 = getelementptr inbounds %struct.ieee80211_hw, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %wiphy60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy60, align 8
  %dev61 = getelementptr inbounds %struct.wiphy, ptr %60, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %23) #9
  br label %do.end64

do.end64:                                         ; preds = %do.end58, %il_get_debug_level.exit238.do.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool65.not = icmp eq i32 %22, 0
  br i1 %tobool65.not, label %do.body67, label %if.end81

do.body67:                                        ; preds = %do.end64
  %61 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i240 = icmp eq i32 %62, 0
  br i1 %tobool.not.i240, label %if.else.i241, label %do.body67.il_get_debug_level.exit243_crit_edge

do.body67.il_get_debug_level.exit243_crit_edge:   ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit243

if.else.i241:                                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %63 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit243

il_get_debug_level.exit243:                       ; preds = %if.else.i241, %do.body67.il_get_debug_level.exit243_crit_edge
  %retval.0.i242 = phi i32 [ %63, %if.else.i241 ], [ %62, %do.body67.il_get_debug_level.exit243_crit_edge ]
  %and69 = and i32 %retval.0.i242, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %il_get_debug_level.exit243.cleanup_crit_edge, label %do.end74

il_get_debug_level.exit243.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit243
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end74:                                         ; preds = %il_get_debug_level.exit243
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %il, align 8
  %wiphy76 = getelementptr inbounds %struct.ieee80211_hw, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %wiphy76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wiphy76, align 8
  %dev77 = getelementptr inbounds %struct.wiphy, ptr %67, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev77, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end81:                                         ; preds = %do.end64
  %last_bad_plcp_cnt_cck = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 8
  %68 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_bad_plcp_cnt_cck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %69)
  %cmp82 = icmp ult i32 %32, %69
  %sub = select i1 %cmp82, i32 0, i32 %69
  %bad_plcp_cck.0 = sub i32 %32, %sub
  %70 = ptrtoint ptr %last_bad_plcp_cnt_cck to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %32, ptr %last_bad_plcp_cnt_cck, align 4
  %last_bad_plcp_cnt_ofdm = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 6
  %71 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %last_bad_plcp_cnt_ofdm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %72)
  %cmp89 = icmp ult i32 %35, %72
  %sub95 = select i1 %cmp89, i32 0, i32 %72
  %bad_plcp_ofdm.0 = sub i32 %35, %sub95
  %73 = ptrtoint ptr %last_bad_plcp_cnt_ofdm to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %35, ptr %last_bad_plcp_cnt_ofdm, align 4
  %last_fa_cnt_ofdm = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 7
  %74 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %last_fa_cnt_ofdm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %75)
  %cmp99 = icmp ult i32 %29, %75
  %sub105 = select i1 %cmp99, i32 0, i32 %75
  %fa_ofdm.0 = sub i32 %29, %sub105
  %76 = ptrtoint ptr %last_fa_cnt_ofdm to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %29, ptr %last_fa_cnt_ofdm, align 4
  %last_fa_cnt_cck = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 9
  %77 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %last_fa_cnt_cck, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %78)
  %cmp109 = icmp ult i32 %26, %78
  %sub115 = select i1 %cmp109, i32 0, i32 %78
  %fa_cck.0 = sub i32 %26, %sub115
  %79 = ptrtoint ptr %last_fa_cnt_cck to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %26, ptr %last_fa_cnt_cck, align 4
  %add119 = add i32 %fa_ofdm.0, %bad_plcp_ofdm.0
  %add120 = add i32 %fa_cck.0, %bad_plcp_cck.0
  %80 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i245 = icmp eq i32 %81, 0
  br i1 %tobool.not.i245, label %if.else.i246, label %if.end81.il_get_debug_level.exit248_crit_edge

if.end81.il_get_debug_level.exit248_crit_edge:    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit248

if.else.i246:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %82 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit248

il_get_debug_level.exit248:                       ; preds = %if.else.i246, %if.end81.il_get_debug_level.exit248_crit_edge
  %retval.0.i247 = phi i32 [ %82, %if.else.i246 ], [ %81, %if.end81.il_get_debug_level.exit248_crit_edge ]
  %and123 = and i32 %retval.0.i247, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %il_get_debug_level.exit248.do.end134_crit_edge, label %do.end128

il_get_debug_level.exit248.do.end134_crit_edge:   ; preds = %il_get_debug_level.exit248
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end128:                                        ; preds = %il_get_debug_level.exit248
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %il, align 8
  %wiphy130 = getelementptr inbounds %struct.ieee80211_hw, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %wiphy130 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %wiphy130, align 8
  %dev131 = getelementptr inbounds %struct.wiphy, ptr %86, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.9, i32 noundef %fa_cck.0, i32 noundef %bad_plcp_cck.0, i32 noundef %fa_ofdm.0, i32 noundef %bad_plcp_ofdm.0) #9
  br label %do.end134

do.end134:                                        ; preds = %do.end128, %il_get_debug_level.exit248.do.end134_crit_edge
  %mul1.i = mul i32 %add119, 204800
  %mul2.i = mul i32 %23, 50
  %mul3.i = mul i32 %23, 5
  %sens.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 21
  %87 = ptrtoint ptr %sens.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sens.i, align 4
  %sensitivity_data.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %mul2.i)
  %cmp.i = icmp ugt i32 %mul1.i, %mul2.i
  br i1 %cmp.i, label %do.body.i, label %if.else.i250

do.body.i:                                        ; preds = %do.end134
  %89 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.il_get_debug_level.exit.i_crit_edge

do.body.i.il_get_debug_level.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %91 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %91, %if.else.i.i ], [ %90, %do.body.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i249 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i249, label %il_get_debug_level.exit.i.do.end7.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end7.i_crit_edge:    ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %mul1.i, i32 noundef %mul2.i) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end7.i_crit_edge
  %96 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sensitivity_data.i, align 4
  %add.i = add i32 %97, 1
  %auto_corr_max_ofdm.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 8
  %98 = ptrtoint ptr %auto_corr_max_ofdm.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %auto_corr_max_ofdm.i, align 2
  %conv.i = zext i16 %99 to i32
  %100 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %conv.i) #6
  %101 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %sensitivity_data.i, align 4
  %auto_corr_ofdm_mrc.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 1
  %102 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %auto_corr_ofdm_mrc.i, align 4
  %add11.i = add i32 %103, 1
  %auto_corr_max_ofdm_mrc.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 9
  %104 = ptrtoint ptr %auto_corr_max_ofdm_mrc.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %auto_corr_max_ofdm_mrc.i, align 2
  %conv12.i = zext i16 %105 to i32
  %106 = tail call i32 @llvm.umin.i32(i32 %add11.i, i32 %conv12.i) #6
  %107 = ptrtoint ptr %auto_corr_ofdm_mrc.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %auto_corr_ofdm_mrc.i, align 4
  %auto_corr_ofdm_x1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 2
  %108 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %auto_corr_ofdm_x1.i, align 4
  %add21.i = add i32 %109, 1
  %auto_corr_max_ofdm_x1.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 10
  %110 = ptrtoint ptr %auto_corr_max_ofdm_x1.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %auto_corr_max_ofdm_x1.i, align 2
  %conv22.i = zext i16 %111 to i32
  %112 = tail call i32 @llvm.umin.i32(i32 %add21.i, i32 %conv22.i) #6
  %113 = ptrtoint ptr %auto_corr_ofdm_x1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %auto_corr_ofdm_x1.i, align 4
  %auto_corr_ofdm_mrc_x1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 3
  %114 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  %add31.i = add i32 %115, 1
  %auto_corr_max_ofdm_mrc_x1.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 11
  %116 = ptrtoint ptr %auto_corr_max_ofdm_mrc_x1.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %auto_corr_max_ofdm_mrc_x1.i, align 2
  %conv32.i = zext i16 %117 to i32
  %118 = tail call i32 @llvm.umin.i32(i32 %add31.i, i32 %conv32.i) #6
  %119 = ptrtoint ptr %auto_corr_ofdm_mrc_x1.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %auto_corr_ofdm_mrc_x1.i, align 4
  br label %il4965_sens_auto_corr_ofdm.exit

if.else.i250:                                     ; preds = %do.end134
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i, i32 %mul3.i)
  %cmp41.i = icmp ult i32 %mul1.i, %mul3.i
  %120 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i2.i = icmp eq i32 %121, 0
  br i1 %cmp41.i, label %do.body44.i, label %do.body102.i

do.body44.i:                                      ; preds = %if.else.i250
  br i1 %tobool.not.i2.i, label %if.else.i3.i, label %do.body44.i.il_get_debug_level.exit5.i_crit_edge

do.body44.i.il_get_debug_level.exit5.i_crit_edge: ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit5.i

if.else.i3.i:                                     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %122 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit5.i

il_get_debug_level.exit5.i:                       ; preds = %if.else.i3.i, %do.body44.i.il_get_debug_level.exit5.i_crit_edge
  %retval.0.i4.i = phi i32 [ %122, %if.else.i3.i ], [ %121, %do.body44.i.il_get_debug_level.exit5.i_crit_edge ]
  %and46.i = and i32 %retval.0.i4.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %il_get_debug_level.exit5.i.do.end57.i_crit_edge, label %do.end51.i

il_get_debug_level.exit5.i.do.end57.i_crit_edge:  ; preds = %il_get_debug_level.exit5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57.i

do.end51.i:                                       ; preds = %il_get_debug_level.exit5.i
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %il, align 8
  %wiphy53.i = getelementptr inbounds %struct.ieee80211_hw, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %wiphy53.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wiphy53.i, align 8
  %dev54.i = getelementptr inbounds %struct.wiphy, ptr %126, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %mul1.i, i32 noundef %mul3.i) #9
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end51.i, %il_get_debug_level.exit5.i.do.end57.i_crit_edge
  %127 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sensitivity_data.i, align 4
  %sub.i = add i32 %128, -1
  %auto_corr_min_ofdm.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 4
  %129 = ptrtoint ptr %auto_corr_min_ofdm.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %auto_corr_min_ofdm.i, align 2
  %conv59.i = zext i16 %130 to i32
  %131 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 %conv59.i) #6
  %132 = ptrtoint ptr %sensitivity_data.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %sensitivity_data.i, align 4
  %auto_corr_ofdm_mrc68.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 1
  %133 = ptrtoint ptr %auto_corr_ofdm_mrc68.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %auto_corr_ofdm_mrc68.i, align 4
  %sub69.i = add i32 %134, -1
  %auto_corr_min_ofdm_mrc.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 5
  %135 = ptrtoint ptr %auto_corr_min_ofdm_mrc.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %auto_corr_min_ofdm_mrc.i, align 2
  %conv70.i = zext i16 %136 to i32
  %137 = tail call i32 @llvm.umax.i32(i32 %sub69.i, i32 %conv70.i) #6
  %138 = ptrtoint ptr %auto_corr_ofdm_mrc68.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %auto_corr_ofdm_mrc68.i, align 4
  %auto_corr_ofdm_x179.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 2
  %139 = ptrtoint ptr %auto_corr_ofdm_x179.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %auto_corr_ofdm_x179.i, align 4
  %sub80.i = add i32 %140, -1
  %auto_corr_min_ofdm_x1.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 6
  %141 = ptrtoint ptr %auto_corr_min_ofdm_x1.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %auto_corr_min_ofdm_x1.i, align 2
  %conv81.i = zext i16 %142 to i32
  %143 = tail call i32 @llvm.umax.i32(i32 %sub80.i, i32 %conv81.i) #6
  %144 = ptrtoint ptr %auto_corr_ofdm_x179.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %auto_corr_ofdm_x179.i, align 4
  %auto_corr_ofdm_mrc_x190.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 3
  %145 = ptrtoint ptr %auto_corr_ofdm_mrc_x190.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %auto_corr_ofdm_mrc_x190.i, align 4
  %sub91.i = add i32 %146, -1
  %auto_corr_min_ofdm_mrc_x1.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %88, i32 0, i32 7
  %147 = ptrtoint ptr %auto_corr_min_ofdm_mrc_x1.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %auto_corr_min_ofdm_mrc_x1.i, align 2
  %conv92.i = zext i16 %148 to i32
  %149 = tail call i32 @llvm.umax.i32(i32 %sub91.i, i32 %conv92.i) #6
  %150 = ptrtoint ptr %auto_corr_ofdm_mrc_x190.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %auto_corr_ofdm_mrc_x190.i, align 4
  br label %il4965_sens_auto_corr_ofdm.exit

do.body102.i:                                     ; preds = %if.else.i250
  br i1 %tobool.not.i2.i, label %if.else.i8.i, label %do.body102.i.il_get_debug_level.exit10.i_crit_edge

do.body102.i.il_get_debug_level.exit10.i_crit_edge: ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit10.i

if.else.i8.i:                                     ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %151 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit10.i

il_get_debug_level.exit10.i:                      ; preds = %if.else.i8.i, %do.body102.i.il_get_debug_level.exit10.i_crit_edge
  %retval.0.i9.i = phi i32 [ %151, %if.else.i8.i ], [ %121, %do.body102.i.il_get_debug_level.exit10.i_crit_edge ]
  %and104.i = and i32 %retval.0.i9.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %il_get_debug_level.exit10.i.il4965_sens_auto_corr_ofdm.exit_crit_edge, label %do.end109.i

il_get_debug_level.exit10.i.il4965_sens_auto_corr_ofdm.exit_crit_edge: ; preds = %il_get_debug_level.exit10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il4965_sens_auto_corr_ofdm.exit

do.end109.i:                                      ; preds = %il_get_debug_level.exit10.i
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %il, align 8
  %wiphy111.i = getelementptr inbounds %struct.ieee80211_hw, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %wiphy111.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %wiphy111.i, align 8
  %dev112.i = getelementptr inbounds %struct.wiphy, ptr %155, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef %mul3.i, i32 noundef %mul1.i, i32 noundef %mul2.i) #9
  br label %il4965_sens_auto_corr_ofdm.exit

il4965_sens_auto_corr_ofdm.exit:                  ; preds = %do.end109.i, %il_get_debug_level.exit10.i.il4965_sens_auto_corr_ofdm.exit_crit_edge, %do.end57.i, %do.end7.i
  %156 = ptrtoint ptr %sens.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sens.i, align 4
  %nrg_auto_corr_silence_diff.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 18
  %158 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %nrg_auto_corr_silence_diff.i, align 4
  %conv10.i = and i32 %41, 255
  %conv11.i = and i32 %44, 255
  %159 = tail call i32 @llvm.umax.i32(i32 %conv10.i, i32 %conv11.i) #6
  %conv17.i = and i32 %38, 255
  %160 = tail call i32 @llvm.umax.i32(i32 %conv17.i, i32 %159) #6
  %conv27.i = trunc i32 %160 to i8
  %nrg_silence_idx.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 16
  %161 = ptrtoint ptr %nrg_silence_idx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nrg_silence_idx.i, align 4
  %arrayidx.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 %162
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv27.i, ptr %arrayidx.i, align 1
  %164 = load i32, ptr %nrg_silence_idx.i, align 4
  %inc.i = add i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %inc.i)
  %cmp30.i = icmp ugt i32 %inc.i, 19
  %storemerge2.i = select i1 %cmp30.i, i32 0, i32 %inc.i
  %165 = ptrtoint ptr %nrg_silence_idx.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %storemerge2.i, ptr %nrg_silence_idx.i, align 4
  %arrayidx36.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 0
  %166 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx36.i, align 1
  %arrayidx36.1.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 1
  %168 = ptrtoint ptr %arrayidx36.1.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx36.1.i, align 1
  %170 = tail call i8 @llvm.umax.i8(i8 %167, i8 %169) #6
  %arrayidx36.2.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 2
  %171 = ptrtoint ptr %arrayidx36.2.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx36.2.i, align 1
  %173 = tail call i8 @llvm.umax.i8(i8 %170, i8 %172) #6
  %arrayidx36.3.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 3
  %174 = ptrtoint ptr %arrayidx36.3.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx36.3.i, align 1
  %176 = tail call i8 @llvm.umax.i8(i8 %173, i8 %175) #6
  %arrayidx36.4.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 4
  %177 = ptrtoint ptr %arrayidx36.4.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx36.4.i, align 1
  %179 = tail call i8 @llvm.umax.i8(i8 %176, i8 %178) #6
  %arrayidx36.5.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 5
  %180 = ptrtoint ptr %arrayidx36.5.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx36.5.i, align 1
  %182 = tail call i8 @llvm.umax.i8(i8 %179, i8 %181) #6
  %arrayidx36.6.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 6
  %183 = ptrtoint ptr %arrayidx36.6.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx36.6.i, align 1
  %185 = tail call i8 @llvm.umax.i8(i8 %182, i8 %184) #6
  %arrayidx36.7.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 7
  %186 = ptrtoint ptr %arrayidx36.7.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx36.7.i, align 1
  %188 = tail call i8 @llvm.umax.i8(i8 %185, i8 %187) #6
  %arrayidx36.8.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 8
  %189 = ptrtoint ptr %arrayidx36.8.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx36.8.i, align 1
  %191 = tail call i8 @llvm.umax.i8(i8 %188, i8 %190) #6
  %arrayidx36.9.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 9
  %192 = ptrtoint ptr %arrayidx36.9.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx36.9.i, align 1
  %194 = tail call i8 @llvm.umax.i8(i8 %191, i8 %193) #6
  %arrayidx36.10.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 10
  %195 = ptrtoint ptr %arrayidx36.10.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx36.10.i, align 1
  %197 = tail call i8 @llvm.umax.i8(i8 %194, i8 %196) #6
  %arrayidx36.11.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 11
  %198 = ptrtoint ptr %arrayidx36.11.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx36.11.i, align 1
  %200 = tail call i8 @llvm.umax.i8(i8 %197, i8 %199) #6
  %arrayidx36.12.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 12
  %201 = ptrtoint ptr %arrayidx36.12.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx36.12.i, align 1
  %203 = tail call i8 @llvm.umax.i8(i8 %200, i8 %202) #6
  %arrayidx36.13.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 13
  %204 = ptrtoint ptr %arrayidx36.13.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx36.13.i, align 1
  %206 = tail call i8 @llvm.umax.i8(i8 %203, i8 %205) #6
  %arrayidx36.14.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 14
  %207 = ptrtoint ptr %arrayidx36.14.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx36.14.i, align 1
  %209 = tail call i8 @llvm.umax.i8(i8 %206, i8 %208) #6
  %arrayidx36.15.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 15
  %210 = ptrtoint ptr %arrayidx36.15.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx36.15.i, align 1
  %212 = tail call i8 @llvm.umax.i8(i8 %209, i8 %211) #6
  %arrayidx36.16.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 16
  %213 = ptrtoint ptr %arrayidx36.16.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx36.16.i, align 1
  %215 = tail call i8 @llvm.umax.i8(i8 %212, i8 %214) #6
  %arrayidx36.17.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 17
  %216 = ptrtoint ptr %arrayidx36.17.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx36.17.i, align 1
  %218 = tail call i8 @llvm.umax.i8(i8 %215, i8 %217) #6
  %arrayidx36.18.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 18
  %219 = ptrtoint ptr %arrayidx36.18.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx36.18.i, align 1
  %221 = tail call i8 @llvm.umax.i8(i8 %218, i8 %220) #6
  %arrayidx36.19.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 13, i32 19
  %222 = ptrtoint ptr %arrayidx36.19.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx36.19.i, align 1
  %224 = tail call i8 @llvm.umax.i8(i8 %221, i8 %223) #6
  %225 = zext i8 %224 to i32
  %mul1.i254 = mul i32 %add120, 204800
  %226 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i.i257 = icmp eq i32 %227, 0
  br i1 %tobool.not.i.i257, label %if.else.i.i258, label %il4965_sens_auto_corr_ofdm.exit.il_get_debug_level.exit.i262_crit_edge

il4965_sens_auto_corr_ofdm.exit.il_get_debug_level.exit.i262_crit_edge: ; preds = %il4965_sens_auto_corr_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit.i262

if.else.i.i258:                                   ; preds = %il4965_sens_auto_corr_ofdm.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %228 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i262

il_get_debug_level.exit.i262:                     ; preds = %if.else.i.i258, %il4965_sens_auto_corr_ofdm.exit.il_get_debug_level.exit.i262_crit_edge
  %retval.0.i.i259 = phi i32 [ %228, %if.else.i.i258 ], [ %227, %il4965_sens_auto_corr_ofdm.exit.il_get_debug_level.exit.i262_crit_edge ]
  %and46.i260 = and i32 %retval.0.i.i259, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i260)
  %tobool.not.i261 = icmp eq i32 %and46.i260, 0
  br i1 %tobool.not.i261, label %il_get_debug_level.exit.i262.do.end54.i_crit_edge, label %do.end.i265

il_get_debug_level.exit.i262.do.end54.i_crit_edge: ; preds = %il_get_debug_level.exit.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i

do.end.i265:                                      ; preds = %il_get_debug_level.exit.i262
  call void @__sanitizer_cov_trace_pc() #8
  %229 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %il, align 8
  %wiphy.i263 = getelementptr inbounds %struct.ieee80211_hw, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %wiphy.i263 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %wiphy.i263, align 8
  %dev.i264 = getelementptr inbounds %struct.wiphy, ptr %232, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i264, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %conv17.i, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %225) #9
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end.i265, %il_get_debug_level.exit.i262.do.end54.i_crit_edge
  %nrg_energy_idx.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 15
  %233 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %nrg_energy_idx.i, align 4
  %235 = tail call i32 @llvm.umin.i32(i32 %50, i32 %53) #6
  %236 = tail call i32 @llvm.umin.i32(i32 %47, i32 %235) #6
  %nrg_value.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 12
  %arrayidx69.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 %234
  %237 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx69.i, align 4
  %238 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %nrg_energy_idx.i, align 4
  %inc71.i = add i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc71.i)
  %cmp73.i = icmp ugt i32 %inc71.i, 9
  %storemerge1.i = select i1 %cmp73.i, i32 0, i32 %inc71.i
  %240 = ptrtoint ptr %nrg_energy_idx.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %storemerge1.i, ptr %nrg_energy_idx.i, align 4
  %241 = ptrtoint ptr %nrg_value.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %nrg_value.i, align 4
  %arrayidx85.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 1
  %243 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx85.i, align 4
  %245 = tail call i32 @llvm.umax.i32(i32 %242, i32 %244) #6
  %arrayidx85.1.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 2
  %246 = ptrtoint ptr %arrayidx85.1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx85.1.i, align 4
  %248 = tail call i32 @llvm.umax.i32(i32 %245, i32 %247) #6
  %arrayidx85.2.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 3
  %249 = ptrtoint ptr %arrayidx85.2.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx85.2.i, align 4
  %251 = tail call i32 @llvm.umax.i32(i32 %248, i32 %250) #6
  %arrayidx85.3.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 4
  %252 = ptrtoint ptr %arrayidx85.3.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx85.3.i, align 4
  %254 = tail call i32 @llvm.umax.i32(i32 %251, i32 %253) #6
  %arrayidx85.4.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 5
  %255 = ptrtoint ptr %arrayidx85.4.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx85.4.i, align 4
  %257 = tail call i32 @llvm.umax.i32(i32 %254, i32 %256) #6
  %arrayidx85.5.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 6
  %258 = ptrtoint ptr %arrayidx85.5.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx85.5.i, align 4
  %260 = tail call i32 @llvm.umax.i32(i32 %257, i32 %259) #6
  %arrayidx85.6.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 7
  %261 = ptrtoint ptr %arrayidx85.6.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx85.6.i, align 4
  %263 = tail call i32 @llvm.umax.i32(i32 %260, i32 %262) #6
  %arrayidx85.7.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 8
  %264 = ptrtoint ptr %arrayidx85.7.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx85.7.i, align 4
  %266 = tail call i32 @llvm.umax.i32(i32 %263, i32 %265) #6
  %arrayidx85.8.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 64, i32 12, i32 9
  %267 = ptrtoint ptr %arrayidx85.8.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx85.8.i, align 4
  %269 = tail call i32 @llvm.umax.i32(i32 %266, i32 %268) #6
  %add.i266 = add i32 %269, 6
  %270 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.i4.i = icmp eq i32 %271, 0
  br i1 %tobool.not.i4.i, label %if.else.i5.i, label %do.end54.i.il_get_debug_level.exit7.i_crit_edge

do.end54.i.il_get_debug_level.exit7.i_crit_edge:  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit7.i

if.else.i5.i:                                     ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %272 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit7.i

il_get_debug_level.exit7.i:                       ; preds = %if.else.i5.i, %do.end54.i.il_get_debug_level.exit7.i_crit_edge
  %retval.0.i6.i = phi i32 [ %272, %if.else.i5.i ], [ %271, %do.end54.i.il_get_debug_level.exit7.i_crit_edge ]
  %and98.i = and i32 %retval.0.i6.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i)
  %tobool99.not.i = icmp eq i32 %and98.i, 0
  br i1 %tobool99.not.i, label %il_get_debug_level.exit7.i.do.end112.i_crit_edge, label %do.end103.i

il_get_debug_level.exit7.i.do.end112.i_crit_edge: ; preds = %il_get_debug_level.exit7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end112.i

do.end103.i:                                      ; preds = %il_get_debug_level.exit7.i
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %il, align 8
  %wiphy105.i = getelementptr inbounds %struct.ieee80211_hw, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %wiphy105.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %wiphy105.i, align 8
  %dev106.i = getelementptr inbounds %struct.wiphy, ptr %276, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %47, i32 noundef %50, i32 noundef %53, i32 noundef %269) #9
  br label %do.end112.i

do.end112.i:                                      ; preds = %do.end103.i, %il_get_debug_level.exit7.i.do.end112.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i254, i32 %mul3.i)
  %cmp113.i = icmp ult i32 %mul1.i254, %mul3.i
  %num_in_cck_no_fa.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 19
  br i1 %cmp113.i, label %if.then115.i, label %do.end112.i.do.body119.i_crit_edge

do.end112.i.do.body119.i_crit_edge:               ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119.i

if.then115.i:                                     ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  %277 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %num_in_cck_no_fa.i, align 4
  %inc116.i = add i32 %278, 1
  br label %do.body119.i

do.body119.i:                                     ; preds = %if.then115.i, %do.end112.i.do.body119.i_crit_edge
  %inc116.sink.i = phi i32 [ %inc116.i, %if.then115.i ], [ 0, %do.end112.i.do.body119.i_crit_edge ]
  %279 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %inc116.sink.i, ptr %num_in_cck_no_fa.i, align 4
  %280 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i9.i = icmp eq i32 %281, 0
  br i1 %tobool.not.i9.i, label %if.else.i10.i, label %do.body119.i.il_get_debug_level.exit12.i_crit_edge

do.body119.i.il_get_debug_level.exit12.i_crit_edge: ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit12.i

if.else.i10.i:                                    ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %282 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit12.i

il_get_debug_level.exit12.i:                      ; preds = %if.else.i10.i, %do.body119.i.il_get_debug_level.exit12.i_crit_edge
  %retval.0.i11.i = phi i32 [ %282, %if.else.i10.i ], [ %281, %do.body119.i.il_get_debug_level.exit12.i_crit_edge ]
  %and121.i = and i32 %retval.0.i11.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %il_get_debug_level.exit12.i.do.end133.i_crit_edge, label %do.end126.i

il_get_debug_level.exit12.i.do.end133.i_crit_edge: ; preds = %il_get_debug_level.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end133.i

do.end126.i:                                      ; preds = %il_get_debug_level.exit12.i
  call void @__sanitizer_cov_trace_pc() #8
  %283 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %il, align 8
  %wiphy128.i = getelementptr inbounds %struct.ieee80211_hw, ptr %284, i32 0, i32 1
  %285 = ptrtoint ptr %wiphy128.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %wiphy128.i, align 8
  %dev129.i = getelementptr inbounds %struct.wiphy, ptr %286, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129.i, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.61, i32 noundef %inc116.sink.i) #9
  br label %do.end133.i

do.end133.i:                                      ; preds = %do.end126.i, %il_get_debug_level.exit12.i.do.end133.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i254, i32 %mul2.i)
  %cmp134.i = icmp ugt i32 %mul1.i254, %mul2.i
  br i1 %cmp134.i, label %land.lhs.true.i, label %do.end133.i.if.else169.i_crit_edge

do.end133.i.if.else169.i_crit_edge:               ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else169.i

land.lhs.true.i:                                  ; preds = %do.end133.i
  %auto_corr_cck.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 4
  %287 = ptrtoint ptr %auto_corr_cck.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %auto_corr_cck.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %288)
  %cmp136.i = icmp ugt i32 %288, 160
  br i1 %cmp136.i, label %do.body139.i, label %land.lhs.true.i.if.else169.i_crit_edge

land.lhs.true.i.if.else169.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else169.i

do.body139.i:                                     ; preds = %land.lhs.true.i
  %289 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool.not.i14.i = icmp eq i32 %290, 0
  br i1 %tobool.not.i14.i, label %if.else.i15.i, label %do.body139.i.il_get_debug_level.exit17.i_crit_edge

do.body139.i.il_get_debug_level.exit17.i_crit_edge: ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit17.i

if.else.i15.i:                                    ; preds = %do.body139.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %291 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit17.i

il_get_debug_level.exit17.i:                      ; preds = %if.else.i15.i, %do.body139.i.il_get_debug_level.exit17.i_crit_edge
  %retval.0.i16.i = phi i32 [ %291, %if.else.i15.i ], [ %290, %do.body139.i.il_get_debug_level.exit17.i_crit_edge ]
  %and141.i = and i32 %retval.0.i16.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141.i)
  %tobool142.not.i = icmp eq i32 %and141.i, 0
  br i1 %tobool142.not.i, label %il_get_debug_level.exit17.i.do.body153.i_crit_edge, label %do.end146.i

il_get_debug_level.exit17.i.do.body153.i_crit_edge: ; preds = %il_get_debug_level.exit17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body153.i

do.end146.i:                                      ; preds = %il_get_debug_level.exit17.i
  call void @__sanitizer_cov_trace_pc() #8
  %292 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %il, align 8
  %wiphy148.i = getelementptr inbounds %struct.ieee80211_hw, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %wiphy148.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %wiphy148.i, align 8
  %dev149.i = getelementptr inbounds %struct.wiphy, ptr %295, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev149.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %mul1.i254, i32 noundef %mul2.i) #9
  br label %do.body153.i

do.body153.i:                                     ; preds = %do.end146.i, %il_get_debug_level.exit17.i.do.body153.i_crit_edge
  %296 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool.not.i19.i = icmp eq i32 %297, 0
  br i1 %tobool.not.i19.i, label %if.else.i20.i, label %do.body153.i.il_get_debug_level.exit22.i_crit_edge

do.body153.i.il_get_debug_level.exit22.i_crit_edge: ; preds = %do.body153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit22.i

if.else.i20.i:                                    ; preds = %do.body153.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %298 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit22.i

il_get_debug_level.exit22.i:                      ; preds = %if.else.i20.i, %do.body153.i.il_get_debug_level.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %298, %if.else.i20.i ], [ %297, %do.body153.i.il_get_debug_level.exit22.i_crit_edge ]
  %and155.i = and i32 %retval.0.i21.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %il_get_debug_level.exit22.i.do.end166.i_crit_edge, label %do.end160.i

il_get_debug_level.exit22.i.do.end166.i_crit_edge: ; preds = %il_get_debug_level.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end166.i

do.end160.i:                                      ; preds = %il_get_debug_level.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  %299 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %il, align 8
  %wiphy162.i = getelementptr inbounds %struct.ieee80211_hw, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %wiphy162.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %wiphy162.i, align 8
  %dev163.i = getelementptr inbounds %struct.wiphy, ptr %302, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev163.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.61) #9
  br label %do.end166.i

do.end166.i:                                      ; preds = %do.end160.i, %il_get_debug_level.exit22.i.do.end166.i_crit_edge
  %nrg_curr_state.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 10
  %303 = ptrtoint ptr %nrg_curr_state.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %nrg_curr_state.i, align 4
  %nrg_silence_ref.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 14
  %304 = ptrtoint ptr %nrg_silence_ref.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %225, ptr %nrg_silence_ref.i, align 4
  %nrg_th_cck.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %305 = ptrtoint ptr %nrg_th_cck.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %nrg_th_cck.i, align 4
  %sub167.i = add i32 %306, -2
  store i32 %sub167.i, ptr %nrg_th_cck.i, align 4
  br label %if.end290.i

if.else169.i:                                     ; preds = %land.lhs.true.i.if.else169.i_crit_edge, %do.end133.i.if.else169.i_crit_edge
  br i1 %cmp113.i, label %if.then172.i, label %do.body244.i

if.then172.i:                                     ; preds = %if.else169.i
  %nrg_curr_state173.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 10
  %307 = ptrtoint ptr %nrg_curr_state173.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 1, ptr %nrg_curr_state173.i, align 4
  %nrg_silence_ref174.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 14
  %308 = ptrtoint ptr %nrg_silence_ref174.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %nrg_silence_ref174.i, align 4
  %sub175.i = sub i32 %309, %225
  %310 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %sub175.i, ptr %nrg_auto_corr_silence_diff.i, align 4
  %311 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool.not.i24.i = icmp eq i32 %312, 0
  br i1 %tobool.not.i24.i, label %if.else.i25.i, label %if.then172.i.il_get_debug_level.exit27.i_crit_edge

if.then172.i.il_get_debug_level.exit27.i_crit_edge: ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit27.i

if.else.i25.i:                                    ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %313 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit27.i

il_get_debug_level.exit27.i:                      ; preds = %if.else.i25.i, %if.then172.i.il_get_debug_level.exit27.i_crit_edge
  %retval.0.i26.i = phi i32 [ %313, %if.else.i25.i ], [ %312, %if.then172.i.il_get_debug_level.exit27.i_crit_edge ]
  %and179.i = and i32 %retval.0.i26.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %il_get_debug_level.exit27.i.do.end191.i_crit_edge, label %do.end184.i

il_get_debug_level.exit27.i.do.end191.i_crit_edge: ; preds = %il_get_debug_level.exit27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191.i

do.end184.i:                                      ; preds = %il_get_debug_level.exit27.i
  call void @__sanitizer_cov_trace_pc() #8
  %314 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %il, align 8
  %wiphy186.i = getelementptr inbounds %struct.ieee80211_hw, ptr %315, i32 0, i32 1
  %316 = ptrtoint ptr %wiphy186.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %wiphy186.i, align 8
  %dev187.i = getelementptr inbounds %struct.wiphy, ptr %317, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev187.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.61, i32 noundef %mul1.i254, i32 noundef %mul3.i, i32 noundef %sub175.i) #9
  br label %do.end191.i

do.end191.i:                                      ; preds = %do.end184.i, %il_get_debug_level.exit27.i.do.end191.i_crit_edge
  %nrg_prev_state.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 11
  %318 = ptrtoint ptr %nrg_prev_state.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %nrg_prev_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %cmp192.not.i = icmp eq i32 %319, 0
  br i1 %cmp192.not.i, label %do.end191.i.do.body228.i_crit_edge, label %land.lhs.true194.i

do.end191.i.do.body228.i_crit_edge:               ; preds = %do.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body228.i

land.lhs.true194.i:                               ; preds = %do.end191.i
  %320 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %nrg_auto_corr_silence_diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %321)
  %cmp196.i = icmp sgt i32 %321, 2
  br i1 %cmp196.i, label %land.lhs.true194.i.do.body202.i_crit_edge, label %lor.lhs.false.i

land.lhs.true194.i.do.body202.i_crit_edge:        ; preds = %land.lhs.true194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body202.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true194.i
  %322 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %num_in_cck_no_fa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %323)
  %cmp199.i = icmp ugt i32 %323, 100
  br i1 %cmp199.i, label %lor.lhs.false.i.do.body202.i_crit_edge, label %lor.lhs.false.i.do.body228.i_crit_edge

lor.lhs.false.i.do.body228.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body228.i

lor.lhs.false.i.do.body202.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body202.i

do.body202.i:                                     ; preds = %lor.lhs.false.i.do.body202.i_crit_edge, %land.lhs.true194.i.do.body202.i_crit_edge
  %324 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool.not.i29.i = icmp eq i32 %325, 0
  br i1 %tobool.not.i29.i, label %if.else.i30.i, label %do.body202.i.il_get_debug_level.exit32.i_crit_edge

do.body202.i.il_get_debug_level.exit32.i_crit_edge: ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit32.i

if.else.i30.i:                                    ; preds = %do.body202.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %326 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit32.i

il_get_debug_level.exit32.i:                      ; preds = %if.else.i30.i, %do.body202.i.il_get_debug_level.exit32.i_crit_edge
  %retval.0.i31.i = phi i32 [ %326, %if.else.i30.i ], [ %325, %do.body202.i.il_get_debug_level.exit32.i_crit_edge ]
  %and204.i = and i32 %retval.0.i31.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204.i)
  %tobool205.not.i = icmp eq i32 %and204.i, 0
  br i1 %tobool205.not.i, label %il_get_debug_level.exit32.i.do.end215.i_crit_edge, label %do.end209.i

il_get_debug_level.exit32.i.do.end215.i_crit_edge: ; preds = %il_get_debug_level.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end215.i

do.end209.i:                                      ; preds = %il_get_debug_level.exit32.i
  call void @__sanitizer_cov_trace_pc() #8
  %327 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %il, align 8
  %wiphy211.i = getelementptr inbounds %struct.ieee80211_hw, ptr %328, i32 0, i32 1
  %329 = ptrtoint ptr %wiphy211.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %wiphy211.i, align 8
  %dev212.i = getelementptr inbounds %struct.wiphy, ptr %330, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev212.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.61) #9
  br label %do.end215.i

do.end215.i:                                      ; preds = %do.end209.i, %il_get_debug_level.exit32.i.do.end215.i_crit_edge
  %nrg_th_cck216.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %331 = ptrtoint ptr %nrg_th_cck216.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %nrg_th_cck216.i, align 4
  %add217.i = add i32 %332, 2
  %333 = ptrtoint ptr %157 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %157, align 2
  %conv218.i = zext i16 %334 to i32
  %335 = tail call i32 @llvm.umin.i32(i32 %add217.i, i32 %conv218.i) #6
  %336 = ptrtoint ptr %nrg_th_cck216.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %335, ptr %nrg_th_cck216.i, align 4
  br label %if.end290.i

do.body228.i:                                     ; preds = %lor.lhs.false.i.do.body228.i_crit_edge, %do.end191.i.do.body228.i_crit_edge
  %337 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %tobool.not.i34.i = icmp eq i32 %338, 0
  br i1 %tobool.not.i34.i, label %if.else.i35.i, label %do.body228.i.il_get_debug_level.exit37.i_crit_edge

do.body228.i.il_get_debug_level.exit37.i_crit_edge: ; preds = %do.body228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit37.i

if.else.i35.i:                                    ; preds = %do.body228.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %339 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit37.i

il_get_debug_level.exit37.i:                      ; preds = %if.else.i35.i, %do.body228.i.il_get_debug_level.exit37.i_crit_edge
  %retval.0.i36.i = phi i32 [ %339, %if.else.i35.i ], [ %338, %do.body228.i.il_get_debug_level.exit37.i_crit_edge ]
  %and230.i = and i32 %retval.0.i36.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230.i)
  %tobool231.not.i = icmp eq i32 %and230.i, 0
  br i1 %tobool231.not.i, label %il_get_debug_level.exit37.i.if.end290.i_crit_edge, label %do.end235.i

il_get_debug_level.exit37.i.if.end290.i_crit_edge: ; preds = %il_get_debug_level.exit37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end290.i

do.end235.i:                                      ; preds = %il_get_debug_level.exit37.i
  call void @__sanitizer_cov_trace_pc() #8
  %340 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %il, align 8
  %wiphy237.i = getelementptr inbounds %struct.ieee80211_hw, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %wiphy237.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %wiphy237.i, align 8
  %dev238.i = getelementptr inbounds %struct.wiphy, ptr %343, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev238.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61) #9
  br label %if.end290.i

do.body244.i:                                     ; preds = %if.else169.i
  %344 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.not.i39.i = icmp eq i32 %345, 0
  br i1 %tobool.not.i39.i, label %if.else.i40.i, label %do.body244.i.il_get_debug_level.exit42.i_crit_edge

do.body244.i.il_get_debug_level.exit42.i_crit_edge: ; preds = %do.body244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit42.i

if.else.i40.i:                                    ; preds = %do.body244.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %346 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit42.i

il_get_debug_level.exit42.i:                      ; preds = %if.else.i40.i, %do.body244.i.il_get_debug_level.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %346, %if.else.i40.i ], [ %345, %do.body244.i.il_get_debug_level.exit42.i_crit_edge ]
  %and246.i = and i32 %retval.0.i41.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %il_get_debug_level.exit42.i.do.end257.i_crit_edge, label %do.end251.i

il_get_debug_level.exit42.i.do.end257.i_crit_edge: ; preds = %il_get_debug_level.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end257.i

do.end251.i:                                      ; preds = %il_get_debug_level.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  %347 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %il, align 8
  %wiphy253.i = getelementptr inbounds %struct.ieee80211_hw, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %wiphy253.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wiphy253.i, align 8
  %dev254.i = getelementptr inbounds %struct.wiphy, ptr %350, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev254.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.61) #9
  br label %do.end257.i

do.end257.i:                                      ; preds = %do.end251.i, %il_get_debug_level.exit42.i.do.end257.i_crit_edge
  %nrg_curr_state258.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 10
  %351 = ptrtoint ptr %nrg_curr_state258.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 2, ptr %nrg_curr_state258.i, align 4
  %nrg_silence_ref259.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 14
  %352 = ptrtoint ptr %nrg_silence_ref259.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %225, ptr %nrg_silence_ref259.i, align 4
  %nrg_prev_state260.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 11
  %353 = ptrtoint ptr %nrg_prev_state260.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %nrg_prev_state260.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp261.i = icmp eq i32 %354, 0
  br i1 %cmp261.i, label %do.body264.i, label %do.end257.i.if.end290.i_crit_edge

do.end257.i.if.end290.i_crit_edge:                ; preds = %do.end257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end290.i

do.body264.i:                                     ; preds = %do.end257.i
  %355 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %tobool.not.i44.i = icmp eq i32 %356, 0
  br i1 %tobool.not.i44.i, label %if.else.i45.i, label %do.body264.i.il_get_debug_level.exit47.i_crit_edge

do.body264.i.il_get_debug_level.exit47.i_crit_edge: ; preds = %do.body264.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit47.i

if.else.i45.i:                                    ; preds = %do.body264.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %357 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit47.i

il_get_debug_level.exit47.i:                      ; preds = %if.else.i45.i, %do.body264.i.il_get_debug_level.exit47.i_crit_edge
  %retval.0.i46.i = phi i32 [ %357, %if.else.i45.i ], [ %356, %do.body264.i.il_get_debug_level.exit47.i_crit_edge ]
  %and266.i = and i32 %retval.0.i46.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %il_get_debug_level.exit47.i.do.end277.i_crit_edge, label %do.end271.i

il_get_debug_level.exit47.i.do.end277.i_crit_edge: ; preds = %il_get_debug_level.exit47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end277.i

do.end271.i:                                      ; preds = %il_get_debug_level.exit47.i
  call void @__sanitizer_cov_trace_pc() #8
  %358 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %il, align 8
  %wiphy273.i = getelementptr inbounds %struct.ieee80211_hw, ptr %359, i32 0, i32 1
  %360 = ptrtoint ptr %wiphy273.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %wiphy273.i, align 8
  %dev274.i = getelementptr inbounds %struct.wiphy, ptr %361, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev274.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.61) #9
  br label %do.end277.i

do.end277.i:                                      ; preds = %do.end271.i, %il_get_debug_level.exit47.i.do.end277.i_crit_edge
  %nrg_th_cck278.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %362 = ptrtoint ptr %nrg_th_cck278.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %nrg_th_cck278.i, align 4
  %add279.i = add i32 %269, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %363, i32 %add279.i)
  %cmp280.i = icmp ugt i32 %363, %add279.i
  br i1 %cmp280.i, label %if.then282.i, label %if.else285.i

if.then282.i:                                     ; preds = %do.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub284.i = add i32 %363, -8
  %364 = ptrtoint ptr %nrg_th_cck278.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 %sub284.i, ptr %nrg_th_cck278.i, align 4
  br label %if.end290.i

if.else285.i:                                     ; preds = %do.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  %365 = ptrtoint ptr %nrg_th_cck278.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %add.i266, ptr %nrg_th_cck278.i, align 4
  br label %if.end290.i

if.end290.i:                                      ; preds = %if.else285.i, %if.then282.i, %do.end257.i.if.end290.i_crit_edge, %do.end235.i, %il_get_debug_level.exit37.i.if.end290.i_crit_edge, %do.end215.i, %do.end166.i
  %nrg_th_cck291.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 17
  %366 = ptrtoint ptr %nrg_th_cck291.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %nrg_th_cck291.i, align 4
  %368 = tail call i32 @llvm.umax.i32(i32 %add.i266, i32 %367) #6
  %369 = ptrtoint ptr %nrg_th_cck291.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %nrg_th_cck291.i, align 4
  %370 = ptrtoint ptr %debug_level.i234 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %debug_level.i234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %371)
  %tobool.not.i49.i = icmp eq i32 %371, 0
  br i1 %tobool.not.i49.i, label %if.else.i50.i, label %if.end290.i.il_get_debug_level.exit52.i_crit_edge

if.end290.i.il_get_debug_level.exit52.i_crit_edge: ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit52.i

if.else.i50.i:                                    ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %372 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit52.i

il_get_debug_level.exit52.i:                      ; preds = %if.else.i50.i, %if.end290.i.il_get_debug_level.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ %372, %if.else.i50.i ], [ %371, %if.end290.i.il_get_debug_level.exit52.i_crit_edge ]
  %and302.i = and i32 %retval.0.i51.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and302.i)
  %tobool303.not.i = icmp eq i32 %and302.i, 0
  br i1 %tobool303.not.i, label %il_get_debug_level.exit52.i.do.end314.i_crit_edge, label %do.end307.i

il_get_debug_level.exit52.i.do.end314.i_crit_edge: ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end314.i

do.end307.i:                                      ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  %373 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %il, align 8
  %wiphy309.i = getelementptr inbounds %struct.ieee80211_hw, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %wiphy309.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %wiphy309.i, align 8
  %dev310.i = getelementptr inbounds %struct.wiphy, ptr %376, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev310.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.61, i32 noundef %368) #9
  br label %do.end314.i

do.end314.i:                                      ; preds = %do.end307.i, %il_get_debug_level.exit52.i.do.end314.i_crit_edge
  %nrg_curr_state315.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 10
  %377 = ptrtoint ptr %nrg_curr_state315.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %nrg_curr_state315.i, align 4
  %nrg_prev_state316.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 11
  %379 = ptrtoint ptr %nrg_prev_state316.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %378, ptr %nrg_prev_state316.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i254, i32 %mul3.i)
  %cmp317.i = icmp ugt i32 %mul1.i254, %mul3.i
  br i1 %cmp317.i, label %if.then319.i, label %if.else348.i

if.then319.i:                                     ; preds = %do.end314.i
  %auto_corr_cck320.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 4
  %380 = ptrtoint ptr %auto_corr_cck320.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %auto_corr_cck320.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %381)
  %cmp321.i = icmp ult i32 %381, 160
  br i1 %cmp321.i, label %if.then319.i.if.end337.i_crit_edge, label %if.else325.i

if.then319.i.if.end337.i_crit_edge:               ; preds = %if.then319.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end337.i

if.else325.i:                                     ; preds = %if.then319.i
  call void @__sanitizer_cov_trace_pc() #8
  %add327.i = add i32 %381, 3
  %auto_corr_max_cck.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %157, i32 0, i32 12
  %382 = ptrtoint ptr %auto_corr_max_cck.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %auto_corr_max_cck.i, align 2
  %conv328.i = zext i16 %383 to i32
  %384 = tail call i32 @llvm.umin.i32(i32 %add327.i, i32 %conv328.i) #6
  br label %if.end337.i

if.end337.i:                                      ; preds = %if.else325.i, %if.then319.i.if.end337.i_crit_edge
  %storemerge.i = phi i32 [ %384, %if.else325.i ], [ 161, %if.then319.i.if.end337.i_crit_edge ]
  %385 = ptrtoint ptr %auto_corr_cck320.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %storemerge.i, ptr %auto_corr_cck320.i, align 4
  %auto_corr_cck_mrc.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 5
  %386 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %auto_corr_cck_mrc.i, align 4
  %add338.i = add i32 %387, 3
  %auto_corr_max_cck_mrc.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %157, i32 0, i32 13
  %388 = ptrtoint ptr %auto_corr_max_cck_mrc.i to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %auto_corr_max_cck_mrc.i, align 2
  %conv339.i = zext i16 %389 to i32
  %390 = tail call i32 @llvm.umin.i32(i32 %add338.i, i32 %conv339.i) #6
  %391 = ptrtoint ptr %auto_corr_cck_mrc.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %390, ptr %auto_corr_cck_mrc.i, align 4
  br label %il4965_sens_energy_cck.exit

if.else348.i:                                     ; preds = %do.end314.i
  br i1 %cmp113.i, label %land.lhs.true351.i, label %if.else348.i.il4965_sens_energy_cck.exit_crit_edge

if.else348.i.il4965_sens_energy_cck.exit_crit_edge: ; preds = %if.else348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il4965_sens_energy_cck.exit

land.lhs.true351.i:                               ; preds = %if.else348.i
  %392 = ptrtoint ptr %nrg_auto_corr_silence_diff.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %nrg_auto_corr_silence_diff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %393)
  %cmp353.i = icmp sgt i32 %393, 2
  br i1 %cmp353.i, label %land.lhs.true351.i.if.then359.i_crit_edge, label %lor.lhs.false355.i

land.lhs.true351.i.if.then359.i_crit_edge:        ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then359.i

lor.lhs.false355.i:                               ; preds = %land.lhs.true351.i
  %394 = ptrtoint ptr %num_in_cck_no_fa.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %num_in_cck_no_fa.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %395)
  %cmp357.i = icmp ugt i32 %395, 100
  br i1 %cmp357.i, label %lor.lhs.false355.i.if.then359.i_crit_edge, label %lor.lhs.false355.i.il4965_sens_energy_cck.exit_crit_edge

lor.lhs.false355.i.il4965_sens_energy_cck.exit_crit_edge: ; preds = %lor.lhs.false355.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %il4965_sens_energy_cck.exit

lor.lhs.false355.i.if.then359.i_crit_edge:        ; preds = %lor.lhs.false355.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then359.i

if.then359.i:                                     ; preds = %lor.lhs.false355.i.if.then359.i_crit_edge, %land.lhs.true351.i.if.then359.i_crit_edge
  %auto_corr_cck360.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 4
  %396 = ptrtoint ptr %auto_corr_cck360.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %auto_corr_cck360.i, align 4
  %sub361.i = add i32 %397, -3
  %auto_corr_min_cck.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %157, i32 0, i32 14
  %398 = ptrtoint ptr %auto_corr_min_cck.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %auto_corr_min_cck.i, align 2
  %conv362.i = zext i16 %399 to i32
  %400 = tail call i32 @llvm.umax.i32(i32 %sub361.i, i32 %conv362.i) #6
  %401 = ptrtoint ptr %auto_corr_cck360.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %auto_corr_cck360.i, align 4
  %auto_corr_cck_mrc371.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64, i32 5
  %402 = ptrtoint ptr %auto_corr_cck_mrc371.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %auto_corr_cck_mrc371.i, align 4
  %sub372.i = add i32 %403, -3
  %auto_corr_min_cck_mrc.i = getelementptr inbounds %struct.il_sensitivity_ranges, ptr %157, i32 0, i32 15
  %404 = ptrtoint ptr %auto_corr_min_cck_mrc.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %auto_corr_min_cck_mrc.i, align 2
  %conv373.i = zext i16 %405 to i32
  %406 = tail call i32 @llvm.umax.i32(i32 %sub372.i, i32 %conv373.i) #6
  %407 = ptrtoint ptr %auto_corr_cck_mrc371.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %406, ptr %auto_corr_cck_mrc371.i, align 4
  br label %il4965_sens_energy_cck.exit

il4965_sens_energy_cck.exit:                      ; preds = %if.then359.i, %lor.lhs.false355.i.il4965_sens_energy_cck.exit_crit_edge, %if.else348.i.il4965_sens_energy_cck.exit_crit_edge, %if.end337.i
  %call137 = tail call fastcc i32 @il4965_sensitivity_write(ptr noundef %il)
  br label %cleanup

cleanup:                                          ; preds = %il4965_sens_energy_cck.exit, %do.end74, %il_get_debug_level.exit243.cleanup_crit_edge, %do.end39, %do.end, %il_get_debug_level.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_chain_noise_calibration(ptr noundef %il, ptr nocapture noundef readonly %stat_resp) local_unnamed_addr #0 align 64 {
entry:
  %average_sig = alloca [3 x i32], align 4
  %average_noise = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %average_sig) #6
  %0 = call ptr @memcpy(ptr %average_sig, ptr @__const.il4965_chain_noise_calibration.average_sig, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %average_noise) #6
  %disable_chain_noise_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 125
  %1 = ptrtoint ptr %disable_chain_noise_cal to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %disable_chain_noise_cal, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chain_noise_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65
  %state = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 11
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 1, label %do.body17
    i8 0, label %do.body
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %6 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.else.i ], [ %7, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %cleanup

do.body17:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 30
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %interference_data_flag = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 12
  %13 = ptrtoint ptr %interference_data_flag to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %interference_data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %14)
  %cmp26.not = icmp eq i32 %14, 16777216
  br i1 %cmp26.not, label %if.end44, label %do.body29

do.body29:                                        ; preds = %do.body17
  %debug_level.i332 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %15 = ptrtoint ptr %debug_level.i332 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_level.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i333 = icmp eq i32 %16, 0
  br i1 %tobool.not.i333, label %if.else.i334, label %do.body29.il_get_debug_level.exit336_crit_edge

do.body29.il_get_debug_level.exit336_crit_edge:   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit336

if.else.i334:                                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %17 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit336

il_get_debug_level.exit336:                       ; preds = %if.else.i334, %do.body29.il_get_debug_level.exit336_crit_edge
  %retval.0.i335 = phi i32 [ %17, %if.else.i334 ], [ %16, %do.body29.il_get_debug_level.exit336_crit_edge ]
  %and31 = and i32 %retval.0.i335, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %il_get_debug_level.exit336.do.end42_crit_edge, label %do.end36

il_get_debug_level.exit336.do.end42_crit_edge:    ; preds = %il_get_debug_level.exit336
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

do.end36:                                         ; preds = %il_get_debug_level.exit336
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %il, align 8
  %wiphy38 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy38, align 8
  %dev39 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #9
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %il_get_debug_level.exit336.do.end42_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #6
  br label %cleanup

if.end44:                                         ; preds = %do.body17
  %flags45 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %22 = ptrtoint ptr %flags45 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %flags45, align 1
  %and46 = lshr i32 %23, 24
  %24 = trunc i32 %and46 to i8
  %25 = and i8 %24, 1
  %channel = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 14
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %channel, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %29 = ptrtoint ptr %stat_resp to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %stat_resp, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %shr = lshr i32 %31, 16
  %conv60 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv60)
  %cmp62.not = icmp eq i32 %shr, %conv60
  br i1 %cmp62.not, label %lor.lhs.false, label %if.end44.do.body69_crit_edge

if.end44.do.body69_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

lor.lhs.false:                                    ; preds = %if.end44
  %and51 = lshr i32 %30, 25
  %32 = and i32 %and51, 1
  %conv64 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv64)
  %cmp66.not = icmp eq i32 %32, %conv64
  br i1 %cmp66.not, label %if.end86, label %lor.lhs.false.do.body69_crit_edge

lor.lhs.false.do.body69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

do.body69:                                        ; preds = %lor.lhs.false.do.body69_crit_edge, %if.end44.do.body69_crit_edge
  %debug_level.i337 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %33 = ptrtoint ptr %debug_level.i337 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_level.i337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i338 = icmp eq i32 %34, 0
  br i1 %tobool.not.i338, label %if.else.i339, label %do.body69.il_get_debug_level.exit341_crit_edge

do.body69.il_get_debug_level.exit341_crit_edge:   ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit341

if.else.i339:                                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %35 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit341

il_get_debug_level.exit341:                       ; preds = %if.else.i339, %do.body69.il_get_debug_level.exit341_crit_edge
  %retval.0.i340 = phi i32 [ %35, %if.else.i339 ], [ %34, %do.body69.il_get_debug_level.exit341_crit_edge ]
  %and71 = and i32 %retval.0.i340, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %il_get_debug_level.exit341.do.end84_crit_edge, label %do.end76

il_get_debug_level.exit341.do.end84_crit_edge:    ; preds = %il_get_debug_level.exit341
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end84

do.end76:                                         ; preds = %il_get_debug_level.exit341
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %il, align 8
  %wiphy78 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy78, align 8
  %dev79 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  %conv81 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef %conv60, i32 noundef %conv81) #9
  br label %do.end84

do.end84:                                         ; preds = %do.end76, %il_get_debug_level.exit341.do.end84_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #6
  br label %cleanup

if.end86:                                         ; preds = %lor.lhs.false
  %beacon_silence_rssi_a = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 9
  %40 = ptrtoint ptr %beacon_silence_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %beacon_silence_rssi_a, align 1
  %42 = lshr i32 %41, 24
  %beacon_silence_rssi_b = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 10
  %43 = ptrtoint ptr %beacon_silence_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %beacon_silence_rssi_b, align 1
  %45 = lshr i32 %44, 24
  %beacon_silence_rssi_c = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 11
  %46 = ptrtoint ptr %beacon_silence_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %beacon_silence_rssi_c, align 1
  %48 = lshr i32 %47, 24
  %beacon_rssi_a = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 15
  %49 = ptrtoint ptr %beacon_rssi_a to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %beacon_rssi_a, align 1
  %51 = lshr i32 %50, 24
  %beacon_rssi_b = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 16
  %52 = ptrtoint ptr %beacon_rssi_b to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %beacon_rssi_b, align 1
  %54 = lshr i32 %53, 24
  %beacon_rssi_c = getelementptr inbounds %struct.il_notif_stats, ptr %stat_resp, i32 0, i32 1, i32 2, i32 17
  %55 = ptrtoint ptr %beacon_rssi_c to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %beacon_rssi_c, align 1
  %57 = lshr i32 %56, 24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #6
  %beacon_count = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 7
  %58 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %beacon_count, align 4
  %inc = add i16 %59, 1
  store i16 %inc, ptr %beacon_count, align 4
  %chain_noise_a94 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 1
  %60 = ptrtoint ptr %chain_noise_a94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chain_noise_a94, align 4
  %add = add i32 %61, %42
  store i32 %add, ptr %chain_noise_a94, align 4
  %chain_noise_b96 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 2
  %62 = ptrtoint ptr %chain_noise_b96 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chain_noise_b96, align 4
  %add97 = add i32 %63, %45
  store i32 %add97, ptr %chain_noise_b96, align 4
  %chain_noise_c99 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 3
  %64 = ptrtoint ptr %chain_noise_c99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chain_noise_c99, align 4
  %add100 = add i32 %65, %48
  store i32 %add100, ptr %chain_noise_c99, align 4
  %chain_signal_a = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 4
  %66 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %chain_signal_a, align 4
  %add102 = add i32 %67, %51
  store i32 %add102, ptr %chain_signal_a, align 4
  %chain_signal_b = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 5
  %68 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chain_signal_b, align 4
  %add104 = add i32 %69, %54
  store i32 %add104, ptr %chain_signal_b, align 4
  %chain_signal_c = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 6
  %70 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chain_signal_c, align 4
  %add106 = add i32 %71, %57
  store i32 %add106, ptr %chain_signal_c, align 4
  %debug_level.i342 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %72 = ptrtoint ptr %debug_level.i342 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug_level.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i343 = icmp eq i32 %73, 0
  br i1 %tobool.not.i343, label %if.else.i344, label %if.end86.il_get_debug_level.exit346_crit_edge

if.end86.il_get_debug_level.exit346_crit_edge:    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit346

if.else.i344:                                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %74 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit346

il_get_debug_level.exit346:                       ; preds = %if.else.i344, %if.end86.il_get_debug_level.exit346_crit_edge
  %retval.0.i345 = phi i32 [ %74, %if.else.i344 ], [ %73, %if.end86.il_get_debug_level.exit346_crit_edge ]
  %and110 = and i32 %retval.0.i345, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %il_get_debug_level.exit346.do.body126_crit_edge, label %do.end115

il_get_debug_level.exit346.do.body126_crit_edge:  ; preds = %il_get_debug_level.exit346
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body126

do.end115:                                        ; preds = %il_get_debug_level.exit346
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %il, align 8
  %wiphy117 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wiphy117 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy117, align 8
  %dev118 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  %conv122 = zext i16 %inc to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev118, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %32, i32 noundef %conv122) #9
  br label %do.body126

do.body126:                                       ; preds = %do.end115, %il_get_debug_level.exit346.do.body126_crit_edge
  %79 = ptrtoint ptr %debug_level.i342 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug_level.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i348 = icmp eq i32 %80, 0
  br i1 %tobool.not.i348, label %if.else.i349, label %do.body126.il_get_debug_level.exit351_crit_edge

do.body126.il_get_debug_level.exit351_crit_edge:  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit351

if.else.i349:                                     ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %81 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit351

il_get_debug_level.exit351:                       ; preds = %if.else.i349, %do.body126.il_get_debug_level.exit351_crit_edge
  %retval.0.i350 = phi i32 [ %81, %if.else.i349 ], [ %80, %do.body126.il_get_debug_level.exit351_crit_edge ]
  %and128 = and i32 %retval.0.i350, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %il_get_debug_level.exit351.do.body140_crit_edge, label %do.end133

il_get_debug_level.exit351.do.body140_crit_edge:  ; preds = %il_get_debug_level.exit351
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body140

do.end133:                                        ; preds = %il_get_debug_level.exit351
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %il, align 8
  %wiphy135 = getelementptr inbounds %struct.ieee80211_hw, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wiphy135 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wiphy135, align 8
  %dev136 = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.23, i32 noundef %51, i32 noundef %54, i32 noundef %57) #9
  br label %do.body140

do.body140:                                       ; preds = %do.end133, %il_get_debug_level.exit351.do.body140_crit_edge
  %86 = ptrtoint ptr %debug_level.i342 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %debug_level.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i353 = icmp eq i32 %87, 0
  br i1 %tobool.not.i353, label %if.else.i354, label %do.body140.il_get_debug_level.exit356_crit_edge

do.body140.il_get_debug_level.exit356_crit_edge:  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit356

if.else.i354:                                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %88 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit356

il_get_debug_level.exit356:                       ; preds = %if.else.i354, %do.body140.il_get_debug_level.exit356_crit_edge
  %retval.0.i355 = phi i32 [ %88, %if.else.i354 ], [ %87, %do.body140.il_get_debug_level.exit356_crit_edge ]
  %and142 = and i32 %retval.0.i355, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %il_get_debug_level.exit356.do.end153_crit_edge, label %do.end147

il_get_debug_level.exit356.do.end153_crit_edge:   ; preds = %il_get_debug_level.exit356
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end153

do.end147:                                        ; preds = %il_get_debug_level.exit356
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %il, align 8
  %wiphy149 = getelementptr inbounds %struct.ieee80211_hw, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %wiphy149 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %wiphy149, align 8
  %dev150 = getelementptr inbounds %struct.wiphy, ptr %92, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev150, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.23, i32 noundef %42, i32 noundef %45, i32 noundef %48) #9
  br label %do.end153

do.end153:                                        ; preds = %do.end147, %il_get_debug_level.exit356.do.end153_crit_edge
  %93 = ptrtoint ptr %beacon_count to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %beacon_count, align 4
  %conv155 = zext i16 %94 to i32
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %95 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg, align 4
  %chain_noise_num_beacons = getelementptr inbounds %struct.il_cfg, ptr %96, i32 0, i32 20
  %97 = ptrtoint ptr %chain_noise_num_beacons to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chain_noise_num_beacons, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv155)
  %cmp156.not = icmp eq i32 %98, %conv155
  br i1 %cmp156.not, label %if.end159, label %do.end153.cleanup_crit_edge

do.end153.cleanup_crit_edge:                      ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end159:                                        ; preds = %do.end153
  call fastcc void @il4965_find_disconn_antenna(ptr noundef %il, ptr noundef nonnull %average_sig, ptr noundef %chain_noise_data)
  %99 = ptrtoint ptr %chain_noise_a94 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chain_noise_a94, align 4
  %101 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg, align 4
  %chain_noise_num_beacons162 = getelementptr inbounds %struct.il_cfg, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %chain_noise_num_beacons162 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %chain_noise_num_beacons162, align 4
  %div = udiv i32 %100, %104
  %105 = ptrtoint ptr %average_noise to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div, ptr %average_noise, align 4
  %106 = ptrtoint ptr %chain_noise_b96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chain_noise_b96, align 4
  %div166 = udiv i32 %107, %104
  %arrayidx167 = getelementptr inbounds [3 x i32], ptr %average_noise, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div166, ptr %arrayidx167, align 4
  %109 = ptrtoint ptr %chain_noise_c99 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %chain_noise_c99, align 4
  %div171 = udiv i32 %110, %104
  %arrayidx172 = getelementptr inbounds [3 x i32], ptr %average_noise, i32 0, i32 2
  %111 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div171, ptr %arrayidx172, align 4
  %arrayidx176 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 0
  %112 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool177.not = icmp eq i8 %113, 0
  br i1 %tobool177.not, label %land.lhs.true, label %if.end159.for.inc_crit_edge

if.end159.for.inc_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %average_noise to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %average_noise, align 4
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %if.end159.for.inc_crit_edge
  %min_average_noise.1 = phi i32 [ -1, %if.end159.for.inc_crit_edge ], [ %115, %land.lhs.true ]
  %min_average_noise_antenna_i.1 = phi i16 [ -1, %if.end159.for.inc_crit_edge ], [ 0, %land.lhs.true ]
  %arrayidx176.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 1
  %116 = ptrtoint ptr %arrayidx176.1 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx176.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool177.not.1 = icmp eq i8 %117, 0
  br i1 %tobool177.not.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %min_average_noise.1)
  %cmp180.not.1 = icmp ugt i32 %119, %min_average_noise.1
  %120 = tail call i32 @llvm.umin.i32(i32 %119, i32 %min_average_noise.1)
  %spec.select331.1 = select i1 %cmp180.not.1, i16 %min_average_noise_antenna_i.1, i16 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1, %for.inc.for.inc.1_crit_edge
  %min_average_noise.1.1 = phi i32 [ %min_average_noise.1, %for.inc.for.inc.1_crit_edge ], [ %120, %land.lhs.true.1 ]
  %min_average_noise_antenna_i.1.1 = phi i16 [ %min_average_noise_antenna_i.1, %for.inc.for.inc.1_crit_edge ], [ %spec.select331.1, %land.lhs.true.1 ]
  %arrayidx176.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 2
  %121 = ptrtoint ptr %arrayidx176.2 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx176.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool177.not.2 = icmp eq i8 %122, 0
  br i1 %tobool177.not.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %min_average_noise.1.1)
  %cmp180.not.2 = icmp ugt i32 %124, %min_average_noise.1.1
  %125 = tail call i32 @llvm.umin.i32(i32 %124, i32 %min_average_noise.1.1)
  %spec.select331.2 = select i1 %cmp180.not.2, i16 %min_average_noise_antenna_i.1.1, i16 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true.2, %for.inc.1.for.inc.2_crit_edge
  %min_average_noise.1.2 = phi i32 [ %min_average_noise.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %125, %land.lhs.true.2 ]
  %min_average_noise_antenna_i.1.2 = phi i16 [ %min_average_noise_antenna_i.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select331.2, %land.lhs.true.2 ]
  %126 = ptrtoint ptr %debug_level.i342 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_level.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i358 = icmp eq i32 %127, 0
  br i1 %tobool.not.i358, label %if.else.i359, label %for.inc.2.il_get_debug_level.exit361_crit_edge

for.inc.2.il_get_debug_level.exit361_crit_edge:   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit361

if.else.i359:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %128 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit361

il_get_debug_level.exit361:                       ; preds = %if.else.i359, %for.inc.2.il_get_debug_level.exit361_crit_edge
  %retval.0.i360 = phi i32 [ %128, %if.else.i359 ], [ %127, %for.inc.2.il_get_debug_level.exit361_crit_edge ]
  %and189 = and i32 %retval.0.i360, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %il_get_debug_level.exit361.do.body204_crit_edge, label %do.end194

il_get_debug_level.exit361.do.body204_crit_edge:  ; preds = %il_get_debug_level.exit361
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body204

do.end194:                                        ; preds = %il_get_debug_level.exit361
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %il, align 8
  %wiphy196 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %wiphy196 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wiphy196, align 8
  %dev197 = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev197, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, i32 noundef %div, i32 noundef %div166, i32 noundef %div171) #9
  br label %do.body204

do.body204:                                       ; preds = %do.end194, %il_get_debug_level.exit361.do.body204_crit_edge
  %133 = ptrtoint ptr %debug_level.i342 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %debug_level.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i363 = icmp eq i32 %134, 0
  br i1 %tobool.not.i363, label %if.else.i364, label %do.body204.il_get_debug_level.exit366_crit_edge

do.body204.il_get_debug_level.exit366_crit_edge:  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit366

if.else.i364:                                     ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %135 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit366

il_get_debug_level.exit366:                       ; preds = %if.else.i364, %do.body204.il_get_debug_level.exit366_crit_edge
  %retval.0.i365 = phi i32 [ %135, %if.else.i364 ], [ %134, %do.body204.il_get_debug_level.exit366_crit_edge ]
  %and206 = and i32 %retval.0.i365, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %il_get_debug_level.exit366.do.end218_crit_edge, label %do.end211

il_get_debug_level.exit366.do.end218_crit_edge:   ; preds = %il_get_debug_level.exit366
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end218

do.end211:                                        ; preds = %il_get_debug_level.exit366
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %il, align 8
  %wiphy213 = getelementptr inbounds %struct.ieee80211_hw, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %wiphy213 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %wiphy213, align 8
  %dev214 = getelementptr inbounds %struct.wiphy, ptr %139, i32 0, i32 56
  %conv215 = zext i16 %min_average_noise_antenna_i.1.2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev214, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.23, i32 noundef %min_average_noise.1.2, i32 noundef %conv215) #9
  br label %do.end218

do.end218:                                        ; preds = %do.end211, %il_get_debug_level.exit366.do.end218_crit_edge
  %140 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg, align 4
  %valid_rx_ant = getelementptr inbounds %struct.il_cfg, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %valid_rx_ant, align 1
  %conv.i = zext i8 %143 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i367 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 2, i8 1
  %retval.0.i368 = select i1 %tobool.not.i367, i8 %..i, i8 0
  call fastcc void @il4965_gain_computation(ptr noundef %il, ptr noundef nonnull %average_noise, i16 noundef zeroext %min_average_noise_antenna_i.1.2, i32 noundef %min_average_noise.1.2, i8 noundef zeroext %retval.0.i368)
  %ops = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %144 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops, align 8
  %update_chain_flags = getelementptr inbounds %struct.il_ops, ptr %145, i32 0, i32 12
  %146 = ptrtoint ptr %update_chain_flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %update_chain_flags, align 4
  %tobool222.not = icmp eq ptr %147, null
  br i1 %tobool222.not, label %do.end218.if.end226_crit_edge, label %if.then223

do.end218.if.end226_crit_edge:                    ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226

if.then223:                                       ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %147(ptr noundef %il) #6
  br label %if.end226

if.end226:                                        ; preds = %if.then223, %do.end218.if.end226_crit_edge
  %148 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 3, ptr %state, align 1
  %call228 = tail call i32 @il_power_update_mode(ptr noundef %il, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end226, %do.end153.cleanup_crit_edge, %do.end84, %do.end42, %do.end, %il_get_debug_level.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %average_noise) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %average_sig) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_find_disconn_antenna(ptr nocapture noundef readonly %il, ptr nocapture noundef %average_sig, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chain_signal_a = getelementptr inbounds %struct.il_chain_noise_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %chain_signal_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chain_signal_a, align 4
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %chain_noise_num_beacons = getelementptr inbounds %struct.il_cfg, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %chain_noise_num_beacons to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chain_noise_num_beacons, align 4
  %div = udiv i32 %1, %5
  %6 = ptrtoint ptr %average_sig to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %average_sig, align 4
  %chain_signal_b = getelementptr inbounds %struct.il_chain_noise_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %chain_signal_b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chain_signal_b, align 4
  %9 = load ptr, ptr %cfg, align 4
  %chain_noise_num_beacons2 = getelementptr inbounds %struct.il_cfg, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %chain_noise_num_beacons2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chain_noise_num_beacons2, align 4
  %div3 = udiv i32 %8, %11
  %arrayidx4 = getelementptr i32, ptr %average_sig, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div3, ptr %arrayidx4, align 4
  %chain_signal_c = getelementptr inbounds %struct.il_chain_noise_data, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %chain_signal_c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chain_signal_c, align 4
  %15 = load ptr, ptr %cfg, align 4
  %chain_noise_num_beacons6 = getelementptr inbounds %struct.il_cfg, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %chain_noise_num_beacons6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chain_noise_num_beacons6, align 4
  %div7 = udiv i32 %14, %17
  %arrayidx8 = getelementptr i32, ptr %average_sig, i32 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div7, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div3)
  %cmp.not = icmp ult i32 %div, %div3
  %19 = tail call i32 @llvm.umax.i32(i32 %div, i32 %div3)
  %.264 = zext i1 %cmp.not to i16
  %.265 = select i1 %cmp.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div7, i32 %19)
  %cmp16.not = icmp ult i32 %div7, %19
  %20 = tail call i32 @llvm.umax.i32(i32 %div7, i32 %19)
  %max_average_sig_antenna_i.1 = select i1 %cmp16.not, i16 %.264, i16 2
  %active_chains.1 = select i1 %cmp16.not, i32 %.265, i32 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %21 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %23 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.else.i ], [ %22, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.body31_crit_edge, label %do.end

il_get_debug_level.exit.do.body31_crit_edge:      ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, i32 noundef %div, i32 noundef %div3, i32 noundef %div7) #9
  br label %do.body31

do.body31:                                        ; preds = %do.end, %il_get_debug_level.exit.do.body31_crit_edge
  %28 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i267 = icmp eq i32 %29, 0
  br i1 %tobool.not.i267, label %if.else.i268, label %do.body31.il_get_debug_level.exit270_crit_edge

do.body31.il_get_debug_level.exit270_crit_edge:   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit270

if.else.i268:                                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %30 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit270

il_get_debug_level.exit270:                       ; preds = %if.else.i268, %do.body31.il_get_debug_level.exit270_crit_edge
  %retval.0.i269 = phi i32 [ %30, %if.else.i268 ], [ %29, %do.body31.il_get_debug_level.exit270_crit_edge ]
  %and33 = and i32 %retval.0.i269, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %il_get_debug_level.exit270.do.end45_crit_edge, label %do.end38

il_get_debug_level.exit270.do.end45_crit_edge:    ; preds = %il_get_debug_level.exit270
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i16 %max_average_sig_antenna_i.1 to i32
  br label %do.end45

do.end38:                                         ; preds = %il_get_debug_level.exit270
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %il, align 8
  %wiphy40 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy40, align 8
  %dev41 = getelementptr inbounds %struct.wiphy, ptr %34, i32 0, i32 56
  %conv42 = zext i16 %max_average_sig_antenna_i.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef %20, i32 noundef %conv42) #9
  br label %do.end45

do.end45:                                         ; preds = %do.end38, %il_get_debug_level.exit270.do.end45_crit_edge
  %.pre-phi = phi i32 [ %.pre, %il_get_debug_level.exit270.do.end45_crit_edge ], [ %conv42, %do.end38 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre-phi)
  %cmp51.not = icmp eq i32 %.pre-phi, 0
  br i1 %cmp51.not, label %do.end45.if.then53.1_crit_edge, label %if.then53

do.end45.if.then53.1_crit_edge:                   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.1

if.then53:                                        ; preds = %do.end45
  %35 = ptrtoint ptr %average_sig to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %average_sig, align 4
  %sub = sub i32 %20, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub)
  %cmp55 = icmp sgt i32 %sub, 15
  br i1 %cmp55, label %if.then57, label %if.else60

if.then57:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx59 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %arrayidx59, align 1
  br label %do.body64

if.else60:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %active_chains.1, 1
  br label %do.body64

do.body64:                                        ; preds = %if.else60, %if.then57
  %active_chains.3 = phi i32 [ %active_chains.1, %if.then57 ], [ %or, %if.else60 ]
  %38 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i272 = icmp eq i32 %39, 0
  br i1 %tobool.not.i272, label %if.else.i273, label %do.body64.il_get_debug_level.exit275_crit_edge

do.body64.il_get_debug_level.exit275_crit_edge:   ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit275

if.else.i273:                                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %40 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit275

il_get_debug_level.exit275:                       ; preds = %if.else.i273, %do.body64.il_get_debug_level.exit275_crit_edge
  %retval.0.i274 = phi i32 [ %40, %if.else.i273 ], [ %39, %do.body64.il_get_debug_level.exit275_crit_edge ]
  %and66 = and i32 %retval.0.i274, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %il_get_debug_level.exit275.for.inc_crit_edge, label %do.end71

il_get_debug_level.exit275.for.inc_crit_edge:     ; preds = %il_get_debug_level.exit275
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end71:                                         ; preds = %il_get_debug_level.exit275
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %il, align 8
  %wiphy73 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy73, align 8
  %dev74 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  %arrayidx78 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %45 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef 0, i32 noundef %sub, i32 noundef %conv79) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end71, %il_get_debug_level.exit275.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pre-phi)
  %cmp51.not.1 = icmp eq i32 %.pre-phi, 1
  br i1 %cmp51.not.1, label %for.inc.if.then53.2_crit_edge, label %for.inc.if.then53.1_crit_edge

for.inc.if.then53.1_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.1

for.inc.if.then53.2_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.2

if.then53.1:                                      ; preds = %for.inc.if.then53.1_crit_edge, %do.end45.if.then53.1_crit_edge
  %active_chains.4307 = phi i32 [ %active_chains.3, %for.inc.if.then53.1_crit_edge ], [ %active_chains.1, %do.end45.if.then53.1_crit_edge ]
  %47 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4, align 4
  %sub.1 = sub i32 %20, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.1)
  %cmp55.1 = icmp sgt i32 %sub.1, 15
  br i1 %cmp55.1, label %if.then57.1, label %if.else60.1

if.else60.1:                                      ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #8
  %or.1 = or i32 %active_chains.4307, 2
  br label %do.body64.1

if.then57.1:                                      ; preds = %if.then53.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx59.1 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %arrayidx59.1, align 1
  br label %do.body64.1

do.body64.1:                                      ; preds = %if.then57.1, %if.else60.1
  %active_chains.3.1 = phi i32 [ %active_chains.4307, %if.then57.1 ], [ %or.1, %if.else60.1 ]
  %50 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i272.1 = icmp eq i32 %51, 0
  br i1 %tobool.not.i272.1, label %if.else.i273.1, label %do.body64.1.il_get_debug_level.exit275.1_crit_edge

do.body64.1.il_get_debug_level.exit275.1_crit_edge: ; preds = %do.body64.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit275.1

if.else.i273.1:                                   ; preds = %do.body64.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %52 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit275.1

il_get_debug_level.exit275.1:                     ; preds = %if.else.i273.1, %do.body64.1.il_get_debug_level.exit275.1_crit_edge
  %retval.0.i274.1 = phi i32 [ %52, %if.else.i273.1 ], [ %51, %do.body64.1.il_get_debug_level.exit275.1_crit_edge ]
  %and66.1 = and i32 %retval.0.i274.1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.1)
  %tobool67.not.1 = icmp eq i32 %and66.1, 0
  br i1 %tobool67.not.1, label %il_get_debug_level.exit275.1.for.inc.1_crit_edge, label %do.end71.1

il_get_debug_level.exit275.1.for.inc.1_crit_edge: ; preds = %il_get_debug_level.exit275.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

do.end71.1:                                       ; preds = %il_get_debug_level.exit275.1
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %il, align 8
  %wiphy73.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy73.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy73.1, align 8
  %dev74.1 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  %arrayidx78.1 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx78.1, align 1
  %conv79.1 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.1, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef 1, i32 noundef %sub.1, i32 noundef %conv79.1) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end71.1, %il_get_debug_level.exit275.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pre-phi)
  %cmp51.not.2 = icmp eq i32 %.pre-phi, 2
  br i1 %cmp51.not.2, label %for.inc.1.for.inc.2_crit_edge, label %for.inc.1.if.then53.2_crit_edge

for.inc.1.if.then53.2_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then53.2:                                      ; preds = %for.inc.1.if.then53.2_crit_edge, %for.inc.if.then53.2_crit_edge
  %active_chains.4.1310 = phi i32 [ %active_chains.3.1, %for.inc.1.if.then53.2_crit_edge ], [ %active_chains.3, %for.inc.if.then53.2_crit_edge ]
  %59 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx8, align 4
  %sub.2 = sub i32 %20, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.2)
  %cmp55.2 = icmp sgt i32 %sub.2, 15
  br i1 %cmp55.2, label %if.then57.2, label %if.else60.2

if.else60.2:                                      ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #8
  %or.2 = or i32 %active_chains.4.1310, 4
  br label %do.body64.2

if.then57.2:                                      ; preds = %if.then53.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx59.2 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %61 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %arrayidx59.2, align 1
  br label %do.body64.2

do.body64.2:                                      ; preds = %if.then57.2, %if.else60.2
  %active_chains.3.2 = phi i32 [ %active_chains.4.1310, %if.then57.2 ], [ %or.2, %if.else60.2 ]
  %62 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i272.2 = icmp eq i32 %63, 0
  br i1 %tobool.not.i272.2, label %if.else.i273.2, label %do.body64.2.il_get_debug_level.exit275.2_crit_edge

do.body64.2.il_get_debug_level.exit275.2_crit_edge: ; preds = %do.body64.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit275.2

if.else.i273.2:                                   ; preds = %do.body64.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %64 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit275.2

il_get_debug_level.exit275.2:                     ; preds = %if.else.i273.2, %do.body64.2.il_get_debug_level.exit275.2_crit_edge
  %retval.0.i274.2 = phi i32 [ %64, %if.else.i273.2 ], [ %63, %do.body64.2.il_get_debug_level.exit275.2_crit_edge ]
  %and66.2 = and i32 %retval.0.i274.2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.2)
  %tobool67.not.2 = icmp eq i32 %and66.2, 0
  br i1 %tobool67.not.2, label %il_get_debug_level.exit275.2.for.inc.2_crit_edge, label %do.end71.2

il_get_debug_level.exit275.2.for.inc.2_crit_edge: ; preds = %il_get_debug_level.exit275.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

do.end71.2:                                       ; preds = %il_get_debug_level.exit275.2
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %il, align 8
  %wiphy73.2 = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %wiphy73.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy73.2, align 8
  %dev74.2 = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 56
  %arrayidx78.2 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %69 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx78.2, align 1
  %conv79.2 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.2, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.93, i32 noundef 2, i32 noundef %sub.2, i32 noundef %conv79.2) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end71.2, %il_get_debug_level.exit275.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %active_chains.4.2 = phi i32 [ %active_chains.3.1, %for.inc.1.for.inc.2_crit_edge ], [ %active_chains.3.2, %do.end71.2 ], [ %active_chains.3.2, %il_get_debug_level.exit275.2.for.inc.2_crit_edge ]
  %valid_rx_ant = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 8
  %71 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %valid_rx_ant, align 1
  %conv84 = zext i8 %72 to i32
  %and85 = and i32 %active_chains.4.2, %conv84
  %valid_tx_ant = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %73 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %valid_tx_ant, align 2
  %conv95 = zext i8 %74 to i32
  %tx_chains_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 5
  %and97 = and i32 %conv95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %for.inc.2.for.inc146_crit_edge, label %if.end100

for.inc.2.for.inc146_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146

if.end100:                                        ; preds = %for.inc.2
  %arrayidx104 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 0
  %75 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp106 = icmp eq i8 %76, 0
  br i1 %cmp106, label %if.end100.for.end148_crit_edge, label %if.end109

if.end100.for.end148_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

if.end109:                                        ; preds = %if.end100
  %77 = ptrtoint ptr %tx_chains_num to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %tx_chains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp113 = icmp eq i8 %78, 1
  br i1 %cmp113, label %if.end109.if.then120_crit_edge, label %if.end109.for.inc146_crit_edge

if.end109.for.inc146_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146

if.end109.if.then120_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.then120:                                       ; preds = %if.end109.2.if.then120_crit_edge, %if.end109.1.if.then120_crit_edge, %if.end109.if.then120_crit_edge
  %79 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg, align 4
  %valid_tx_ant122 = getelementptr inbounds %struct.il_cfg, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %valid_tx_ant122 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_tx_ant122, align 4
  %conv.i = zext i8 %82 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i276 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %83 = select i1 %tobool3.not.i, i32 2, i32 1
  %idxprom125 = select i1 %tobool.not.i276, i32 %83, i32 0
  %arrayidx126 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 %idxprom125
  %84 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx126, align 1
  %shl128 = shl nuw nsw i32 1, %idxprom125
  %or129 = or i32 %shl128, %and85
  %85 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i279 = icmp eq i32 %86, 0
  br i1 %tobool.not.i279, label %if.else.i280, label %if.then120.il_get_debug_level.exit282_crit_edge

if.then120.il_get_debug_level.exit282_crit_edge:  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit282

if.else.i280:                                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %87 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit282

il_get_debug_level.exit282:                       ; preds = %if.else.i280, %if.then120.il_get_debug_level.exit282_crit_edge
  %retval.0.i281 = phi i32 [ %87, %if.else.i280 ], [ %86, %if.then120.il_get_debug_level.exit282_crit_edge ]
  %and132 = and i32 %retval.0.i281, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %il_get_debug_level.exit282.for.end148_crit_edge, label %do.end137

il_get_debug_level.exit282.for.end148_crit_edge:  ; preds = %il_get_debug_level.exit282
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

do.end137:                                        ; preds = %il_get_debug_level.exit282
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %il, align 8
  %wiphy139 = getelementptr inbounds %struct.ieee80211_hw, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wiphy139 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy139, align 8
  %dev140 = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev140, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.93, i32 noundef %idxprom125) #9
  br label %for.end148

for.inc146:                                       ; preds = %if.end109.for.inc146_crit_edge, %for.inc.2.for.inc146_crit_edge
  %num_tx_chains.1 = phi i8 [ 0, %for.inc.2.for.inc146_crit_edge ], [ 1, %if.end109.for.inc146_crit_edge ]
  %and97.1 = and i32 %conv95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.1)
  %tobool98.not.1 = icmp eq i32 %and97.1, 0
  br i1 %tobool98.not.1, label %for.inc146.for.inc146.1_crit_edge, label %if.end100.1

for.inc146.for.inc146.1_crit_edge:                ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146.1

if.end100.1:                                      ; preds = %for.inc146
  %arrayidx104.1 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx104.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp106.1 = icmp eq i8 %93, 0
  br i1 %cmp106.1, label %if.end100.1.for.end148_crit_edge, label %if.end109.1

if.end100.1.for.end148_crit_edge:                 ; preds = %if.end100.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

if.end109.1:                                      ; preds = %if.end100.1
  %inc101.1 = add nuw nsw i8 %num_tx_chains.1, 1
  %94 = ptrtoint ptr %tx_chains_num to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %tx_chains_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc101.1, i8 %95)
  %cmp113.1 = icmp eq i8 %inc101.1, %95
  br i1 %cmp113.1, label %if.end109.1.if.then120_crit_edge, label %if.end109.1.for.inc146.1_crit_edge

if.end109.1.for.inc146.1_crit_edge:               ; preds = %if.end109.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146.1

if.end109.1.if.then120_crit_edge:                 ; preds = %if.end109.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.inc146.1:                                     ; preds = %if.end109.1.for.inc146.1_crit_edge, %for.inc146.for.inc146.1_crit_edge
  %num_tx_chains.1.1 = phi i8 [ %num_tx_chains.1, %for.inc146.for.inc146.1_crit_edge ], [ %inc101.1, %if.end109.1.for.inc146.1_crit_edge ]
  %and97.2 = and i32 %conv95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.2)
  %tobool98.not.2 = icmp eq i32 %and97.2, 0
  br i1 %tobool98.not.2, label %for.inc146.1.for.end148_crit_edge, label %if.end100.2

for.inc146.1.for.end148_crit_edge:                ; preds = %for.inc146.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

if.end100.2:                                      ; preds = %for.inc146.1
  %arrayidx104.2 = getelementptr %struct.il_chain_noise_data, ptr %data, i32 0, i32 8, i32 2
  %96 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx104.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp106.2 = icmp eq i8 %97, 0
  br i1 %cmp106.2, label %if.end100.2.for.end148_crit_edge, label %if.end109.2

if.end100.2.for.end148_crit_edge:                 ; preds = %if.end100.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

if.end109.2:                                      ; preds = %if.end100.2
  %inc101.2 = add nuw nsw i8 %num_tx_chains.1.1, 1
  %98 = ptrtoint ptr %tx_chains_num to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tx_chains_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %inc101.2, i8 %99)
  %cmp113.2 = icmp eq i8 %inc101.2, %99
  br i1 %cmp113.2, label %if.end109.2.if.then120_crit_edge, label %if.end109.2.for.end148_crit_edge

if.end109.2.for.end148_crit_edge:                 ; preds = %if.end109.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

if.end109.2.if.then120_crit_edge:                 ; preds = %if.end109.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

for.end148:                                       ; preds = %if.end109.2.for.end148_crit_edge, %if.end100.2.for.end148_crit_edge, %for.inc146.1.for.end148_crit_edge, %if.end100.1.for.end148_crit_edge, %do.end137, %il_get_debug_level.exit282.for.end148_crit_edge, %if.end100.for.end148_crit_edge
  %active_chains.7 = phi i32 [ %or129, %il_get_debug_level.exit282.for.end148_crit_edge ], [ %or129, %do.end137 ], [ %and85, %for.inc146.1.for.end148_crit_edge ], [ %and85, %if.end109.2.for.end148_crit_edge ], [ %and85, %if.end100.2.for.end148_crit_edge ], [ %and85, %if.end100.1.for.end148_crit_edge ], [ %and85, %if.end100.for.end148_crit_edge ]
  %100 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %valid_rx_ant, align 1
  %conv151 = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %active_chains.7, i32 %conv151)
  %cmp152.not = icmp eq i32 %active_chains.7, %conv151
  br i1 %cmp152.not, label %for.end148.if.end176_crit_edge, label %land.lhs.true154

for.end148.if.end176_crit_edge:                   ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

land.lhs.true154:                                 ; preds = %for.end148
  %chain_noise_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65
  %102 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %chain_noise_data, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %active_chains.7, i32 %103)
  %cmp156.not = icmp eq i32 %active_chains.7, %103
  br i1 %cmp156.not, label %land.lhs.true154.if.end176_crit_edge, label %do.body159

land.lhs.true154.if.end176_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

do.body159:                                       ; preds = %land.lhs.true154
  %104 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i284 = icmp eq i32 %105, 0
  br i1 %tobool.not.i284, label %if.else.i285, label %do.body159.il_get_debug_level.exit287_crit_edge

do.body159.il_get_debug_level.exit287_crit_edge:  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit287

if.else.i285:                                     ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %106 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit287

il_get_debug_level.exit287:                       ; preds = %if.else.i285, %do.body159.il_get_debug_level.exit287_crit_edge
  %retval.0.i286 = phi i32 [ %106, %if.else.i285 ], [ %105, %do.body159.il_get_debug_level.exit287_crit_edge ]
  %and161 = and i32 %retval.0.i286, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %il_get_debug_level.exit287.if.end176_crit_edge, label %do.end166

il_get_debug_level.exit287.if.end176_crit_edge:   ; preds = %il_get_debug_level.exit287
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

do.end166:                                        ; preds = %il_get_debug_level.exit287
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %il, align 8
  %wiphy168 = getelementptr inbounds %struct.ieee80211_hw, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wiphy168 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wiphy168, align 8
  %dev169 = getelementptr inbounds %struct.wiphy, ptr %110, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev169, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.93, i32 noundef %active_chains.7, i32 noundef %conv151) #9
  br label %if.end176

if.end176:                                        ; preds = %do.end166, %il_get_debug_level.exit287.if.end176_crit_edge, %land.lhs.true154.if.end176_crit_edge, %for.end148.if.end176_crit_edge
  %111 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %active_chains.7, ptr %data, align 4
  %112 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i289 = icmp eq i32 %113, 0
  br i1 %tobool.not.i289, label %if.else.i290, label %if.end176.il_get_debug_level.exit292_crit_edge

if.end176.il_get_debug_level.exit292_crit_edge:   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit292

if.else.i290:                                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %114 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit292

il_get_debug_level.exit292:                       ; preds = %if.else.i290, %if.end176.il_get_debug_level.exit292_crit_edge
  %retval.0.i291 = phi i32 [ %114, %if.else.i290 ], [ %113, %if.end176.il_get_debug_level.exit292_crit_edge ]
  %and180 = and i32 %retval.0.i291, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %il_get_debug_level.exit292.do.end191_crit_edge, label %do.end185

il_get_debug_level.exit292.do.end191_crit_edge:   ; preds = %il_get_debug_level.exit292
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191

do.end185:                                        ; preds = %il_get_debug_level.exit292
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %il, align 8
  %wiphy187 = getelementptr inbounds %struct.ieee80211_hw, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wiphy187 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy187, align 8
  %dev188 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev188, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.93, i32 noundef %active_chains.7) #9
  br label %do.end191

do.end191:                                        ; preds = %do.end185, %il_get_debug_level.exit292.do.end191_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_gain_computation(ptr noundef %il, ptr nocapture noundef readonly %average_noise, i16 noundef zeroext %min_average_noise_antenna_i, i32 noundef %min_average_noise, i8 noundef zeroext %default_chain) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.il_calib_diff_gain_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %delta_gain_code = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 9
  %idxprom = zext i16 %min_average_noise_antenna_i to i32
  %arrayidx = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %default_chain)
  %cmp113 = icmp ult i8 %default_chain, 3
  br i1 %cmp113, label %for.body.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.preheader:                               ; preds = %entry
  %conv = zext i8 %default_chain to i32
  %arrayidx2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 %conv
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.preheader.if.else_crit_edge

for.body.preheader.if.else_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.preheader
  %arrayidx4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %conv
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp6 = icmp eq i8 %4, 4
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8 = getelementptr i32, ptr %average_noise, i32 %conv
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx8, align 4
  %sub = sub i32 %6, %min_average_noise
  %mul = mul i32 %sub, 10
  %div = sdiv i32 %mul, 15
  %conv14 = and i32 %div, 255
  %7 = tail call i32 @llvm.umin.i32(i32 %conv14, i32 3)
  %8 = trunc i32 %7 to i8
  %conv26 = or i8 %8, 4
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv26, ptr %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.body.preheader.if.else_crit_edge
  %arrayidx30 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %conv
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx30, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %if.end.do.body_crit_edge, label %for.body.1

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.1:                                       ; preds = %if.end
  %arrayidx2.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 %inc
  %11 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.1 = icmp eq i8 %12, 0
  br i1 %tobool.not.1, label %land.lhs.true.1, label %for.body.1.if.else.1_crit_edge

for.body.1.if.else.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

land.lhs.true.1:                                  ; preds = %for.body.1
  %arrayidx4.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %inc
  %13 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %14)
  %cmp6.1 = icmp eq i8 %14, 4
  br i1 %cmp6.1, label %if.then.1, label %land.lhs.true.1.if.else.1_crit_edge

land.lhs.true.1.if.else.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.1

if.else.1:                                        ; preds = %land.lhs.true.1.if.else.1_crit_edge, %for.body.1.if.else.1_crit_edge
  %arrayidx30.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %inc
  %15 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx30.1, align 1
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.1 = getelementptr i32, ptr %average_noise, i32 %inc
  %16 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.1, align 4
  %sub.1 = sub i32 %17, %min_average_noise
  %mul.1 = mul i32 %sub.1, 10
  %div.1 = sdiv i32 %mul.1, 15
  %conv14.1 = and i32 %div.1, 255
  %18 = tail call i32 @llvm.umin.i32(i32 %conv14.1, i32 3)
  %19 = trunc i32 %18 to i8
  %conv26.1 = or i8 %19, 4
  %20 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26.1, ptr %arrayidx4.1, align 1
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.else.1
  %inc.1 = add nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 3
  br i1 %exitcond.not.1, label %if.end.1.do.body_crit_edge, label %for.body.2

if.end.1.do.body_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.2:                                       ; preds = %if.end.1
  %arrayidx2.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 8, i32 %inc.1
  %21 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.2 = icmp eq i8 %22, 0
  br i1 %tobool.not.2, label %land.lhs.true.2, label %for.body.2.if.else.2_crit_edge

for.body.2.if.else.2_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.2

land.lhs.true.2:                                  ; preds = %for.body.2
  %arrayidx4.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %inc.1
  %23 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp6.2 = icmp eq i8 %24, 4
  br i1 %cmp6.2, label %if.then.2, label %land.lhs.true.2.if.else.2_crit_edge

land.lhs.true.2.if.else.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.2

if.else.2:                                        ; preds = %land.lhs.true.2.if.else.2_crit_edge, %for.body.2.if.else.2_crit_edge
  %arrayidx30.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 %inc.1
  %25 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx30.2, align 1
  br label %do.body

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.2 = getelementptr i32, ptr %average_noise, i32 %inc.1
  %26 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx8.2, align 4
  %sub.2 = sub i32 %27, %min_average_noise
  %mul.2 = mul i32 %sub.2, 10
  %div.2 = sdiv i32 %mul.2, 15
  %conv14.2 = and i32 %div.2, 255
  %28 = tail call i32 @llvm.umin.i32(i32 %conv14.2, i32 3)
  %29 = trunc i32 %28 to i8
  %conv26.2 = or i8 %29, 4
  %30 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26.2, ptr %arrayidx4.2, align 1
  br label %do.body

do.body:                                          ; preds = %if.then.2, %if.else.2, %if.end.1.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %31 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %33 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %33, %if.else.i ], [ %32, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %il_get_debug_level.exit.do.end45_crit_edge, label %do.end

il_get_debug_level.exit.do.end45_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  %38 = ptrtoint ptr %delta_gain_code to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %delta_gain_code, align 1
  %conv36 = zext i8 %39 to i32
  %arrayidx38 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 1
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %41 to i32
  %arrayidx41 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 2
  %42 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv42) #9
  br label %do.end45

do.end45:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end45_crit_edge
  %radio_write = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 10
  %44 = ptrtoint ptr %radio_write to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %radio_write, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool46.not = icmp eq i8 %45, 0
  br i1 %tobool46.not, label %if.then47, label %do.end45.if.end73_crit_edge

do.end45.if.end73_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then47:                                        ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #6
  %46 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, ptr %cmd, i32 0, i32 1
  %47 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, ptr %cmd, i32 0, i32 2
  %48 = getelementptr inbounds %struct.il_calib_diff_gain_cmd, ptr %cmd, i32 0, i32 3
  %49 = ptrtoint ptr %radio_write to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %radio_write, align 4
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 504403158265495552, ptr %cmd, align 8
  %51 = ptrtoint ptr %delta_gain_code to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %delta_gain_code, align 1
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %46, align 4
  %arrayidx52 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 1
  %54 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx52, align 1
  %56 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %47, align 1
  %arrayidx54 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 65, i32 9, i32 2
  %57 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx54, align 1
  %59 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %48, align 2
  %call55 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext -80, i16 noundef zeroext 8, ptr noundef nonnull %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then47.if.end72_crit_edge, label %do.body58

if.then47.if.end72_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.body58:                                        ; preds = %if.then47
  %60 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i109 = icmp eq i32 %61, 0
  br i1 %tobool.not.i109, label %if.else.i110, label %do.body58.il_get_debug_level.exit112_crit_edge

do.body58.il_get_debug_level.exit112_crit_edge:   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %il_get_debug_level.exit112

if.else.i110:                                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %62 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit112

il_get_debug_level.exit112:                       ; preds = %if.else.i110, %do.body58.il_get_debug_level.exit112_crit_edge
  %retval.0.i111 = phi i32 [ %62, %if.else.i110 ], [ %61, %do.body58.il_get_debug_level.exit112_crit_edge ]
  %and60 = and i32 %retval.0.i111, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %il_get_debug_level.exit112.if.end72_crit_edge, label %do.end65

il_get_debug_level.exit112.if.end72_crit_edge:    ; preds = %il_get_debug_level.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

do.end65:                                         ; preds = %il_get_debug_level.exit112
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %il, align 8
  %wiphy67 = getelementptr inbounds %struct.ieee80211_hw, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %wiphy67 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wiphy67, align 8
  %dev68 = getelementptr inbounds %struct.wiphy, ptr %66, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #9
  br label %if.end72

if.end72:                                         ; preds = %do.end65, %il_get_debug_level.exit112.if.end72_crit_edge, %if.then47.if.end72_crit_edge
  %state = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 11
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %state, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #6
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %do.end45.if.end73_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_reset_run_time_calib(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensitivity_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 64
  %uglygep = getelementptr i8, ptr %il, i32 2649
  %0 = call ptr @memset(ptr %sensitivity_data, i32 0, i32 184)
  %1 = call ptr @memset(ptr %uglygep, i32 4, i32 3)
  %call = tail call i32 @il_send_stats_request(ptr noundef %il, i8 noundef zeroext 2, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_stats_request(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 439, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @il4965_init_sensitivity._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @il4965_init_sensitivity._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 480, i32 2}
!10 = !{ptr @il4965_init_sensitivity._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @il4965_init_sensitivity._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 505, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @il4965_sensitivity_calibration._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @il4965_sensitivity_calibration._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 516, i32 3}
!19 = !{ptr @il4965_sensitivity_calibration._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @il4965_sensitivity_calibration._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 540, i32 2}
!23 = !{ptr @il4965_sensitivity_calibration._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @il4965_sensitivity_calibration._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 543, i32 3}
!27 = !{ptr @il4965_sensitivity_calibration._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @il4965_sensitivity_calibration._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 582, i32 2}
!31 = !{ptr @il4965_sensitivity_calibration._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @il4965_sensitivity_calibration._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 808, i32 4}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @il4965_chain_noise_calibration._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @il4965_chain_noise_calibration._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 817, i32 3}
!40 = !{ptr @il4965_chain_noise_calibration._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @il4965_chain_noise_calibration._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 834, i32 3}
!44 = !{ptr @il4965_chain_noise_calibration._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @il4965_chain_noise_calibration._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 867, i32 2}
!48 = !{ptr @il4965_chain_noise_calibration._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @il4965_chain_noise_calibration._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 869, i32 2}
!52 = !{ptr @il4965_chain_noise_calibration._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @il4965_chain_noise_calibration._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 871, i32 2}
!56 = !{ptr @il4965_chain_noise_calibration._entry.36, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @il4965_chain_noise_calibration._entry_ptr.38, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 901, i32 2}
!60 = !{ptr @il4965_chain_noise_calibration._entry.39, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @il4965_chain_noise_calibration._entry_ptr.41, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.43, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 904, i32 2}
!64 = !{ptr @il4965_chain_noise_calibration._entry.42, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @il4965_chain_noise_calibration._entry_ptr.44, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 417, i32 3}
!68 = !{ptr @.str.46, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @il4965_sensitivity_write._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @il4965_sensitivity_write._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.47, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 382, i32 2}
!73 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @il4965_prepare_legacy_sensitivity_tbl._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @il4965_prepare_legacy_sensitivity_tbl._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.50, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 387, i32 2}
!78 = !{ptr @il4965_prepare_legacy_sensitivity_tbl._entry.49, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @il4965_prepare_legacy_sensitivity_tbl._entry_ptr.51, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 306, i32 3}
!82 = !{ptr @.str.53, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @il4965_sens_auto_corr_ofdm._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @il4965_sens_auto_corr_ofdm._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 329, i32 3}
!87 = !{ptr @il4965_sens_auto_corr_ofdm._entry.54, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @il4965_sens_auto_corr_ofdm._entry_ptr.56, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 348, i32 3}
!91 = !{ptr @il4965_sens_auto_corr_ofdm._entry.57, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @il4965_sens_auto_corr_ofdm._entry_ptr.59, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 150, i32 2}
!95 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @il4965_sens_energy_cck._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @il4965_sens_energy_cck._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 173, i32 2}
!100 = !{ptr @il4965_sens_energy_cck._entry.62, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @il4965_sens_energy_cck._entry_ptr.64, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.66, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 183, i32 2}
!104 = !{ptr @il4965_sens_energy_cck._entry.65, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @il4965_sens_energy_cck._entry_ptr.67, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.69, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 189, i32 3}
!108 = !{ptr @il4965_sens_energy_cck._entry.68, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @il4965_sens_energy_cck._entry_ptr.70, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.72, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 191, i32 3}
!112 = !{ptr @il4965_sens_energy_cck._entry.71, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @il4965_sens_energy_cck._entry_ptr.73, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.75, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 208, i32 3}
!116 = !{ptr @il4965_sens_energy_cck._entry.74, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @il4965_sens_energy_cck._entry_ptr.76, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.78, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 222, i32 4}
!120 = !{ptr @il4965_sens_energy_cck._entry.77, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @il4965_sens_energy_cck._entry_ptr.79, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.81, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 227, i32 4}
!124 = !{ptr @il4965_sens_energy_cck._entry.80, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @il4965_sens_energy_cck._entry_ptr.82, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.84, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 232, i32 3}
!128 = !{ptr @il4965_sens_energy_cck._entry.83, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @il4965_sens_energy_cck._entry_ptr.85, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.87, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 242, i32 4}
!132 = !{ptr @il4965_sens_energy_cck._entry.86, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @il4965_sens_energy_cck._entry_ptr.88, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.90, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 256, i32 2}
!136 = !{ptr @il4965_sens_energy_cck._entry.89, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @il4965_sens_energy_cck._entry_ptr.91, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.92, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 642, i32 2}
!140 = !{ptr @.str.93, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @il4965_find_disconn_antenna._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @il4965_find_disconn_antenna._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.95, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 644, i32 2}
!145 = !{ptr @il4965_find_disconn_antenna._entry.94, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @il4965_find_disconn_antenna._entry_ptr.96, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.98, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 658, i32 4}
!149 = !{ptr @il4965_find_disconn_antenna._entry.97, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @il4965_find_disconn_antenna._entry_ptr.99, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.101, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 698, i32 4}
!153 = !{ptr @il4965_find_disconn_antenna._entry.100, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @il4965_find_disconn_antenna._entry_ptr.102, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.104, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 706, i32 3}
!157 = !{ptr @il4965_find_disconn_antenna._entry.103, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @il4965_find_disconn_antenna._entry_ptr.105, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.107, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 712, i32 2}
!161 = !{ptr @il4965_find_disconn_antenna._entry.106, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @il4965_find_disconn_antenna._entry_ptr.108, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.109, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 743, i32 2}
!165 = !{ptr @.str.110, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @il4965_gain_computation._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @il4965_gain_computation._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.112, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-calib.c", i32 758, i32 4}
!170 = !{ptr @il4965_gain_computation._entry.111, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @il4965_gain_computation._entry_ptr.113, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i8 0, i8 2}
