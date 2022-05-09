; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/3945-rs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/3945-rs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.il3945_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.il3945_tpt_entry = type { i8, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.il3945_rate_scale_data = type { i64, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.il3945_rs_sta = type { %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.timer_list, [12 x %struct.il3945_rate_scale_data], i32 }
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
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_tx_rate_control = type { ptr, ptr, ptr, ptr, %struct.ieee80211_tx_rate, i8, i8, i32, ptr, i8 }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@il3945_rs_rate_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il3945_rs_rate_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlegacy/3945-rs.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il3945_rs_rate_init._entry_ptr = internal global ptr @il3945_rs_rate_init._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@il3945_rs_rate_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s leave\0A\00", [22 x i8] zeroinitializer }, align 32
@il3945_rs_rate_init._entry_ptr.7 = internal global ptr @il3945_rs_rate_init._entry.5, section ".printk_index", align 4
@il3945_rate_scale_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 888, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il3945_rate_scale_init\00", [41 x i8] zeroinitializer }, align 32
@il3945_rate_scale_init._entry_ptr = internal global ptr @il3945_rate_scale_init._entry, section ".printk_index", align 4
@il3945_rate_scale_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 894, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s Unable to find station to initialize rate scaling.\0A\00", [41 x i8] zeroinitializer }, align 32
@il3945_rate_scale_init._entry_ptr.11 = internal global ptr @il3945_rate_scale_init._entry.9, section ".printk_index", align 4
@il3945_expected_tpt_g_prot = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 7, i32 13, i32 35, i32 58, i32 0, i32 0, i32 0, i32 80, i32 93, i32 113, i32 123, i32 125], [48 x i8] zeroinitializer }, align 32
@il3945_expected_tpt_g = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 7, i32 13, i32 35, i32 58, i32 0, i32 0, i32 76, i32 104, i32 130, i32 168, i32 191, i32 202], [48 x i8] zeroinitializer }, align 32
@il3945_expected_tpt_a = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 40, i32 57, i32 72, i32 98, i32 121, i32 154, i32 177, i32 186], [48 x i8] zeroinitializer }, align 32
@il3945_rate_scale_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 928, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Network RSSI: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@il3945_rate_scale_init._entry_ptr.14 = internal global ptr @il3945_rate_scale_init._entry.12, section ".printk_index", align 4
@il3945_rate_scale_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 933, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s leave: rssi %d assign rate idx: %d (plcp 0x%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@il3945_rate_scale_init._entry_ptr.17 = internal global ptr @il3945_rate_scale_init._entry.15, section ".printk_index", align 4
@il3945_rates = external dso_local local_unnamed_addr constant [12 x %struct.il3945_rate_info], align 1
@rs_ops = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 0, ptr @.str.22, ptr @il3945_rs_alloc, ptr null, ptr @il3945_rs_free, ptr @il3945_rs_alloc_sta, ptr @il3945_rs_rate_init_stub, ptr null, ptr @il3945_rs_free_sta, ptr null, ptr @il3945_rs_tx_status, ptr @il3945_rs_get_rate, ptr @il3945_add_debugfs, ptr null }, [40 x i8] zeroinitializer }, align 32
@il_debug_level = external dso_local local_unnamed_addr global i32, align 4
@il3945_expected_tpt_b = internal global { <{ i32, i32, i32, i32, [8 x i32] }>, [48 x i8] } { <{ i32, i32, i32, i32, [8 x i32] }> <{ i32 7, i32 13, i32 35, i32 58, [8 x i32] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@il3945_tpt_table_g = internal constant { [10 x %struct.il3945_tpt_entry], [44 x i8] } { [10 x %struct.il3945_tpt_entry] [%struct.il3945_tpt_entry { i8 -60, i8 11 }, %struct.il3945_tpt_entry { i8 -64, i8 10 }, %struct.il3945_tpt_entry { i8 -68, i8 9 }, %struct.il3945_tpt_entry { i8 -80, i8 8 }, %struct.il3945_tpt_entry { i8 -84, i8 7 }, %struct.il3945_tpt_entry { i8 -85, i8 6 }, %struct.il3945_tpt_entry { i8 -86, i8 3 }, %struct.il3945_tpt_entry { i8 -88, i8 2 }, %struct.il3945_tpt_entry { i8 -90, i8 1 }, %struct.il3945_tpt_entry { i8 -92, i8 0 }], [44 x i8] zeroinitializer }, align 32
@il3945_tpt_table_a = internal constant { [8 x %struct.il3945_tpt_entry], [16 x i8] } { [8 x %struct.il3945_tpt_entry] [%struct.il3945_tpt_entry { i8 -60, i8 11 }, %struct.il3945_tpt_entry { i8 -64, i8 10 }, %struct.il3945_tpt_entry { i8 -72, i8 9 }, %struct.il3945_tpt_entry { i8 -80, i8 8 }, %struct.il3945_tpt_entry { i8 -84, i8 7 }, %struct.il3945_tpt_entry { i8 -85, i8 6 }, %struct.il3945_tpt_entry { i8 -87, i8 5 }, %struct.il3945_tpt_entry { i8 -89, i8 4 }], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iwl-3945-rs\00", [20 x i8] zeroinitializer }, align 32
@il3945_rs_alloc_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il3945_rs_alloc_sta\00", [44 x i8] zeroinitializer }, align 32
@il3945_rs_alloc_sta._entry_ptr = internal global ptr @il3945_rs_alloc_sta._entry, section ".printk_index", align 4
@il3945_rs_alloc_sta.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rs_sta->lock\00", [18 x i8] zeroinitializer }, align 32
@il3945_rs_alloc_sta.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&rs_sta->rate_scale_flush)\00", [36 x i8] zeroinitializer }, align 32
@il3945_rs_alloc_sta._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.23, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il3945_rs_alloc_sta._entry_ptr.28 = internal global ptr @il3945_rs_alloc_sta._entry.27, section ".printk_index", align 4
@il3945_bg_rate_scale_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.29, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"il3945_bg_rate_scale_flush\00", [37 x i8] zeroinitializer }, align 32
@il3945_bg_rate_scale_flush._entry_ptr = internal global ptr @il3945_bg_rate_scale_flush._entry, section ".printk_index", align 4
@il3945_bg_rate_scale_flush._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Tx'd %d packets in %dms\0A\00", [36 x i8] zeroinitializer }, align 32
@il3945_bg_rate_scale_flush._entry_ptr.32 = internal global ptr @il3945_bg_rate_scale_flush._entry.30, section ".printk_index", align 4
@il3945_bg_rate_scale_flush._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s new flush period: %d msec ave %d\0A\00", [59 x i8] zeroinitializer }, align 32
@il3945_bg_rate_scale_flush._entry_ptr.35 = internal global ptr @il3945_bg_rate_scale_flush._entry.33, section ".printk_index", align 4
@il3945_bg_rate_scale_flush._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.29, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il3945_bg_rate_scale_flush._entry_ptr.37 = internal global ptr @il3945_bg_rate_scale_flush._entry.36, section ".printk_index", align 4
@il3945_rate_scale_flush_wins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s flushing %d samples of rate idx %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"il3945_rate_scale_flush_wins\00", [35 x i8] zeroinitializer }, align 32
@il3945_rate_scale_flush_wins._entry_ptr = internal global ptr @il3945_rate_scale_flush_wins._entry, section ".printk_index", align 4
@il3945_rs_tx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.40, ptr @.str.2, i32 437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il3945_rs_tx_status\00", [44 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr = internal global ptr @il3945_rs_tx_status._entry, section ".printk_index", align 4
@il3945_rs_tx_status._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s leave: Rate out of bounds: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.43 = internal global ptr @il3945_rs_tx_status._entry.41, section ".printk_index", align 4
@il3945_rs_tx_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s leave: No STA il data to update!\0A\00", [59 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.46 = internal global ptr @il3945_rs_tx_status._entry.44, section ".printk_index", align 4
@il3945_rs_tx_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.2, i32 457, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s leave: STA il data uninitialized!\0A\00", [58 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.49 = internal global ptr @il3945_rs_tx_status._entry.47, section ".printk_index", align 4
@il3945_rs_tx_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Update rate %d for %d retries.\0A\00", [61 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.52 = internal global ptr @il3945_rs_tx_status._entry.50, section ".printk_index", align 4
@il3945_rs_tx_status._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s Update rate %d with %s.\0A\00", [36 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.55 = internal global ptr @il3945_rs_tx_status._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.40, ptr @.str.2, i32 520, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il3945_rs_tx_status._entry_ptr.59 = internal global ptr @il3945_rs_tx_status._entry.58, section ".printk_index", align 4
@il3945_collect_tx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 249, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s leave: retries == 0 -- should be at least 1\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il3945_collect_tx_data\00", [41 x i8] zeroinitializer }, align 32
@il3945_collect_tx_data._entry_ptr = internal global ptr @il3945_collect_tx_data._entry, section ".printk_index", align 4
@il3945_rs_get_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.62, ptr @.str.2, i32 626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il3945_rs_get_rate\00", [45 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr = internal global ptr @il3945_rs_get_rate._entry, section ".printk_index", align 4
@il3945_rs_get_rate._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 630, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s Rate scaling information not initialized yet.\0A\00", [46 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.65 = internal global ptr @il3945_rs_get_rate._entry.63, section ".printk_index", align 4
@il3945_rs_get_rate._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 678, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s Invalid average_tpt on rate %d: counter: %d, success_counter: %d, expected_tpt is %sNULL\0A\00", [35 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.68 = internal global ptr @il3945_rs_get_rate._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@il3945_rs_get_rate._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.62, ptr @.str.2, i32 710, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s decrease rate because of low success_ratio\0A\00", [49 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.73 = internal global ptr @il3945_rs_get_rate._entry.71, section ".printk_index", align 4
@il3945_rs_get_rate._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.62, ptr @.str.2, i32 729, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s No action -- low [%d] & high [%d] < current_tpt [%d]\0A\00", [39 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.76 = internal global ptr @il3945_rs_get_rate._entry.74, section ".printk_index", align 4
@il3945_rs_get_rate._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.62, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s decrease rate because of high tpt\0A\00", [58 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.79 = internal global ptr @il3945_rs_get_rate._entry.77, section ".printk_index", align 4
@il3945_rs_get_rate._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.62, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s decrease rate because of low tpt\0A\00", [59 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.82 = internal global ptr @il3945_rs_get_rate._entry.80, section ".printk_index", align 4
@il3945_rs_get_rate._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.62, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s Selected %d (action %d) - low %d high %d\0A\00", [51 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.85 = internal global ptr @il3945_rs_get_rate._entry.83, section ".printk_index", align 4
@il3945_rs_get_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@il3945_rs_get_rate._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.62, ptr @.str.2, i32 798, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s leave: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@il3945_rs_get_rate._entry_ptr.88 = internal global ptr @il3945_rs_get_rate._entry.86, section ".printk_index", align 4
@il3945_get_adjacent_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Skipping masked lower rate: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il3945_get_adjacent_rate\00", [39 x i8] zeroinitializer }, align 32
@il3945_get_adjacent_rate._entry_ptr = internal global ptr @il3945_get_adjacent_rate._entry, section ".printk_index", align 4
@il3945_get_adjacent_rate._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 581, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Skipping masked higher rate: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@il3945_get_adjacent_rate._entry_ptr.93 = internal global ptr @il3945_get_adjacent_rate._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_stats_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_stats_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @il3945_sta_dbgfs_stats_table_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"tx packets=%d last rate idx=%d\0Arate=0x%X flush time %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"counter=%d success=%d %%=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 328, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 373, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 888, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 894, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"il3945_expected_tpt_g_prot\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 32, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"il3945_expected_tpt_g\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 28, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant [22 x i8] c"il3945_expected_tpt_a\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 36, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 928, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 932, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"rs_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 863, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"il3945_expected_tpt_b\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 40, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 695, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 723, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"il3945_tpt_table_g\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 60, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"il3945_tpt_table_a\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 49, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 864, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 395, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 399, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 400, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 401, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 177, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 192, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 211, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 229, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 153, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 437, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 446, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 451, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 457, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 489, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 498, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 520, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 249, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 626, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 630, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 674, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 710, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 728, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 742, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 747, i32 5 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 782, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 798, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 568, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 581, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 846, i32 22 }
@___asan_gen_.362 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_stats_table_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 835, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 819, i32 7 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.369 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlegacy/3945-rs.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 825, i32 28 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @il3945_bg_rate_scale_flush._entry, ptr @il3945_bg_rate_scale_flush._entry.30, ptr @il3945_bg_rate_scale_flush._entry.33, ptr @il3945_bg_rate_scale_flush._entry.36, ptr @il3945_bg_rate_scale_flush._entry_ptr, ptr @il3945_bg_rate_scale_flush._entry_ptr.32, ptr @il3945_bg_rate_scale_flush._entry_ptr.35, ptr @il3945_bg_rate_scale_flush._entry_ptr.37, ptr @il3945_collect_tx_data._entry, ptr @il3945_collect_tx_data._entry_ptr, ptr @il3945_get_adjacent_rate._entry, ptr @il3945_get_adjacent_rate._entry.91, ptr @il3945_get_adjacent_rate._entry_ptr, ptr @il3945_get_adjacent_rate._entry_ptr.93, ptr @il3945_rate_scale_flush_wins._entry, ptr @il3945_rate_scale_flush_wins._entry_ptr, ptr @il3945_rate_scale_init._entry, ptr @il3945_rate_scale_init._entry.12, ptr @il3945_rate_scale_init._entry.15, ptr @il3945_rate_scale_init._entry.9, ptr @il3945_rate_scale_init._entry_ptr, ptr @il3945_rate_scale_init._entry_ptr.11, ptr @il3945_rate_scale_init._entry_ptr.14, ptr @il3945_rate_scale_init._entry_ptr.17, ptr @il3945_rs_alloc_sta._entry, ptr @il3945_rs_alloc_sta._entry.27, ptr @il3945_rs_alloc_sta._entry_ptr, ptr @il3945_rs_alloc_sta._entry_ptr.28, ptr @il3945_rs_get_rate._entry, ptr @il3945_rs_get_rate._entry.63, ptr @il3945_rs_get_rate._entry.66, ptr @il3945_rs_get_rate._entry.71, ptr @il3945_rs_get_rate._entry.74, ptr @il3945_rs_get_rate._entry.77, ptr @il3945_rs_get_rate._entry.80, ptr @il3945_rs_get_rate._entry.83, ptr @il3945_rs_get_rate._entry.86, ptr @il3945_rs_get_rate._entry_ptr, ptr @il3945_rs_get_rate._entry_ptr.65, ptr @il3945_rs_get_rate._entry_ptr.68, ptr @il3945_rs_get_rate._entry_ptr.73, ptr @il3945_rs_get_rate._entry_ptr.76, ptr @il3945_rs_get_rate._entry_ptr.79, ptr @il3945_rs_get_rate._entry_ptr.82, ptr @il3945_rs_get_rate._entry_ptr.85, ptr @il3945_rs_get_rate._entry_ptr.88, ptr @il3945_rs_rate_init._entry, ptr @il3945_rs_rate_init._entry.5, ptr @il3945_rs_rate_init._entry_ptr, ptr @il3945_rs_rate_init._entry_ptr.7, ptr @il3945_rs_tx_status._entry, ptr @il3945_rs_tx_status._entry.41, ptr @il3945_rs_tx_status._entry.44, ptr @il3945_rs_tx_status._entry.47, ptr @il3945_rs_tx_status._entry.50, ptr @il3945_rs_tx_status._entry.53, ptr @il3945_rs_tx_status._entry.58, ptr @il3945_rs_tx_status._entry_ptr, ptr @il3945_rs_tx_status._entry_ptr.43, ptr @il3945_rs_tx_status._entry_ptr.46, ptr @il3945_rs_tx_status._entry_ptr.49, ptr @il3945_rs_tx_status._entry_ptr.52, ptr @il3945_rs_tx_status._entry_ptr.55, ptr @il3945_rs_tx_status._entry_ptr.59, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @il3945_expected_tpt_g_prot, ptr @il3945_expected_tpt_g, ptr @il3945_expected_tpt_a, ptr @.str.13, ptr @.str.16, ptr @rs_ops, ptr @il3945_expected_tpt_b, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @il3945_tpt_table_g, ptr @il3945_tpt_table_a, ptr @.str.22, ptr @.str.23, ptr @il3945_rs_alloc_sta.__key, ptr @.str.24, ptr @il3945_rs_alloc_sta.__key.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @rs_sta_dbgfs_stats_table_ops, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_rate_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_rate_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rate_scale_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rate_scale_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_expected_tpt_g_prot to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_expected_tpt_g to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_expected_tpt_a to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rate_scale_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rate_scale_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_expected_tpt_b to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_tpt_table_g to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_tpt_table_a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_alloc_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_alloc_sta.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_alloc_sta.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_alloc_sta._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_bg_rate_scale_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_bg_rate_scale_flush._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_bg_rate_scale_flush._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_bg_rate_scale_flush._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rate_scale_flush_wins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_tx_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_collect_tx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rs_get_rate._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_get_adjacent_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_get_adjacent_rate._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_stats_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_rs_rate_init(ptr noundef %il, ptr nocapture noundef %sta, i8 noundef zeroext %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il, align 8
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %4 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.else.i ], [ %3, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end7_crit_edge, label %do.end

il_get_debug_level.exit.do.end7_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end7_crit_edge
  %conv = zext i8 %sta_id to i32
  %hw_params = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97
  %7 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_params, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %sta_id)
  %cmp = icmp eq i8 %8, %sta_id
  br i1 %cmp, label %do.end7.out_crit_edge, label %if.end11

do.end7.out_crit_edge:                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %do.end7
  %wiphy13 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy13, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chandef, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %10, i32 0, i32 53, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %il14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %17 = ptrtoint ptr %il14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %il, ptr %il14, align 4
  %start_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 3
  %18 = ptrtoint ptr %start_rate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 13, ptr %start_rate, align 2
  %expected_tpt = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %19 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @il3945_expected_tpt_b, ptr %expected_tpt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %last_partial_flush = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %21 = ptrtoint ptr %last_partial_flush to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_partial_flush, align 4
  %22 = load volatile i32, ptr @jiffies, align 128
  %last_flush = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2
  %23 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_flush, align 8
  %flush_time = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %24 = ptrtoint ptr %flush_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 300, ptr %flush_time, align 4
  %last_tx_packets = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6
  %25 = ptrtoint ptr %last_tx_packets to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %last_tx_packets, align 8
  %win = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end11
  %i.096 = phi i32 [ 0, %if.end11 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx17 = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %arrayidx17, align 8
  %success_counter.i = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096, i32 1
  %27 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096, i32 2
  %28 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096, i32 3
  %29 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096, i32 4
  %30 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr [12 x %struct.il3945_rate_scale_data], ptr %win, i32 0, i32 %i.096, i32 5
  %31 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stamp.i, align 8
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %16, i32 0, i32 4
  %32 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_bitrates, align 4
  %band22 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %16, i32 0, i32 2
  br label %for.cond18

for.cond18:                                       ; preds = %for.body21.for.cond18_crit_edge, %for.end
  %i.1.in = phi i32 [ %33, %for.end ], [ %i.1, %for.body21.for.cond18_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp19 = icmp sgt i32 %i.1, -1
  br i1 %cmp19, label %for.body21, label %for.cond18.for.end29_crit_edge

for.cond18.for.end29_crit_edge:                   ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end29

for.body21:                                       ; preds = %for.cond18
  %34 = ptrtoint ptr %band22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %band22, align 4
  %arrayidx23 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx23, align 4
  %shl = shl nuw i32 1, %i.1
  %and24 = and i32 %37, %shl
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.body21.for.cond18_crit_edge, label %if.then26

for.body21.for.cond18_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond18

if.then26:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #12
  %last_txrate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 13
  %38 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %i.1, ptr %last_txrate_idx, align 8
  br label %for.end29

for.end29:                                        ; preds = %if.then26, %for.cond18.for.end29_crit_edge
  %39 = ptrtoint ptr %band22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %band22, align 4
  %arrayidx32 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx32, align 4
  %sta_supp_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 8
  %43 = ptrtoint ptr %sta_supp_rates to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sta_supp_rates, align 8
  %44 = load i32, ptr %band22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp34 = icmp eq i32 %44, 1
  br i1 %cmp34, label %if.then36, label %for.end29.out_crit_edge

for.end29.out_crit_edge:                          ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then36:                                        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #12
  %last_txrate_idx37 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28, i32 13
  %45 = ptrtoint ptr %last_txrate_idx37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_txrate_idx37, align 8
  %add = add i32 %46, 4
  store i32 %add, ptr %last_txrate_idx37, align 8
  %47 = ptrtoint ptr %sta_supp_rates to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sta_supp_rates, align 8
  %shl39 = shl i32 %48, 4
  store i32 %shl39, ptr %sta_supp_rates, align 8
  br label %out

out:                                              ; preds = %if.then36, %for.end29.out_crit_edge, %do.end7.out_crit_edge
  %used = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %conv, i32 2
  %49 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %used, align 8
  %51 = and i8 %50, -5
  store i8 %51, ptr %used, align 8
  %52 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i91 = icmp eq i32 %53, 0
  br i1 %tobool.not.i91, label %if.else.i92, label %out.il_get_debug_level.exit94_crit_edge

out.il_get_debug_level.exit94_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit94

if.else.i92:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %54 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit94

il_get_debug_level.exit94:                        ; preds = %if.else.i92, %out.il_get_debug_level.exit94_crit_edge
  %retval.0.i93 = phi i32 [ %54, %if.else.i92 ], [ %53, %out.il_get_debug_level.exit94_crit_edge ]
  %and47 = and i32 %retval.0.i93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %il_get_debug_level.exit94.do.end58_crit_edge, label %do.end52

il_get_debug_level.exit94.do.end58_crit_edge:     ; preds = %il_get_debug_level.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end52:                                         ; preds = %il_get_debug_level.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %il, align 8
  %wiphy54 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy54, align 8
  %dev55 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end52, %il_get_debug_level.exit94.do.end58_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_rate_scale_init(ptr nocapture noundef readonly %hw, i32 noundef %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i121 = icmp eq i32 %3, 0
  br i1 %tobool.not.i121, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %4 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.else.i ], [ %3, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end4_crit_edge, label %do.end

il_get_debug_level.exit.do.end4_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end4_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !175) #10
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %do.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end4.rcu_read_lock.exit_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end4.rcu_read_lock.exit_crit_edge
  %vif = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 53
  %13 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vif, align 4
  %sta6 = getelementptr %struct.il_priv, ptr %1, i32 0, i32 85, i32 %sta_id, i32 0, i32 2
  %call7 = tail call ptr @ieee80211_find_sta(ptr noundef %14, ptr noundef %sta6) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.body10, label %if.end24

do.body10:                                        ; preds = %rcu_read_lock.exit
  %15 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i123 = icmp eq i32 %16, 0
  br i1 %tobool.not.i123, label %if.else.i124, label %do.body10.il_get_debug_level.exit126_crit_edge

do.body10.il_get_debug_level.exit126_crit_edge:   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit126

if.else.i124:                                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %17 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit126

il_get_debug_level.exit126:                       ; preds = %if.else.i124, %do.body10.il_get_debug_level.exit126_crit_edge
  %retval.0.i125 = phi i32 [ %17, %if.else.i124 ], [ %16, %do.body10.il_get_debug_level.exit126_crit_edge ]
  %and12 = and i32 %retval.0.i125, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %il_get_debug_level.exit126.do.end23_crit_edge, label %do.end17

il_get_debug_level.exit126.do.end23_crit_edge:    ; preds = %il_get_debug_level.exit126
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end17:                                         ; preds = %il_get_debug_level.exit126
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %wiphy19 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy19, align 8
  %dev20 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end17, %il_get_debug_level.exit126.do.end23_crit_edge
  %call.i127 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i127, label %do.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i130

do.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i130:                               ; preds = %do.end23
  %call1.i128 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128)
  %tobool.not.i129 = icmp eq i32 %call1.i128, 0
  br i1 %tobool.not.i129, label %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i132

land.lhs.true.i130.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i132:                              ; preds = %land.lhs.true.i130
  %.b4.i131 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131, label %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, label %if.then.i133

land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i133:                                     ; preds = %land.lhs.true2.i132
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i133, %land.lhs.true2.i132.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i130.rcu_read_unlock.exit_crit_edge, %do.end23.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  br label %cleanup

if.end24:                                         ; preds = %rcu_read_lock.exit
  %rs_sta26 = getelementptr inbounds %struct.ieee80211_sta, ptr %call7, i32 1, i32 0, i32 2
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_sta26) #10
  %tgg = getelementptr inbounds %struct.ieee80211_sta, ptr %call7, i32 1, i32 6, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %tgg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %tgg, align 8
  %band = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %band, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.body44 [
    i32 0, label %sw.bb
    i32 1, label %if.end24.sw.epilog_crit_edge
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  %flags35 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 56, i32 12
  %26 = ptrtoint ptr %flags35 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %flags35, align 1
  %and36 = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %sw.bb.sw.epilog_crit_edge, label %if.then38

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then38:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %tgg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %tgg, align 8
  br label %sw.epilog

do.body44:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlegacy/3945-rs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 918, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

sw.epilog:                                        ; preds = %if.then38, %sw.bb.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge
  %il3945_expected_tpt_g_prot.sink = phi ptr [ @il3945_expected_tpt_g_prot, %if.then38 ], [ @il3945_expected_tpt_g, %sw.bb.sw.epilog_crit_edge ], [ @il3945_expected_tpt_a, %if.end24.sw.epilog_crit_edge ]
  %expected_tpt = getelementptr inbounds %struct.ieee80211_sta, ptr %call7, i32 1, i32 5
  %29 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %il3945_expected_tpt_g_prot.sink, ptr %expected_tpt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_sta26, i32 noundef %call30) #10
  %last_rx_rssi = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 96, i32 0, i32 9
  %30 = ptrtoint ptr %last_rx_rssi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_rx_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp51 = icmp eq i32 %31, 0
  %spec.store.select = select i1 %cmp51, i32 -100, i32 %31
  %32 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i137 = icmp eq i32 %33, 0
  br i1 %tobool.not.i137, label %if.else.i138, label %sw.epilog.il_get_debug_level.exit140_crit_edge

sw.epilog.il_get_debug_level.exit140_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit140

if.else.i138:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %34 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit140

il_get_debug_level.exit140:                       ; preds = %if.else.i138, %sw.epilog.il_get_debug_level.exit140_crit_edge
  %retval.0.i139 = phi i32 [ %34, %if.else.i138 ], [ %33, %sw.epilog.il_get_debug_level.exit140_crit_edge ]
  %and57 = and i32 %retval.0.i139, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %il_get_debug_level.exit140.do.end68_crit_edge, label %do.end62

il_get_debug_level.exit140.do.end68_crit_edge:    ; preds = %il_get_debug_level.exit140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

do.end62:                                         ; preds = %il_get_debug_level.exit140
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %wiphy64 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy64 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy64, align 8
  %dev65 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.8, i32 noundef %spec.store.select) #13
  br label %do.end68

do.end68:                                         ; preds = %do.end62, %il_get_debug_level.exit140.do.end68_crit_edge
  %39 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %band, align 4
  %41 = add i32 %spec.store.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -101, i32 %41)
  %42 = icmp ult i32 %41, -101
  %rssi.addr.0.i = select i1 %42, i32 -100, i32 %spec.store.select
  %43 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %40, label %do.body.i [
    i32 0, label %do.end68.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

do.end68.sw.epilog.i_crit_edge:                   ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.body.i:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlegacy/3945-rs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb2.i, %do.end68.sw.epilog.i_crit_edge
  %table_size.0.i = phi i32 [ 8, %sw.bb2.i ], [ 10, %do.end68.sw.epilog.i_crit_edge ]
  %tpt_table.0.i = phi ptr [ @il3945_tpt_table_a, %sw.bb2.i ], [ @il3945_tpt_table_g, %do.end68.sw.epilog.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %sw.epilog.i
  %idx.023.i = phi i32 [ 0, %sw.epilog.i ], [ %inc.i, %while.body.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.il3945_tpt_entry, ptr %tpt_table.0.i, i32 %idx.023.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rssi.addr.0.i, i32 %conv.i)
  %cmp7.i = icmp slt i32 %rssi.addr.0.i, %conv.i
  br i1 %cmp7.i, label %while.body.i, label %land.rhs.i.il3945_get_rate_idx_by_rssi.exit_crit_edge

land.rhs.i.il3945_get_rate_idx_by_rssi.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il3945_get_rate_idx_by_rssi.exit

while.body.i:                                     ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %idx.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %table_size.0.i
  br i1 %exitcond.not.i, label %while.body.i.il3945_get_rate_idx_by_rssi.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.il3945_get_rate_idx_by_rssi.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il3945_get_rate_idx_by_rssi.exit

il3945_get_rate_idx_by_rssi.exit:                 ; preds = %while.body.i.il3945_get_rate_idx_by_rssi.exit_crit_edge, %land.rhs.i.il3945_get_rate_idx_by_rssi.exit_crit_edge
  %idx.0.lcssa.i = phi i32 [ %table_size.0.i, %while.body.i.il3945_get_rate_idx_by_rssi.exit_crit_edge ], [ %idx.023.i, %land.rhs.i.il3945_get_rate_idx_by_rssi.exit_crit_edge ]
  %sub.i = add nsw i32 %table_size.0.i, -1
  %46 = tail call i32 @llvm.umin.i32(i32 %idx.0.lcssa.i, i32 %sub.i) #10
  %idx12.i = getelementptr %struct.il3945_tpt_entry, ptr %tpt_table.0.i, i32 %46, i32 1
  %47 = ptrtoint ptr %idx12.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %idx12.i, align 1
  %start_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %call7, i32 1, i32 6, i32 1, i32 1, i32 3
  %49 = ptrtoint ptr %start_rate to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %start_rate, align 2
  %50 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i142 = icmp eq i32 %51, 0
  br i1 %tobool.not.i142, label %if.else.i143, label %il3945_get_rate_idx_by_rssi.exit.il_get_debug_level.exit145_crit_edge

il3945_get_rate_idx_by_rssi.exit.il_get_debug_level.exit145_crit_edge: ; preds = %il3945_get_rate_idx_by_rssi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit145

if.else.i143:                                     ; preds = %il3945_get_rate_idx_by_rssi.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %52 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit145

il_get_debug_level.exit145:                       ; preds = %if.else.i143, %il3945_get_rate_idx_by_rssi.exit.il_get_debug_level.exit145_crit_edge
  %retval.0.i144 = phi i32 [ %52, %if.else.i143 ], [ %51, %il3945_get_rate_idx_by_rssi.exit.il_get_debug_level.exit145_crit_edge ]
  %and73 = and i32 %retval.0.i144, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %il_get_debug_level.exit145.do.end89_crit_edge, label %do.end78

il_get_debug_level.exit145.do.end89_crit_edge:    ; preds = %il_get_debug_level.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end78:                                         ; preds = %il_get_debug_level.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %wiphy80 = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy80 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy80, align 8
  %dev81 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  %conv83 = zext i8 %48 to i32
  %arrayidx85 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv83
  %57 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef %spec.store.select, i32 noundef %conv83, i32 noundef %conv86) #13
  br label %do.end89

do.end89:                                         ; preds = %do.end78, %il_get_debug_level.exit145.do.end89_crit_edge
  %call.i146 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i146, label %do.end89.rcu_read_unlock.exit156_crit_edge, label %land.lhs.true.i149

do.end89.rcu_read_unlock.exit156_crit_edge:       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit156

land.lhs.true.i149:                               ; preds = %do.end89
  %call1.i147 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool.not.i148 = icmp eq i32 %call1.i147, 0
  br i1 %tobool.not.i148, label %land.lhs.true.i149.rcu_read_unlock.exit156_crit_edge, label %land.lhs.true2.i151

land.lhs.true.i149.rcu_read_unlock.exit156_crit_edge: ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit156

land.lhs.true2.i151:                              ; preds = %land.lhs.true.i149
  %.b4.i150 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i150, label %land.lhs.true2.i151.rcu_read_unlock.exit156_crit_edge, label %if.then.i152

land.lhs.true2.i151.rcu_read_unlock.exit156_crit_edge: ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit156

if.then.i152:                                     ; preds = %land.lhs.true2.i151
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #10
  br label %rcu_read_unlock.exit156

rcu_read_unlock.exit156:                          ; preds = %if.then.i152, %land.lhs.true2.i151.rcu_read_unlock.exit156_crit_edge, %land.lhs.true.i149.rcu_read_unlock.exit156_crit_edge, %do.end89.rcu_read_unlock.exit156_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit156, %rcu_read_unlock.exit
  %59 = tail call i32 @llvm.read_register.i32(metadata !175) #10
  %and.i.i.i.i.i153 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i153 to ptr
  %preempt_count.i.i.i.i154 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i154, align 4
  %sub.i.i.i155 = add i32 %62, -1
  store volatile i32 %sub.i.i.i155, ptr %preempt_count.i.i.i.i154, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_rate_control_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @rs_ops) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_rate_control_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @rs_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @il3945_rs_alloc(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @il3945_rs_free(ptr nocapture noundef %il) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @il3945_rs_alloc_sta(ptr nocapture noundef readonly %il_priv, ptr noundef %sta, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_priv, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end3_crit_edge, label %do.end

il_get_debug_level.exit.do.end3_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %il_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il_priv, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end3_crit_edge
  %rs_sta4 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %rs_sta4, ptr noundef nonnull @.str.24, ptr noundef nonnull @il3945_rs_alloc_sta.__key, i16 noundef signext 3) #10
  %rate_scale_flush = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 5
  tail call void @init_timer_key(ptr noundef %rate_scale_flush, ptr noundef nonnull @il3945_bg_rate_scale_flush, i32 noundef 0, ptr noundef nonnull @.str.26, ptr noundef nonnull @il3945_rs_alloc_sta.__key.25) #10
  %7 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i32 = icmp eq i32 %8, 0
  br i1 %tobool.not.i32, label %if.else.i33, label %do.end3.il_get_debug_level.exit35_crit_edge

do.end3.il_get_debug_level.exit35_crit_edge:      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit35

if.else.i33:                                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %9 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit35

il_get_debug_level.exit35:                        ; preds = %if.else.i33, %do.end3.il_get_debug_level.exit35_crit_edge
  %retval.0.i34 = phi i32 [ %9, %if.else.i33 ], [ %8, %do.end3.il_get_debug_level.exit35_crit_edge ]
  %and14 = and i32 %retval.0.i34, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %il_get_debug_level.exit35.do.end25_crit_edge, label %do.end19

il_get_debug_level.exit35.do.end25_crit_edge:     ; preds = %il_get_debug_level.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end19:                                         ; preds = %il_get_debug_level.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %il_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il_priv, align 8
  %wiphy21 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy21, align 8
  %dev22 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23) #13
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %il_get_debug_level.exit35.do.end25_crit_edge
  ret ptr %rs_sta4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @il3945_rs_rate_init_stub(ptr nocapture noundef %il_r, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %il_sta) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_rs_free_sta(ptr nocapture noundef readnone %il_priv, ptr nocapture noundef readnone %sta, ptr noundef %il_sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rate_scale_flush = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 11
  %call = tail call i32 @del_timer_sync(ptr noundef %rate_scale_flush) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_rs_tx_status(ptr noundef %il_rate, ptr nocapture noundef readonly %sband, ptr nocapture noundef readnone %sta, ptr noundef %il_sta, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_rate, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end4_crit_edge, label %do.end

il_get_debug_level.exit.do.end4_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il_rate, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end4_crit_edge
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load)
  %cmp = icmp slt i16 %bf.load, 0
  %narrow = select i1 %cmp, i16 15, i16 %bf.lshr
  %spec.store.select = zext i16 %narrow to i32
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 1
  %9 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitrates, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %7, align 8
  %idxprom = sext i8 %12 to i32
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %10, i32 %idxprom, i32 2
  %13 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hw_value, align 2
  %conv12 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %14)
  %cmp15 = icmp ugt i16 %14, 11
  br i1 %cmp15, label %do.body18, label %if.end32

do.body18:                                        ; preds = %do.end4
  %15 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i219 = icmp eq i32 %16, 0
  br i1 %tobool.not.i219, label %if.else.i220, label %do.body18.il_get_debug_level.exit222_crit_edge

do.body18.il_get_debug_level.exit222_crit_edge:   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit222

if.else.i220:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %17 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit222

il_get_debug_level.exit222:                       ; preds = %if.else.i220, %do.body18.il_get_debug_level.exit222_crit_edge
  %retval.0.i221 = phi i32 [ %17, %if.else.i220 ], [ %16, %do.body18.il_get_debug_level.exit222_crit_edge ]
  %and20 = and i32 %retval.0.i221, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %il_get_debug_level.exit222.cleanup_crit_edge, label %do.end25

il_get_debug_level.exit222.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit222
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end25:                                         ; preds = %il_get_debug_level.exit222
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %il_rate, align 8
  %wiphy27 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy27, align 8
  %dev28 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %conv12) #13
  br label %cleanup

if.end32:                                         ; preds = %do.end4
  %tobool33.not = icmp eq ptr %il_sta, null
  br i1 %tobool33.not, label %do.body35, label %if.end49

do.body35:                                        ; preds = %if.end32
  %22 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i224 = icmp eq i32 %23, 0
  br i1 %tobool.not.i224, label %if.else.i225, label %do.body35.il_get_debug_level.exit227_crit_edge

do.body35.il_get_debug_level.exit227_crit_edge:   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit227

if.else.i225:                                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %24 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit227

il_get_debug_level.exit227:                       ; preds = %if.else.i225, %do.body35.il_get_debug_level.exit227_crit_edge
  %retval.0.i226 = phi i32 [ %24, %if.else.i225 ], [ %23, %do.body35.il_get_debug_level.exit227_crit_edge ]
  %and37 = and i32 %retval.0.i226, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %il_get_debug_level.exit227.cleanup_crit_edge, label %do.end42

il_get_debug_level.exit227.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit227
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end42:                                         ; preds = %il_get_debug_level.exit227
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %il_rate, align 8
  %wiphy44 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy44, align 8
  %dev45 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.end49:                                         ; preds = %if.end32
  %il50 = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 1
  %29 = ptrtoint ptr %il50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %il50, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %do.body53, label %if.end67

do.body53:                                        ; preds = %if.end49
  %31 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i229 = icmp eq i32 %32, 0
  br i1 %tobool.not.i229, label %if.else.i230, label %do.body53.il_get_debug_level.exit232_crit_edge

do.body53.il_get_debug_level.exit232_crit_edge:   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit232

if.else.i230:                                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %33 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit232

il_get_debug_level.exit232:                       ; preds = %if.else.i230, %do.body53.il_get_debug_level.exit232_crit_edge
  %retval.0.i231 = phi i32 [ %33, %if.else.i230 ], [ %32, %do.body53.il_get_debug_level.exit232_crit_edge ]
  %and55 = and i32 %retval.0.i231, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %il_get_debug_level.exit232.cleanup_crit_edge, label %do.end60

il_get_debug_level.exit232.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit232
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end60:                                         ; preds = %il_get_debug_level.exit232
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %il_rate, align 8
  %wiphy62 = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy62, align 8
  %dev63 = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.end67:                                         ; preds = %if.end49
  %tx_packets = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 7
  %38 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %tx_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %narrow)
  %cmp69250 = icmp ugt i16 %narrow, 1
  br i1 %cmp69250, label %while.body.lr.ph, label %if.end67.do.body103_crit_edge

if.end67.do.body103_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103

while.body.lr.ph:                                 ; preds = %if.end67
  %retry_rate = getelementptr inbounds %struct.il_priv, ptr %il_rate, i32 0, i32 68
  br label %while.body

while.body:                                       ; preds = %do.end98.while.body_crit_edge, %while.body.lr.ph
  %conv68253 = phi i32 [ %spec.store.select, %while.body.lr.ph ], [ %conv68, %do.end98.while.body_crit_edge ]
  %retries.0252 = phi i32 [ %spec.store.select, %while.body.lr.ph ], [ %sub101, %do.end98.while.body_crit_edge ]
  %last_idx.0251 = phi i32 [ %conv12, %while.body.lr.ph ], [ %last_idx.1, %do.end98.while.body_crit_edge ]
  %40 = ptrtoint ptr %retry_rate to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %retry_rate, align 8
  %conv72 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv68253, i32 %conv72)
  %cmp73.not = icmp sgt i32 %conv68253, %conv72
  br i1 %cmp73.not, label %if.else, label %if.then75

if.then75:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %42 = trunc i32 %retries.0252 to i8
  %conv78 = add i8 %42, -1
  br label %if.end81

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call80 = tail call i32 @il3945_rs_next_rate(ptr noundef %il_rate, i32 noundef %last_idx.0251) #10
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then75
  %current_count.0 = phi i8 [ %conv78, %if.then75 ], [ %41, %if.else ]
  %last_idx.1 = phi i32 [ %last_idx.0251, %if.then75 ], [ %call80, %if.else ]
  %arrayidx82 = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %last_idx.0251
  %conv83 = sext i8 %current_count.0 to i32
  tail call fastcc void @il3945_collect_tx_data(ptr noundef nonnull %il_sta, ptr noundef %arrayidx82, i32 noundef 0, i32 noundef %conv83, i32 noundef %last_idx.0251)
  %43 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i234 = icmp eq i32 %44, 0
  br i1 %tobool.not.i234, label %if.else.i235, label %if.end81.il_get_debug_level.exit237_crit_edge

if.end81.il_get_debug_level.exit237_crit_edge:    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit237

if.else.i235:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %45 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit237

il_get_debug_level.exit237:                       ; preds = %if.else.i235, %if.end81.il_get_debug_level.exit237_crit_edge
  %retval.0.i236 = phi i32 [ %45, %if.else.i235 ], [ %44, %if.end81.il_get_debug_level.exit237_crit_edge ]
  %and86 = and i32 %retval.0.i236, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %il_get_debug_level.exit237.do.end98_crit_edge, label %do.end91

il_get_debug_level.exit237.do.end98_crit_edge:    ; preds = %il_get_debug_level.exit237
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end98

do.end91:                                         ; preds = %il_get_debug_level.exit237
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %il_rate, align 8
  %wiphy93 = getelementptr inbounds %struct.ieee80211_hw, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %wiphy93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wiphy93, align 8
  %dev94 = getelementptr inbounds %struct.wiphy, ptr %49, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.40, i32 noundef %last_idx.0251, i32 noundef %conv83) #13
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %il_get_debug_level.exit237.do.end98_crit_edge
  %sub101 = sub nsw i32 %conv68253, %conv83
  %sext = shl i32 %sub101, 24
  %conv68 = ashr exact i32 %sext, 24
  %cmp69 = icmp sgt i32 %sext, 16777216
  br i1 %cmp69, label %do.end98.while.body_crit_edge, label %do.end98.do.body103_crit_edge

do.end98.do.body103_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body103

do.end98.while.body_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body103:                                       ; preds = %do.end98.do.body103_crit_edge, %if.end67.do.body103_crit_edge
  %last_idx.0.lcssa = phi i32 [ %conv12, %if.end67.do.body103_crit_edge ], [ %last_idx.1, %do.end98.do.body103_crit_edge ]
  %50 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i239 = icmp eq i32 %51, 0
  br i1 %tobool.not.i239, label %if.else.i240, label %do.body103.il_get_debug_level.exit242_crit_edge

do.body103.il_get_debug_level.exit242_crit_edge:  ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit242

if.else.i240:                                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %52 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit242

il_get_debug_level.exit242:                       ; preds = %if.else.i240, %do.body103.il_get_debug_level.exit242_crit_edge
  %retval.0.i241 = phi i32 [ %52, %if.else.i240 ], [ %51, %do.body103.il_get_debug_level.exit242_crit_edge ]
  %and105 = and i32 %retval.0.i241, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %il_get_debug_level.exit242.do.end119_crit_edge, label %do.end110

il_get_debug_level.exit242.do.end119_crit_edge:   ; preds = %il_get_debug_level.exit242
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

do.end110:                                        ; preds = %il_get_debug_level.exit242
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %il_rate, align 8
  %wiphy112 = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy112, align 8
  %dev113 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  %57 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cb.i, align 8
  %and115 = and i32 %58, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %cond = select i1 %tobool116.not, ptr @.str.57, ptr @.str.56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.40, i32 noundef %last_idx.0.lcssa, ptr noundef nonnull %cond) #13
  br label %do.end119

do.end119:                                        ; preds = %do.end110, %il_get_debug_level.exit242.do.end119_crit_edge
  %arrayidx121 = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %last_idx.0.lcssa
  %59 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cb.i, align 8
  %and123 = and i32 %60, 512
  tail call fastcc void @il3945_collect_tx_data(ptr noundef nonnull %il_sta, ptr noundef %arrayidx121, i32 noundef %and123, i32 noundef 1, i32 noundef %last_idx.0.lcssa)
  %call129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %il_sta) #10
  %flush_pending = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 9
  %61 = ptrtoint ptr %flush_pending to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flush_pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool134.not = icmp eq i8 %62, 0
  br i1 %tobool134.not, label %land.lhs.true, label %do.end119.if.end143_crit_edge

do.end119.if.end143_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

land.lhs.true:                                    ; preds = %do.end119
  %last_flush = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 4
  %63 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %last_flush, align 8
  %flush_time = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 5
  %65 = ptrtoint ptr %flush_time to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flush_time, align 4
  %add = add i32 %66, %64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub135 = sub i32 %add, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub135)
  %cmp136 = icmp slt i32 %sub135, 0
  br i1 %cmp136, label %if.then138, label %land.lhs.true.if.end143_crit_edge

land.lhs.true.if.end143_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then138:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %last_partial_flush = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 3
  %69 = ptrtoint ptr %last_partial_flush to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %last_partial_flush, align 4
  %70 = ptrtoint ptr %flush_pending to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %flush_pending, align 1
  %rate_scale_flush = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 11
  %71 = load volatile i32, ptr @jiffies, align 128
  %add141 = add i32 %71, %66
  %call142 = tail call i32 @mod_timer(ptr noundef %rate_scale_flush, i32 noundef %add141) #10
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %land.lhs.true.if.end143_crit_edge, %do.end119.if.end143_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %il_sta, i32 noundef %call129) #10
  %72 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i244 = icmp eq i32 %73, 0
  br i1 %tobool.not.i244, label %if.else.i245, label %if.end143.il_get_debug_level.exit247_crit_edge

if.end143.il_get_debug_level.exit247_crit_edge:   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit247

if.else.i245:                                     ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %74 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit247

il_get_debug_level.exit247:                       ; preds = %if.else.i245, %if.end143.il_get_debug_level.exit247_crit_edge
  %retval.0.i246 = phi i32 [ %74, %if.else.i245 ], [ %73, %if.end143.il_get_debug_level.exit247_crit_edge ]
  %and147 = and i32 %retval.0.i246, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %il_get_debug_level.exit247.cleanup_crit_edge, label %do.end152

il_get_debug_level.exit247.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit247
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end152:                                        ; preds = %il_get_debug_level.exit247
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %il_rate, align 8
  %wiphy154 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wiphy154 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy154, align 8
  %dev155 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.40) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %il_get_debug_level.exit247.cleanup_crit_edge, %do.end60, %il_get_debug_level.exit232.cleanup_crit_edge, %do.end42, %il_get_debug_level.exit227.cleanup_crit_edge, %do.end25, %il_get_debug_level.exit222.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_rs_get_rate(ptr nocapture noundef readonly %il_r, ptr nocapture noundef readonly %sta, ptr noundef %il_sta, ptr nocapture noundef readonly %txrc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sband1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 1
  %0 = ptrtoint ptr %sband1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sband1, align 4
  %skb2 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %2 = ptrtoint ptr %skb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb2, align 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_r, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i563 = icmp eq i32 %5, 0
  br i1 %tobool.not.i563, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end6_crit_edge, label %do.end

il_get_debug_level.exit.do.end6_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il_r, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.62) #13
  br label %do.end6

do.end6:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %il_sta, null
  br i1 %tobool7.not, label %do.end6.if.end25_crit_edge, label %land.lhs.true

do.end6.if.end25_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %do.end6
  %il8 = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 1
  %11 = ptrtoint ptr %il8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %il8, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %do.body11, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body11:                                        ; preds = %land.lhs.true
  %13 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i565 = icmp eq i32 %14, 0
  br i1 %tobool.not.i565, label %if.else.i566, label %do.body11.il_get_debug_level.exit568_crit_edge

do.body11.il_get_debug_level.exit568_crit_edge:   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit568

if.else.i566:                                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %15 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit568

il_get_debug_level.exit568:                       ; preds = %if.else.i566, %do.body11.il_get_debug_level.exit568_crit_edge
  %retval.0.i567 = phi i32 [ %15, %if.else.i566 ], [ %14, %do.body11.il_get_debug_level.exit568_crit_edge ]
  %and13 = and i32 %retval.0.i567, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %il_get_debug_level.exit568.if.end25_crit_edge, label %do.end18

il_get_debug_level.exit568.if.end25_crit_edge:    ; preds = %il_get_debug_level.exit568
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end18:                                         ; preds = %il_get_debug_level.exit568
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %il_r, align 8
  %wiphy20 = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy20, align 8
  %dev21 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %il_get_debug_level.exit568.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %do.end6.if.end25_crit_edge
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %band, align 4
  %arrayidx = getelementptr [6 x i32], ptr %sta, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %23 to i16
  %rate_idx_mask = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 7
  %24 = ptrtoint ptr %rate_idx_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate_idx_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 true) #10, !range !189
  %27 = trunc i32 %26 to i8
  %28 = sub nuw nsw i8 32, %27
  %29 = select i1 %tobool.not.i, i8 0, i8 %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp ne i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp32.not = icmp eq i8 %29, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp32.not
  %max_rate_idx.0.v = select i1 %or.cond, i8 -1, i8 3
  %max_rate_idx.0 = add nsw i8 %max_rate_idx.0.v, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %max_rate_idx.0)
  %30 = icmp ugt i8 %max_rate_idx.0, 12
  %max_rate_idx.1 = select i1 %30, i8 -1, i8 %max_rate_idx.0
  %last_txrate_idx = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 13
  %31 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_txrate_idx, align 8
  %and46 = and i32 %32, 65535
  %33 = tail call i32 @llvm.umin.i32(i32 %and46, i32 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp50 = icmp eq i32 %21, 1
  %conv54 = shl i16 %conv, 4
  %rate_mask.0 = select i1 %cmp50, i16 %conv54, i16 %conv
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %il_sta) #10
  %start_rate = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 10
  %34 = ptrtoint ptr %start_rate to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %start_rate, align 2
  %conv67 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %35)
  %cmp68.not = icmp eq i8 %35, 13
  br i1 %cmp68.not, label %if.end25.if.end87_crit_edge, label %if.then70

if.end25.if.end87_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then70:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv67)
  %cmp73 = icmp ugt i32 %33, %conv67
  br i1 %cmp73, label %land.lhs.true75, label %if.then70.if.end85_crit_edge

if.then70.if.end85_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true75:                                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %conv76 = zext i16 %rate_mask.0 to i32
  %shl79 = shl nuw i32 1, %conv67
  %and80 = and i32 %shl79, %conv76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %spec.select = select i1 %tobool81.not, i32 %33, i32 %conv67
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true75, %if.then70.if.end85_crit_edge
  %idx.0 = phi i32 [ %33, %if.then70.if.end85_crit_edge ], [ %spec.select, %land.lhs.true75 ]
  %36 = ptrtoint ptr %start_rate to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 13, ptr %start_rate, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end25.if.end87_crit_edge
  %idx.1 = phi i32 [ %idx.0, %if.end85 ], [ %33, %if.end25.if.end87_crit_edge ]
  %conv88 = sext i8 %max_rate_idx.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %max_rate_idx.1)
  %cmp89.not = icmp eq i8 %max_rate_idx.1, -1
  %cmp89.not.not = xor i1 %cmp89.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.1, i32 %conv88)
  %cmp93 = icmp sgt i32 %idx.1, %conv88
  %or.cond548 = select i1 %cmp89.not.not, i1 %cmp93, i1 false
  br i1 %or.cond548, label %if.then95, label %if.end87.if.end104_crit_edge

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %conv96 = zext i16 %rate_mask.0 to i32
  %shl98 = shl nuw nsw i32 1, %conv88
  %and99 = and i32 %shl98, %conv96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %spec.select549 = select i1 %tobool100.not, i32 %idx.1, i32 %conv88
  br label %if.end104

if.end104:                                        ; preds = %if.then95, %if.end87.if.end104_crit_edge
  %idx.2 = phi i32 [ %idx.1, %if.end87.if.end104_crit_edge ], [ %spec.select549, %if.then95 ]
  %counter = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %idx.2, i32 3
  %37 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %idx.2, i32 1
  %39 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %success_counter, align 8
  %sub107 = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub107)
  %cmp108 = icmp ult i32 %sub107, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %cmp112 = icmp slt i32 %40, 8
  %or.cond550 = and i1 %cmp112, %cmp108
  br i1 %or.cond550, label %if.then114, label %if.end134

if.then114:                                       ; preds = %if.end104
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %il_sta, i32 noundef %call62) #10
  %41 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i570 = icmp eq i32 %42, 0
  br i1 %tobool.not.i570, label %if.else.i571, label %if.then114.il_get_debug_level.exit573_crit_edge

if.then114.il_get_debug_level.exit573_crit_edge:  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit573

if.else.i571:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %43 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit573

il_get_debug_level.exit573:                       ; preds = %if.else.i571, %if.then114.il_get_debug_level.exit573_crit_edge
  %retval.0.i572 = phi i32 [ %43, %if.else.i571 ], [ %42, %if.then114.il_get_debug_level.exit573_crit_edge ]
  %and118 = and i32 %retval.0.i572, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %il_get_debug_level.exit573.do.end133_crit_edge, label %do.end123

il_get_debug_level.exit573.do.end133_crit_edge:   ; preds = %il_get_debug_level.exit573
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end133

do.end123:                                        ; preds = %il_get_debug_level.exit573
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %il_r, align 8
  %wiphy125 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy125 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy125, align 8
  %dev126 = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  %48 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %counter, align 8
  %50 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %success_counter, align 8
  %expected_tpt = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 2
  %52 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %expected_tpt, align 8
  %tobool129.not = icmp eq ptr %53, null
  %cond130 = select i1 %tobool129.not, ptr @.str.70, ptr @.str.69
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef %idx.2, i32 noundef %49, i32 noundef %51, ptr noundef nonnull %cond130) #13
  br label %do.end133

do.end133:                                        ; preds = %do.end123, %il_get_debug_level.exit573.do.end133_crit_edge
  %average_tpt = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %idx.2, i32 4
  %54 = ptrtoint ptr %average_tpt to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %average_tpt, align 4
  br label %out

if.end134:                                        ; preds = %if.end104
  %average_tpt135 = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %idx.2, i32 4
  %55 = ptrtoint ptr %average_tpt135 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %average_tpt135, align 4
  %conv136 = trunc i32 %idx.2 to i8
  %57 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %band, align 4
  %il1.i = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 1
  %59 = ptrtoint ptr %il1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %il1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i = icmp eq i32 %58, 1
  br i1 %cmp.i, label %if.then.i, label %while.cond.preheader.i, !prof !190

while.cond.preheader.i:                           ; preds = %if.end134
  %conv42.i = zext i16 %rate_mask.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv136)
  %cmp30.not149.i = icmp eq i8 %conv136, 13
  br i1 %cmp30.not149.i, label %while.cond.preheader.i.while.end98.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end98.i_crit_edge:   ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end98.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %tgg.i = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 8
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %60, i32 0, i32 114
  %conv29.i630 = and i32 %idx.2, 255
  %61 = ptrtoint ptr %tgg.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tgg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool32.not.i631 = icmp eq i8 %62, 0
  %prev_rs_tgg.i632 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv29.i630, i32 6
  %prev_rs.i633 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv29.i630, i32 4
  %low.2.in.i634 = select i1 %tobool32.not.i631, ptr %prev_rs.i633, ptr %prev_rs_tgg.i632
  %63 = ptrtoint ptr %low.2.in.i634 to i32
  call void @__asan_load1_noabort(i32 %63)
  %low.2.i635 = load i8, ptr %low.2.in.i634, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %low.2.i635)
  %cmp38.i637 = icmp eq i8 %low.2.i635, 13
  br i1 %cmp38.i637, label %while.body.lr.ph.i.while.body61.lr.ph.i_crit_edge, label %while.body.lr.ph.i.if.end41.i_crit_edge

while.body.lr.ph.i.if.end41.i_crit_edge:          ; preds = %while.body.lr.ph.i
  br label %if.end41.i

while.body.lr.ph.i.while.body61.lr.ph.i_crit_edge: ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61.lr.ph.i

if.then.i:                                        ; preds = %if.end134
  %conv.i = and i32 %idx.2, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv136)
  %cmp3158.not.i = icmp eq i8 %conv136, 0
  br i1 %cmp3158.not.i, label %if.then.i.for.body14.lr.ph.i_crit_edge, label %for.body.lr.ph.i

if.then.i.for.body14.lr.ph.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = zext i16 %rate_mask.0 to i32
  br label %for.body14.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %sub.i574 = add nsw i32 %conv.i, -1
  %shl.i = shl nuw i32 1, %sub.i574
  %conv5.i = zext i16 %rate_mask.0 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mask.0160.i = phi i32 [ %shl.i, %for.body.lr.ph.i ], [ %shr.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0159.i = phi i32 [ %sub.i574, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %and.i = and i32 %mask.0160.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %for.inc.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast141.i = and i32 %i.0159.i, 255
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add nsw i32 %i.0159.i, -1
  %shr.i = lshr i32 %mask.0160.i, 1
  %cmp3.i = icmp sgt i32 %i.0159.i, 0
  br i1 %cmp3.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then7.i
  %low.0.i = phi i32 [ %phi.cast141.i, %if.then7.i ], [ 13, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %conv136)
  %cmp12162.i = icmp ult i8 %conv136, 11
  br i1 %cmp12162.i, label %for.end.i.for.body14.lr.ph.i_crit_edge, label %for.end.i.for.end23.i_crit_edge

for.end.i.for.end23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23.i

for.end.i.for.body14.lr.ph.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.lr.ph.i

for.body14.lr.ph.i:                               ; preds = %for.end.i.for.body14.lr.ph.i_crit_edge, %if.then.i.for.body14.lr.ph.i_crit_edge
  %conv15.i.pre-phi = phi i32 [ %.pre, %if.then.i.for.body14.lr.ph.i_crit_edge ], [ %conv5.i, %for.end.i.for.body14.lr.ph.i_crit_edge ]
  %low.0170.i = phi i32 [ 13, %if.then.i.for.body14.lr.ph.i_crit_edge ], [ %low.0.i, %for.end.i.for.body14.lr.ph.i_crit_edge ]
  %i.1161.i = add nuw nsw i32 %conv.i, 1
  %shl10.i = shl i32 2, %conv.i
  br label %for.body14.i

for.cond11.i:                                     ; preds = %for.body14.i
  %shl22.i = shl i32 %mask.1163.i, 1
  %i.1.i = add nuw nsw i32 %i.1164.i, 1
  %exitcond.not.i = icmp eq i32 %i.1.i, 12
  br i1 %exitcond.not.i, label %for.cond11.i.for.end23.i_crit_edge, label %for.cond11.i.for.body14.i_crit_edge

for.cond11.i.for.body14.i_crit_edge:              ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.cond11.i.for.end23.i_crit_edge:               ; preds = %for.cond11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23.i

for.body14.i:                                     ; preds = %for.cond11.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.1164.i = phi i32 [ %i.1161.i, %for.body14.lr.ph.i ], [ %i.1.i, %for.cond11.i.for.body14.i_crit_edge ]
  %mask.1163.i = phi i32 [ %shl10.i, %for.body14.lr.ph.i ], [ %shl22.i, %for.cond11.i.for.body14.i_crit_edge ]
  %and16.i = and i32 %mask.1163.i, %conv15.i.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.cond11.i, label %if.then18.i

if.then18.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.i = shl i32 %i.1164.i, 8
  %phi.bo.i = and i32 %phi.cast.i, 65280
  br label %for.end23.i

for.end23.i:                                      ; preds = %if.then18.i, %for.cond11.i.for.end23.i_crit_edge, %for.end.i.for.end23.i_crit_edge
  %low.0169.i = phi i32 [ %low.0170.i, %if.then18.i ], [ %low.0.i, %for.end.i.for.end23.i_crit_edge ], [ %low.0170.i, %for.cond11.i.for.end23.i_crit_edge ]
  %high.0.i = phi i32 [ %phi.bo.i, %if.then18.i ], [ 3328, %for.end.i.for.end23.i_crit_edge ], [ 3328, %for.cond11.i.for.end23.i_crit_edge ]
  %or.i = or i32 %high.0.i, %low.0169.i
  %conv27.i = trunc i32 %or.i to i16
  br label %il3945_get_adjacent_rate.exit

if.end41.i:                                       ; preds = %do.end56.i.if.end41.i_crit_edge, %while.body.lr.ph.i.if.end41.i_crit_edge
  %low.2.i638 = phi i8 [ %low.2.i, %do.end56.i.if.end41.i_crit_edge ], [ %low.2.i635, %while.body.lr.ph.i.if.end41.i_crit_edge ]
  %conv37.i639 = zext i8 %low.2.i638 to i32
  %shl44.i = shl nuw i32 1, %conv37.i639
  %and45.i = and i32 %shl44.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body.i, label %if.end41.i.while.body61.lr.ph.i_crit_edge

if.end41.i.while.body61.lr.ph.i_crit_edge:        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61.lr.ph.i

do.body.i:                                        ; preds = %if.end41.i
  %64 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.il_get_debug_level.exit.i_crit_edge

do.body.i.il_get_debug_level.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %66 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %66, %if.else.i.i ], [ %65, %do.body.i.il_get_debug_level.exit.i_crit_edge ]
  %and49.i = and i32 %retval.0.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %il_get_debug_level.exit.i.do.end56.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end56.i_crit_edge:   ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %60, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %70, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef %conv37.i639) #13
  br label %do.end56.i

do.end56.i:                                       ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end56.i_crit_edge
  %71 = ptrtoint ptr %tgg.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tgg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool32.not.i = icmp eq i8 %72, 0
  %prev_rs_tgg.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv37.i639, i32 6
  %prev_rs.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv37.i639, i32 4
  %low.2.in.i = select i1 %tobool32.not.i, ptr %prev_rs.i, ptr %prev_rs_tgg.i
  %73 = ptrtoint ptr %low.2.in.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %low.2.i = load i8, ptr %low.2.in.i, align 1
  %cmp38.i = icmp eq i8 %low.2.i, 13
  br i1 %cmp38.i, label %do.end56.i.while.body61.lr.ph.i_crit_edge, label %do.end56.i.if.end41.i_crit_edge

do.end56.i.if.end41.i_crit_edge:                  ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

do.end56.i.while.body61.lr.ph.i_crit_edge:        ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body61.lr.ph.i

while.body61.lr.ph.i:                             ; preds = %do.end56.i.while.body61.lr.ph.i_crit_edge, %if.end41.i.while.body61.lr.ph.i_crit_edge, %while.body.lr.ph.i.while.body61.lr.ph.i_crit_edge
  %low.2.i.lcssa = phi i8 [ 13, %while.body.lr.ph.i.while.body61.lr.ph.i_crit_edge ], [ 13, %do.end56.i.while.body61.lr.ph.i_crit_edge ], [ %low.2.i638, %if.end41.i.while.body61.lr.ph.i_crit_edge ]
  %74 = ptrtoint ptr %tgg.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %tgg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool63.not.i642 = icmp eq i8 %75, 0
  %next_rs_tgg.i643 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv29.i630, i32 7
  %next_rs.i644 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv29.i630, i32 5
  %high.2.in.i645 = select i1 %tobool63.not.i642, ptr %next_rs.i644, ptr %next_rs_tgg.i643
  %76 = ptrtoint ptr %high.2.in.i645 to i32
  call void @__asan_load1_noabort(i32 %76)
  %high.2.i646 = load i8, ptr %high.2.in.i645, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %high.2.i646)
  %cmp72.i648 = icmp eq i8 %high.2.i646, 13
  br i1 %cmp72.i648, label %while.body61.lr.ph.i.while.end98.i_crit_edge, label %while.body61.lr.ph.i.if.end75.i_crit_edge

while.body61.lr.ph.i.if.end75.i_crit_edge:        ; preds = %while.body61.lr.ph.i
  br label %if.end75.i

while.body61.lr.ph.i.while.end98.i_crit_edge:     ; preds = %while.body61.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end98.i

if.end75.i:                                       ; preds = %do.end97.i.if.end75.i_crit_edge, %while.body61.lr.ph.i.if.end75.i_crit_edge
  %high.2.i649 = phi i8 [ %high.2.i, %do.end97.i.if.end75.i_crit_edge ], [ %high.2.i646, %while.body61.lr.ph.i.if.end75.i_crit_edge ]
  %conv71.i650 = zext i8 %high.2.i649 to i32
  %shl78.i = shl nuw i32 1, %conv71.i650
  %and79.i = and i32 %shl78.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %do.body83.i, label %if.end75.i.while.end98.i_crit_edge

if.end75.i.while.end98.i_crit_edge:               ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end98.i

do.body83.i:                                      ; preds = %if.end75.i
  %77 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i143.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i143.i, label %if.else.i144.i, label %do.body83.i.il_get_debug_level.exit146.i_crit_edge

do.body83.i.il_get_debug_level.exit146.i_crit_edge: ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit146.i

if.else.i144.i:                                   ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %79 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit146.i

il_get_debug_level.exit146.i:                     ; preds = %if.else.i144.i, %do.body83.i.il_get_debug_level.exit146.i_crit_edge
  %retval.0.i145.i = phi i32 [ %79, %if.else.i144.i ], [ %78, %do.body83.i.il_get_debug_level.exit146.i_crit_edge ]
  %and85.i = and i32 %retval.0.i145.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %il_get_debug_level.exit146.i.do.end97.i_crit_edge, label %do.end90.i

il_get_debug_level.exit146.i.do.end97.i_crit_edge: ; preds = %il_get_debug_level.exit146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97.i

do.end90.i:                                       ; preds = %il_get_debug_level.exit146.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %60, align 8
  %wiphy92.i = getelementptr inbounds %struct.ieee80211_hw, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %wiphy92.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wiphy92.i, align 8
  %dev93.i = getelementptr inbounds %struct.wiphy, ptr %83, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.90, i32 noundef %conv71.i650) #13
  br label %do.end97.i

do.end97.i:                                       ; preds = %do.end90.i, %il_get_debug_level.exit146.i.do.end97.i_crit_edge
  %84 = ptrtoint ptr %tgg.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tgg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool63.not.i = icmp eq i8 %85, 0
  %next_rs_tgg.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv71.i650, i32 7
  %next_rs.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv71.i650, i32 5
  %high.2.in.i = select i1 %tobool63.not.i, ptr %next_rs.i, ptr %next_rs_tgg.i
  %86 = ptrtoint ptr %high.2.in.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %high.2.i = load i8, ptr %high.2.in.i, align 1
  %cmp72.i = icmp eq i8 %high.2.i, 13
  br i1 %cmp72.i, label %do.end97.i.while.end98.i_crit_edge, label %do.end97.i.if.end75.i_crit_edge

do.end97.i.if.end75.i_crit_edge:                  ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75.i

do.end97.i.while.end98.i_crit_edge:               ; preds = %do.end97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end98.i

while.end98.i:                                    ; preds = %do.end97.i.while.end98.i_crit_edge, %if.end75.i.while.end98.i_crit_edge, %while.body61.lr.ph.i.while.end98.i_crit_edge, %while.cond.preheader.i.while.end98.i_crit_edge
  %low.3172.i = phi i8 [ 13, %while.cond.preheader.i.while.end98.i_crit_edge ], [ %low.2.i.lcssa, %while.body61.lr.ph.i.while.end98.i_crit_edge ], [ %low.2.i.lcssa, %if.end75.i.while.end98.i_crit_edge ], [ %low.2.i.lcssa, %do.end97.i.while.end98.i_crit_edge ]
  %high.3.i = phi i8 [ 13, %while.cond.preheader.i.while.end98.i_crit_edge ], [ 13, %while.body61.lr.ph.i.while.end98.i_crit_edge ], [ 13, %do.end97.i.while.end98.i_crit_edge ], [ %high.2.i649, %if.end75.i.while.end98.i_crit_edge ]
  %conv99.i = zext i8 %high.3.i to i16
  %shl100.i = shl nuw i16 %conv99.i, 8
  %conv101.i = zext i8 %low.3172.i to i16
  %or102.i = or i16 %shl100.i, %conv101.i
  br label %il3945_get_adjacent_rate.exit

il3945_get_adjacent_rate.exit:                    ; preds = %while.end98.i, %for.end23.i
  %retval.0.i575 = phi i16 [ %conv27.i, %for.end23.i ], [ %or102.i, %while.end98.i ]
  %87 = lshr i16 %retval.0.i575, 8
  %conv144 = trunc i16 %87 to i8
  %88 = sext i8 %max_rate_idx.1 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %87, i16 %88)
  %cmp151 = icmp sgt i16 %87, %88
  %spec.store.select = select i1 %cmp151, i8 13, i8 %conv144
  %high.0 = select i1 %cmp89.not, i8 %conv144, i8 %spec.store.select
  %89 = and i16 %retval.0.i575, 255
  %conv155 = zext i16 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %89)
  %cmp156.not = icmp eq i16 %89, 13
  br i1 %cmp156.not, label %il3945_get_adjacent_rate.exit.if.end162_crit_edge, label %if.then158

il3945_get_adjacent_rate.exit.if.end162_crit_edge: ; preds = %il3945_get_adjacent_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

if.then158:                                       ; preds = %il3945_get_adjacent_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %average_tpt161 = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %conv155, i32 4
  %90 = ptrtoint ptr %average_tpt161 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %average_tpt161, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %il3945_get_adjacent_rate.exit.if.end162_crit_edge
  %low_tpt.0 = phi i32 [ %91, %if.then158 ], [ -1, %il3945_get_adjacent_rate.exit.if.end162_crit_edge ]
  %conv163 = zext i8 %high.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %high.0)
  %cmp164.not = icmp eq i8 %high.0, 13
  br i1 %cmp164.not, label %if.end162.if.end171_crit_edge, label %if.then166

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %average_tpt170 = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %conv163, i32 4
  %92 = ptrtoint ptr %average_tpt170 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %average_tpt170, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then166, %if.end162.if.end171_crit_edge
  %high_tpt.0 = phi i32 [ %93, %if.then166 ], [ -1, %if.end162.if.end171_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %il_sta, i32 noundef %call62) #10
  %success_ratio = getelementptr %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 12, i32 %idx.2, i32 2
  %94 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %95)
  %cmp173 = icmp slt i32 %95, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool176.not = icmp eq i32 %56, 0
  %or.cond551 = select i1 %cmp173, i1 true, i1 %tobool176.not
  br i1 %or.cond551, label %do.body178, label %if.else

do.body178:                                       ; preds = %if.end171
  %96 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i577 = icmp eq i32 %97, 0
  br i1 %tobool.not.i577, label %if.else.i578, label %do.body178.il_get_debug_level.exit580_crit_edge

do.body178.il_get_debug_level.exit580_crit_edge:  ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit580

if.else.i578:                                     ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %98 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit580

il_get_debug_level.exit580:                       ; preds = %if.else.i578, %do.body178.il_get_debug_level.exit580_crit_edge
  %retval.0.i579 = phi i32 [ %98, %if.else.i578 ], [ %97, %do.body178.il_get_debug_level.exit580_crit_edge ]
  %and180 = and i32 %retval.0.i579, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %il_get_debug_level.exit580.if.end299_crit_edge, label %il_get_debug_level.exit580.if.end299.sink.split_crit_edge

il_get_debug_level.exit580.if.end299.sink.split_crit_edge: ; preds = %il_get_debug_level.exit580
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end299.sink.split

il_get_debug_level.exit580.if.end299_crit_edge:   ; preds = %il_get_debug_level.exit580
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end299

if.else:                                          ; preds = %if.end171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low_tpt.0)
  %cmp192 = icmp eq i32 %low_tpt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %high_tpt.0)
  %cmp195 = icmp eq i32 %high_tpt.0, -1
  %or.cond552 = select i1 %cmp192, i1 %cmp195, i1 false
  br i1 %or.cond552, label %if.then197, label %if.else213

if.then197:                                       ; preds = %if.else
  %cmp164.not.not = xor i1 %cmp164.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %95)
  %cmp203 = icmp ugt i32 %95, 6399
  %or.cond553 = select i1 %cmp164.not.not, i1 %cmp203, i1 false
  br i1 %or.cond553, label %if.then197.sw.bb326_crit_edge, label %if.then197.do.body334_crit_edge

if.then197.do.body334_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

if.then197.sw.bb326_crit_edge:                    ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb326

if.else213:                                       ; preds = %if.else
  %or.cond554 = select i1 %cmp192, i1 true, i1 %cmp195
  %or.cond554.not = xor i1 %or.cond554, true
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %56)
  %cmp220 = icmp slt i32 %low_tpt.0, %56
  %or.cond555 = select i1 %or.cond554.not, i1 %cmp220, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %56)
  %cmp223 = icmp slt i32 %high_tpt.0, %56
  %or.cond556 = select i1 %or.cond555, i1 %cmp223, i1 false
  br i1 %or.cond556, label %do.body226, label %if.else240

do.body226:                                       ; preds = %if.else213
  %99 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i582 = icmp eq i32 %100, 0
  br i1 %tobool.not.i582, label %if.else.i583, label %do.body226.il_get_debug_level.exit585_crit_edge

do.body226.il_get_debug_level.exit585_crit_edge:  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit585

if.else.i583:                                     ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %101 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit585

il_get_debug_level.exit585:                       ; preds = %if.else.i583, %do.body226.il_get_debug_level.exit585_crit_edge
  %retval.0.i584 = phi i32 [ %101, %if.else.i583 ], [ %100, %do.body226.il_get_debug_level.exit585_crit_edge ]
  %and228 = and i32 %retval.0.i584, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  br i1 %tobool229.not, label %il_get_debug_level.exit585.do.body334_crit_edge, label %do.end233

il_get_debug_level.exit585.do.body334_crit_edge:  ; preds = %il_get_debug_level.exit585
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

do.end233:                                        ; preds = %il_get_debug_level.exit585
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %il_r, align 8
  %wiphy235 = getelementptr inbounds %struct.ieee80211_hw, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %wiphy235 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wiphy235, align 8
  %dev236 = getelementptr inbounds %struct.wiphy, ptr %105, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev236, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.62, i32 noundef %low_tpt.0, i32 noundef %high_tpt.0, i32 noundef %56) #13
  br label %do.body334

if.else240:                                       ; preds = %if.else213
  br i1 %cmp195, label %if.else267, label %if.then243

if.then243:                                       ; preds = %if.else240
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %56)
  %cmp244 = icmp sgt i32 %high_tpt.0, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %95)
  %cmp248 = icmp ugt i32 %95, 6399
  %or.cond627 = select i1 %cmp244, i1 %cmp248, i1 false
  br i1 %or.cond627, label %if.then243.sw.bb326_crit_edge, label %do.body252

if.then243.sw.bb326_crit_edge:                    ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb326

do.body252:                                       ; preds = %if.then243
  %106 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i587 = icmp eq i32 %107, 0
  br i1 %tobool.not.i587, label %if.else.i588, label %do.body252.il_get_debug_level.exit590_crit_edge

do.body252.il_get_debug_level.exit590_crit_edge:  ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit590

if.else.i588:                                     ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %108 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit590

il_get_debug_level.exit590:                       ; preds = %if.else.i588, %do.body252.il_get_debug_level.exit590_crit_edge
  %retval.0.i589 = phi i32 [ %108, %if.else.i588 ], [ %107, %do.body252.il_get_debug_level.exit590_crit_edge ]
  %and254 = and i32 %retval.0.i589, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %il_get_debug_level.exit590.do.body334_crit_edge, label %do.end259

il_get_debug_level.exit590.do.body334_crit_edge:  ; preds = %il_get_debug_level.exit590
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

do.end259:                                        ; preds = %il_get_debug_level.exit590
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %il_r, align 8
  %wiphy261 = getelementptr inbounds %struct.ieee80211_hw, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %wiphy261 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wiphy261, align 8
  %dev262 = getelementptr inbounds %struct.wiphy, ptr %112, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev262, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.62) #13
  br label %do.body334

if.else267:                                       ; preds = %if.else240
  br i1 %cmp192, label %if.else267.do.body334_crit_edge, label %if.then270

if.else267.do.body334_crit_edge:                  ; preds = %if.else267
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

if.then270:                                       ; preds = %if.else267
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %56)
  %cmp271 = icmp sgt i32 %low_tpt.0, %56
  br i1 %cmp271, label %do.body274, label %if.end318

do.body274:                                       ; preds = %if.then270
  %113 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i592 = icmp eq i32 %114, 0
  br i1 %tobool.not.i592, label %if.else.i593, label %do.body274.il_get_debug_level.exit595_crit_edge

do.body274.il_get_debug_level.exit595_crit_edge:  ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit595

if.else.i593:                                     ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %115 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit595

il_get_debug_level.exit595:                       ; preds = %if.else.i593, %do.body274.il_get_debug_level.exit595_crit_edge
  %retval.0.i594 = phi i32 [ %115, %if.else.i593 ], [ %114, %do.body274.il_get_debug_level.exit595_crit_edge ]
  %and276 = and i32 %retval.0.i594, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  br i1 %tobool277.not, label %il_get_debug_level.exit595.if.end299_crit_edge, label %il_get_debug_level.exit595.if.end299.sink.split_crit_edge

il_get_debug_level.exit595.if.end299.sink.split_crit_edge: ; preds = %il_get_debug_level.exit595
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end299.sink.split

il_get_debug_level.exit595.if.end299_crit_edge:   ; preds = %il_get_debug_level.exit595
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end299

if.end299.sink.split:                             ; preds = %il_get_debug_level.exit595.if.end299.sink.split_crit_edge, %il_get_debug_level.exit580.if.end299.sink.split_crit_edge
  %.str.81.sink = phi ptr [ @.str.72, %il_get_debug_level.exit580.if.end299.sink.split_crit_edge ], [ @.str.81, %il_get_debug_level.exit595.if.end299.sink.split_crit_edge ]
  %116 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %il_r, align 8
  %wiphy283 = getelementptr inbounds %struct.ieee80211_hw, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %wiphy283 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wiphy283, align 8
  %dev284 = getelementptr inbounds %struct.wiphy, ptr %119, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev284, ptr noundef nonnull %.str.81.sink, ptr noundef nonnull @.str.62) #13
  br label %if.end299

if.end299:                                        ; preds = %if.end299.sink.split, %il_get_debug_level.exit595.if.end299_crit_edge, %il_get_debug_level.exit580.if.end299_crit_edge
  br i1 %cmp156.not, label %if.end299.if.end318.thread_crit_edge, label %land.lhs.true307

if.end299.if.end318.thread_crit_edge:             ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end318.thread

land.lhs.true307:                                 ; preds = %if.end299
  %120 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %121)
  %cmp309 = icmp sgt i32 %121, 10880
  br i1 %cmp309, label %land.lhs.true307.do.body334_crit_edge, label %lor.lhs.false311

land.lhs.true307.do.body334_crit_edge:            ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

lor.lhs.false311:                                 ; preds = %land.lhs.true307
  %expected_tpt312 = getelementptr inbounds %struct.il3945_rs_sta, ptr %il_sta, i32 0, i32 2
  %122 = ptrtoint ptr %expected_tpt312 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %expected_tpt312, align 8
  %arrayidx314 = getelementptr i32, ptr %123, i32 %conv155
  %124 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx314, align 4
  %mul = mul i32 %125, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %mul)
  %cmp315 = icmp sgt i32 %56, %mul
  br i1 %cmp315, label %lor.lhs.false311.do.body334_crit_edge, label %lor.lhs.false311.if.end318.thread_crit_edge

lor.lhs.false311.if.end318.thread_crit_edge:      ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end318.thread

lor.lhs.false311.do.body334_crit_edge:            ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

if.end318.thread:                                 ; preds = %lor.lhs.false311.if.end318.thread_crit_edge, %if.end299.if.end318.thread_crit_edge
  %spec.select559 = phi i32 [ %conv155, %lor.lhs.false311.if.end318.thread_crit_edge ], [ %idx.2, %if.end299.if.end318.thread_crit_edge ]
  br label %do.body334

if.end318:                                        ; preds = %if.then270
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %95)
  %cmp290 = icmp ugt i32 %95, 6399
  br i1 %cmp290, label %if.end318.sw.bb326_crit_edge, label %if.end318.do.body334_crit_edge

if.end318.do.body334_crit_edge:                   ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body334

if.end318.sw.bb326_crit_edge:                     ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb326

sw.bb326:                                         ; preds = %if.end318.sw.bb326_crit_edge, %if.then243.sw.bb326_crit_edge, %if.then197.sw.bb326_crit_edge
  %spec.select560 = select i1 %cmp164.not, i32 %idx.2, i32 %conv163
  br label %do.body334

do.body334:                                       ; preds = %sw.bb326, %if.end318.do.body334_crit_edge, %if.end318.thread, %lor.lhs.false311.do.body334_crit_edge, %land.lhs.true307.do.body334_crit_edge, %if.else267.do.body334_crit_edge, %do.end259, %il_get_debug_level.exit590.do.body334_crit_edge, %do.end233, %il_get_debug_level.exit585.do.body334_crit_edge, %if.then197.do.body334_crit_edge
  %conv319613 = phi i32 [ 0, %if.end318.do.body334_crit_edge ], [ -1, %if.end318.thread ], [ 1, %sw.bb326 ], [ 0, %land.lhs.true307.do.body334_crit_edge ], [ 0, %lor.lhs.false311.do.body334_crit_edge ], [ 0, %il_get_debug_level.exit590.do.body334_crit_edge ], [ 0, %do.end259 ], [ 0, %il_get_debug_level.exit585.do.body334_crit_edge ], [ 0, %do.end233 ], [ 0, %if.else267.do.body334_crit_edge ], [ 0, %if.then197.do.body334_crit_edge ]
  %idx.3 = phi i32 [ %idx.2, %if.end318.do.body334_crit_edge ], [ %spec.select559, %if.end318.thread ], [ %spec.select560, %sw.bb326 ], [ %idx.2, %land.lhs.true307.do.body334_crit_edge ], [ %idx.2, %lor.lhs.false311.do.body334_crit_edge ], [ %idx.2, %il_get_debug_level.exit590.do.body334_crit_edge ], [ %idx.2, %do.end259 ], [ %idx.2, %il_get_debug_level.exit585.do.body334_crit_edge ], [ %idx.2, %do.end233 ], [ %idx.2, %if.else267.do.body334_crit_edge ], [ %idx.2, %if.then197.do.body334_crit_edge ]
  %126 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i597 = icmp eq i32 %127, 0
  br i1 %tobool.not.i597, label %if.else.i598, label %do.body334.il_get_debug_level.exit600_crit_edge

do.body334.il_get_debug_level.exit600_crit_edge:  ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit600

if.else.i598:                                     ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %128 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit600

il_get_debug_level.exit600:                       ; preds = %if.else.i598, %do.body334.il_get_debug_level.exit600_crit_edge
  %retval.0.i599 = phi i32 [ %128, %if.else.i598 ], [ %127, %do.body334.il_get_debug_level.exit600_crit_edge ]
  %and336 = and i32 %retval.0.i599, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %il_get_debug_level.exit600.out_crit_edge, label %do.end341

il_get_debug_level.exit600.out_crit_edge:         ; preds = %il_get_debug_level.exit600
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end341:                                        ; preds = %il_get_debug_level.exit600
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %il_r, align 8
  %wiphy343 = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %wiphy343 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wiphy343, align 8
  %dev344 = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev344, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.62, i32 noundef %idx.3, i32 noundef %conv319613, i32 noundef %conv155, i32 noundef %conv163) #13
  br label %out

out:                                              ; preds = %do.end341, %il_get_debug_level.exit600.out_crit_edge, %do.end133
  %idx.4 = phi i32 [ %idx.2, %do.end133 ], [ %idx.3, %do.end341 ], [ %idx.3, %il_get_debug_level.exit600.out_crit_edge ]
  %133 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp352 = icmp eq i32 %134, 1
  br i1 %cmp352, label %if.then354, label %if.else407

if.then354:                                       ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx.4)
  %cmp355 = icmp slt i32 %idx.4, 4
  br i1 %cmp355, label %land.rhs, label %if.then354.if.end391_crit_edge

if.then354.if.end391_crit_edge:                   ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391

land.rhs:                                         ; preds = %if.then354
  %.b546 = load i1, ptr @il3945_rs_get_rate.__already_done, align 1
  br i1 %.b546, label %land.rhs.if.end391_crit_edge, label %if.then365, !prof !191

land.rhs.if.end391_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391

if.then365:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @il3945_rs_get_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 788, i32 noundef 9, ptr noundef null) #10
  br label %if.end391

if.end391:                                        ; preds = %if.then365, %land.rhs.if.end391_crit_edge, %if.then354.if.end391_crit_edge
  %135 = tail call i32 @llvm.smax.i32(i32 %idx.4, i32 4)
  %136 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %last_txrate_idx, align 8
  %137 = trunc i32 %135 to i8
  %conv404 = add i8 %137, -4
  br label %if.end414

if.else407:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %idx.4, ptr %last_txrate_idx, align 8
  %conv410 = trunc i32 %idx.4 to i8
  br label %if.end414

if.end414:                                        ; preds = %if.else407, %if.end391
  %conv410.sink = phi i8 [ %conv410, %if.else407 ], [ %conv404, %if.end391 ]
  %idx.6 = phi i32 [ %idx.4, %if.else407 ], [ %135, %if.end391 ]
  %139 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv410.sink, ptr %139, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 9
  %141 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, 2048
  store i16 %bf.set, ptr %count, align 1
  %142 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i602 = icmp eq i32 %143, 0
  br i1 %tobool.not.i602, label %if.else.i603, label %if.end414.il_get_debug_level.exit605_crit_edge

if.end414.il_get_debug_level.exit605_crit_edge:   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit605

if.else.i603:                                     ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %144 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit605

il_get_debug_level.exit605:                       ; preds = %if.else.i603, %if.end414.il_get_debug_level.exit605_crit_edge
  %retval.0.i604 = phi i32 [ %144, %if.else.i603 ], [ %143, %if.end414.il_get_debug_level.exit605_crit_edge ]
  %and419 = and i32 %retval.0.i604, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and419)
  %tobool420.not = icmp eq i32 %and419, 0
  br i1 %tobool420.not, label %il_get_debug_level.exit605.do.end430_crit_edge, label %do.end424

il_get_debug_level.exit605.do.end430_crit_edge:   ; preds = %il_get_debug_level.exit605
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end430

do.end424:                                        ; preds = %il_get_debug_level.exit605
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %il_r, align 8
  %wiphy426 = getelementptr inbounds %struct.ieee80211_hw, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %wiphy426 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wiphy426, align 8
  %dev427 = getelementptr inbounds %struct.wiphy, ptr %148, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev427, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.62, i32 noundef %idx.6) #13
  br label %do.end430

do.end430:                                        ; preds = %do.end424, %il_get_debug_level.exit605.do.end430_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_add_debugfs(ptr nocapture noundef readnone %il, ptr noundef %il_sta, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.94, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %il_sta, ptr noundef nonnull @rs_sta_dbgfs_stats_table_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_bg_rate_scale_flush(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -76
  %il1 = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %il1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il1, align 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i121, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i121:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %4 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i121, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i122 = phi i32 [ %4, %if.else.i121 ], [ %3, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i122, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end4_crit_edge, label %do.end

il_get_debug_level.exit.do.end4_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end4_crit_edge
  %9 = ptrtoint ptr %il1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il1, align 4
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %10, i32 0, i32 114
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end4
  %unflushed.047.i = phi i32 [ 0, %do.end4 ], [ %unflushed.2.i, %for.inc.i.for.body.i_crit_edge ]
  %i.044.i = phi i32 [ 0, %do.end4 ], [ %inc29.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i
  %counter.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i, i32 3
  %11 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i123 = icmp eq i32 %12, 0
  br i1 %tobool.not.i123, label %for.body.i.for.inc.i_crit_edge, label %do.body2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.body2.i:                                       ; preds = %for.body.i
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %stamp.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i, i32 5
  %13 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stamp.i, align 8
  %add.i = add i32 %14, 50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %do.body12.i, label %if.else.i124

do.body12.i:                                      ; preds = %do.body2.i
  %16 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body12.i.il_get_debug_level.exit.i_crit_edge

do.body12.i.il_get_debug_level.exit.i_crit_edge:  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %18 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body12.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %18, %if.else.i.i ], [ %17, %do.body12.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %il_get_debug_level.exit.i.do.end24.i_crit_edge, label %do.end18.i

il_get_debug_level.exit.i.do.end24.i_crit_edge:   ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.end18.i:                                       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  %23 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %counter.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %24, i32 noundef %i.044.i) #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %do.end18.i, %il_get_debug_level.exit.i.do.end24.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %arrayidx.i, align 8
  %success_counter.i.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i, i32 1
  %26 = ptrtoint ptr %success_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %success_counter.i.i, align 8
  %success_ratio.i.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i, i32 2
  %27 = ptrtoint ptr %success_ratio.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %success_ratio.i.i, align 4
  %28 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i.i = getelementptr %struct.il3945_rs_sta, ptr %add.ptr, i32 0, i32 12, i32 %i.044.i, i32 4
  %29 = ptrtoint ptr %average_tpt.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %average_tpt.i.i, align 4
  %30 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %stamp.i, align 8
  br label %if.end27.i

if.else.i124:                                     ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %unflushed.047.i, 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i124, %do.end24.i
  %unflushed.1.i = phi i32 [ %unflushed.047.i, %do.end24.i ], [ %inc.i, %if.else.i124 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call4.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end27.i, %for.body.i.for.inc.i_crit_edge
  %unflushed.2.i = phi i32 [ %unflushed.1.i, %if.end27.i ], [ %unflushed.047.i, %for.body.i.for.inc.i_crit_edge ]
  %inc29.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc29.i, 12
  br i1 %exitcond.not.i, label %il3945_rate_scale_flush_wins.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

il3945_rate_scale_flush_wins.exit:                ; preds = %for.inc.i
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #10
  %tx_packets = getelementptr i8, ptr %t, i32 -8
  %31 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_packets, align 4
  %last_tx_packets = getelementptr i8, ptr %t, i32 -12
  %33 = ptrtoint ptr %last_tx_packets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_tx_packets, align 8
  %sub = sub i32 %32, %34
  %add = add i32 %sub, 1
  %add16 = add i32 %32, 1
  store i32 %add16, ptr %last_tx_packets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unflushed.2.i)
  %tobool18.not = icmp eq i32 %unflushed.2.i, 0
  br i1 %tobool18.not, label %if.else72, label %if.then19

if.then19:                                        ; preds = %il3945_rate_scale_flush_wins.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %last_partial_flush = getelementptr i8, ptr %t, i32 -24
  %36 = ptrtoint ptr %last_partial_flush to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_partial_flush, align 4
  %sub20 = sub i32 %35, %37
  %call21 = tail call i32 @jiffies_to_msecs(i32 noundef %sub20) #10
  %38 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i126 = icmp eq i32 %39, 0
  br i1 %tobool.not.i126, label %if.else.i127, label %if.then19.il_get_debug_level.exit129_crit_edge

if.then19.il_get_debug_level.exit129_crit_edge:   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit129

if.else.i127:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %40 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit129

il_get_debug_level.exit129:                       ; preds = %if.else.i127, %if.then19.il_get_debug_level.exit129_crit_edge
  %retval.0.i128 = phi i32 [ %40, %if.else.i127 ], [ %39, %if.then19.il_get_debug_level.exit129_crit_edge ]
  %and24 = and i32 %retval.0.i128, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %il_get_debug_level.exit129.do.end35_crit_edge, label %do.end29

il_get_debug_level.exit129.do.end35_crit_edge:    ; preds = %il_get_debug_level.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

do.end29:                                         ; preds = %il_get_debug_level.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %wiphy31 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy31, align 8
  %dev32 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %add, i32 noundef %call21) #13
  br label %do.end35

do.end35:                                         ; preds = %do.end29, %il_get_debug_level.exit129.do.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool36.not = icmp eq i32 %call21, 0
  br i1 %tobool36.not, label %do.end35.if.else.i_crit_edge, label %if.end38

do.end35.if.else.i_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.end38:                                         ; preds = %do.end35
  %mul = mul i32 %add, 1000
  %div = udiv i32 %mul, %call21
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %mul)
  %tobool39.not = icmp ugt i32 %call21, %mul
  br i1 %tobool39.not, label %if.end38.if.else.i_crit_edge, label %if.then40

if.end38.if.else.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %div)
  %cmp42 = icmp ugt i32 %div, 30000
  br i1 %cmp42, label %if.then40.if.else.i_crit_edge, label %if.else45

if.then40.if.else.i_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %div41 = udiv i32 1500000, %div
  %45 = tail call i32 @llvm.umin.i32(i32 %div41, i32 5000)
  br label %if.else.i

if.else.i:                                        ; preds = %if.else45, %if.then40.if.else.i_crit_edge, %if.end38.if.else.i_crit_edge, %do.end35.if.else.i_crit_edge
  %duration.0 = phi i32 [ %45, %if.else45 ], [ 50, %if.then40.if.else.i_crit_edge ], [ 5000, %if.end38.if.else.i_crit_edge ], [ 5000, %do.end35.if.else.i_crit_edge ]
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %duration.0) #10
  %flush_time = getelementptr i8, ptr %t, i32 -16
  %46 = ptrtoint ptr %flush_time to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call2.i, ptr %flush_time, align 4
  %47 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i131 = icmp eq i32 %48, 0
  br i1 %tobool.not.i131, label %if.else.i132, label %if.else.i.il_get_debug_level.exit134_crit_edge

if.else.i.il_get_debug_level.exit134_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit134

if.else.i132:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %49 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit134

il_get_debug_level.exit134:                       ; preds = %if.else.i132, %if.else.i.il_get_debug_level.exit134_crit_edge
  %retval.0.i133 = phi i32 [ %49, %if.else.i132 ], [ %48, %if.else.i.il_get_debug_level.exit134_crit_edge ]
  %and56 = and i32 %retval.0.i133, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %il_get_debug_level.exit134.do.end67_crit_edge, label %do.end61

il_get_debug_level.exit134.do.end67_crit_edge:    ; preds = %il_get_debug_level.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

do.end61:                                         ; preds = %il_get_debug_level.exit134
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %wiphy63 = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wiphy63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy63, align 8
  %dev64 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, i32 noundef %duration.0, i32 noundef %add) #13
  br label %do.end67

do.end67:                                         ; preds = %do.end61, %il_get_debug_level.exit134.do.end67_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %55 = ptrtoint ptr %flush_time to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flush_time, align 4
  %add69 = add i32 %56, %54
  %call70 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add69) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = ptrtoint ptr %last_partial_flush to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %last_partial_flush, align 4
  br label %if.end74

if.else72:                                        ; preds = %il3945_rate_scale_flush_wins.exit
  call void @__sanitizer_cov_trace_pc() #12
  %flush_time73 = getelementptr i8, ptr %t, i32 -16
  %59 = ptrtoint ptr %flush_time73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 300, ptr %flush_time73, align 4
  %flush_pending = getelementptr i8, ptr %t, i32 -3
  %60 = ptrtoint ptr %flush_pending to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %flush_pending, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %do.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %last_flush = getelementptr i8, ptr %t, i32 -20
  %62 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_flush, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call10) #10
  %63 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i136 = icmp eq i32 %64, 0
  br i1 %tobool.not.i136, label %if.else.i137, label %if.end74.il_get_debug_level.exit139_crit_edge

if.end74.il_get_debug_level.exit139_crit_edge:    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit139

if.else.i137:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %65 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit139

il_get_debug_level.exit139:                       ; preds = %if.else.i137, %if.end74.il_get_debug_level.exit139_crit_edge
  %retval.0.i138 = phi i32 [ %65, %if.else.i137 ], [ %64, %if.end74.il_get_debug_level.exit139_crit_edge ]
  %and78 = and i32 %retval.0.i138, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %il_get_debug_level.exit139.do.end89_crit_edge, label %do.end83

il_get_debug_level.exit139.do.end89_crit_edge:    ; preds = %il_get_debug_level.exit139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89

do.end83:                                         ; preds = %il_get_debug_level.exit139
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %wiphy85 = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wiphy85 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy85, align 8
  %dev86 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.29) #13
  br label %do.end89

do.end89:                                         ; preds = %do.end83, %il_get_debug_level.exit139.do.end89_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il3945_rs_next_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il3945_collect_tx_data(ptr noundef %rs_sta, ptr nocapture noundef %win, i32 noundef %success, i32 noundef %retries, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %il1 = getelementptr inbounds %struct.il3945_rs_sta, ptr %rs_sta, i32 0, i32 1
  %0 = ptrtoint ptr %il1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries)
  %tobool.not = icmp eq i32 %retries, 0
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %4 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.else.i ], [ %3, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61) #13
  br label %cleanup

do.body9:                                         ; preds = %entry
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_sta) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries)
  %cmp1693 = icmp sgt i32 %retries, 0
  br i1 %cmp1693, label %while.body.lr.ph, label %do.body9.while.end_crit_edge

do.body9.while.end_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body9
  %counter = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 3
  %success_counter = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 1
  %9 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %counter.promoted = load i32, ptr %counter, align 8
  %10 = ptrtoint ptr %win to i32
  call void @__asan_load8_noabort(i32 %10)
  %win.promoted = load i64, ptr %win, align 8
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %or96 = phi i64 [ %win.promoted, %while.body.lr.ph ], [ %or97, %if.end38.while.body_crit_edge ]
  %11 = phi i32 [ %counter.promoted, %while.body.lr.ph ], [ %inc, %if.end38.while.body_crit_edge ]
  %success.addr.095 = phi i32 [ %success, %while.body.lr.ph ], [ %success.addr.1, %if.end38.while.body_crit_edge ]
  %retries.addr.094 = phi i32 [ %retries, %while.body.lr.ph ], [ %dec39, %if.end38.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %11)
  %cmp18 = icmp sgt i32 %11, 61
  br i1 %cmp18, label %if.then20, label %while.body.if.end28_crit_edge

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then20:                                        ; preds = %while.body
  %and22 = and i64 %or96, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.then20.if.end28_crit_edge, label %if.then24

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %and26 = and i64 %or96, -2305843009213693953
  %12 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %success_counter, align 8
  %dec = add i32 %13, -1
  store i32 %dec, ptr %success_counter, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then20.if.end28_crit_edge, %while.body.if.end28_crit_edge
  %or98 = phi i64 [ %or96, %if.then20.if.end28_crit_edge ], [ %and26, %if.then24 ], [ %or96, %while.body.if.end28_crit_edge ]
  %14 = phi i32 [ 61, %if.then20.if.end28_crit_edge ], [ 61, %if.then24 ], [ %11, %while.body.if.end28_crit_edge ]
  %inc = add nsw i32 %14, 1
  %shl = shl i64 %or98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %success.addr.095)
  %cmp31 = icmp sgt i32 %success.addr.095, 0
  br i1 %cmp31, label %if.then33, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %success_counter, align 8
  %inc35 = add i32 %16, 1
  store i32 %inc35, ptr %success_counter, align 8
  %or = or i64 %shl, 1
  %dec37 = add nsw i32 %success.addr.095, -1
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end28.if.end38_crit_edge
  %or97 = phi i64 [ %or, %if.then33 ], [ %shl, %if.end28.if.end38_crit_edge ]
  %success.addr.1 = phi i32 [ %dec37, %if.then33 ], [ 0, %if.end28.if.end38_crit_edge ]
  %dec39 = add nsw i32 %retries.addr.094, -1
  %cmp16 = icmp sgt i32 %retries.addr.094, 1
  br i1 %cmp16, label %if.end38.while.body_crit_edge, label %while.cond.while.end_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %counter, align 8
  %18 = ptrtoint ptr %win to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or97, ptr %win, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.body9.while.end_crit_edge
  %counter40 = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 3
  %19 = ptrtoint ptr %counter40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %counter40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp41 = icmp sgt i32 %20, 0
  br i1 %cmp41, label %if.then43, label %while.end.if.end48_crit_edge

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then43:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %success_counter44 = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 1
  %21 = ptrtoint ptr %success_counter44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %success_counter44, align 8
  %mul45 = mul i32 %22, 12800
  %div = sdiv i32 %mul45, %20
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %while.end.if.end48_crit_edge
  %.sink = phi i32 [ %div, %if.then43 ], [ -1, %while.end.if.end48_crit_edge ]
  %23 = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %23, align 4
  %success_counter50 = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 1
  %25 = ptrtoint ptr %success_counter50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %success_counter50, align 8
  %sub = sub i32 %20, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp51 = icmp sgt i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp54 = icmp sgt i32 %26, 7
  %or.cond = or i1 %cmp54, %cmp51
  br i1 %or.cond, label %if.then56, label %if.end48.if.end62_crit_edge

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 4
  %expected_tpt = getelementptr inbounds %struct.il3945_rs_sta, ptr %rs_sta, i32 0, i32 2
  %29 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %expected_tpt, align 8
  %arrayidx = getelementptr i32, ptr %30, i32 %idx
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %mul58 = mul i32 %32, %28
  %add = add i32 %mul58, 64
  %div59 = sdiv i32 %add, 128
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %if.end48.if.end62_crit_edge
  %.sink99 = phi i32 [ %div59, %if.then56 ], [ -1, %if.end48.if.end62_crit_edge ]
  %33 = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink99, ptr %33, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr inbounds %struct.il3945_rate_scale_data, ptr %win, i32 0, i32 5
  %36 = ptrtoint ptr %stamp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %stamp, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_sta, i32 noundef %call11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_sta_dbgfs_stats_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx_packets = getelementptr inbounds %struct.il3945_rs_sta, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tx_packets, align 4
  %last_txrate_idx = getelementptr inbounds %struct.il3945_rs_sta, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_txrate_idx, align 8
  %start_rate = getelementptr inbounds %struct.il3945_rs_sta, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %start_rate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %start_rate, align 2
  %conv = zext i8 %8 to i32
  %flush_time = getelementptr inbounds %struct.il3945_rs_sta, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %flush_time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flush_time, align 4
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %10) #10
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.95, i32 noundef %4, i32 noundef %6, i32 noundef %conv, i32 noundef %call1)
  %add.ptr4 = getelementptr i8, ptr %call7.i, i32 %call2
  %counter = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 0, i32 3
  %11 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 0, i32 1
  %13 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %success_counter, align 8
  %success_ratio = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 0, i32 2
  %15 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %success_ratio, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4, ptr noundef nonnull @.str.96, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  %add10 = add i32 %call9, %call2
  %add.ptr4.1 = getelementptr i8, ptr %call7.i, i32 %add10
  %counter.1 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 1, i32 3
  %17 = ptrtoint ptr %counter.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %counter.1, align 8
  %success_counter.1 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 1, i32 1
  %19 = ptrtoint ptr %success_counter.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %success_counter.1, align 8
  %success_ratio.1 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 1, i32 2
  %21 = ptrtoint ptr %success_ratio.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %success_ratio.1, align 4
  %call9.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.1, ptr noundef nonnull @.str.96, i32 noundef %18, i32 noundef %20, i32 noundef %22)
  %add10.1 = add i32 %call9.1, %add10
  %add.ptr4.2 = getelementptr i8, ptr %call7.i, i32 %add10.1
  %counter.2 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 2, i32 3
  %23 = ptrtoint ptr %counter.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %counter.2, align 8
  %success_counter.2 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 2, i32 1
  %25 = ptrtoint ptr %success_counter.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %success_counter.2, align 8
  %success_ratio.2 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 2, i32 2
  %27 = ptrtoint ptr %success_ratio.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %success_ratio.2, align 4
  %call9.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.2, ptr noundef nonnull @.str.96, i32 noundef %24, i32 noundef %26, i32 noundef %28)
  %add10.2 = add i32 %call9.2, %add10.1
  %add.ptr4.3 = getelementptr i8, ptr %call7.i, i32 %add10.2
  %counter.3 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 3, i32 3
  %29 = ptrtoint ptr %counter.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %counter.3, align 8
  %success_counter.3 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 3, i32 1
  %31 = ptrtoint ptr %success_counter.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %success_counter.3, align 8
  %success_ratio.3 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 3, i32 2
  %33 = ptrtoint ptr %success_ratio.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %success_ratio.3, align 4
  %call9.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.3, ptr noundef nonnull @.str.96, i32 noundef %30, i32 noundef %32, i32 noundef %34)
  %add10.3 = add i32 %call9.3, %add10.2
  %add.ptr4.4 = getelementptr i8, ptr %call7.i, i32 %add10.3
  %counter.4 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 4, i32 3
  %35 = ptrtoint ptr %counter.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %counter.4, align 8
  %success_counter.4 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 4, i32 1
  %37 = ptrtoint ptr %success_counter.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %success_counter.4, align 8
  %success_ratio.4 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 4, i32 2
  %39 = ptrtoint ptr %success_ratio.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %success_ratio.4, align 4
  %call9.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.4, ptr noundef nonnull @.str.96, i32 noundef %36, i32 noundef %38, i32 noundef %40)
  %add10.4 = add i32 %call9.4, %add10.3
  %add.ptr4.5 = getelementptr i8, ptr %call7.i, i32 %add10.4
  %counter.5 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 5, i32 3
  %41 = ptrtoint ptr %counter.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %counter.5, align 8
  %success_counter.5 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 5, i32 1
  %43 = ptrtoint ptr %success_counter.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_counter.5, align 8
  %success_ratio.5 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 5, i32 2
  %45 = ptrtoint ptr %success_ratio.5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %success_ratio.5, align 4
  %call9.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.5, ptr noundef nonnull @.str.96, i32 noundef %42, i32 noundef %44, i32 noundef %46)
  %add10.5 = add i32 %call9.5, %add10.4
  %add.ptr4.6 = getelementptr i8, ptr %call7.i, i32 %add10.5
  %counter.6 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 6, i32 3
  %47 = ptrtoint ptr %counter.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter.6, align 8
  %success_counter.6 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 6, i32 1
  %49 = ptrtoint ptr %success_counter.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %success_counter.6, align 8
  %success_ratio.6 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 6, i32 2
  %51 = ptrtoint ptr %success_ratio.6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %success_ratio.6, align 4
  %call9.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.6, ptr noundef nonnull @.str.96, i32 noundef %48, i32 noundef %50, i32 noundef %52)
  %add10.6 = add i32 %call9.6, %add10.5
  %add.ptr4.7 = getelementptr i8, ptr %call7.i, i32 %add10.6
  %counter.7 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 7, i32 3
  %53 = ptrtoint ptr %counter.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %counter.7, align 8
  %success_counter.7 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 7, i32 1
  %55 = ptrtoint ptr %success_counter.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %success_counter.7, align 8
  %success_ratio.7 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 7, i32 2
  %57 = ptrtoint ptr %success_ratio.7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %success_ratio.7, align 4
  %call9.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.7, ptr noundef nonnull @.str.96, i32 noundef %54, i32 noundef %56, i32 noundef %58)
  %add10.7 = add i32 %call9.7, %add10.6
  %add.ptr4.8 = getelementptr i8, ptr %call7.i, i32 %add10.7
  %counter.8 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 8, i32 3
  %59 = ptrtoint ptr %counter.8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %counter.8, align 8
  %success_counter.8 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 8, i32 1
  %61 = ptrtoint ptr %success_counter.8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %success_counter.8, align 8
  %success_ratio.8 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 8, i32 2
  %63 = ptrtoint ptr %success_ratio.8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %success_ratio.8, align 4
  %call9.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.8, ptr noundef nonnull @.str.96, i32 noundef %60, i32 noundef %62, i32 noundef %64)
  %add10.8 = add i32 %call9.8, %add10.7
  %add.ptr4.9 = getelementptr i8, ptr %call7.i, i32 %add10.8
  %counter.9 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 9, i32 3
  %65 = ptrtoint ptr %counter.9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %counter.9, align 8
  %success_counter.9 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 9, i32 1
  %67 = ptrtoint ptr %success_counter.9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %success_counter.9, align 8
  %success_ratio.9 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 9, i32 2
  %69 = ptrtoint ptr %success_ratio.9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %success_ratio.9, align 4
  %call9.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.9, ptr noundef nonnull @.str.96, i32 noundef %66, i32 noundef %68, i32 noundef %70)
  %add10.9 = add i32 %call9.9, %add10.8
  %add.ptr4.10 = getelementptr i8, ptr %call7.i, i32 %add10.9
  %counter.10 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 10, i32 3
  %71 = ptrtoint ptr %counter.10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %counter.10, align 8
  %success_counter.10 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 10, i32 1
  %73 = ptrtoint ptr %success_counter.10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %success_counter.10, align 8
  %success_ratio.10 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 10, i32 2
  %75 = ptrtoint ptr %success_ratio.10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %success_ratio.10, align 4
  %call9.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.10, ptr noundef nonnull @.str.96, i32 noundef %72, i32 noundef %74, i32 noundef %76)
  %add10.10 = add i32 %call9.10, %add10.9
  %add.ptr4.11 = getelementptr i8, ptr %call7.i, i32 %add10.10
  %counter.11 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 11, i32 3
  %77 = ptrtoint ptr %counter.11 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %counter.11, align 8
  %success_counter.11 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 11, i32 1
  %79 = ptrtoint ptr %success_counter.11 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %success_counter.11, align 8
  %success_ratio.11 = getelementptr %struct.il3945_rs_sta, ptr %1, i32 0, i32 12, i32 11, i32 2
  %81 = ptrtoint ptr %success_ratio.11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %success_ratio.11, align 4
  %call9.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4.11, ptr noundef nonnull @.str.96, i32 noundef %78, i32 noundef %80, i32 noundef %82)
  %add10.11 = add i32 %call9.11, %add10.10
  %call11 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add10.11) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !110, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !169, !171, !173}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 328, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @il3945_rs_rate_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @il3945_rs_rate_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 373, i32 2}
!10 = !{ptr @il3945_rs_rate_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @il3945_rs_rate_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 888, i32 2}
!14 = !{ptr @il3945_rate_scale_init._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @il3945_rate_scale_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 894, i32 3}
!18 = !{ptr @il3945_rate_scale_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @il3945_rate_scale_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 928, i32 2}
!22 = !{ptr @il3945_rate_scale_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @il3945_rate_scale_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 932, i32 2}
!26 = !{ptr @il3945_rate_scale_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @il3945_rate_scale_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @il3945_expected_tpt_b, !29, !"il3945_expected_tpt_b", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 40, i32 12}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @il3945_expected_tpt_g_prot, !38, !"il3945_expected_tpt_g_prot", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 32, i32 12}
!39 = !{ptr @il3945_expected_tpt_g, !40, !"il3945_expected_tpt_g", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 28, i32 12}
!41 = !{ptr @il3945_expected_tpt_a, !42, !"il3945_expected_tpt_a", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 36, i32 12}
!43 = !{ptr @il3945_tpt_table_g, !44, !"il3945_tpt_table_g", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 60, i32 32}
!45 = !{ptr @il3945_tpt_table_a, !46, !"il3945_tpt_table_a", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 49, i32 32}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 864, i32 10}
!49 = !{ptr @rs_ops, !50, !"rs_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 863, i32 38}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 395, i32 2}
!53 = !{ptr @il3945_rs_alloc_sta._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @il3945_rs_alloc_sta._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @il3945_rs_alloc_sta.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 399, i32 2}
!57 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @il3945_rs_alloc_sta.__key.25, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 400, i32 2}
!60 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @il3945_rs_alloc_sta._entry.27, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 401, i32 2}
!63 = !{ptr @il3945_rs_alloc_sta._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 177, i32 2}
!66 = !{ptr @il3945_bg_rate_scale_flush._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @il3945_bg_rate_scale_flush._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 192, i32 3}
!70 = !{ptr @il3945_bg_rate_scale_flush._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @il3945_bg_rate_scale_flush._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 211, i32 3}
!74 = !{ptr @il3945_bg_rate_scale_flush._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @il3945_bg_rate_scale_flush._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @il3945_bg_rate_scale_flush._entry.36, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 229, i32 2}
!78 = !{ptr @il3945_bg_rate_scale_flush._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 153, i32 4}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @il3945_rate_scale_flush_wins._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @il3945_rate_scale_flush_wins._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 437, i32 2}
!86 = !{ptr @il3945_rs_tx_status._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @il3945_rs_tx_status._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 446, i32 3}
!90 = !{ptr @il3945_rs_tx_status._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @il3945_rs_tx_status._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 451, i32 3}
!94 = !{ptr @il3945_rs_tx_status._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @il3945_rs_tx_status._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 457, i32 3}
!98 = !{ptr @il3945_rs_tx_status._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @il3945_rs_tx_status._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 489, i32 3}
!102 = !{ptr @il3945_rs_tx_status._entry.50, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @il3945_rs_tx_status._entry_ptr.52, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 498, i32 2}
!106 = !{ptr @il3945_rs_tx_status._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @il3945_rs_tx_status._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @il3945_rs_tx_status._entry.58, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 520, i32 2}
!112 = !{ptr @il3945_rs_tx_status._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 249, i32 3}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @il3945_collect_tx_data._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @il3945_collect_tx_data._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 626, i32 2}
!120 = !{ptr @il3945_rs_get_rate._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @il3945_rs_get_rate._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 630, i32 3}
!124 = !{ptr @il3945_rs_get_rate._entry.63, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @il3945_rs_get_rate._entry_ptr.65, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 674, i32 3}
!128 = !{ptr @il3945_rs_get_rate._entry.66, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @il3945_rs_get_rate._entry_ptr.68, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 710, i32 3}
!134 = !{ptr @il3945_rs_get_rate._entry.71, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @il3945_rs_get_rate._entry_ptr.73, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 728, i32 3}
!138 = !{ptr @il3945_rs_get_rate._entry.74, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @il3945_rs_get_rate._entry_ptr.76, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 742, i32 5}
!142 = !{ptr @il3945_rs_get_rate._entry.77, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @il3945_rs_get_rate._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 747, i32 5}
!146 = !{ptr @il3945_rs_get_rate._entry.80, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @il3945_rs_get_rate._entry_ptr.82, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 782, i32 2}
!150 = !{ptr @il3945_rs_get_rate._entry.83, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @il3945_rs_get_rate._entry_ptr.85, !149, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 788, i32 7}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 798, i32 2}
!156 = !{ptr @il3945_rs_get_rate._entry.86, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @il3945_rs_get_rate._entry_ptr.88, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 568, i32 3}
!160 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @il3945_get_adjacent_rate._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @il3945_get_adjacent_rate._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 581, i32 3}
!165 = !{ptr @il3945_get_adjacent_rate._entry.91, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @il3945_get_adjacent_rate._entry_ptr.93, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.94, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 846, i32 22}
!169 = !{ptr @rs_sta_dbgfs_stats_table_ops, !170, !"rs_sta_dbgfs_stats_table_ops", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 835, i32 37}
!171 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 819, i32 7}
!173 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlegacy/3945-rs.c", i32 825, i32 28}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2149667832}
!186 = !{i64 2149668098}
!187 = !{i64 2158047365, i64 2158047875, i64 2158047402, i64 2158047458, i64 2158047492, i64 2158047516, i64 2158047557, i64 2158047578, i64 2158047606, i64 2158047640}
!188 = !{i64 2157974075, i64 2157974585, i64 2157974112, i64 2157974168, i64 2157974202, i64 2157974226, i64 2157974267, i64 2157974288, i64 2157974316, i64 2157974350}
!189 = !{i32 0, i32 33}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{!"branch_weights", i32 2000, i32 1}
