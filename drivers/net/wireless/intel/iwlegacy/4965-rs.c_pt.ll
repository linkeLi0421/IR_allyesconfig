; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/4965-rs.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/4965-rs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.il_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rate_control_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.il_rate_mcs_info = type { [12 x i8], [12 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.il_scale_tbl_info = type { i32, i8, i8, i8, i8, i8, i8, ptr, i32, [13 x %struct.il_rate_scale_data] }
%struct.il_rate_scale_data = type { i64, i32, i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.il_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, [255 x ptr], [6 x %struct.ieee80211_supported_band], %struct.il_spectrum_notification, i8, i32, i32, i32, %struct.il_force_reset, ptr, i8, i32, i32, i32, i32, ptr, i32, ptr, ptr, [6 x i8], i8, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, [1 x %struct.mac_address], i32, i32, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, %struct.fw_desc, i32, i8, [25 x i8], ptr, %struct.il_qos_info, %struct.anon.137, %struct.il_rxon_cmd, %struct.il_rxon_cmd, %struct.il_rxon_time_cmd, i16, %struct.il_init_alive_resp, %struct.il_alive_resp, i16, i8, %struct.il_sensitivity_data, %struct.il_chain_noise_data, [11 x i16], %struct.il_ht_config, i8, %struct.wait_queue_head, i32, %struct.il_rx_queue, ptr, i32, %struct.il_dma_ptr, %struct.il_dma_ptr, i32, i32, %struct.traffic_stats, %struct.traffic_stats, %struct.isr_stats, %struct.il_power_mgr, [6 x i8], %struct.spinlock, i32, [32 x %struct.il_station_entry], i32, [1 x i32], i32, [4 x %struct.atomic_t], i8, i8, ptr, ptr, i32, i64, %union.anon.139, %struct.il_hw_params, i32, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.work_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i8, i8, i32, i16, i16, ptr, ptr, ptr, i32, i32, i8, %struct.work_struct, i8, i8, i8, %struct.work_struct, %struct.timer_list, %struct.timer_list, i8, %struct.led_classdev, i32, i32, i8 }
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
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.il_lq_sta = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i32, i32, i16, i16, i16, i8, i8, %struct.il_link_quality_cmd, [2 x %struct.il_scale_tbl_info], [8 x %struct.il_traffic_load], i8, i32, ptr, i32, i32, i8 }
%struct.il_link_quality_cmd = type { i8, i8, i16, %struct.il_link_qual_general_params, %struct.il_link_qual_agg_params, [16 x %struct.anon.138], i32 }
%struct.il_link_qual_general_params = type { i8, i8, i8, i8, [4 x i8] }
%struct.il_link_qual_agg_params = type { i16, i8, i8, i32 }
%struct.anon.138 = type { i32 }
%struct.il_traffic_load = type { i32, [20 x i32], i32, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.136 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@il_rates = dso_local constant { [13 x %struct.il_rate_info], [62 x i8] } { [13 x %struct.il_rate_info] [%struct.il_rate_info { i8 10, i8 16, i8 16, i8 2, i8 13, i8 1, i8 13, i8 1, i8 13, i8 1 }, %struct.il_rate_info { i8 20, i8 16, i8 16, i8 4, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2 }, %struct.il_rate_info { i8 55, i8 16, i8 16, i8 11, i8 1, i8 4, i8 1, i8 3, i8 1, i8 3 }, %struct.il_rate_info { i8 110, i8 16, i8 16, i8 22, i8 5, i8 6, i8 5, i8 6, i8 2, i8 7 }, %struct.il_rate_info { i8 13, i8 0, i8 8, i8 12, i8 2, i8 5, i8 2, i8 3, i8 2, i8 3 }, %struct.il_rate_info { i8 15, i8 0, i8 8, i8 18, i8 4, i8 3, i8 4, i8 3, i8 2, i8 3 }, %struct.il_rate_info { i8 5, i8 1, i8 9, i8 24, i8 3, i8 7, i8 3, i8 7, i8 3, i8 7 }, %struct.il_rate_info { i8 7, i8 2, i8 10, i8 36, i8 6, i8 8, i8 6, i8 8, i8 3, i8 8 }, %struct.il_rate_info { i8 9, i8 3, i8 11, i8 48, i8 7, i8 9, i8 7, i8 9, i8 7, i8 9 }, %struct.il_rate_info { i8 11, i8 4, i8 12, i8 72, i8 8, i8 10, i8 8, i8 10, i8 8, i8 10 }, %struct.il_rate_info { i8 1, i8 5, i8 13, i8 96, i8 9, i8 11, i8 9, i8 11, i8 9, i8 11 }, %struct.il_rate_info { i8 3, i8 6, i8 14, i8 108, i8 10, i8 13, i8 10, i8 13, i8 10, i8 13 }, %struct.il_rate_info { i8 3, i8 7, i8 15, i8 120, i8 10, i8 13, i8 10, i8 13, i8 10, i8 13 }], [62 x i8] zeroinitializer }, align 32
@il4965_rs_rate_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s LQ:*** rate scale station global init for station %d ***\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il4965_rs_rate_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/intel/iwlegacy/4965-rs.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il4965_rs_rate_init._entry_ptr = internal global ptr @il4965_rs_rate_init._entry, section ".printk_index", align 4
@rs_4965_ops = internal constant { %struct.rate_control_ops, [40 x i8] } { %struct.rate_control_ops { i32 0, ptr @.str.29, ptr @il4965_rs_alloc, ptr null, ptr @il4965_rs_free, ptr @il4965_rs_alloc_sta, ptr @il4965_rs_rate_init_stub, ptr null, ptr @il4965_rs_free_sta, ptr null, ptr @il4965_rs_tx_status, ptr @il4965_rs_get_rate, ptr @il4965_rs_add_debugfs, ptr null }, [40 x i8] zeroinitializer }, align 32
@il_debug_level = external dso_local local_unnamed_addr global i32, align 4
@rate_lowest_index.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@ant_toggle_lookup = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\04\06\01\03\05\07", [24 x i8] zeroinitializer }, align 32
@il4965_rate_n_flags_from_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid HT rate idx %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"il4965_rate_n_flags_from_tbl\00", [35 x i8] zeroinitializer }, align 32
@il4965_rate_n_flags_from_tbl._entry_ptr = internal global ptr @il4965_rate_n_flags_from_tbl._entry, section ".printk_index", align 4
@il4965_rate_n_flags_from_tbl._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid tbl->lq_type %d\0A\00", [39 x i8] zeroinitializer }, align 32
@il4965_rate_n_flags_from_tbl._entry_ptr.10 = internal global ptr @il4965_rate_n_flags_from_tbl._entry.8, section ".printk_index", align 4
@il4965_rate_n_flags_from_tbl._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GF was set with SGI:SISO\0A\00", [38 x i8] zeroinitializer }, align 32
@il4965_rate_n_flags_from_tbl._entry_ptr.13 = internal global ptr @il4965_rate_n_flags_from_tbl._entry.11, section ".printk_index", align 4
@il4965_rs_set_expected_tpt_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@expected_tpt_legacy = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 7, i32 13, i32 35, i32 58, i32 40, i32 57, i32 72, i32 98, i32 121, i32 154, i32 177, i32 186, i32 0], [44 x i8] zeroinitializer }, align 32
@expected_tpt_siso20MHz = internal global { [4 x [13 x i32]], [48 x i8] } { [4 x [13 x i32]] [[13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 42, i32 0, i32 76, i32 102, i32 124, i32 158, i32 183, i32 193, i32 202], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 46, i32 0, i32 82, i32 110, i32 132, i32 167, i32 192, i32 202, i32 210], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 48, i32 0, i32 93, i32 135, i32 176, i32 251, i32 319, i32 351, i32 381], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 53, i32 0, i32 102, i32 149, i32 193, i32 275, i32 348, i32 381, i32 413]], [48 x i8] zeroinitializer }, align 32
@expected_tpt_siso40MHz = internal global { [4 x [13 x i32]], [48 x i8] } { [4 x [13 x i32]] [[13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 77, i32 0, i32 127, i32 160, i32 184, i32 220, i32 242, i32 250, i32 257], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 83, i32 0, i32 135, i32 169, i32 193, i32 229, i32 250, i32 257, i32 264], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 96, i32 0, i32 182, i32 259, i32 328, i32 451, i32 553, i32 598, i32 640], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 106, i32 0, i32 199, i32 282, i32 357, i32 487, i32 593, i32 640, i32 683]], [48 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_20MHz = internal global { [4 x [13 x i32]], [48 x i8] } { [4 x [13 x i32]] [[13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 74, i32 0, i32 123, i32 155, i32 179, i32 213, i32 235, i32 243, i32 250], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 81, i32 0, i32 131, i32 164, i32 187, i32 221, i32 242, i32 250, i32 256], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 92, i32 0, i32 175, i32 250, i32 317, i32 436, i32 534, i32 578, i32 619], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 102, i32 0, i32 192, i32 273, i32 344, i32 470, i32 573, i32 619, i32 660]], [48 x i8] zeroinitializer }, align 32
@expected_tpt_mimo2_40MHz = internal global { [4 x [13 x i32]], [48 x i8] } { [4 x [13 x i32]] [[13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 123, i32 0, i32 182, i32 214, i32 235, i32 264, i32 279, i32 285, i32 289], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 131, i32 0, i32 191, i32 222, i32 242, i32 270, i32 284, i32 289, i32 293], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 180, i32 0, i32 327, i32 446, i32 545, i32 708, i32 828, i32 878, i32 922], [13 x i32] [i32 0, i32 0, i32 0, i32 0, i32 197, i32 0, i32 355, i32 481, i32 584, i32 752, i32 872, i32 922, i32 966]], [48 x i8] zeroinitializer }, align 32
@il4965_rs_dbgfs_set_mcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 2516, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Fixed rate ON\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_rs_dbgfs_set_mcs\00", [40 x i8] zeroinitializer }, align 32
@il4965_rs_dbgfs_set_mcs._entry_ptr = internal global ptr @il4965_rs_dbgfs_set_mcs._entry, section ".printk_index", align 4
@il4965_rs_dbgfs_set_mcs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 2521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid antenna selection 0x%X, Valid is 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@il4965_rs_dbgfs_set_mcs._entry_ptr.18 = internal global ptr @il4965_rs_dbgfs_set_mcs._entry.16, section ".printk_index", align 4
@il4965_rs_dbgfs_set_mcs._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 2522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Fixed rate OFF\0A\00", [45 x i8] zeroinitializer }, align 32
@il4965_rs_dbgfs_set_mcs._entry_ptr.21 = internal global ptr @il4965_rs_dbgfs_set_mcs._entry.19, section ".printk_index", align 4
@il4965_rs_dbgfs_set_mcs._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 2525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il4965_rs_dbgfs_set_mcs._entry_ptr.23 = internal global ptr @il4965_rs_dbgfs_set_mcs._entry.22, section ".printk_index", align 4
@rs_ht_to_legacy = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\04\04\04\04\04\04\05\06\07\08\09\0A\0B", [19 x i8] zeroinitializer }, align 32
@il4965_rs_get_adjacent_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 697, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Skipping masked lower rate: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_rs_get_adjacent_rate\00", [36 x i8] zeroinitializer }, align 32
@il4965_rs_get_adjacent_rate._entry_ptr = internal global ptr @il4965_rs_get_adjacent_rate._entry, section ".printk_index", align 4
@il4965_rs_get_adjacent_rate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 707, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Skipping masked higher rate: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_rs_get_adjacent_rate._entry_ptr.28 = internal global ptr @il4965_rs_get_adjacent_rate._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iwl-4965-rs\00", [20 x i8] zeroinitializer }, align 32
@il4965_rs_alloc_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 2260, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s create station rate scale win\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il4965_rs_alloc_sta\00", [44 x i8] zeroinitializer }, align 32
@il4965_rs_alloc_sta._entry_ptr = internal global ptr @il4965_rs_alloc_sta._entry, section ".printk_index", align 4
@il4965_rs_free_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 2494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il4965_rs_free_sta\00", [45 x i8] zeroinitializer }, align 32
@il4965_rs_free_sta._entry_ptr = internal global ptr @il4965_rs_free_sta._entry, section ".printk_index", align 4
@il4965_rs_free_sta._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 2495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s leave\0A\00", [22 x i8] zeroinitializer }, align 32
@il4965_rs_free_sta._entry_ptr.36 = internal global ptr @il4965_rs_free_sta._entry.34, section ".printk_index", align 4
@il4965_rs_tx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s get frame ack response, update rate scale win\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il4965_rs_tx_status\00", [44 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr = internal global ptr @il4965_rs_tx_status._entry, section ".printk_index", align 4
@il4965_rs_tx_status._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 812, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Station rate scaling not created yet.\0A\00", [54 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.41 = internal global ptr @il4965_rs_tx_status._entry.39, section ".printk_index", align 4
@il4965_rs_tx_status._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 815, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Rate scaling not initialized yet.\0A\00", [58 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.44 = internal global ptr @il4965_rs_tx_status._entry.42, section ".printk_index", align 4
@il4965_rs_tx_status._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s initial rate %d does not match %d (0x%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.47 = internal global ptr @il4965_rs_tx_status._entry.45, section ".printk_index", align 4
@il4965_rs_tx_status._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 893, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Neither active nor search matches tx rate\0A\00", [50 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.50 = internal global ptr @il4965_rs_tx_status._entry.48, section ".printk_index", align 4
@il4965_rs_tx_status._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 896, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s active- lq:%x, ant:%x, SGI:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.53 = internal global ptr @il4965_rs_tx_status._entry.51, section ".printk_index", align 4
@il4965_rs_tx_status._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.38, ptr @.str.2, i32 899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s search- lq:%x, ant:%x, SGI:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.56 = internal global ptr @il4965_rs_tx_status._entry.54, section ".printk_index", align 4
@il4965_rs_tx_status._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.38, ptr @.str.2, i32 901, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s actual- lq:%x, ant:%x, SGI:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_rs_tx_status._entry_ptr.59 = internal global ptr @il4965_rs_tx_status._entry.57, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@il4965_rs_stay_in_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 1668, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s LQ: stay is expired %d %d %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_rs_stay_in_table\00", [40 x i8] zeroinitializer }, align 32
@il4965_rs_stay_in_table._entry_ptr = internal global ptr @il4965_rs_stay_in_table._entry, section ".printk_index", align 4
@il4965_rs_stay_in_table._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 1687, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s LQ: stay in table clear win\0A\00", [32 x i8] zeroinitializer }, align 32
@il4965_rs_stay_in_table._entry_ptr.64 = internal global ptr @il4965_rs_stay_in_table._entry.62, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1755, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s rate scale calculate new rate for skb\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"il4965_rs_rate_scale_perform\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr = internal global ptr @il4965_rs_rate_scale_perform._entry, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1795, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Rate scale idx %d for type %d\0A\00", [62 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.69 = internal global ptr @il4965_rs_rate_scale_perform._entry.67, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.2, i32 1800, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s mask 0x%04X\0A\00", [16 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.72 = internal global ptr @il4965_rs_rate_scale_perform._entry.70, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.2, i32 1820, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current Rate is not valid\0A\00", [37 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.75 = internal global ptr @il4965_rs_rate_scale_perform._entry.73, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.2, i32 1836, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tbl->expected_tpt is NULL\0A\00", [37 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.78 = internal global ptr @il4965_rs_rate_scale_perform._entry.76, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str.2, i32 1861, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s LQ: still below TH. succ=%d total=%d for idx %d\0A\00", [44 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.81 = internal global ptr @il4965_rs_rate_scale_perform._entry.79, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str.2, i32 1876, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"expected_tpt should have been calculated by now\0A\00", [47 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.84 = internal global ptr @il4965_rs_rate_scale_perform._entry.82, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.66, ptr @.str.2, i32 1891, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s LQ: SWITCHING TO NEW TBL suc=%d cur-tpt=%d old-tpt=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.87 = internal global ptr @il4965_rs_rate_scale_perform._entry.85, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.66, ptr @.str.2, i32 1906, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s LQ: GOING BACK TO THE OLD TBL suc=%d cur-tpt=%d old-tpt=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.90 = internal global ptr @il4965_rs_rate_scale_perform._entry.88, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.66, ptr @.str.2, i32 1955, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s decrease rate because of low success_ratio\0A\00", [49 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.93 = internal global ptr @il4965_rs_rate_scale_perform._entry.91, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.66, ptr @.str.2, i32 1988, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s decrease rate because of low tpt\0A\00", [59 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.96 = internal global ptr @il4965_rs_rate_scale_perform._entry.94, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.66, ptr @.str.2, i32 2026, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s choose rate scale idx %d action %d low %d high %d type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.99 = internal global ptr @il4965_rs_rate_scale_perform._entry.97, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.66, ptr @.str.2, i32 2069, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Switch current  mcs: %X idx: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.102 = internal global ptr @il4965_rs_rate_scale_perform._entry.100, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.66, ptr @.str.2, i32 2085, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s LQ: STAY in legacy table\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.105 = internal global ptr @il4965_rs_rate_scale_perform._entry.103, section ".printk_index", align 4
@il4965_rs_rate_scale_perform._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.66, ptr @.str.2, i32 2101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s try to aggregate tid %d\0A\00", [36 x i8] zeroinitializer }, align 32
@il4965_rs_rate_scale_perform._entry_ptr.108 = internal global ptr @il4965_rs_rate_scale_perform._entry.106, section ".printk_index", align 4
@il4965_rs_move_legacy_other._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s LQ: Legacy toggle Antenna\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_rs_move_legacy_other\00", [36 x i8] zeroinitializer }, align 32
@il4965_rs_move_legacy_other._entry_ptr = internal global ptr @il4965_rs_move_legacy_other._entry, section ".printk_index", align 4
@il4965_rs_move_legacy_other._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 1309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s LQ: Legacy switch to SISO\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_rs_move_legacy_other._entry_ptr.113 = internal global ptr @il4965_rs_move_legacy_other._entry.111, section ".printk_index", align 4
@il4965_rs_move_legacy_other._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.110, ptr @.str.2, i32 1326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s LQ: Legacy switch to MIMO2\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_rs_move_legacy_other._entry_ptr.116 = internal global ptr @il4965_rs_move_legacy_other._entry.114, section ".printk_index", align 4
@il4965_rs_switch_to_siso._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1223, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s LQ: try to switch to SISO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_rs_switch_to_siso\00", [39 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_siso._entry_ptr = internal global ptr @il4965_rs_switch_to_siso._entry, section ".printk_index", align 4
@il4965_rs_switch_to_siso._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s LQ: get best rate %d mask %X\0A\00", [63 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_siso._entry_ptr.121 = internal global ptr @il4965_rs_switch_to_siso._entry.119, section ".printk_index", align 4
@il4965_rs_switch_to_siso._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 1245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s can not switch with idx %d rate mask %x\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_siso._entry_ptr.124 = internal global ptr @il4965_rs_switch_to_siso._entry.122, section ".printk_index", align 4
@il4965_rs_switch_to_siso._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.2, i32 1251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s LQ: Switch to new mcs %X idx is green %X\0A\00", [51 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_siso._entry_ptr.127 = internal global ptr @il4965_rs_switch_to_siso._entry.125, section ".printk_index", align 4
@il4965_rs_switch_to_mimo2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s LQ: try to switch to MIMO2\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il4965_rs_switch_to_mimo2\00", [38 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_mimo2._entry_ptr = internal global ptr @il4965_rs_switch_to_mimo2._entry, section ".printk_index", align 4
@il4965_rs_switch_to_mimo2._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 1194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s LQ: MIMO2 best rate %d mask %X\0A\00", [61 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_mimo2._entry_ptr.132 = internal global ptr @il4965_rs_switch_to_mimo2._entry.130, section ".printk_index", align 4
@il4965_rs_switch_to_mimo2._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 1197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Can't switch with idx %d rate mask %x\0A\00", [54 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_mimo2._entry_ptr.135 = internal global ptr @il4965_rs_switch_to_mimo2._entry.133, section ".printk_index", align 4
@il4965_rs_switch_to_mimo2._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.129, ptr @.str.2, i32 1204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il4965_rs_switch_to_mimo2._entry_ptr.137 = internal global ptr @il4965_rs_switch_to_mimo2._entry.136, section ".printk_index", align 4
@il4965_rs_move_siso_to_other._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 1404, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s LQ: SISO toggle Antenna\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"il4965_rs_move_siso_to_other\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_move_siso_to_other._entry_ptr = internal global ptr @il4965_rs_move_siso_to_other._entry, section ".printk_index", align 4
@il4965_rs_move_siso_to_other._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 1425, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s LQ: SISO switch to MIMO2\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_move_siso_to_other._entry_ptr.142 = internal global ptr @il4965_rs_move_siso_to_other._entry.140, section ".printk_index", align 4
@il4965_rs_move_siso_to_other._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.2, i32 1454, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s LQ: SISO toggle SGI/NGI\0A\00", [36 x i8] zeroinitializer }, align 32
@il4965_rs_move_siso_to_other._entry_ptr.145 = internal global ptr @il4965_rs_move_siso_to_other._entry.143, section ".printk_index", align 4
@il4965_rs_move_siso_to_other._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.139, ptr @.str.2, i32 1461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SGI was set in GF+SISO\0A\00", [40 x i8] zeroinitializer }, align 32
@il4965_rs_move_siso_to_other._entry_ptr.148 = internal global ptr @il4965_rs_move_siso_to_other._entry.146, section ".printk_index", align 4
@il4965_rs_move_mimo2_to_other._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 1526, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s LQ: MIMO2 toggle Antennas\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"il4965_rs_move_mimo2_to_other\00", [34 x i8] zeroinitializer }, align 32
@il4965_rs_move_mimo2_to_other._entry_ptr = internal global ptr @il4965_rs_move_mimo2_to_other._entry, section ".printk_index", align 4
@il4965_rs_move_mimo2_to_other._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.2, i32 1545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s LQ: MIMO2 switch to SISO\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_move_mimo2_to_other._entry_ptr.153 = internal global ptr @il4965_rs_move_mimo2_to_other._entry.151, section ".printk_index", align 4
@il4965_rs_move_mimo2_to_other._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.2, i32 1577, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s LQ: MIMO2 toggle SGI/NGI\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_rs_move_mimo2_to_other._entry_ptr.156 = internal global ptr @il4965_rs_move_mimo2_to_other._entry.154, section ".printk_index", align 4
@il4965_rs_set_stay_in_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s we are staying in the same table\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_rs_set_stay_in_table\00", [36 x i8] zeroinitializer }, align 32
@il4965_rs_set_stay_in_table._entry_ptr = internal global ptr @il4965_rs_set_stay_in_table._entry, section ".printk_index", align 4
@il4965_rs_tl_turn_on_agg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tid exceeds max load count: %d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_rs_tl_turn_on_agg\00", [39 x i8] zeroinitializer }, align 32
@il4965_rs_tl_turn_on_agg._entry_ptr = internal global ptr @il4965_rs_tl_turn_on_agg._entry, section ".printk_index", align 4
@il4965_rs_tl_turn_on_agg_for_tid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Starting Tx agg: STA: %pM tid: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"il4965_rs_tl_turn_on_agg_for_tid\00", [63 x i8] zeroinitializer }, align 32
@il4965_rs_tl_turn_on_agg_for_tid._entry_ptr = internal global ptr @il4965_rs_tl_turn_on_agg_for_tid._entry, section ".printk_index", align 4
@il4965_rs_tl_turn_on_agg_for_tid._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 355, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fail start Tx agg on tid: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.165 = internal global ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.163, section ".printk_index", align 4
@il4965_rs_tl_turn_on_agg_for_tid._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.2, i32 360, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s Aggregation not enabled for tid %d because load = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.168 = internal global ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.166, section ".printk_index", align 4
@il4965_rs_get_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.169, ptr @.str.2, i32 2193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il4965_rs_get_rate\00", [45 x i8] zeroinitializer }, align 32
@il4965_rs_get_rate._entry_ptr = internal global ptr @il4965_rs_get_rate._entry, section ".printk_index", align 4
@il4965_rs_get_rate._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.169, ptr @.str.2, i32 2208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il4965_rs_get_rate._entry_ptr.171 = internal global ptr @il4965_rs_get_rate._entry.170, section ".printk_index", align 4
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_scale_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_scale_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @il4965_rs_sta_dbgfs_scale_table_read, ptr @il4965_rs_sta_dbgfs_scale_table_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rate_stats_table\00", [47 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_stats_table_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @il4965_rs_sta_dbgfs_stats_table_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rate_scale_data\00", [16 x i8] zeroinitializer }, align 32
@rs_sta_dbgfs_rate_scale_data_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @il4965_rs_sta_dbgfs_rate_scale_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tx_agg_tid_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sta_id %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed=%d success=%d rate=0%X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fixed rate 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"valid_tx_ant %s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_A,\00", [25 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.182 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ANT_B,\00", [25 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ANT_C\00", [26 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lq type %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HT\00", [29 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SISO\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIMO2\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" %s %s %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGI\00", [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GF enabled\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AGG on\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"last tx rate=0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"general:flags=0x%X mimo-d=%d s-ant0x%x d-ant=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"agg:time_limit=%d dist_start_th=%d frame_cnt_limit=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Start idx [0]=0x%x [1]=0x%x [2]=0x%x [3]=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" rate[%d] 0x%X %smbps\0A\00", [41 x i8] zeroinitializer }, align 32
@il_rate_mcs = internal constant { [13 x %struct.il_rate_mcs_info], [72 x i8] } { [13 x %struct.il_rate_mcs_info] [%struct.il_rate_mcs_info { [12 x i8] c"1\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK DSSS\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"2\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK DSSS\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"5.5\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK CCK\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"11\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK CCK\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"6\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"9\00\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"BPSK 1/2\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"12\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 1/2\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"18\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"QPSK 3/4\00\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"24\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 1/2\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"36\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"16QAM 3/4\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"48\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 2/3\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"54\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 3/4\00\00\00" }, %struct.il_rate_mcs_info { [12 x i8] c"60\00\00\00\00\00\00\00\00\00\00", [12 x i8] c"64QAM 5/6\00\00\00" }], [72 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" rate[%d] 0x%X %smbps (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.202 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@il4965_rs_sta_dbgfs_scale_table_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 2556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s sta_id %d rate 0x%X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"il4965_rs_sta_dbgfs_scale_table_write\00", [58 x i8] zeroinitializer }, align 32
@il4965_rs_sta_dbgfs_scale_table_write._entry_ptr = internal global ptr @il4965_rs_sta_dbgfs_scale_table_write._entry, section ".printk_index", align 4
@.str.207 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s type=%d SGI=%d HT40=%d DUP=%d GF=%d\0Arate=0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"counter=%d success=%d %%=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bit Rate= %d Mb/s\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.213 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.216 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 3, i64 5, i64 7, i64 9, i64 10, i64 11, i64 13, i64 15, i64 20, i64 55, i64 110]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.218 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.220 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.221 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.222 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.224 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.225 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.230 = private unnamed_addr constant [9 x i8] c"il_rates\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 81, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2297, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"rs_4965_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2775, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 6355, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"ant_toggle_lookup\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 50, i32 17 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 494, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 504, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 524, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c"expected_tpt_legacy\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 156, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant [23 x i8] c"expected_tpt_siso20MHz\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 160, i32 12 }
@___asan_gen_.287 = private unnamed_addr constant [23 x i8] c"expected_tpt_siso40MHz\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 167, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_20MHz\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 174, i32 12 }
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"expected_tpt_mimo2_40MHz\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 181, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2516, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2519, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2522, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2525, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant [16 x i8] c"rs_ht_to_legacy\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 40, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 697, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 707, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2776, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2260, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2494, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2495, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 808, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 812, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 815, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 864, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 893, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 895, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 898, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 900, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1666, i32 4 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1687, i32 5 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1755, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1795, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1800, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1820, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1836, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1860, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1876, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1888, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1903, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1955, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1988, i32 5 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2025, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2068, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2085, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2100, i32 6 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1284, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1309, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1326, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1223, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1242, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1244, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1250, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1177, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1194, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1196, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1203, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1404, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1425, i32 4 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1454, i32 4 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1461, i32 6 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1526, i32 4 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1545, i32 4 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 1577, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 989, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 372, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 347, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 355, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 359, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2193, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2208, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2752, i32 22 }
@___asan_gen_.695 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_scale_table_ops\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2667, i32 37 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2754, i32 22 }
@___asan_gen_.701 = private unnamed_addr constant [29 x i8] c"rs_sta_dbgfs_stats_table_ops\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2713, i32 37 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2756, i32 22 }
@___asan_gen_.707 = private unnamed_addr constant [33 x i8] c"rs_sta_dbgfs_rate_scale_data_ops\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2741, i32 37 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2758, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2585, i32 31 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2587, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2591, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2593, i32 27 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2594, i32 46 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2594, i32 57 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2595, i32 46 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2596, i32 46 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2598, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2599, i32 35 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2599, i32 46 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2602, i32 28 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2603, i32 34 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2603, i32 43 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2606, i32 25 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2606, i32 35 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2608, i32 28 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2609, i32 24 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2610, i32 29 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2611, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2614, i32 27 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2618, i32 7 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2626, i32 7 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2634, i32 7 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2647, i32 29 }
@___asan_gen_.788 = private unnamed_addr constant [12 x i8] c"il_rate_mcs\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 189, i32 38 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2653, i32 29 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2546, i32 18 }
@___asan_gen_.797 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2555, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.807, i32 156, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2692, i32 8 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2693, i32 49 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2693, i32 55 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2702, i32 9 }
@___asan_gen_.821 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.822 = private constant [49 x i8] c"../drivers/net/wireless/intel/iwlegacy/4965-rs.c\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.822, i32 2731, i32 28 }
@llvm.compiler.used = appending global [262 x ptr] [ptr @il4965_rate_n_flags_from_tbl._entry, ptr @il4965_rate_n_flags_from_tbl._entry.11, ptr @il4965_rate_n_flags_from_tbl._entry.8, ptr @il4965_rate_n_flags_from_tbl._entry_ptr, ptr @il4965_rate_n_flags_from_tbl._entry_ptr.10, ptr @il4965_rate_n_flags_from_tbl._entry_ptr.13, ptr @il4965_rs_alloc_sta._entry, ptr @il4965_rs_alloc_sta._entry_ptr, ptr @il4965_rs_dbgfs_set_mcs._entry, ptr @il4965_rs_dbgfs_set_mcs._entry.16, ptr @il4965_rs_dbgfs_set_mcs._entry.19, ptr @il4965_rs_dbgfs_set_mcs._entry.22, ptr @il4965_rs_dbgfs_set_mcs._entry_ptr, ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.18, ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.21, ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.23, ptr @il4965_rs_free_sta._entry, ptr @il4965_rs_free_sta._entry.34, ptr @il4965_rs_free_sta._entry_ptr, ptr @il4965_rs_free_sta._entry_ptr.36, ptr @il4965_rs_get_adjacent_rate._entry, ptr @il4965_rs_get_adjacent_rate._entry.26, ptr @il4965_rs_get_adjacent_rate._entry_ptr, ptr @il4965_rs_get_adjacent_rate._entry_ptr.28, ptr @il4965_rs_get_rate._entry, ptr @il4965_rs_get_rate._entry.170, ptr @il4965_rs_get_rate._entry_ptr, ptr @il4965_rs_get_rate._entry_ptr.171, ptr @il4965_rs_move_legacy_other._entry, ptr @il4965_rs_move_legacy_other._entry.111, ptr @il4965_rs_move_legacy_other._entry.114, ptr @il4965_rs_move_legacy_other._entry_ptr, ptr @il4965_rs_move_legacy_other._entry_ptr.113, ptr @il4965_rs_move_legacy_other._entry_ptr.116, ptr @il4965_rs_move_mimo2_to_other._entry, ptr @il4965_rs_move_mimo2_to_other._entry.151, ptr @il4965_rs_move_mimo2_to_other._entry.154, ptr @il4965_rs_move_mimo2_to_other._entry_ptr, ptr @il4965_rs_move_mimo2_to_other._entry_ptr.153, ptr @il4965_rs_move_mimo2_to_other._entry_ptr.156, ptr @il4965_rs_move_siso_to_other._entry, ptr @il4965_rs_move_siso_to_other._entry.140, ptr @il4965_rs_move_siso_to_other._entry.143, ptr @il4965_rs_move_siso_to_other._entry.146, ptr @il4965_rs_move_siso_to_other._entry_ptr, ptr @il4965_rs_move_siso_to_other._entry_ptr.142, ptr @il4965_rs_move_siso_to_other._entry_ptr.145, ptr @il4965_rs_move_siso_to_other._entry_ptr.148, ptr @il4965_rs_rate_init._entry, ptr @il4965_rs_rate_init._entry_ptr, ptr @il4965_rs_rate_scale_perform._entry, ptr @il4965_rs_rate_scale_perform._entry.100, ptr @il4965_rs_rate_scale_perform._entry.103, ptr @il4965_rs_rate_scale_perform._entry.106, ptr @il4965_rs_rate_scale_perform._entry.67, ptr @il4965_rs_rate_scale_perform._entry.70, ptr @il4965_rs_rate_scale_perform._entry.73, ptr @il4965_rs_rate_scale_perform._entry.76, ptr @il4965_rs_rate_scale_perform._entry.79, ptr @il4965_rs_rate_scale_perform._entry.82, ptr @il4965_rs_rate_scale_perform._entry.85, ptr @il4965_rs_rate_scale_perform._entry.88, ptr @il4965_rs_rate_scale_perform._entry.91, ptr @il4965_rs_rate_scale_perform._entry.94, ptr @il4965_rs_rate_scale_perform._entry.97, ptr @il4965_rs_rate_scale_perform._entry_ptr, ptr @il4965_rs_rate_scale_perform._entry_ptr.102, ptr @il4965_rs_rate_scale_perform._entry_ptr.105, ptr @il4965_rs_rate_scale_perform._entry_ptr.108, ptr @il4965_rs_rate_scale_perform._entry_ptr.69, ptr @il4965_rs_rate_scale_perform._entry_ptr.72, ptr @il4965_rs_rate_scale_perform._entry_ptr.75, ptr @il4965_rs_rate_scale_perform._entry_ptr.78, ptr @il4965_rs_rate_scale_perform._entry_ptr.81, ptr @il4965_rs_rate_scale_perform._entry_ptr.84, ptr @il4965_rs_rate_scale_perform._entry_ptr.87, ptr @il4965_rs_rate_scale_perform._entry_ptr.90, ptr @il4965_rs_rate_scale_perform._entry_ptr.93, ptr @il4965_rs_rate_scale_perform._entry_ptr.96, ptr @il4965_rs_rate_scale_perform._entry_ptr.99, ptr @il4965_rs_set_stay_in_table._entry, ptr @il4965_rs_set_stay_in_table._entry_ptr, ptr @il4965_rs_sta_dbgfs_scale_table_write._entry, ptr @il4965_rs_sta_dbgfs_scale_table_write._entry_ptr, ptr @il4965_rs_stay_in_table._entry, ptr @il4965_rs_stay_in_table._entry.62, ptr @il4965_rs_stay_in_table._entry_ptr, ptr @il4965_rs_stay_in_table._entry_ptr.64, ptr @il4965_rs_switch_to_mimo2._entry, ptr @il4965_rs_switch_to_mimo2._entry.130, ptr @il4965_rs_switch_to_mimo2._entry.133, ptr @il4965_rs_switch_to_mimo2._entry.136, ptr @il4965_rs_switch_to_mimo2._entry_ptr, ptr @il4965_rs_switch_to_mimo2._entry_ptr.132, ptr @il4965_rs_switch_to_mimo2._entry_ptr.135, ptr @il4965_rs_switch_to_mimo2._entry_ptr.137, ptr @il4965_rs_switch_to_siso._entry, ptr @il4965_rs_switch_to_siso._entry.119, ptr @il4965_rs_switch_to_siso._entry.122, ptr @il4965_rs_switch_to_siso._entry.125, ptr @il4965_rs_switch_to_siso._entry_ptr, ptr @il4965_rs_switch_to_siso._entry_ptr.121, ptr @il4965_rs_switch_to_siso._entry_ptr.124, ptr @il4965_rs_switch_to_siso._entry_ptr.127, ptr @il4965_rs_tl_turn_on_agg._entry, ptr @il4965_rs_tl_turn_on_agg._entry_ptr, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.163, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.166, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.165, ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.168, ptr @il4965_rs_tx_status._entry, ptr @il4965_rs_tx_status._entry.39, ptr @il4965_rs_tx_status._entry.42, ptr @il4965_rs_tx_status._entry.45, ptr @il4965_rs_tx_status._entry.48, ptr @il4965_rs_tx_status._entry.51, ptr @il4965_rs_tx_status._entry.54, ptr @il4965_rs_tx_status._entry.57, ptr @il4965_rs_tx_status._entry_ptr, ptr @il4965_rs_tx_status._entry_ptr.41, ptr @il4965_rs_tx_status._entry_ptr.44, ptr @il4965_rs_tx_status._entry_ptr.47, ptr @il4965_rs_tx_status._entry_ptr.50, ptr @il4965_rs_tx_status._entry_ptr.53, ptr @il4965_rs_tx_status._entry_ptr.56, ptr @il4965_rs_tx_status._entry_ptr.59, ptr @il_rates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rs_4965_ops, ptr @.str.5, ptr @ant_toggle_lookup, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @expected_tpt_legacy, ptr @expected_tpt_siso20MHz, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_mimo2_20MHz, ptr @expected_tpt_mimo2_40MHz, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @rs_ht_to_legacy, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @rs_sta_dbgfs_scale_table_ops, ptr @.str.173, ptr @rs_sta_dbgfs_stats_table_ops, ptr @.str.174, ptr @rs_sta_dbgfs_rate_scale_data_ops, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @il_rate_mcs, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], section "llvm.metadata"
@0 = internal global [198 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_rates to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_4965_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ant_toggle_lookup to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rate_n_flags_from_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rate_n_flags_from_tbl._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rate_n_flags_from_tbl._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_legacy to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso20MHz to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_siso40MHz to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_20MHz to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_tpt_mimo2_40MHz to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_dbgfs_set_mcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_dbgfs_set_mcs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_dbgfs_set_mcs._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_dbgfs_set_mcs._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_ht_to_legacy to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_get_adjacent_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_get_adjacent_rate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_alloc_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_free_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_free_sta._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tx_status._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_stay_in_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_stay_in_table._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_rate_scale_perform._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_legacy_other._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_legacy_other._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_legacy_other._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_siso._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_siso._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_siso._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_siso._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_mimo2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_mimo2._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_mimo2._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_switch_to_mimo2._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_siso_to_other._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_siso_to_other._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_siso_to_other._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_siso_to_other._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_mimo2_to_other._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_mimo2_to_other._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_move_mimo2_to_other._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_set_stay_in_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tl_turn_on_agg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tl_turn_on_agg_for_tid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_get_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_get_rate._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_scale_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_stats_table_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs_sta_dbgfs_rate_scale_data_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il_rate_mcs to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_rs_sta_dbgfs_scale_table_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_rs_rate_init(ptr noundef %il, ptr noundef %sta, i8 noundef zeroext %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %lq = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %10 = ptrtoint ptr %lq to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sta_id, ptr %lq, align 4
  %lq_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 1
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %entry
  %i.0220 = phi i32 [ 0, %entry ], [ %inc, %for.body9.for.body9_crit_edge ]
  %arrayidx11 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx11, align 8
  %success_counter.i = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220, i32 1
  %12 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220, i32 2
  %13 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220, i32 3
  %14 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220, i32 4
  %15 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.0220, i32 5
  %16 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %stamp.i, align 8
  %inc = add nuw nsw i32 %i.0220, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.body9.for.body9.1_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9

for.body9.for.body9.1_crit_edge:                  ; preds = %for.body9
  br label %for.body9.1

for.body9.1:                                      ; preds = %for.body9.1.for.body9.1_crit_edge, %for.body9.for.body9.1_crit_edge
  %i.0220.1 = phi i32 [ %inc.1, %for.body9.1.for.body9.1_crit_edge ], [ 0, %for.body9.for.body9.1_crit_edge ]
  %arrayidx11.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %arrayidx11.1, align 8
  %success_counter.i.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1, i32 1
  %18 = ptrtoint ptr %success_counter.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %success_counter.i.1, align 8
  %success_ratio.i.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1, i32 2
  %19 = ptrtoint ptr %success_ratio.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %success_ratio.i.1, align 4
  %counter.i.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1, i32 3
  %20 = ptrtoint ptr %counter.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %counter.i.1, align 8
  %average_tpt.i.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1, i32 4
  %21 = ptrtoint ptr %average_tpt.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %average_tpt.i.1, align 4
  %stamp.i.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.0220.1, i32 5
  %22 = ptrtoint ptr %stamp.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %stamp.i.1, align 8
  %inc.1 = add nuw nsw i32 %i.0220.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 13
  br i1 %exitcond.1.not, label %for.inc12.1, label %for.body9.1.for.body9.1_crit_edge

for.body9.1.for.body9.1_crit_edge:                ; preds = %for.body9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body9.1

for.inc12.1:                                      ; preds = %for.body9.1
  %flush_timer = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %23 = ptrtoint ptr %flush_timer to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %flush_timer, align 8
  %band15 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 2
  %24 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %band15, align 4
  %arrayidx16 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx16, align 4
  %supp_rates17 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %28 = ptrtoint ptr %supp_rates17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %supp_rates17, align 8
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.inc12.1
  %i.1222 = phi i32 [ 0, %for.inc12.1 ], [ %inc29, %for.body23.for.body23_crit_edge ]
  %arrayidx27 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %arrayidx27, align 8
  %success_counter.i196 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222, i32 1
  %30 = ptrtoint ptr %success_counter.i196 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %success_counter.i196, align 8
  %success_ratio.i197 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222, i32 2
  %31 = ptrtoint ptr %success_ratio.i197 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %success_ratio.i197, align 4
  %counter.i198 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222, i32 3
  %32 = ptrtoint ptr %counter.i198 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %counter.i198, align 8
  %average_tpt.i199 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222, i32 4
  %33 = ptrtoint ptr %average_tpt.i199 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %average_tpt.i199, align 4
  %stamp.i200 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 0, i32 9, i32 %i.1222, i32 5
  %34 = ptrtoint ptr %stamp.i200 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %stamp.i200, align 8
  %inc29 = add nuw nsw i32 %i.1222, 1
  %exitcond226.not = icmp eq i32 %inc29, 13
  br i1 %exitcond226.not, label %for.body23.for.body23.1_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23

for.body23.for.body23.1_crit_edge:                ; preds = %for.body23
  br label %for.body23.1

for.body23.1:                                     ; preds = %for.body23.1.for.body23.1_crit_edge, %for.body23.for.body23.1_crit_edge
  %i.1222.1 = phi i32 [ %inc29.1, %for.body23.1.for.body23.1_crit_edge ], [ 0, %for.body23.for.body23.1_crit_edge ]
  %arrayidx27.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1
  %35 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %arrayidx27.1, align 8
  %success_counter.i196.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1, i32 1
  %36 = ptrtoint ptr %success_counter.i196.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %success_counter.i196.1, align 8
  %success_ratio.i197.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1, i32 2
  %37 = ptrtoint ptr %success_ratio.i197.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %success_ratio.i197.1, align 4
  %counter.i198.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1, i32 3
  %38 = ptrtoint ptr %counter.i198.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %counter.i198.1, align 8
  %average_tpt.i199.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1, i32 4
  %39 = ptrtoint ptr %average_tpt.i199.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %average_tpt.i199.1, align 4
  %stamp.i200.1 = getelementptr [2 x %struct.il_scale_tbl_info], ptr %lq_info, i32 0, i32 1, i32 9, i32 %i.1222.1, i32 5
  %40 = ptrtoint ptr %stamp.i200.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %stamp.i200.1, align 8
  %inc29.1 = add nuw nsw i32 %i.1222.1, 1
  %exitcond226.1.not = icmp eq i32 %inc29.1, 13
  br i1 %exitcond226.1.not, label %for.inc31.1, label %for.body23.1.for.body23.1_crit_edge

for.body23.1.for.body23.1_crit_edge:              ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body23.1

for.inc31.1:                                      ; preds = %for.body23.1
  %lq_sta5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %41 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.inc31.1.il_get_debug_level.exit_crit_edge

for.inc31.1.il_get_debug_level.exit_crit_edge:    ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %43 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %for.inc31.1.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %43, %if.else.i ], [ %42, %for.inc31.1.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end38_crit_edge, label %do.end

il_get_debug_level.exit.do.end38_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %il, align 8
  %wiphy36 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy36, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  %conv = zext i8 %sta_id to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv) #16
  br label %do.end38

do.end38:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end38_crit_edge
  %is_dup = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3
  %48 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %is_dup, align 2
  %max_rate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 1
  %49 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %max_rate_idx, align 2
  %missed_rate_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 21
  %50 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 15, ptr %missed_rate_counter, align 1
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %51 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ht_cap.i, align 4
  %53 = and i16 %52, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i201 = icmp eq i16 %53, 0
  br i1 %tobool.not.i201, label %do.end38.il4965_rs_use_green.exit_crit_edge, label %land.rhs.i

do.end38.il4965_rs_use_green.exit_crit_edge:      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_use_green.exit

land.rhs.i:                                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  %non_gf_sta_present.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 55, i32 2
  %54 = ptrtoint ptr %non_gf_sta_present.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %non_gf_sta_present.i, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool1.not.i = icmp eq i8 %55, 0
  br label %il4965_rs_use_green.exit

il4965_rs_use_green.exit:                         ; preds = %land.rhs.i, %do.end38.il4965_rs_use_green.exit_crit_edge
  %56 = phi i1 [ false, %do.end38.il4965_rs_use_green.exit_crit_edge ], [ %tobool1.not.i, %land.rhs.i ]
  %conv40 = zext i1 %56 to i8
  %is_green = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 2
  %57 = ptrtoint ptr %is_green to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv40, ptr %is_green, align 1
  %active_rate = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 62
  %58 = ptrtoint ptr %active_rate to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %active_rate, align 4
  %60 = and i16 %59, -4097
  %active_legacy_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 1
  %61 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %active_legacy_rate, align 4
  %band44 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %62 = ptrtoint ptr %band44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %band44, align 4
  %band45 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %64 = ptrtoint ptr %band45 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %band45, align 4
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %65 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mcs, align 1
  %conv47 = zext i8 %66 to i16
  %shl = shl nuw nsw i16 %conv47, 1
  %active_siso_rate = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 18
  %67 = and i8 %66, 1
  %and53 = zext i8 %67 to i16
  %shl.masked = and i16 %shl, 508
  %68 = or i16 %shl.masked, %and53
  %69 = shl nuw nsw i16 %68, 4
  %70 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %active_siso_rate, align 2
  %arrayidx67 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %72 to i16
  %shl69 = shl nuw nsw i16 %conv68, 1
  %active_mimo2_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2
  %73 = and i8 %72, 1
  %and75 = zext i8 %73 to i16
  %shl69.masked = and i16 %shl69, 508
  %74 = or i16 %shl69.masked, %and75
  %75 = shl nuw nsw i16 %74, 4
  %76 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %active_mimo2_rate, align 8
  %valid_tx_ant = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %77 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %valid_tx_ant, align 2
  %conv.i = zext i8 %78 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i202 = icmp eq i32 %and.i, 0
  %and2.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %..i = select i1 %tobool3.not.i, i8 4, i8 2
  %retval.0.i203 = select i1 %tobool.not.i202, i8 %..i, i8 1
  %single_stream_ant_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %retval.0.i203, ptr %single_stream_ant_msk, align 2
  %80 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %valid_tx_ant, align 2
  %conv.i204 = zext i8 %81 to i32
  %and.i205 = and i32 %conv.i204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool.not.i206 = icmp eq i32 %and.i205, 0
  %and2.i207 = and i32 %conv.i204, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i207)
  %tobool3.not.i208 = icmp eq i32 %and2.i207, 0
  %..i209.op = select i1 %tobool3.not.i208, i8 -5, i8 -3
  %neg = select i1 %tobool.not.i206, i8 %..i209.op, i8 -2
  %and97 = and i8 %neg, %81
  %dual_stream_ant_msk = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 2
  %82 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %and97, ptr %dual_stream_ant_msk, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and97)
  %tobool104.not = icmp eq i8 %and97, 0
  br i1 %tobool104.not, label %il4965_rs_use_green.exit.if.end122.sink.split_crit_edge, label %if.else

il4965_rs_use_green.exit.if.end122.sink.split_crit_edge: ; preds = %il4965_rs_use_green.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122.sink.split

if.else:                                          ; preds = %il4965_rs_use_green.exit
  %83 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %valid_tx_ant, align 2
  %and.i211 = and i8 %84, 1
  %and3.i = lshr i8 %84, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i211
  %and10.i = lshr i8 %84, 2
  %and10.lobit.i = and i8 %and10.i, 1
  %add16.i = add nuw nsw i8 %add.i, %and10.lobit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %add16.i)
  %cmp113 = icmp eq i8 %add16.i, 2
  br i1 %cmp113, label %if.else.if.end122.sink.split_crit_edge, label %if.else.if.end122_crit_edge

if.else.if.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.else.if.end122.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %if.else.if.end122.sink.split_crit_edge, %il4965_rs_use_green.exit.if.end122.sink.split_crit_edge
  %.sink = phi i8 [ 3, %il4965_rs_use_green.exit.if.end122.sink.split_crit_edge ], [ %84, %if.else.if.end122.sink.split_crit_edge ]
  %85 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink, ptr %dual_stream_ant_msk, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.else.if.end122_crit_edge
  %tx_agg_tid_en = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 5
  %86 = ptrtoint ptr %tx_agg_tid_en to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %tx_agg_tid_en, align 8
  %drv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 9
  %87 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %il, ptr %drv, align 8
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 4
  %88 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp46.i = icmp sgt i32 %89, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.end122.land.end.i_crit_edge

if.end122.land.end.i_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %if.end122
  %cmp.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i, label %for.body.lr.ph.i.if.then.i.split_crit_edge, label %for.body.lr.ph.i.split

for.body.lr.ph.i.if.then.i.split_crit_edge:       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i
  %90 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %band15, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i.split
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i.split ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %94 = shl nuw i32 1, %i.047.i
  %95 = and i32 %93, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i212 = icmp eq i32 %95, 0
  br i1 %tobool.not.i212, label %for.inc.i, label %for.body.i.if.then.i.split_crit_edge

for.body.i.if.then.i.split_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.split

if.then.i.split:                                  ; preds = %for.body.i.if.then.i.split_crit_edge, %for.body.lr.ph.i.if.then.i.split_crit_edge
  %i.047.lcssa.i.split = phi i32 [ 0, %for.body.lr.ph.i.if.then.i.split_crit_edge ], [ %i.047.i, %for.body.i.if.then.i.split_crit_edge ]
  %sext = shl i32 %i.047.lcssa.i.split, 24
  %phi.cast = ashr exact i32 %sext, 24
  br label %rate_lowest_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %89
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end122.land.end.i_crit_edge
  %.b43.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.rate_lowest_index.exit_crit_edge, label %if.then7.i, !prof !399

land.end.i.rate_lowest_index.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rate_lowest_index.exit

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 6355, i32 noundef 9, ptr noundef null) #13
  br label %rate_lowest_index.exit

rate_lowest_index.exit:                           ; preds = %if.then7.i, %land.end.i.rate_lowest_index.exit_crit_edge, %if.then.i.split
  %retval.0.i214 = phi i32 [ %phi.cast, %if.then.i.split ], [ 0, %if.then7.i ], [ 0, %land.end.i.rate_lowest_index.exit_crit_edge ]
  %last_txrate_idx = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 11
  %96 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %retval.0.i214, ptr %last_txrate_idx, align 4
  %97 = ptrtoint ptr %band15 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %band15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp126 = icmp eq i32 %98, 1
  br i1 %cmp126, label %if.then128, label %rate_lowest_index.exit.if.end130_crit_edge

rate_lowest_index.exit.if.end130_crit_edge:       ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end130

if.then128:                                       ; preds = %rate_lowest_index.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nsw i32 %retval.0.i214, 4
  %99 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add, ptr %last_txrate_idx, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %rate_lowest_index.exit.if.end130_crit_edge
  %is_agg = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 15
  %100 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %is_agg, align 4
  %dbg_fixed_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 7, i32 25, i32 7
  %101 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %dbg_fixed_rate, align 4
  %tobool.not.i215 = icmp eq ptr %sta, null
  %tobool1.not.i216 = icmp eq ptr %lq_sta5, null
  %or.cond.i = or i1 %tobool.not.i215, %tobool1.not.i216
  br i1 %or.cond.i, label %if.end130.il4965_rs_initialize_lq.exit_crit_edge, label %if.end.i

if.end130.il4965_rs_initialize_lq.exit_crit_edge: ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_initialize_lq.exit

if.end.i:                                         ; preds = %if.end130
  %102 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ht_cap.i, align 4
  %104 = and i16 %103, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool.not.i.i = icmp eq i16 %104, 0
  br i1 %tobool.not.i.i, label %if.end.i.il4965_rs_use_green.exit.i_crit_edge, label %land.rhs.i.i

if.end.i.il4965_rs_use_green.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_use_green.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %non_gf_sta_present.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 55, i32 2
  %105 = ptrtoint ptr %non_gf_sta_present.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %non_gf_sta_present.i.i, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool1.not.i.i = icmp eq i8 %106, 0
  br label %il4965_rs_use_green.exit.i

il4965_rs_use_green.exit.i:                       ; preds = %land.rhs.i.i, %if.end.i.il4965_rs_use_green.exit.i_crit_edge
  %107 = phi i1 [ false, %if.end.i.il4965_rs_use_green.exit.i_crit_edge ], [ %tobool1.not.i.i, %land.rhs.i.i ]
  %conv.i217 = zext i1 %107 to i8
  %108 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %last_txrate_idx, align 4
  %110 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %valid_tx_ant, align 2
  %search_better_tbl.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 3
  %112 = ptrtoint ptr %search_better_tbl.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %search_better_tbl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool3.not.i218 = icmp eq i8 %113, 0
  %114 = ptrtoint ptr %lq_sta5 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %lq_sta5, align 8
  %sub.i = sub i8 1, %115
  %active_tbl.0.i = select i1 %tobool3.not.i218, i8 %115, i8 %sub.i
  %idxprom.i = zext i8 %active_tbl.0.i to i32
  %arrayidx.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %109)
  %116 = icmp ugt i32 %109, 12
  %i.0.i = select i1 %116, i32 0, i32 %109
  %arrayidx16.i = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %i.0.i
  %117 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %118 to i32
  %conv.i.i = zext i8 %111 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i2.i = icmp eq i32 %and.i.i, 0
  %and2.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %..i.i = select i1 %tobool3.not.i.i, i8 4, i8 2
  %retval.0.i.i = select i1 %tobool.not.i2.i, i8 %..i.i, i8 1
  %ant_type.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 1
  %119 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %retval.0.i.i, ptr %ant_type.i, align 4
  %conv20.i = zext i8 %retval.0.i.i to i32
  %shl.i = shl nuw nsw i32 %conv20.i, 14
  %or.i = or i32 %shl.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0.i)
  %cmp23.i = icmp ult i32 %i.0.i, 4
  %or26.i = or i32 %or.i, 512
  %spec.select.i = select i1 %cmp23.i, i32 %or26.i, i32 %or.i
  %120 = ptrtoint ptr %band44 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %band44, align 4
  %and.i.i.i = lshr i32 %spec.select.i, 14
  %call1.i.i = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %spec.select.i) #13
  %is_SGI.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 2
  %is_ht40.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 3
  %122 = trunc i32 %and.i.i.i to i8
  %conv3.i.i = and i8 %122, 7
  %123 = call ptr @memset(ptr %is_SGI.i.i, i32 0, i32 435)
  %124 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv3.i.i, ptr %ant_type.i, align 4
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %arrayidx.i, align 8
  %max_search.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 6
  %126 = ptrtoint ptr %max_search.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 5, ptr %max_search.i.i, align 1
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  %and2.i.i.i = lshr i32 %spec.select.i, 15
  %and2.lobit.i.i.i = and i32 %and2.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %and.lobit.i.i.i, %and2.lobit.i.i.i
  %and8.i.i.i = lshr i32 %spec.select.i, 16
  %and8.lobit.i.i.i = and i32 %and8.i.i.i, 1
  %add14.i.i.i = add nuw nsw i32 %add.i.i.i, %and8.lobit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i.i)
  %cmp7.i.i = icmp eq i32 %add14.i.i.i, 1
  br i1 %cmp7.i.i, label %if.then9.i.i, label %il4965_rs_use_green.exit.i.il4965_rs_get_tbl_info_from_mcs.exit.i_crit_edge

il4965_rs_use_green.exit.i.il4965_rs_get_tbl_info_from_mcs.exit.i_crit_edge: ; preds = %il4965_rs_use_green.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit.i

if.then9.i.i:                                     ; preds = %il4965_rs_use_green.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp10.i.i = icmp eq i32 %121, 1
  %..i4.i = select i1 %cmp10.i.i, i32 2, i32 1
  %127 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %..i4.i, ptr %arrayidx.i, align 8
  br label %il4965_rs_get_tbl_info_from_mcs.exit.i

il4965_rs_get_tbl_info_from_mcs.exit.i:           ; preds = %if.then9.i.i, %il4965_rs_use_green.exit.i.il4965_rs_get_tbl_info_from_mcs.exit.i_crit_edge
  %call36.i = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %arrayidx.i, i32 noundef %call1.i.i, i8 noundef zeroext %conv.i217) #13
  %current_rate.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 8
  %128 = ptrtoint ptr %current_rate.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call36.i, ptr %current_rate.i, align 8
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i, align 8
  %.off.i.i = add i32 %130, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 4
  br i1 %switch.i.i, label %if.end46.i.i, label %land.rhs9.i.i

land.rhs9.i.i:                                    ; preds = %il4965_rs_get_tbl_info_from_mcs.exit.i
  %.b145.i.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i.i, label %land.rhs9.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge, label %if.then.i.i, !prof !399

land.rhs9.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge: ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit.i

if.then.i.i:                                      ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit.i

if.end46.i.i:                                     ; preds = %il4965_rs_get_tbl_info_from_mcs.exit.i
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values)
  switch i32 %130, label %land.lhs.true69.i.i [
    i32 1, label %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge
    i32 2, label %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge232
    i32 3, label %land.lhs.true.i.i
  ]

if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge232: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit.i

if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit.i

land.lhs.true.i.i:                                ; preds = %if.end46.i.i
  %132 = ptrtoint ptr %is_ht40.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %is_ht40.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool57.not.i.i = icmp eq i8 %133, 0
  br i1 %tobool57.not.i.i, label %land.lhs.true.i.i.if.end80.i.i_crit_edge, label %lor.lhs.false58.i.i

land.lhs.true.i.i.if.end80.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i.i

lor.lhs.false58.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool59.not.i.i = icmp eq i8 %135, 0
  %spec.select.i.i = select i1 %tobool59.not.i.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i.i

land.lhs.true69.i.i:                              ; preds = %if.end46.i.i
  %136 = ptrtoint ptr %is_ht40.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %is_ht40.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool71.not.i.i = icmp eq i8 %137, 0
  br i1 %tobool71.not.i.i, label %land.lhs.true69.i.i.if.end80.i.i_crit_edge, label %lor.lhs.false72.i.i

land.lhs.true69.i.i.if.end80.i.i_crit_edge:       ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i.i

lor.lhs.false72.i.i:                              ; preds = %land.lhs.true69.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool75.not.i.i = icmp eq i8 %139, 0
  %spec.select150.i.i = select i1 %tobool75.not.i.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %lor.lhs.false72.i.i, %land.lhs.true69.i.i.if.end80.i.i_crit_edge, %lor.lhs.false58.i.i, %land.lhs.true.i.i.if.end80.i.i_crit_edge
  %ht_tbl_pointer.0.i.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.i.if.end80.i.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.i.if.end80.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false58.i.i ], [ %spec.select150.i.i, %lor.lhs.false72.i.i ]
  %140 = ptrtoint ptr %is_SGI.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %is_SGI.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool81.not.i.i = icmp eq i8 %141, 0
  %142 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %is_agg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool83.not.i.i = icmp eq i8 %143, 0
  br i1 %tobool81.not.i.i, label %land.lhs.true82.i.i, label %land.lhs.true90.i.i

land.lhs.true82.i.i:                              ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select16.idx.i = select i1 %tobool83.not.i.i, i32 0, i32 2
  %spec.select16.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i.i, i32 %spec.select16.idx.i
  br label %il4965_rs_set_expected_tpt_table.exit.i

land.lhs.true90.i.i:                              ; preds = %if.end80.i.i
  br i1 %tobool83.not.i.i, label %if.then93.i.i, label %if.else108.i.i

if.then93.i.i:                                    ; preds = %land.lhs.true90.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit.i

if.else108.i.i:                                   ; preds = %land.lhs.true90.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit.i

il4965_rs_set_expected_tpt_table.exit.i:          ; preds = %if.else108.i.i, %if.then93.i.i, %land.lhs.true82.i.i, %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge, %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge232, %if.then.i.i, %land.rhs9.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge
  %ht_tbl_pointer.0.sink.i.i = phi ptr [ %arrayidx109.i.i, %if.else108.i.i ], [ %arrayidx94.i.i, %if.then93.i.i ], [ @expected_tpt_legacy, %land.rhs9.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge ], [ @expected_tpt_legacy, %if.then.i.i ], [ @expected_tpt_legacy, %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.i.il4965_rs_set_expected_tpt_table.exit.i_crit_edge232 ], [ %spec.select16.i, %land.lhs.true82.i.i ]
  %expected_tpt85.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta5, i32 0, i32 23, i32 %idxprom.i, i32 7
  %144 = ptrtoint ptr %expected_tpt85.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %ht_tbl_pointer.0.sink.i.i, ptr %expected_tpt85.i.i, align 4
  tail call fastcc void @il4965_rs_fill_link_cmd(ptr noundef null, ptr noundef nonnull %lq_sta5, i32 noundef %call36.i) #13
  %145 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %lq, align 4
  %idxprom38.i = zext i8 %146 to i32
  %lq40.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %idxprom38.i, i32 4
  %147 = ptrtoint ptr %lq40.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %lq, ptr %lq40.i, align 8
  %call42.i = tail call i32 @il_send_lq_cmd(ptr noundef %il, ptr noundef %lq, i8 noundef zeroext 0, i1 noundef zeroext true) #13
  br label %il4965_rs_initialize_lq.exit

il4965_rs_initialize_lq.exit:                     ; preds = %il4965_rs_set_expected_tpt_table.exit.i, %if.end130.il4965_rs_initialize_lq.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il4965_rate_control_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_rate_control_register(ptr noundef nonnull @rs_4965_ops) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_rate_control_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_rate_control_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ieee80211_rate_control_unregister(ptr noundef nonnull @rs_4965_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rate_control_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @il4965_rs_get_tbl_info_from_mcs(i32 noundef %rate_n_flags, i32 noundef %band, ptr nocapture noundef writeonly %tbl, ptr nocapture noundef writeonly %rate_idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = lshr i32 %rate_n_flags, 14
  %and.lobit.i = and i32 %and.i, 1
  %and2.i = lshr i32 %rate_n_flags, 15
  %and2.lobit.i = and i32 %and2.i, 1
  %add.i = add nuw nsw i32 %and.lobit.i, %and2.lobit.i
  %and8.i = lshr i32 %rate_n_flags, 16
  %and8.lobit.i = and i32 %and8.i, 1
  %add14.i = add nuw nsw i32 %add.i, %and8.lobit.i
  %0 = getelementptr inbounds i8, ptr %tbl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 432)
  %call1 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %rate_n_flags)
  %2 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %rate_idx, align 4
  %is_SGI = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %3 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %is_SGI, align 1
  %is_ht40 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %4 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_ht40, align 2
  %is_dup = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %5 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_dup, align 1
  %6 = trunc i32 %and.i to i8
  %conv3 = and i8 %6, 7
  %ant_type = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 1
  %7 = ptrtoint ptr %ant_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %ant_type, align 4
  %8 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tbl, align 8
  %max_search = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %9 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %max_search, align 1
  %and4 = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then5, label %if.else17

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i)
  %cmp7 = icmp eq i32 %add14.i, 1
  br i1 %cmp7, label %if.then9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %band)
  %cmp10 = icmp eq i32 %band, 1
  %. = select i1 %cmp10, i32 2, i32 1
  br label %cleanup.sink.split

if.else17:                                        ; preds = %entry
  %and18 = and i32 %rate_n_flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else17.if.end22_crit_edge, label %if.then20

if.else17.if.end22_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_SGI, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else17.if.end22_crit_edge
  %and25 = and i32 %rate_n_flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %11 = and i32 %rate_n_flags, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_ht40, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  br i1 %tobool26.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %is_dup to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_dup, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %15 = and i32 %rate_n_flags, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37 = icmp eq i32 %15, 0
  br i1 %cmp37, label %if.then39, label %if.else46

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i)
  %cmp41 = icmp eq i32 %add14.i, 1
  br i1 %cmp41, label %if.then39.cleanup.sink.split_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39.cleanup.sink.split_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.else46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i)
  %cmp48 = icmp eq i32 %add14.i, 2
  br i1 %cmp48, label %if.else46.cleanup.sink.split_crit_edge, label %if.else46.cleanup_crit_edge

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else46.cleanup.sink.split_crit_edge:           ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else46.cleanup.sink.split_crit_edge, %if.then39.cleanup.sink.split_crit_edge, %if.then9
  %.sink = phi i32 [ %., %if.then9 ], [ 3, %if.then39.cleanup.sink.split_crit_edge ], [ 4, %if.else46.cleanup.sink.split_crit_edge ]
  %16 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %tbl, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else46.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_rate_n_flags_from_tbl(ptr nocapture noundef readonly %il, ptr nocapture noundef readonly %tbl, i32 noundef %idx, i8 noundef zeroext %use_green) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %1, label %do.end35 [
    i32 1, label %entry.if.then_crit_edge
    i32 2, label %entry.if.then_crit_edge115
    i32 3, label %entry.if.then15_crit_edge
    i32 4, label %entry.if.then15_crit_edge116
  ]

entry.if.then15_crit_edge116:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

entry.if.then_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge115
  %arrayidx = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %5 = icmp ult i32 %idx, 4
  %or = or i32 %conv, 512
  %spec.select114 = select i1 %5, i32 %or, i32 %conv
  br label %if.end40

if.then15:                                        ; preds = %entry.if.then15_crit_edge, %entry.if.then15_crit_edge116
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %idx)
  %cmp16 = icmp sgt i32 %idx, 12
  br i1 %cmp16, label %do.end, label %if.then15.if.end19_crit_edge

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %idx) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then15.if.end19_crit_edge
  %idx.addr.0 = phi i32 [ 12, %do.end ], [ %idx, %if.then15.if.end19_crit_edge ]
  %8 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tbl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp21 = icmp eq i32 %9, 3
  br i1 %cmp21, label %if.then23, label %if.else27

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %plcp_siso = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %idx.addr.0, i32 1
  %10 = ptrtoint ptr %plcp_siso to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %plcp_siso, align 1
  %conv25 = zext i8 %11 to i32
  %or26 = or i32 %conv25, 256
  br label %if.end40

if.else27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %plcp_mimo2 = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %idx.addr.0, i32 2
  %12 = ptrtoint ptr %plcp_mimo2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %plcp_mimo2, align 1
  %conv29 = zext i8 %13 to i32
  %or30 = or i32 %conv29, 256
  br label %if.end40

do.end35:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev36 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %14 = ptrtoint ptr %pci_dev36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.9, i32 noundef %1) #16
  br label %if.end40

if.end40:                                         ; preds = %do.end35, %if.else27, %if.then23, %if.then
  %rate_n_flags.0 = phi i32 [ %or26, %if.then23 ], [ %or30, %if.else27 ], [ 0, %do.end35 ], [ %spec.select114, %if.then ]
  %ant_type = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 1
  %16 = ptrtoint ptr %ant_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ant_type, align 4
  %conv41 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv41, 14
  %and = and i32 %shl, 114688
  %or42 = or i32 %and, %rate_n_flags.0
  %18 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tbl, align 8
  %.off = add i32 %19, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then50, label %if.end40.if.end82_crit_edge

if.end40.if.end82_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then50:                                        ; preds = %if.end40
  %is_ht40 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %20 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.then50.if.end58_crit_edge, label %if.then51

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then51:                                        ; preds = %if.then50
  %is_dup = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %22 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_dup, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool52.not = icmp eq i8 %23, 0
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %or54 = or i32 %or42, 4096
  br label %if.end58

if.else55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #15
  %or56 = or i32 %or42, 2048
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then53, %if.then50.if.end58_crit_edge
  %rate_n_flags.1 = phi i32 [ %or54, %if.then53 ], [ %or56, %if.else55 ], [ %or42, %if.then50.if.end58_crit_edge ]
  %is_SGI = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %24 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool59.not = icmp eq i8 %25, 0
  %or61 = or i32 %rate_n_flags.1, 8192
  %spec.select = select i1 %tobool59.not, i32 %rate_n_flags.1, i32 %or61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %use_green)
  %tobool63.not = icmp eq i8 %use_green, 0
  br i1 %tobool63.not, label %if.end58.if.end82_crit_edge, label %if.then64

if.end58.if.end82_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then64:                                        ; preds = %if.end58
  %or65 = or i32 %spec.select, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp67 = icmp ne i32 %19, 3
  %brmerge = select i1 %cmp67, i1 true, i1 %tobool59.not
  br i1 %brmerge, label %if.then64.if.end82_crit_edge, label %if.then73

if.then64.if.end82_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then73:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %and74 = and i32 %or65, -8193
  %pci_dev78 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %26 = ptrtoint ptr %pci_dev78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev78, align 8
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.12) #16
  br label %if.end82

if.end82:                                         ; preds = %if.then73, %if.then64.if.end82_crit_edge, %if.end58.if.end82_crit_edge, %if.end40.if.end82_crit_edge
  %rate_n_flags.3 = phi i32 [ %and74, %if.then73 ], [ %or65, %if.then64.if.end82_crit_edge ], [ %spec.select, %if.end58.if.end82_crit_edge ], [ %or42, %if.end40.if.end82_crit_edge ]
  ret i32 %rate_n_flags.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_fill_link_cmd(ptr noundef readonly %il, ptr noundef %lq_sta, i32 noundef %new_rate) unnamed_addr #0 align 64 {
entry:
  %new_rate.addr = alloca i32, align 4
  %tbl_type = alloca %struct.il_scale_tbl_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_rate, ptr %new_rate.addr, align 4
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %tbl_type) #13
  call fastcc void @il4965_rs_dbgfs_set_mcs(ptr noundef %lq_sta, ptr noundef nonnull %new_rate.addr)
  %1 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %new_rate.addr, align 4
  %band = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 15
  %3 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %band, align 4
  %and.i.i = lshr i32 %2, 14
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and2.i.i = lshr i32 %2, 15
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %add.i.i = add nuw nsw i32 %and.lobit.i.i, %and2.lobit.i.i
  %and8.i.i = lshr i32 %2, 16
  %and8.lobit.i.i = and i32 %and8.i.i, 1
  %add14.i.i = add nuw nsw i32 %add.i.i, %and8.lobit.i.i
  %call1.i = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %2) #13
  %is_SGI.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 2
  %is_ht40.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 3
  %is_dup.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 4
  %5 = trunc i32 %and.i.i to i8
  %conv3.i = and i8 %5, 7
  %ant_type.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 1
  %6 = call ptr @memset(ptr %is_SGI.i, i32 0, i32 435)
  %7 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %ant_type.i, align 4
  %8 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tbl_type, align 8
  %max_search.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 6
  %9 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %max_search.i, align 1
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %if.then5.i, label %if.else17.i

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp7.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp10.i = icmp eq i32 %4, 1
  %..i = select i1 %cmp10.i, i32 2, i32 1
  br label %cleanup.sink.split.i

if.else17.i:                                      ; preds = %entry
  %and18.i = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end22.i_crit_edge, label %if.then20.i

if.else17.i.if.end22.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.else17.i.if.end22.i_crit_edge
  %and25.i = and i32 %2, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %11 = and i32 %2, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end22.i.if.end29.i_crit_edge, label %if.then27.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end29.i_crit_edge
  br i1 %tobool26.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then32.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %15 = and i32 %2, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp37.i = icmp eq i32 %15, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else46.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp41.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp41.i, label %if.then39.i.cleanup.sink.split.i_crit_edge, label %if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.then39.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.else46.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i)
  %cmp48.i = icmp eq i32 %add14.i.i, 2
  br i1 %cmp48.i, label %if.else46.i.cleanup.sink.split.i_crit_edge, label %if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.else46.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else46.i.cleanup.sink.split.i_crit_edge, %if.then39.i.cleanup.sink.split.i_crit_edge, %if.then9.i
  %.sink.i = phi i32 [ %..i, %if.then9.i ], [ 3, %if.then39.i.cleanup.sink.split.i_crit_edge ], [ 4, %if.else46.i.cleanup.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i, ptr %tbl_type, align 8
  br label %il4965_rs_get_tbl_info_from_mcs.exit

il4965_rs_get_tbl_info_from_mcs.exit:             ; preds = %cleanup.sink.split.i, %if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge
  %17 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tbl_type, align 8
  %.off = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select144 = select i1 %switch, i32 0, i32 2
  %spec.select145 = zext i1 %switch to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp4 = icmp eq i32 %18, 4
  %conv = zext i1 %cmp4 to i8
  %mimo_delimiter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 3, i32 1
  %19 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %mimo_delimiter, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %2)
  %rs_table = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 5
  %21 = ptrtoint ptr %rs_table to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %rs_table, align 1
  %and.i = and i8 %5, 1
  %and3.i = lshr i8 %5, 1
  %and3.lobit.i = and i8 %and3.i, 1
  %add.i = add nuw nsw i8 %and3.lobit.i, %and.i
  %and10.i = lshr i8 %conv3.i, 2
  %add16.i = add nuw nsw i8 %add.i, %and10.i
  %trunc = trunc i8 %add16.i to i3
  %22 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.214)
  switch i3 %trunc, label %il4965_rs_get_tbl_info_from_mcs.exit.if.end22_crit_edge [
    i3 1, label %if.then9
    i3 2, label %if.then18
  ]

il4965_rs_get_tbl_info_from_mcs.exit.if.end22_crit_edge: ; preds = %il4965_rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then9:                                         ; preds = %il4965_rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %single_stream_ant_msk = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 3, i32 2
  br label %if.end22.sink.split

if.then18:                                        ; preds = %il4965_rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %dual_stream_ant_msk = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 3, i32 3
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.then18, %if.then9
  %dual_stream_ant_msk.sink = phi ptr [ %dual_stream_ant_msk, %if.then18 ], [ %single_stream_ant_msk, %if.then9 ]
  %23 = ptrtoint ptr %dual_stream_ant_msk.sink to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv3.i, ptr %dual_stream_ant_msk.sink, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %il4965_rs_get_tbl_info_from_mcs.exit.if.end22_crit_edge
  %tobool.not = icmp eq ptr %il, null
  br i1 %tobool.not, label %if.end22.if.end25_crit_edge, label %if.then23

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %valid_tx_ant24 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %24 = ptrtoint ptr %valid_tx_ant24 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid_tx_ant24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end22.if.end25_crit_edge
  %valid_tx_ant.0 = phi i8 [ %25, %if.then23 ], [ 0, %if.end22.if.end25_crit_edge ]
  %is_green1.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %drv.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 27
  %active_siso_rate.i.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 18
  %active_legacy_rate.i104.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 17
  %supp_rates.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 16
  %active_mimo2_rate.i.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 19
  br label %while.cond28.preheader

while.cond28.preheader:                           ; preds = %if.end96.while.cond28.preheader_crit_edge, %if.end25
  %tobool.not.i201259 = phi i1 [ false, %if.end25 ], [ true, %if.end96.while.cond28.preheader_crit_edge ]
  %ant_toggle_cnt.1258 = phi i8 [ %spec.select145, %if.end25 ], [ %ant_toggle_cnt.5, %if.end96.while.cond28.preheader_crit_edge ]
  %repeat_rate.1257 = phi i32 [ %spec.select144, %if.end25 ], [ %repeat_rate.3, %if.end96.while.cond28.preheader_crit_edge ]
  %idx.0256 = phi i32 [ 1, %if.end25 ], [ %inc100, %if.end96.while.cond28.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat_rate.1257)
  %cmp29248.not = icmp eq i32 %repeat_rate.1257, 0
  br i1 %cmp29248.not, label %while.cond28.preheader.while.end_crit_edge, label %while.body33.lr.ph

while.cond28.preheader.while.end_crit_edge:       ; preds = %while.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body33.lr.ph:                               ; preds = %while.cond28.preheader
  %26 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %ant_type.i.promoted = load i8, ptr %ant_type.i, align 4
  %27 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tbl_type, align 8
  %.off146 = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off146)
  %switch147 = icmp ult i32 %.off146, 2
  br i1 %switch147, label %if.then41, label %while.body33.lr.ph.if.end55_crit_edge

while.body33.lr.ph.if.end55_crit_edge:            ; preds = %while.body33.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then41:                                        ; preds = %while.body33.lr.ph
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.1258)
  %cmp43 = icmp eq i8 %ant_toggle_cnt.1258, 0
  %brmerge = or i1 %tobool.not, %cmp43
  %.mux = select i1 %cmp43, i8 1, i8 %ant_toggle_cnt.1258
  br i1 %brmerge, label %if.then41.if.end55_crit_edge, label %land.lhs.true

if.then41.if.end55_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then41
  %29 = add i8 %ant_type.i.promoted, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %30 = icmp ult i8 %29, 7
  %and6.i.i = and i8 %ant_type.i.promoted, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %ant_type.i.promoted)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %ant_type.i.promoted
  %or.cond260 = select i1 %30, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond260, label %land.lhs.true.while.cond.i_crit_edge, label %land.lhs.true.if.end55_crit_edge

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true.while.cond.i_crit_edge:             ; preds = %land.lhs.true
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %land.lhs.true.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %ant_type.i.promoted, %land.lhs.true.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %31 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %ant_type.i.promoted)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %ant_type.i.promoted
  br i1 %cmp12.not.i, label %while.cond.i.if.end55_crit_edge, label %land.rhs.i

while.cond.i.if.end55_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %valid_tx_ant.0
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %il4965_rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

il4965_rs_toggle_antenna.exit:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %32 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %new_rate.addr, align 4
  %and.i159 = and i32 %33, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i159, %shl.i
  store i32 %or.i, ptr %new_rate.addr, align 4
  br label %if.end55

if.end55:                                         ; preds = %il4965_rs_toggle_antenna.exit, %while.cond.i.if.end55_crit_edge, %land.lhs.true.if.end55_crit_edge, %if.then41.if.end55_crit_edge, %while.body33.lr.ph.if.end55_crit_edge
  %34 = phi i8 [ %ant_type.i.promoted, %while.body33.lr.ph.if.end55_crit_edge ], [ %new_ant_type.0.i, %il4965_rs_toggle_antenna.exit ], [ %ant_type.i.promoted, %land.lhs.true.if.end55_crit_edge ], [ %ant_type.i.promoted, %if.then41.if.end55_crit_edge ], [ %ant_type.i.promoted, %while.cond.i.if.end55_crit_edge ]
  %ant_toggle_cnt.3 = phi i8 [ %ant_toggle_cnt.1258, %while.body33.lr.ph.if.end55_crit_edge ], [ 1, %il4965_rs_toggle_antenna.exit ], [ %ant_toggle_cnt.1258, %land.lhs.true.if.end55_crit_edge ], [ %.mux, %if.then41.if.end55_crit_edge ], [ %ant_toggle_cnt.1258, %while.cond.i.if.end55_crit_edge ]
  call fastcc void @il4965_rs_dbgfs_set_mcs(ptr noundef %lq_sta, ptr noundef nonnull %new_rate.addr)
  %35 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_rate.addr, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx57 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 5, i32 %idx.0256
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %arrayidx57, align 1
  %inc60 = add nsw i32 %idx.0256, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %repeat_rate.1257)
  %cmp29 = icmp sgt i32 %repeat_rate.1257, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %idx.0256)
  %cmp31 = icmp slt i32 %idx.0256, 15
  %or.cond = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond, label %while.body33.1, label %if.end55.while.end_crit_edge

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body33.1:                                   ; preds = %if.end55
  br i1 %switch147, label %if.then41.1, label %while.body33.1.if.end55.1_crit_edge

while.body33.1.if.end55.1_crit_edge:              ; preds = %while.body33.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.1

if.then41.1:                                      ; preds = %while.body33.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.3)
  %cmp43.1 = icmp eq i8 %ant_toggle_cnt.3, 0
  %brmerge.1 = or i1 %tobool.not, %cmp43.1
  %.mux.1 = select i1 %cmp43.1, i8 1, i8 %ant_toggle_cnt.3
  br i1 %brmerge.1, label %if.then41.1.if.end55.1_crit_edge, label %land.lhs.true.1

if.then41.1.if.end55.1_crit_edge:                 ; preds = %if.then41.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.1

land.lhs.true.1:                                  ; preds = %if.then41.1
  %39 = add i8 %34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %39)
  %40 = icmp ult i8 %39, 7
  %and6.i.i.1 = and i8 %34, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i.1, i8 %34)
  %cmp.i.not.i.1 = icmp eq i8 %and6.i.i.1, %34
  %or.cond260.1 = select i1 %40, i1 %cmp.i.not.i.1, i1 false
  br i1 %or.cond260.1, label %land.lhs.true.1.while.cond.i.1_crit_edge, label %land.lhs.true.1.if.end55.1_crit_edge

land.lhs.true.1.if.end55.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.1

land.lhs.true.1.while.cond.i.1_crit_edge:         ; preds = %land.lhs.true.1
  br label %while.cond.i.1

while.cond.i.1:                                   ; preds = %land.rhs.i.1.while.cond.i.1_crit_edge, %land.lhs.true.1.while.cond.i.1_crit_edge
  %idxprom.pn.in.i.1 = phi i8 [ %new_ant_type.0.i.1, %land.rhs.i.1.while.cond.i.1_crit_edge ], [ %34, %land.lhs.true.1.while.cond.i.1_crit_edge ]
  %idxprom.pn.i.1 = zext i8 %idxprom.pn.in.i.1 to i32
  %new_ant_type.0.in.i.1 = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i.1
  %41 = ptrtoint ptr %new_ant_type.0.in.i.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %new_ant_type.0.i.1 = load i8, ptr %new_ant_type.0.in.i.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i.1, i8 %34)
  %cmp12.not.i.1 = icmp eq i8 %new_ant_type.0.i.1, %34
  br i1 %cmp12.not.i.1, label %while.cond.i.1.if.end55.1_crit_edge, label %land.rhs.i.1

while.cond.i.1.if.end55.1_crit_edge:              ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.1

land.rhs.i.1:                                     ; preds = %while.cond.i.1
  %and6.i41.i.1 = and i8 %new_ant_type.0.i.1, %valid_tx_ant.0
  %cmp.i42.not.i.1 = icmp eq i8 %and6.i41.i.1, %new_ant_type.0.i.1
  br i1 %cmp.i42.not.i.1, label %il4965_rs_toggle_antenna.exit.1, label %land.rhs.i.1.while.cond.i.1_crit_edge

land.rhs.i.1.while.cond.i.1_crit_edge:            ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.1

il4965_rs_toggle_antenna.exit.1:                  ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %conv9.le.i.1 = zext i8 %new_ant_type.0.i.1 to i32
  %42 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %new_rate.addr, align 4
  %and.i159.1 = and i32 %43, -114689
  %shl.i.1 = shl nuw nsw i32 %conv9.le.i.1, 14
  %or.i.1 = or i32 %and.i159.1, %shl.i.1
  store i32 %or.i.1, ptr %new_rate.addr, align 4
  br label %if.end55.1

if.end55.1:                                       ; preds = %il4965_rs_toggle_antenna.exit.1, %while.cond.i.1.if.end55.1_crit_edge, %land.lhs.true.1.if.end55.1_crit_edge, %if.then41.1.if.end55.1_crit_edge, %while.body33.1.if.end55.1_crit_edge
  %ant_toggle_cnt.3.1 = phi i8 [ %ant_toggle_cnt.3, %while.body33.1.if.end55.1_crit_edge ], [ 1, %il4965_rs_toggle_antenna.exit.1 ], [ %ant_toggle_cnt.3, %land.lhs.true.1.if.end55.1_crit_edge ], [ %.mux.1, %if.then41.1.if.end55.1_crit_edge ], [ %ant_toggle_cnt.3, %while.cond.i.1.if.end55.1_crit_edge ]
  call fastcc void @il4965_rs_dbgfs_set_mcs(ptr noundef %lq_sta, ptr noundef nonnull %new_rate.addr)
  %44 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %new_rate.addr, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %arrayidx57.1 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 5, i32 %inc60
  %47 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %arrayidx57.1, align 1
  %inc60.1 = add nsw i32 %idx.0256, 2
  br label %while.end

while.end:                                        ; preds = %if.end55.1, %if.end55.while.end_crit_edge, %while.cond28.preheader.while.end_crit_edge
  %idx.1.lcssa = phi i32 [ %idx.0256, %while.cond28.preheader.while.end_crit_edge ], [ %inc60, %if.end55.while.end_crit_edge ], [ %inc60.1, %if.end55.1 ]
  %ant_toggle_cnt.2.lcssa = phi i8 [ %ant_toggle_cnt.1258, %while.cond28.preheader.while.end_crit_edge ], [ %ant_toggle_cnt.3, %if.end55.while.end_crit_edge ], [ %ant_toggle_cnt.3.1, %if.end55.1 ]
  %48 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %new_rate.addr, align 4
  %50 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %band, align 4
  %and.i.i160 = lshr i32 %49, 14
  %and.lobit.i.i161 = and i32 %and.i.i160, 1
  %and2.i.i162 = lshr i32 %49, 15
  %and2.lobit.i.i163 = and i32 %and2.i.i162, 1
  %add.i.i164 = add nuw nsw i32 %and.lobit.i.i161, %and2.lobit.i.i163
  %and8.i.i165 = lshr i32 %49, 16
  %and8.lobit.i.i166 = and i32 %and8.i.i165, 1
  %add14.i.i167 = add nuw nsw i32 %add.i.i164, %and8.lobit.i.i166
  %call1.i168 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %49) #13
  %52 = trunc i32 %and.i.i160 to i8
  %conv3.i172 = and i8 %52, 7
  %53 = call ptr @memset(ptr %is_SGI.i, i32 0, i32 435)
  %54 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv3.i172, ptr %ant_type.i, align 4
  %55 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %tbl_type, align 8
  %56 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 5, ptr %max_search.i, align 1
  %and4.i175 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i175)
  %tobool.not.i176 = icmp eq i32 %and4.i175, 0
  br i1 %tobool.not.i176, label %if.then5.i178, label %if.else17.i184

if.then5.i178:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i167)
  %cmp7.i177 = icmp eq i32 %add14.i.i167, 1
  br i1 %cmp7.i177, label %if.then9.i181, label %if.then5.i178.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge

if.then5.i178.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge: ; preds = %if.then5.i178
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split

if.then9.i181:                                    ; preds = %if.then5.i178
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp10.i179 = icmp eq i32 %51, 1
  %..i180 = select i1 %cmp10.i179, i32 2, i32 1
  br label %cleanup.sink.split.i199

if.else17.i184:                                   ; preds = %while.end
  %and18.i182 = and i32 %49, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i182)
  %tobool19.not.i183 = icmp eq i32 %and18.i182, 0
  br i1 %tobool19.not.i183, label %if.else17.i184.if.end22.i188_crit_edge, label %if.then20.i185

if.else17.i184.if.end22.i188_crit_edge:           ; preds = %if.else17.i184
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i188

if.then20.i185:                                   ; preds = %if.else17.i184
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i188

if.end22.i188:                                    ; preds = %if.then20.i185, %if.else17.i184.if.end22.i188_crit_edge
  %and25.i186 = and i32 %49, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i186)
  %tobool26.not.i187 = icmp eq i32 %and25.i186, 0
  %58 = and i32 %49, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %if.end22.i188.if.end29.i190_crit_edge, label %if.then27.i189

if.end22.i188.if.end29.i190_crit_edge:            ; preds = %if.end22.i188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i190

if.then27.i189:                                   ; preds = %if.end22.i188
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i190

if.end29.i190:                                    ; preds = %if.then27.i189, %if.end22.i188.if.end29.i190_crit_edge
  br i1 %tobool26.not.i187, label %if.end29.i190.if.end34.i193_crit_edge, label %if.then32.i191

if.end29.i190.if.end34.i193_crit_edge:            ; preds = %if.end29.i190
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i193

if.then32.i191:                                   ; preds = %if.end29.i190
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i193

if.end34.i193:                                    ; preds = %if.then32.i191, %if.end29.i190.if.end34.i193_crit_edge
  %62 = and i32 %49, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp37.i192 = icmp eq i32 %62, 0
  br i1 %cmp37.i192, label %if.then39.i195, label %if.else46.i197

if.then39.i195:                                   ; preds = %if.end34.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i167)
  %cmp41.i194 = icmp eq i32 %add14.i.i167, 1
  br i1 %cmp41.i194, label %if.then39.i195.cleanup.sink.split.i199_crit_edge, label %if.then39.i195.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge

if.then39.i195.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge: ; preds = %if.then39.i195
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split

if.then39.i195.cleanup.sink.split.i199_crit_edge: ; preds = %if.then39.i195
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i199

if.else46.i197:                                   ; preds = %if.end34.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i167)
  %cmp48.i196 = icmp eq i32 %add14.i.i167, 2
  br i1 %cmp48.i196, label %if.else46.i197.cleanup.sink.split.i199_crit_edge, label %if.else46.i197.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge

if.else46.i197.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge: ; preds = %if.else46.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split

if.else46.i197.cleanup.sink.split.i199_crit_edge: ; preds = %if.else46.i197
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i199

cleanup.sink.split.i199:                          ; preds = %if.else46.i197.cleanup.sink.split.i199_crit_edge, %if.then39.i195.cleanup.sink.split.i199_crit_edge, %if.then9.i181
  %.sink.i198 = phi i32 [ %..i180, %if.then9.i181 ], [ 3, %if.then39.i195.cleanup.sink.split.i199_crit_edge ], [ 4, %if.else46.i197.cleanup.sink.split.i199_crit_edge ]
  %63 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink.i198, ptr %tbl_type, align 8
  br label %il4965_rs_get_tbl_info_from_mcs.exit200

il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split: ; preds = %if.else46.i197.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge, %if.then39.i195.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge, %if.then5.i178.il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split_crit_edge
  %64 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr = load i32, ptr %tbl_type, align 8
  br label %il4965_rs_get_tbl_info_from_mcs.exit200

il4965_rs_get_tbl_info_from_mcs.exit200:          ; preds = %il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split, %cleanup.sink.split.i199
  %65 = phi i32 [ %.pr, %il4965_rs_get_tbl_info_from_mcs.exit200thread-pre-split ], [ %.sink.i198, %cleanup.sink.split.i199 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp64 = icmp eq i32 %65, 4
  br i1 %cmp64, label %if.end70.thread, label %if.end70

if.end70.thread:                                  ; preds = %il4965_rs_get_tbl_info_from_mcs.exit200
  call void @__sanitizer_cov_trace_pc() #15
  %conv67 = trunc i32 %idx.1.lcssa to i8
  %66 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv67, ptr %mimo_delimiter, align 1
  %conv71234 = trunc i32 %call1.i168 to i8
  %67 = ptrtoint ptr %is_green1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_green1.i, align 1
  %69 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %drv.i, align 8
  br label %land.lhs.true.i

if.end70:                                         ; preds = %il4965_rs_get_tbl_info_from_mcs.exit200
  %conv71 = trunc i32 %call1.i168 to i8
  %71 = ptrtoint ptr %is_green1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_green1.i, align 1
  %73 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %drv.i, align 8
  %.off.i = add i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end70.if.end16.i_crit_edge, label %if.end70.land.lhs.true.i_crit_edge

if.end70.land.lhs.true.i_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

if.end70.if.end16.i_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end70.land.lhs.true.i_crit_edge, %if.end70.thread
  %75 = phi ptr [ %70, %if.end70.thread ], [ %74, %if.end70.land.lhs.true.i_crit_edge ]
  %76 = phi i8 [ %68, %if.end70.thread ], [ %72, %if.end70.land.lhs.true.i_crit_edge ]
  %conv71239 = phi i8 [ %conv71234, %if.end70.thread ], [ %conv71, %if.end70.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv71239)
  %tobool5.not.i = icmp eq i8 %conv71239, 0
  %or.cond.i = or i1 %tobool.not.i201259, %tobool5.not.i
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge

land.lhs.true.i.if.end16thread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16thread-pre-split.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %idxprom.i = zext i8 %conv71239 to i32
  %arrayidx.i = getelementptr [13 x i8], ptr @rs_ht_to_legacy, i32 0, i32 %idxprom.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp6.i = icmp eq i32 %51, 1
  %..i202 = select i1 %cmp6.i, i32 2, i32 1
  %79 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %..i202, ptr %tbl_type, align 8
  %and.i.i204 = and i8 %52, 1
  %and3.i.i = lshr i8 %52, 1
  %and3.lobit.i.i = and i8 %and3.i.i, 1
  %add.i.i205 = add nuw nsw i8 %and3.lobit.i.i, %and.i.i204
  %and10.i.i = lshr i8 %conv3.i172, 2
  %add16.i.i = add nuw nsw i8 %add.i.i205, %and10.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add16.i.i)
  %cmp10.i206 = icmp ugt i8 %add16.i.i, 1
  br i1 %cmp10.i206, label %if.then12.i, label %if.then.i.if.end15.i_crit_edge

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %valid_tx_ant.i = getelementptr inbounds %struct.il_priv, ptr %75, i32 0, i32 97, i32 7
  %80 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %valid_tx_ant.i, align 2
  %conv.i.i = zext i8 %81 to i32
  %and.i96.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96.i)
  %tobool.not.i.i = icmp eq i32 %and.i96.i, 0
  %and2.i.i207 = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i207)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i207, 0
  %..i.i = select i1 %tobool3.not.i.i, i8 4, i8 2
  %retval.0.i.i = select i1 %tobool.not.i.i, i8 %..i.i, i8 1
  %82 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %retval.0.i.i, ptr %ant_type.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %if.then.i.if.end15.i_crit_edge
  %83 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %is_ht40.i, align 2
  %84 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %is_SGI.i, align 1
  %85 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 5, ptr %max_search.i, align 1
  br label %if.end16thread-pre-split.i

if.end16thread-pre-split.i:                       ; preds = %if.end15.i, %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge
  %scale_idx.addr.0.ph.i = phi i8 [ %conv71239, %land.lhs.true.i.if.end16thread-pre-split.i_crit_edge ], [ %78, %if.end15.i ]
  %86 = xor i1 %or.cond.i, true
  %87 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pr.i = load i32, ptr %tbl_type, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16thread-pre-split.i, %if.end70.if.end16.i_crit_edge
  %88 = phi ptr [ %75, %if.end16thread-pre-split.i ], [ %74, %if.end70.if.end16.i_crit_edge ]
  %89 = phi i8 [ %76, %if.end16thread-pre-split.i ], [ %72, %if.end70.if.end16.i_crit_edge ]
  %90 = phi i32 [ %.pr.i, %if.end16thread-pre-split.i ], [ %65, %if.end70.if.end16.i_crit_edge ]
  %scale_idx.addr.0.i = phi i8 [ %scale_idx.addr.0.ph.i, %if.end16thread-pre-split.i ], [ %conv71, %if.end70.if.end16.i_crit_edge ]
  %tobool41.not.i = phi i1 [ %86, %if.end16thread-pre-split.i ], [ true, %if.end70.if.end16.i_crit_edge ]
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %90, label %if.else4.i.i [
    i32 1, label %if.end16.i.if.then26.i_crit_edge
    i32 2, label %if.end16.i.if.then26.i_crit_edge275
    i32 3, label %if.end16.i.il4965_rs_get_supported_rates.exit.thread.i_crit_edge
  ]

if.end16.i.il4965_rs_get_supported_rates.exit.thread.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_supported_rates.exit.thread.i

if.end16.i.if.then26.i_crit_edge275:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.end16.i.if.then26.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then26.i

if.else4.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_supported_rates.exit.thread.i

il4965_rs_get_supported_rates.exit.thread.i:      ; preds = %if.else4.i.i, %if.end16.i.il4965_rs_get_supported_rates.exit.thread.i_crit_edge
  %retval.0.in.i.ph.i = phi ptr [ %active_mimo2_rate.i.i, %if.else4.i.i ], [ %active_siso_rate.i.i, %if.end16.i.il4965_rs_get_supported_rates.exit.thread.i_crit_edge ]
  %92 = ptrtoint ptr %retval.0.in.i.ph.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %retval.0.i9799.i = load i16, ptr %retval.0.in.i.ph.i, align 2
  br label %if.end39.i

if.then26.i:                                      ; preds = %if.end16.i.if.then26.i_crit_edge, %if.end16.i.if.then26.i_crit_edge275
  %93 = ptrtoint ptr %active_legacy_rate.i104.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %retval.0.i97105.i = load i16, ptr %active_legacy_rate.i104.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp28.i = icmp eq i32 %51, 1
  %94 = ptrtoint ptr %supp_rates.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %supp_rates.i, align 8
  %.tr.i = trunc i32 %95 to i16
  br i1 %cmp28.i, label %if.then30.i, label %if.else33.i

if.then30.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %96 = shl i16 %.tr.i, 4
  %conv32.i = and i16 %96, %retval.0.i97105.i
  br label %if.end39.i

if.else33.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv37.i = and i16 %retval.0.i97105.i, %.tr.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else33.i, %if.then30.i, %il4965_rs_get_supported_rates.exit.thread.i
  %rate_mask.0.i = phi i16 [ %conv32.i, %if.then30.i ], [ %conv37.i, %if.else33.i ], [ %retval.0.i9799.i, %il4965_rs_get_supported_rates.exit.thread.i ]
  br i1 %tobool41.not.i, label %if.end39.if.end50_crit_edge.i, label %land.lhs.true42.i

if.end39.if.end50_crit_edge.i:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = zext i8 %scale_idx.addr.0.i to i32
  br label %if.end50.i

land.lhs.true42.i:                                ; preds = %if.end39.i
  %conv43.i = zext i16 %rate_mask.0.i to i32
  %conv44.i = zext i8 %scale_idx.addr.0.i to i32
  %shl45.i = shl nuw i32 1, %conv44.i
  %and46.i = and i32 %shl45.i, %conv43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true42.i.if.end50.i_crit_edge, label %land.lhs.true42.i.il4965_rs_get_lower_rate.exit_crit_edge

land.lhs.true42.i.il4965_rs_get_lower_rate.exit_crit_edge: ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_lower_rate.exit

land.lhs.true42.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true42.i.if.end50.i_crit_edge, %if.end39.if.end50_crit_edge.i
  %conv59.pre-phi.i = phi i32 [ %.pre.i, %if.end39.if.end50_crit_edge.i ], [ %conv44.i, %land.lhs.true42.i.if.end50.i_crit_edge ]
  %call53.i = tail call fastcc zeroext i16 @il4965_rs_get_adjacent_rate(ptr noundef %88, i8 noundef zeroext %scale_idx.addr.0.i, i16 noundef zeroext %rate_mask.0.i, i32 noundef %90) #13
  %97 = and i16 %call53.i, 255
  %and55.i = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %97)
  %cmp56.i = icmp eq i16 %97, 13
  %spec.select.i = select i1 %cmp56.i, i32 %conv59.pre-phi.i, i32 %and55.i
  br label %il4965_rs_get_lower_rate.exit

il4965_rs_get_lower_rate.exit:                    ; preds = %if.end50.i, %land.lhs.true42.i.il4965_rs_get_lower_rate.exit_crit_edge
  %low.0.i = phi i32 [ %conv44.i, %land.lhs.true42.i.il4965_rs_get_lower_rate.exit_crit_edge ], [ %spec.select.i, %if.end50.i ]
  %98 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %drv.i, align 8
  %call62.i = call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %99, ptr noundef nonnull %tbl_type, i32 noundef %low.0.i, i8 noundef zeroext %89) #13
  %100 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call62.i, ptr %new_rate.addr, align 4
  %101 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tbl_type, align 8
  %.off148 = add i32 %102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off148)
  %switch149 = icmp ult i32 %.off148, 2
  br i1 %switch149, label %if.then80, label %il4965_rs_get_lower_rate.exit.if.end96_crit_edge

il4965_rs_get_lower_rate.exit.if.end96_crit_edge: ; preds = %il4965_rs_get_lower_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then80:                                        ; preds = %il4965_rs_get_lower_rate.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ant_toggle_cnt.2.lcssa)
  %cmp82 = icmp eq i8 %ant_toggle_cnt.2.lcssa, 0
  %brmerge244 = or i1 %tobool.not, %cmp82
  %.mux245 = select i1 %cmp82, i8 1, i8 %ant_toggle_cnt.2.lcssa
  br i1 %brmerge244, label %if.then80.if.end96_crit_edge, label %land.lhs.true88

if.then80.if.end96_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

land.lhs.true88:                                  ; preds = %if.then80
  %103 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ant_type.i, align 4
  %105 = add i8 %104, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %105)
  %106 = icmp ult i8 %105, 7
  %and6.i.i213 = and i8 %104, %valid_tx_ant.0
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i213, i8 %104)
  %cmp.i.not.i214 = icmp eq i8 %and6.i.i213, %104
  %or.cond261 = select i1 %106, i1 %cmp.i.not.i214, i1 false
  br i1 %or.cond261, label %land.lhs.true88.while.cond.i221_crit_edge, label %land.lhs.true88.if.end96_crit_edge

land.lhs.true88.if.end96_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

land.lhs.true88.while.cond.i221_crit_edge:        ; preds = %land.lhs.true88
  br label %while.cond.i221

while.cond.i221:                                  ; preds = %land.rhs.i224.while.cond.i221_crit_edge, %land.lhs.true88.while.cond.i221_crit_edge
  %idxprom.pn.in.i216 = phi i8 [ %new_ant_type.0.i219, %land.rhs.i224.while.cond.i221_crit_edge ], [ %104, %land.lhs.true88.while.cond.i221_crit_edge ]
  %idxprom.pn.i217 = zext i8 %idxprom.pn.in.i216 to i32
  %new_ant_type.0.in.i218 = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i217
  %107 = ptrtoint ptr %new_ant_type.0.in.i218 to i32
  call void @__asan_load1_noabort(i32 %107)
  %new_ant_type.0.i219 = load i8, ptr %new_ant_type.0.in.i218, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i219, i8 %104)
  %cmp12.not.i220 = icmp eq i8 %new_ant_type.0.i219, %104
  br i1 %cmp12.not.i220, label %while.cond.i221.if.end96_crit_edge, label %land.rhs.i224

while.cond.i221.if.end96_crit_edge:               ; preds = %while.cond.i221
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

land.rhs.i224:                                    ; preds = %while.cond.i221
  %and6.i41.i222 = and i8 %new_ant_type.0.i219, %valid_tx_ant.0
  %cmp.i42.not.i223 = icmp eq i8 %and6.i41.i222, %new_ant_type.0.i219
  br i1 %cmp.i42.not.i223, label %il4965_rs_toggle_antenna.exit231, label %land.rhs.i224.while.cond.i221_crit_edge

land.rhs.i224.while.cond.i221_crit_edge:          ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i221

il4965_rs_toggle_antenna.exit231:                 ; preds = %land.rhs.i224
  call void @__sanitizer_cov_trace_pc() #15
  %conv9.le.i225 = zext i8 %new_ant_type.0.i219 to i32
  %108 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %new_ant_type.0.i219, ptr %ant_type.i, align 4
  %and.i226 = and i32 %call62.i, -114689
  %shl.i227 = shl nuw nsw i32 %conv9.le.i225, 14
  %or.i228 = or i32 %shl.i227, %and.i226
  %109 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or.i228, ptr %new_rate.addr, align 4
  br label %if.end96

if.end96:                                         ; preds = %il4965_rs_toggle_antenna.exit231, %while.cond.i221.if.end96_crit_edge, %land.lhs.true88.if.end96_crit_edge, %if.then80.if.end96_crit_edge, %il4965_rs_get_lower_rate.exit.if.end96_crit_edge
  %repeat_rate.3 = phi i32 [ 2, %il4965_rs_get_lower_rate.exit.if.end96_crit_edge ], [ 0, %land.lhs.true88.if.end96_crit_edge ], [ 0, %il4965_rs_toggle_antenna.exit231 ], [ 0, %if.then80.if.end96_crit_edge ], [ 0, %while.cond.i221.if.end96_crit_edge ]
  %ant_toggle_cnt.5 = phi i8 [ %ant_toggle_cnt.2.lcssa, %il4965_rs_get_lower_rate.exit.if.end96_crit_edge ], [ %ant_toggle_cnt.2.lcssa, %land.lhs.true88.if.end96_crit_edge ], [ 1, %il4965_rs_toggle_antenna.exit231 ], [ %.mux245, %if.then80.if.end96_crit_edge ], [ %ant_toggle_cnt.2.lcssa, %while.cond.i221.if.end96_crit_edge ]
  call fastcc void @il4965_rs_dbgfs_set_mcs(ptr noundef %lq_sta, ptr noundef nonnull %new_rate.addr)
  %110 = ptrtoint ptr %new_rate.addr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %new_rate.addr, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111)
  %arrayidx98 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 5, i32 %idx.1.lcssa
  %113 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %arrayidx98, align 1
  %inc100 = add i32 %idx.1.lcssa, 1
  %cmp26 = icmp slt i32 %inc100, 16
  br i1 %cmp26, label %if.end96.while.cond28.preheader_crit_edge, label %while.end102

if.end96.while.cond28.preheader_crit_edge:        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond28.preheader

while.end102:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  %agg_params = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 4
  %agg_frame_cnt_limit = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 4, i32 2
  %114 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 31, ptr %agg_frame_cnt_limit, align 1
  %agg_dis_start_th = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22, i32 4, i32 1
  %115 = ptrtoint ptr %agg_dis_start_th to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 3, ptr %agg_dis_start_th, align 1
  %116 = ptrtoint ptr %agg_params to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 -24561, ptr %agg_params, align 1
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %tbl_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_lq_cmd(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %rate_n_flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rate_n_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %0 = trunc i32 %rate_n_flags to i8
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.216)
  switch i8 %0, label %for.cond.preheader.if.end17_crit_edge [
    i8 10, label %for.cond.preheader.cleanup_crit_edge
    i8 20, label %cleanup.fold.split
    i8 55, label %cleanup.fold.split34
    i8 110, label %cleanup.fold.split35
    i8 13, label %cleanup.fold.split36
    i8 15, label %cleanup.fold.split37
    i8 5, label %cleanup.fold.split38
    i8 7, label %cleanup.fold.split39
    i8 9, label %cleanup.fold.split40
    i8 11, label %cleanup.fold.split41
    i8 1, label %cleanup.fold.split42
    i8 3, label %cleanup.fold.split43
  ]

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  %and1 = and i32 %rate_n_flags, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and1)
  %cmp = icmp ugt i32 %and1, 7
  %sub = add nsw i32 %and1, -8
  %spec.select = select i1 %cmp, i32 %sub, i32 %and1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp3.not = icmp eq i32 %spec.select, 0
  %add5 = add nuw nsw i32 %spec.select, 5
  %idx.1 = select i1 %cmp3.not, i32 4, i32 %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %idx.1)
  %cmp8 = icmp ult i32 %idx.1, 13
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge
  br label %cleanup

cleanup.fold.split:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split34:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split35:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split36:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split37:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split38:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split39:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split40:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split41:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split42:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split43:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split43, %cleanup.fold.split42, %cleanup.fold.split41, %cleanup.fold.split40, %cleanup.fold.split39, %cleanup.fold.split38, %cleanup.fold.split37, %cleanup.fold.split36, %cleanup.fold.split35, %cleanup.fold.split34, %cleanup.fold.split, %if.end17, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end17 ], [ %idx.1, %if.then.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split34 ], [ 3, %cleanup.fold.split35 ], [ 4, %cleanup.fold.split36 ], [ 5, %cleanup.fold.split37 ], [ 6, %cleanup.fold.split38 ], [ 7, %cleanup.fold.split39 ], [ 8, %cleanup.fold.split40 ], [ 9, %cleanup.fold.split41 ], [ 10, %cleanup.fold.split42 ], [ 11, %cleanup.fold.split43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_dbgfs_set_mcs(ptr nocapture noundef %lq_sta, ptr nocapture noundef writeonly %rate_n_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 27
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %dbg_fixed_rate = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 26
  %2 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbg_fixed_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body39, label %if.then

if.then:                                          ; preds = %entry
  %valid_tx_ant1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 97, i32 7
  %4 = ptrtoint ptr %valid_tx_ant1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_tx_ant1, align 2
  %and = lshr i32 %3, 14
  %conv = and i32 %and, 7
  %conv3 = zext i8 %5 to i32
  %and5 = and i32 %conv, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %and5, i32 %conv)
  %cmp = icmp eq i32 %and5, %conv
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %6 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %rate_n_flags, align 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %7 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.il_get_debug_level.exit_crit_edge

if.then8.il_get_debug_level.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %9 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.then8.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.else.i ], [ %8, %if.then8.il_get_debug_level.exit_crit_edge ]
  %and10 = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %il_get_debug_level.exit.if.end53_crit_edge, label %il_get_debug_level.exit.if.end53.sink.split_crit_edge

il_get_debug_level.exit.if.end53.sink.split_crit_edge: ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.sink.split

il_get_debug_level.exit.if.end53_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.else:                                          ; preds = %if.then
  %10 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dbg_fixed_rate, align 4
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 34
  %11 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_dev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv3) #16
  %debug_level.i1 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %13 = ptrtoint ptr %debug_level.i1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_level.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i2 = icmp eq i32 %14, 0
  br i1 %tobool.not.i2, label %if.else.i3, label %if.else.il_get_debug_level.exit5_crit_edge

if.else.il_get_debug_level.exit5_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit5

if.else.i3:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %15 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit5

il_get_debug_level.exit5:                         ; preds = %if.else.i3, %if.else.il_get_debug_level.exit5_crit_edge
  %retval.0.i4 = phi i32 [ %15, %if.else.i3 ], [ %14, %if.else.il_get_debug_level.exit5_crit_edge ]
  %and25 = and i32 %retval.0.i4, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %il_get_debug_level.exit5.if.end53_crit_edge, label %il_get_debug_level.exit5.if.end53.sink.split_crit_edge

il_get_debug_level.exit5.if.end53.sink.split_crit_edge: ; preds = %il_get_debug_level.exit5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.sink.split

il_get_debug_level.exit5.if.end53_crit_edge:      ; preds = %il_get_debug_level.exit5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.body39:                                        ; preds = %entry
  %debug_level.i6 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %16 = ptrtoint ptr %debug_level.i6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_level.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i7 = icmp eq i32 %17, 0
  br i1 %tobool.not.i7, label %if.else.i8, label %do.body39.il_get_debug_level.exit10_crit_edge

do.body39.il_get_debug_level.exit10_crit_edge:    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit10

if.else.i8:                                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %18 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit10

il_get_debug_level.exit10:                        ; preds = %if.else.i8, %do.body39.il_get_debug_level.exit10_crit_edge
  %retval.0.i9 = phi i32 [ %18, %if.else.i8 ], [ %17, %do.body39.il_get_debug_level.exit10_crit_edge ]
  %and41 = and i32 %retval.0.i9, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %il_get_debug_level.exit10.if.end53_crit_edge, label %il_get_debug_level.exit10.if.end53.sink.split_crit_edge

il_get_debug_level.exit10.if.end53.sink.split_crit_edge: ; preds = %il_get_debug_level.exit10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53.sink.split

il_get_debug_level.exit10.if.end53_crit_edge:     ; preds = %il_get_debug_level.exit10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.end53.sink.split:                              ; preds = %il_get_debug_level.exit10.if.end53.sink.split_crit_edge, %il_get_debug_level.exit5.if.end53.sink.split_crit_edge, %il_get_debug_level.exit.if.end53.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.14, %il_get_debug_level.exit.if.end53.sink.split_crit_edge ], [ @.str.20, %il_get_debug_level.exit5.if.end53.sink.split_crit_edge ], [ @.str.20, %il_get_debug_level.exit10.if.end53.sink.split_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %wiphy48 = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy48, align 8
  %dev49 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull %.str.20.sink, ptr noundef nonnull @.str.15) #16
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %il_get_debug_level.exit10.if.end53_crit_edge, %il_get_debug_level.exit5.if.end53_crit_edge, %il_get_debug_level.exit.if.end53_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @il4965_rs_get_adjacent_rate(ptr nocapture noundef readonly %il, i8 noundef zeroext %idx, i16 noundef zeroext %rate_mask, i32 noundef %rate_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rate_type)
  %cond = icmp eq i32 %rate_type, 1
  br i1 %cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %conv37 = zext i16 %rate_mask to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %idx)
  %cmp30.not141 = icmp eq i8 %idx, 13
  br i1 %cmp30.not141, label %while.cond.preheader.while.end86_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end86_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end86

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %conv29168 = zext i8 %idx to i32
  %prev_rs169 = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %conv29168, i32 6
  %0 = ptrtoint ptr %prev_rs169 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prev_rs169, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx)
  %cmp33171 = icmp eq i8 %idx, 0
  br i1 %cmp33171, label %while.body.lr.ph.while.end_crit_edge, label %while.body.lr.ph.if.end36_crit_edge

while.body.lr.ph.if.end36_crit_edge:              ; preds = %while.body.lr.ph
  br label %if.end36

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %idx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idx)
  %cmp4134.not = icmp eq i8 %idx, 0
  br i1 %cmp4134.not, label %if.then.for.body14.lr.ph_crit_edge, label %for.body.lr.ph

if.then.for.body14.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %conv6 = zext i16 %rate_mask to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mask.0136 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %for.inc.for.body_crit_edge ]
  %i.0135 = phi i32 [ %sub, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.0136, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast126 = and i32 %i.0135, 255
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %i.0135, -1
  %shr = lshr i32 %mask.0136, 1
  %cmp4 = icmp sgt i32 %i.0135, 0
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7
  %low.0 = phi i32 [ %phi.cast126, %if.then7 ], [ 13, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %idx)
  %cmp12138 = icmp ult i8 %idx, 12
  br i1 %cmp12138, label %for.end.for.body14.lr.ph_crit_edge, label %for.end.for.end23_crit_edge

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23

for.end.for.body14.lr.ph_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.lr.ph

for.body14.lr.ph:                                 ; preds = %for.end.for.body14.lr.ph_crit_edge, %if.then.for.body14.lr.ph_crit_edge
  %low.0158 = phi i32 [ %low.0, %for.end.for.body14.lr.ph_crit_edge ], [ 13, %if.then.for.body14.lr.ph_crit_edge ]
  %i.1137 = add nuw nsw i32 %conv, 1
  %shl10 = shl i32 2, %conv
  %conv15 = zext i16 %rate_mask to i32
  br label %for.body14

for.cond11:                                       ; preds = %for.body14
  %shl22 = shl i32 %mask.1139, 1
  %i.1 = add nuw nsw i32 %i.1140, 1
  %exitcond.not = icmp eq i32 %i.1, 13
  br i1 %exitcond.not, label %for.cond11.for.end23_crit_edge, label %for.cond11.for.body14_crit_edge

for.cond11.for.body14_crit_edge:                  ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14

for.cond11.for.end23_crit_edge:                   ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23

for.body14:                                       ; preds = %for.cond11.for.body14_crit_edge, %for.body14.lr.ph
  %i.1140 = phi i32 [ %i.1137, %for.body14.lr.ph ], [ %i.1, %for.cond11.for.body14_crit_edge ]
  %mask.1139 = phi i32 [ %shl10, %for.body14.lr.ph ], [ %shl22, %for.cond11.for.body14_crit_edge ]
  %and16 = and i32 %mask.1139, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.cond11, label %if.then18

if.then18:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = shl i32 %i.1140, 8
  %phi.bo = and i32 %phi.cast, 65280
  br label %for.end23

for.end23:                                        ; preds = %if.then18, %for.cond11.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %low.0157 = phi i32 [ %low.0158, %if.then18 ], [ %low.0, %for.end.for.end23_crit_edge ], [ %low.0158, %for.cond11.for.end23_crit_edge ]
  %high.0 = phi i32 [ %phi.bo, %if.then18 ], [ 3328, %for.end.for.end23_crit_edge ], [ 3328, %for.cond11.for.end23_crit_edge ]
  %or = or i32 %high.0, %low.0157
  br label %cleanup

if.end36:                                         ; preds = %do.end51.if.end36_crit_edge, %while.body.lr.ph.if.end36_crit_edge
  %2 = phi i8 [ %11, %do.end51.if.end36_crit_edge ], [ %1, %while.body.lr.ph.if.end36_crit_edge ]
  %conv32172 = zext i8 %2 to i32
  %shl39 = shl nuw i32 1, %conv32172
  %and40 = and i32 %shl39, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body, label %if.end36.while.end_crit_edge

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

do.body:                                          ; preds = %if.end36
  %3 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %5 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.else.i ], [ %4, %do.body.il_get_debug_level.exit_crit_edge ]
  %and44 = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %il_get_debug_level.exit.do.end51_crit_edge, label %do.end

il_get_debug_level.exit.do.end51_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv32172) #16
  br label %do.end51

do.end51:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end51_crit_edge
  %conv29 = zext i8 %2 to i32
  %prev_rs = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %conv29, i32 6
  %10 = ptrtoint ptr %prev_rs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prev_rs, align 1
  %cmp33 = icmp eq i8 %2, 0
  br i1 %cmp33, label %do.end51.while.end_crit_edge, label %do.end51.if.end36_crit_edge

do.end51.if.end36_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

do.end51.while.end_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.end51.while.end_crit_edge, %if.end36.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge
  %.lcssa165 = phi i8 [ %1, %while.body.lr.ph.while.end_crit_edge ], [ %2, %if.end36.while.end_crit_edge ], [ %11, %do.end51.while.end_crit_edge ]
  br i1 %cmp30.not141, label %while.end.while.end86_crit_edge, label %while.body56.lr.ph

while.end.while.end86_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end86

while.body56.lr.ph:                               ; preds = %while.end
  %debug_level.i127 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %conv53174 = zext i8 %idx to i32
  %next_rs175 = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %conv53174, i32 7
  %12 = ptrtoint ptr %next_rs175 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_rs175, align 1
  %14 = add i8 %idx, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %while.body56.lr.ph.while.end86.loopexit_crit_edge, label %while.body56.lr.ph.if.end63_crit_edge

while.body56.lr.ph.if.end63_crit_edge:            ; preds = %while.body56.lr.ph
  br label %if.end63

while.body56.lr.ph.while.end86.loopexit_crit_edge: ; preds = %while.body56.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end86.loopexit

if.end63:                                         ; preds = %do.end85.if.end63_crit_edge, %while.body56.lr.ph.if.end63_crit_edge
  %16 = phi i8 [ %25, %do.end85.if.end63_crit_edge ], [ %13, %while.body56.lr.ph.if.end63_crit_edge ]
  %conv59177 = zext i8 %16 to i32
  %shl66 = shl nuw i32 1, %conv59177
  %and67 = and i32 %shl66, %conv37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body71, label %if.end63.while.end86.loopexit_crit_edge

if.end63.while.end86.loopexit_crit_edge:          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end86.loopexit

do.body71:                                        ; preds = %if.end63
  %17 = ptrtoint ptr %debug_level.i127 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_level.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i128 = icmp eq i32 %18, 0
  br i1 %tobool.not.i128, label %if.else.i129, label %do.body71.il_get_debug_level.exit131_crit_edge

do.body71.il_get_debug_level.exit131_crit_edge:   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit131

if.else.i129:                                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %19 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit131

il_get_debug_level.exit131:                       ; preds = %if.else.i129, %do.body71.il_get_debug_level.exit131_crit_edge
  %retval.0.i130 = phi i32 [ %19, %if.else.i129 ], [ %18, %do.body71.il_get_debug_level.exit131_crit_edge ]
  %and73 = and i32 %retval.0.i130, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %il_get_debug_level.exit131.do.end85_crit_edge, label %do.end78

il_get_debug_level.exit131.do.end85_crit_edge:    ; preds = %il_get_debug_level.exit131
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end85

do.end78:                                         ; preds = %il_get_debug_level.exit131
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %il, align 8
  %wiphy80 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy80, align 8
  %dev81 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv59177) #16
  br label %do.end85

do.end85:                                         ; preds = %do.end78, %il_get_debug_level.exit131.do.end85_crit_edge
  %conv53 = zext i8 %16 to i32
  %next_rs = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %conv53, i32 7
  %24 = ptrtoint ptr %next_rs to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %next_rs, align 1
  %26 = add i8 %16, -11
  %27 = icmp ult i8 %26, 2
  br i1 %27, label %do.end85.while.end86.loopexit_crit_edge, label %do.end85.if.end63_crit_edge

do.end85.if.end63_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.end85.while.end86.loopexit_crit_edge:          ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end86.loopexit

while.end86.loopexit:                             ; preds = %do.end85.while.end86.loopexit_crit_edge, %if.end63.while.end86.loopexit_crit_edge, %while.body56.lr.ph.while.end86.loopexit_crit_edge
  %.lcssa = phi i8 [ %13, %while.body56.lr.ph.while.end86.loopexit_crit_edge ], [ %25, %do.end85.while.end86.loopexit_crit_edge ], [ %16, %if.end63.while.end86.loopexit_crit_edge ]
  %phi.cast152 = zext i8 %.lcssa to i32
  %phi.bo153 = shl nuw nsw i32 %phi.cast152, 8
  br label %while.end86

while.end86:                                      ; preds = %while.end86.loopexit, %while.end.while.end86_crit_edge, %while.cond.preheader.while.end86_crit_edge
  %low.2160.shrunk = phi i8 [ %.lcssa165, %while.end86.loopexit ], [ %.lcssa165, %while.end.while.end86_crit_edge ], [ 13, %while.cond.preheader.while.end86_crit_edge ]
  %high.2 = phi i32 [ %phi.bo153, %while.end86.loopexit ], [ 3328, %while.end.while.end86_crit_edge ], [ 3328, %while.cond.preheader.while.end86_crit_edge ]
  %low.2160 = zext i8 %low.2160.shrunk to i32
  %or90 = or i32 %high.2, %low.2160
  br label %cleanup

cleanup:                                          ; preds = %while.end86, %for.end23
  %retval.0.in = phi i32 [ %or, %for.end23 ], [ %or90, %while.end86 ]
  %retval.0 = trunc i32 %retval.0.in to i16
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @il4965_rs_alloc(ptr nocapture noundef readonly %hw) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @il4965_rs_free(ptr nocapture noundef %il_rate) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @il4965_rs_alloc_sta(ptr nocapture noundef readonly %il_rate, ptr noundef readnone %sta, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_rate, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end3

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %il_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il_rate, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end3_crit_edge
  %lq_sta = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  ret ptr %lq_sta
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @il4965_rs_rate_init_stub(ptr nocapture noundef %il_r, ptr nocapture noundef %sband, ptr nocapture noundef %chandef, ptr nocapture noundef %sta, ptr nocapture noundef %il_sta) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_rs_free_sta(ptr nocapture noundef readonly %il_r, ptr nocapture noundef readnone %sta, ptr nocapture noundef readnone %il_sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_r, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.body4_crit_edge, label %do.end

il_get_debug_level.exit.do.body4_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body4

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il_r, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #16
  br label %do.body4

do.body4:                                         ; preds = %do.end, %il_get_debug_level.exit.do.body4_crit_edge
  %7 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i22 = icmp eq i32 %8, 0
  br i1 %tobool.not.i22, label %if.else.i23, label %do.body4.il_get_debug_level.exit25_crit_edge

do.body4.il_get_debug_level.exit25_crit_edge:     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit25

if.else.i23:                                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %9 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit25

il_get_debug_level.exit25:                        ; preds = %if.else.i23, %do.body4.il_get_debug_level.exit25_crit_edge
  %retval.0.i24 = phi i32 [ %9, %if.else.i23 ], [ %8, %do.body4.il_get_debug_level.exit25_crit_edge ]
  %and6 = and i32 %retval.0.i24, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %il_get_debug_level.exit25.do.end17_crit_edge, label %do.end11

il_get_debug_level.exit25.do.end17_crit_edge:     ; preds = %il_get_debug_level.exit25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

do.end11:                                         ; preds = %il_get_debug_level.exit25
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il_r, align 8
  %wiphy13 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy13, align 8
  %dev14 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #16
  br label %do.end17

do.end17:                                         ; preds = %do.end11, %il_get_debug_level.exit25.do.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_rs_tx_status(ptr noundef %il_r, ptr nocapture noundef readonly %sband, ptr noundef %sta, ptr noundef %il_sta, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  %rs_idx = alloca i32, align 4
  %tbl_type = alloca %struct.il_scale_tbl_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rs_idx) #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %tbl_type) #13
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_r, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %il_r, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #16
  br label %do.end4

do.end4:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %il_sta, null
  br i1 %tobool5.not, label %do.body7, label %if.else

do.body7:                                         ; preds = %do.end4
  %9 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i486 = icmp eq i32 %10, 0
  br i1 %tobool.not.i486, label %if.else.i487, label %do.body7.il_get_debug_level.exit489_crit_edge

do.body7.il_get_debug_level.exit489_crit_edge:    ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit489

if.else.i487:                                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %11 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit489

il_get_debug_level.exit489:                       ; preds = %if.else.i487, %do.body7.il_get_debug_level.exit489_crit_edge
  %retval.0.i488 = phi i32 [ %11, %if.else.i487 ], [ %10, %do.body7.il_get_debug_level.exit489_crit_edge ]
  %and9 = and i32 %retval.0.i488, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %il_get_debug_level.exit489.cleanup_crit_edge, label %do.end14

il_get_debug_level.exit489.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit489
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end14:                                         ; preds = %il_get_debug_level.exit489
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %il_r, align 8
  %wiphy16 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy16, align 8
  %dev17 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.else:                                          ; preds = %do.end4
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 27
  %16 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv, align 8
  %tobool21.not = icmp eq ptr %17, null
  br i1 %tobool21.not, label %do.body23, label %if.end38

do.body23:                                        ; preds = %if.else
  %18 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i491 = icmp eq i32 %19, 0
  br i1 %tobool.not.i491, label %if.else.i492, label %do.body23.il_get_debug_level.exit494_crit_edge

do.body23.il_get_debug_level.exit494_crit_edge:   ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit494

if.else.i492:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %20 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit494

il_get_debug_level.exit494:                       ; preds = %if.else.i492, %do.body23.il_get_debug_level.exit494_crit_edge
  %retval.0.i493 = phi i32 [ %20, %if.else.i492 ], [ %19, %do.body23.il_get_debug_level.exit494_crit_edge ]
  %and25 = and i32 %retval.0.i493, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %il_get_debug_level.exit494.cleanup_crit_edge, label %do.end30

il_get_debug_level.exit494.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit494
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end30:                                         ; preds = %il_get_debug_level.exit494
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %il_r, align 8
  %wiphy32 = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy32, align 8
  %dev33 = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #16
  br label %cleanup

if.end38:                                         ; preds = %if.else
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 2
  %27 = and i16 %26, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %27)
  %cmp.i = icmp eq i16 %27, 2048
  br i1 %cmp.i, label %lor.lhs.false, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end38
  %28 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i, align 8
  %and40 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp ne i32 %and40, 0
  %30 = and i32 %29, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %30)
  %31 = icmp eq i32 %30, 64
  %or.cond = or i1 %tobool41.not, %31
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end51

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false
  %lq = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 22
  %rs_table = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 22, i32 5
  %32 = ptrtoint ptr %rs_table to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %rs_table, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %band = getelementptr inbounds %struct.il_priv, ptr %il_r, i32 0, i32 8
  %35 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %band, align 4
  %and.i.i = lshr i32 %34, 14
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and2.i.i = lshr i32 %34, 15
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %add.i.i = add nuw nsw i32 %and.lobit.i.i, %and2.lobit.i.i
  %and8.i.i = lshr i32 %34, 16
  %and8.lobit.i.i = and i32 %and8.i.i, 1
  %add14.i.i = add nuw nsw i32 %add.i.i, %and8.lobit.i.i
  %37 = getelementptr inbounds i8, ptr %tbl_type, i32 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 432)
  %call1.i = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %34) #13
  %39 = ptrtoint ptr %rs_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call1.i, ptr %rs_idx, align 4
  %is_SGI.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 2
  %40 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %is_SGI.i, align 1
  %is_ht40.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 3
  %41 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %is_ht40.i, align 2
  %is_dup.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 4
  %42 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_dup.i, align 1
  %43 = trunc i32 %and.i.i to i8
  %conv3.i = and i8 %43, 7
  %ant_type.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 1
  %44 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv3.i, ptr %ant_type.i, align 4
  %45 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %tbl_type, align 8
  %max_search.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl_type, i32 0, i32 6
  %46 = ptrtoint ptr %max_search.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %max_search.i, align 1
  %and4.i = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i495 = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i495, label %if.then5.i, label %if.else17.i

if.then5.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp7.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp7.i, label %if.then9.i, label %if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp10.i = icmp eq i32 %36, 1
  %..i = select i1 %cmp10.i, i32 2, i32 1
  br label %cleanup.sink.split.i

if.else17.i:                                      ; preds = %if.end51
  %and18.i = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else17.i.if.end22.i_crit_edge, label %if.then20.i

if.else17.i.if.end22.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %is_SGI.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.else17.i.if.end22.i_crit_edge
  %and25.i = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %48 = and i32 %34, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %if.end22.i.if.end29.i_crit_edge, label %if.then27.i

if.end22.i.if.end29.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %is_ht40.i, align 2
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end22.i.if.end29.i_crit_edge
  br i1 %tobool26.not.i, label %if.end29.i.if.end34.i_crit_edge, label %if.then32.i

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %is_dup.i, align 1
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %52 = and i32 %34, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp37.i = icmp eq i32 %52, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else46.i

if.then39.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14.i.i)
  %cmp41.i = icmp eq i32 %add14.i.i, 1
  br i1 %cmp41.i, label %if.then39.i.cleanup.sink.split.i_crit_edge, label %if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.then39.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.else46.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add14.i.i)
  %cmp48.i = icmp eq i32 %add14.i.i, 2
  br i1 %cmp48.i, label %if.else46.i.cleanup.sink.split.i_crit_edge, label %if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge

if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge: ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_tbl_info_from_mcs.exit

if.else46.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else46.i.cleanup.sink.split.i_crit_edge, %if.then39.i.cleanup.sink.split.i_crit_edge, %if.then9.i
  %.sink.i = phi i32 [ %..i, %if.then9.i ], [ 3, %if.then39.i.cleanup.sink.split.i_crit_edge ], [ 4, %if.else46.i.cleanup.sink.split.i_crit_edge ]
  %53 = ptrtoint ptr %tbl_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink.i, ptr %tbl_type, align 8
  br label %il4965_rs_get_tbl_info_from_mcs.exit

il4965_rs_get_tbl_info_from_mcs.exit:             ; preds = %cleanup.sink.split.i, %if.else46.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then39.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge, %if.then5.i.il4965_rs_get_tbl_info_from_mcs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp = icmp eq i32 %36, 1
  br i1 %cmp, label %if.then54, label %il4965_rs_get_tbl_info_from_mcs.exit.if.end55_crit_edge

il4965_rs_get_tbl_info_from_mcs.exit.if.end55_crit_edge: ; preds = %il4965_rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then54:                                        ; preds = %il4965_rs_get_tbl_info_from_mcs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %call1.i, -4
  %54 = ptrtoint ptr %rs_idx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %rs_idx, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %il4965_rs_get_tbl_info_from_mcs.exit.if.end55_crit_edge
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %flags57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %56 = ptrtoint ptr %flags57 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %bf.load = load i16, ptr %flags57, align 1
  %bf.clear = and i16 %bf.load, 2047
  %conv = zext i16 %bf.clear to i32
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %55, align 8
  %conv60 = sext i8 %58 to i32
  %and61 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end74, label %if.end74.thread

if.end74.thread:                                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %and64 = and i32 %conv60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %cmp65.not = icmp eq i32 %and64, 0
  %inc = add nuw nsw i32 %and64, 1
  %spec.select = select i1 %cmp65.not, i32 0, i32 %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp70 = icmp eq i32 %36, 0
  %add = add nuw nsw i32 %spec.select, 4
  %spec.select484 = select i1 %cmp70, i32 %add, i32 %spec.select
  br label %lor.lhs.false77

if.end74:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp75 = icmp slt i8 %58, 0
  br i1 %cmp75, label %if.end74.do.body143_crit_edge, label %if.end74.lor.lhs.false77_crit_edge

if.end74.lor.lhs.false77_crit_edge:               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false77

if.end74.do.body143_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false77:                                  ; preds = %if.end74.lor.lhs.false77_crit_edge, %if.end74.thread
  %mac_idx.1556 = phi i32 [ %spec.select484, %if.end74.thread ], [ %conv60, %if.end74.lor.lhs.false77_crit_edge ]
  %59 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_SGI.i, align 1
  %conv78 = zext i8 %60 to i32
  %and79 = lshr i32 %conv, 7
  %and79.lobit = and i32 %and79, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and79.lobit, i32 %conv78)
  %cmp82.not = icmp eq i32 %and79.lobit, %conv78
  br i1 %cmp82.not, label %lor.lhs.false84, label %lor.lhs.false77.do.body143_crit_edge

lor.lhs.false77.do.body143_crit_edge:             ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false84:                                  ; preds = %lor.lhs.false77
  %61 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_ht40.i, align 2
  %conv85 = zext i8 %62 to i32
  %and86 = lshr i32 %conv, 5
  %and86.lobit = and i32 %and86, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and86.lobit, i32 %conv85)
  %cmp92.not = icmp eq i32 %and86.lobit, %conv85
  br i1 %cmp92.not, label %lor.lhs.false94, label %lor.lhs.false84.do.body143_crit_edge

lor.lhs.false84.do.body143_crit_edge:             ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false94:                                  ; preds = %lor.lhs.false84
  %63 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_dup.i, align 1
  %conv95 = zext i8 %64 to i32
  %and96 = lshr i32 %conv, 6
  %and96.lobit = and i32 %and96, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and96.lobit, i32 %conv95)
  %cmp102.not = icmp eq i32 %and96.lobit, %conv95
  br i1 %cmp102.not, label %lor.lhs.false104, label %lor.lhs.false94.do.body143_crit_edge

lor.lhs.false94.do.body143_crit_edge:             ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false104:                                 ; preds = %lor.lhs.false94
  %antenna = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %65 = ptrtoint ptr %antenna to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %antenna, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %66)
  %cmp107.not = icmp eq i8 %conv3.i, %66
  %and110 = lshr i32 %34, 8
  %and110.lobit = and i32 %and110, 1
  %and61.lobit = lshr exact i32 %and61, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and110.lobit, i32 %and61.lobit)
  %cmp122.not = icmp eq i32 %and110.lobit, %and61.lobit
  %or.cond482 = select i1 %cmp107.not, i1 %cmp122.not, i1 false
  br i1 %or.cond482, label %lor.lhs.false124, label %lor.lhs.false104.do.body143_crit_edge

lor.lhs.false104.do.body143_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false124:                                 ; preds = %lor.lhs.false104
  %and125 = lshr i32 %34, 10
  %and131 = lshr i32 %conv, 4
  %67 = xor i32 %and131, %and125
  %68 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp137.not = icmp eq i32 %68, 0
  br i1 %cmp137.not, label %lor.lhs.false139, label %lor.lhs.false124.do.body143_crit_edge

lor.lhs.false124.do.body143_crit_edge:            ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

lor.lhs.false139:                                 ; preds = %lor.lhs.false124
  %69 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rs_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mac_idx.1556)
  %cmp140.not = icmp eq i32 %70, %mac_idx.1556
  br i1 %cmp140.not, label %if.else167, label %lor.lhs.false139.do.body143_crit_edge

lor.lhs.false139.do.body143_crit_edge:            ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body143

do.body143:                                       ; preds = %lor.lhs.false139.do.body143_crit_edge, %lor.lhs.false124.do.body143_crit_edge, %lor.lhs.false104.do.body143_crit_edge, %lor.lhs.false94.do.body143_crit_edge, %lor.lhs.false84.do.body143_crit_edge, %lor.lhs.false77.do.body143_crit_edge, %if.end74.do.body143_crit_edge
  %mac_idx.1557 = phi i32 [ %conv60, %if.end74.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false77.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false84.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false94.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false104.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false124.do.body143_crit_edge ], [ %mac_idx.1556, %lor.lhs.false139.do.body143_crit_edge ]
  %71 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i497 = icmp eq i32 %72, 0
  br i1 %tobool.not.i497, label %if.else.i498, label %do.body143.il_get_debug_level.exit500_crit_edge

do.body143.il_get_debug_level.exit500_crit_edge:  ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit500

if.else.i498:                                     ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %73 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit500

il_get_debug_level.exit500:                       ; preds = %if.else.i498, %do.body143.il_get_debug_level.exit500_crit_edge
  %retval.0.i499 = phi i32 [ %73, %if.else.i498 ], [ %72, %do.body143.il_get_debug_level.exit500_crit_edge ]
  %and145 = and i32 %retval.0.i499, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %il_get_debug_level.exit500.do.end156_crit_edge, label %do.end150

il_get_debug_level.exit500.do.end156_crit_edge:   ; preds = %il_get_debug_level.exit500
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end156

do.end150:                                        ; preds = %il_get_debug_level.exit500
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %il_r, align 8
  %wiphy152 = getelementptr inbounds %struct.ieee80211_hw, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wiphy152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy152, align 8
  %dev153 = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  %78 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rs_idx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev153, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef %mac_idx.1557, i32 noundef %79, i32 noundef %34) #16
  br label %do.end156

do.end156:                                        ; preds = %do.end150, %il_get_debug_level.exit500.do.end156_crit_edge
  %missed_rate_counter = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 21
  %80 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %missed_rate_counter, align 1
  %inc157 = add i8 %81, 1
  store i8 %inc157, ptr %missed_rate_counter, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc157)
  %cmp160 = icmp ugt i8 %inc157, 15
  br i1 %cmp160, label %if.then162, label %do.end156.cleanup_crit_edge

do.end156.cleanup_crit_edge:                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then162:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %missed_rate_counter to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %missed_rate_counter, align 1
  %call165 = tail call i32 @il_send_lq_cmd(ptr noundef %il_r, ptr noundef %lq, i8 noundef zeroext 2, i1 noundef zeroext false) #13
  br label %cleanup

if.else167:                                       ; preds = %lor.lhs.false139
  %missed_rate_counter168 = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 21
  %83 = ptrtoint ptr %missed_rate_counter168 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %missed_rate_counter168, align 1
  %84 = ptrtoint ptr %il_sta to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %il_sta, align 8
  %idxprom = zext i8 %85 to i32
  %arrayidx170 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom
  %86 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tbl_type, align 8
  %88 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx170, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %89)
  %cmp.i501 = icmp eq i32 %87, %89
  br i1 %cmp.i501, label %land.lhs.true.i, label %if.else167.if.else182_crit_edge

if.else167.if.else182_crit_edge:                  ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else182

land.lhs.true.i:                                  ; preds = %if.else167
  %ant_type2.i = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom, i32 1
  %90 = ptrtoint ptr %ant_type2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ant_type2.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %91)
  %cmp4.i = icmp eq i8 %conv3.i, %91
  br i1 %cmp4.i, label %il4965_table_type_matches.exit, label %land.lhs.true.i.if.else182_crit_edge

land.lhs.true.i.if.else182_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else182

il4965_table_type_matches.exit:                   ; preds = %land.lhs.true.i
  %is_SGI7.i = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom, i32 2
  %92 = ptrtoint ptr %is_SGI7.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_SGI7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %93)
  %cmp9.i = icmp eq i8 %60, %93
  br i1 %cmp9.i, label %if.then172, label %il4965_table_type_matches.exit.if.else182_crit_edge

il4965_table_type_matches.exit.if.else182_crit_edge: ; preds = %il4965_table_type_matches.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else182

if.then172:                                       ; preds = %il4965_table_type_matches.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub180 = sub nsw i32 1, %idxprom
  br label %if.end280

if.else182:                                       ; preds = %il4965_table_type_matches.exit.if.else182_crit_edge, %land.lhs.true.i.if.else182_crit_edge, %if.else167.if.else182_crit_edge
  %sub186 = sub nsw i32 1, %idxprom
  %arrayidx187 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub186
  %94 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx187, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %95)
  %cmp.i504 = icmp eq i32 %87, %95
  br i1 %cmp.i504, label %land.lhs.true.i508, label %if.else182.do.body200_crit_edge

if.else182.do.body200_crit_edge:                  ; preds = %if.else182
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body200

land.lhs.true.i508:                               ; preds = %if.else182
  %ant_type2.i506 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub186, i32 1
  %96 = ptrtoint ptr %ant_type2.i506 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ant_type2.i506, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv3.i, i8 %97)
  %cmp4.i507 = icmp eq i8 %conv3.i, %97
  br i1 %cmp4.i507, label %il4965_table_type_matches.exit513, label %land.lhs.true.i508.do.body200_crit_edge

land.lhs.true.i508.do.body200_crit_edge:          ; preds = %land.lhs.true.i508
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body200

il4965_table_type_matches.exit513:                ; preds = %land.lhs.true.i508
  %is_SGI7.i510 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub186, i32 2
  %98 = ptrtoint ptr %is_SGI7.i510 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_SGI7.i510, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %99)
  %cmp9.i511 = icmp eq i8 %60, %99
  br i1 %cmp9.i511, label %il4965_table_type_matches.exit513.if.end280_crit_edge, label %il4965_table_type_matches.exit513.do.body200_crit_edge

il4965_table_type_matches.exit513.do.body200_crit_edge: ; preds = %il4965_table_type_matches.exit513
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body200

il4965_table_type_matches.exit513.if.end280_crit_edge: ; preds = %il4965_table_type_matches.exit513
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end280

do.body200:                                       ; preds = %il4965_table_type_matches.exit513.do.body200_crit_edge, %land.lhs.true.i508.do.body200_crit_edge, %if.else182.do.body200_crit_edge
  %100 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i515 = icmp eq i32 %101, 0
  br i1 %tobool.not.i515, label %if.else.i516, label %do.body200.il_get_debug_level.exit518_crit_edge

do.body200.il_get_debug_level.exit518_crit_edge:  ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit518

if.else.i516:                                     ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %102 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit518

il_get_debug_level.exit518:                       ; preds = %if.else.i516, %do.body200.il_get_debug_level.exit518_crit_edge
  %retval.0.i517 = phi i32 [ %102, %if.else.i516 ], [ %101, %do.body200.il_get_debug_level.exit518_crit_edge ]
  %and202 = and i32 %retval.0.i517, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %il_get_debug_level.exit518.do.end213_crit_edge, label %do.end207

il_get_debug_level.exit518.do.end213_crit_edge:   ; preds = %il_get_debug_level.exit518
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end213

do.end207:                                        ; preds = %il_get_debug_level.exit518
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %il_r, align 8
  %wiphy209 = getelementptr inbounds %struct.ieee80211_hw, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %wiphy209 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %wiphy209, align 8
  %dev210 = getelementptr inbounds %struct.wiphy, ptr %106, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev210, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.38) #16
  br label %do.end213

do.end213:                                        ; preds = %do.end207, %il_get_debug_level.exit518.do.end213_crit_edge
  %107 = ptrtoint ptr %il_sta to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %il_sta, align 8
  %109 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i520 = icmp eq i32 %110, 0
  br i1 %tobool.not.i520, label %if.else.i521, label %do.end213.il_get_debug_level.exit523_crit_edge

do.end213.il_get_debug_level.exit523_crit_edge:   ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit523

if.else.i521:                                     ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %111 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit523

il_get_debug_level.exit523:                       ; preds = %if.else.i521, %do.end213.il_get_debug_level.exit523_crit_edge
  %retval.0.i522 = phi i32 [ %111, %if.else.i521 ], [ %110, %do.end213.il_get_debug_level.exit523_crit_edge ]
  %and220 = and i32 %retval.0.i522, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %il_get_debug_level.exit523.do.end235_crit_edge, label %do.end225

il_get_debug_level.exit523.do.end235_crit_edge:   ; preds = %il_get_debug_level.exit523
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end235

do.end225:                                        ; preds = %il_get_debug_level.exit523
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom216 = zext i8 %108 to i32
  %arrayidx217 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom216
  %112 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %il_r, align 8
  %wiphy227 = getelementptr inbounds %struct.ieee80211_hw, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %wiphy227 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wiphy227, align 8
  %dev228 = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  %116 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx217, align 8
  %ant_type229 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom216, i32 1
  %118 = ptrtoint ptr %ant_type229 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ant_type229, align 4
  %conv230 = zext i8 %119 to i32
  %is_SGI231 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom216, i32 2
  %120 = ptrtoint ptr %is_SGI231 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_SGI231, align 1
  %conv232 = zext i8 %121 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev228, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.38, i32 noundef %117, i32 noundef %conv230, i32 noundef %conv232) #16
  br label %do.end235

do.end235:                                        ; preds = %do.end225, %il_get_debug_level.exit523.do.end235_crit_edge
  %122 = ptrtoint ptr %il_sta to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %il_sta, align 8
  %124 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i525 = icmp eq i32 %125, 0
  br i1 %tobool.not.i525, label %if.else.i526, label %do.end235.il_get_debug_level.exit528_crit_edge

do.end235.il_get_debug_level.exit528_crit_edge:   ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit528

if.else.i526:                                     ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %126 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit528

il_get_debug_level.exit528:                       ; preds = %if.else.i526, %do.end235.il_get_debug_level.exit528_crit_edge
  %retval.0.i527 = phi i32 [ %126, %if.else.i526 ], [ %125, %do.end235.il_get_debug_level.exit528_crit_edge ]
  %and243 = and i32 %retval.0.i527, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %il_get_debug_level.exit528.do.body260_crit_edge, label %do.end248

il_get_debug_level.exit528.do.body260_crit_edge:  ; preds = %il_get_debug_level.exit528
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body260

do.end248:                                        ; preds = %il_get_debug_level.exit528
  call void @__sanitizer_cov_trace_pc() #15
  %conv238 = zext i8 %123 to i32
  %sub239 = sub nsw i32 1, %conv238
  %arrayidx240 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub239
  %127 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %il_r, align 8
  %wiphy250 = getelementptr inbounds %struct.ieee80211_hw, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %wiphy250 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %wiphy250, align 8
  %dev251 = getelementptr inbounds %struct.wiphy, ptr %130, i32 0, i32 56
  %131 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx240, align 8
  %ant_type253 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub239, i32 1
  %133 = ptrtoint ptr %ant_type253 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ant_type253, align 4
  %conv254 = zext i8 %134 to i32
  %is_SGI255 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub239, i32 2
  %135 = ptrtoint ptr %is_SGI255 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %is_SGI255, align 1
  %conv256 = zext i8 %136 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev251, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.38, i32 noundef %132, i32 noundef %conv254, i32 noundef %conv256) #16
  br label %do.body260

do.body260:                                       ; preds = %do.end248, %il_get_debug_level.exit528.do.body260_crit_edge
  %137 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i530 = icmp eq i32 %138, 0
  br i1 %tobool.not.i530, label %if.else.i531, label %do.body260.il_get_debug_level.exit533_crit_edge

do.body260.il_get_debug_level.exit533_crit_edge:  ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit533

if.else.i531:                                     ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %139 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit533

il_get_debug_level.exit533:                       ; preds = %if.else.i531, %do.body260.il_get_debug_level.exit533_crit_edge
  %retval.0.i532 = phi i32 [ %139, %if.else.i531 ], [ %138, %do.body260.il_get_debug_level.exit533_crit_edge ]
  %and262 = and i32 %retval.0.i532, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %il_get_debug_level.exit533.do.end278_crit_edge, label %do.end267

il_get_debug_level.exit533.do.end278_crit_edge:   ; preds = %il_get_debug_level.exit533
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end278

do.end267:                                        ; preds = %il_get_debug_level.exit533
  call void @__sanitizer_cov_trace_pc() #15
  %140 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %il_r, align 8
  %wiphy269 = getelementptr inbounds %struct.ieee80211_hw, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %wiphy269 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wiphy269, align 8
  %dev270 = getelementptr inbounds %struct.wiphy, ptr %143, i32 0, i32 56
  %conv273 = zext i8 %conv3.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev270, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.38, i32 noundef %87, i32 noundef %conv273, i32 noundef %conv78) #16
  br label %do.end278

do.end278:                                        ; preds = %do.end267, %il_get_debug_level.exit533.do.end278_crit_edge
  tail call fastcc void @il4965_rs_stay_in_table(ptr noundef nonnull %il_sta, i1 noundef zeroext true)
  br label %done

if.end280:                                        ; preds = %il4965_table_type_matches.exit513.if.end280_crit_edge, %if.then172
  %idxprom175.pn = phi i32 [ %idxprom, %if.then172 ], [ %sub186, %il4965_table_type_matches.exit513.if.end280_crit_edge ]
  %sub180.pn = phi i32 [ %sub180, %if.then172 ], [ %idxprom, %il4965_table_type_matches.exit513.if.end280_crit_edge ]
  %other_tbl.0 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub180.pn
  %curr_tbl.0 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom175.pn
  %144 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cb.i, align 8
  %and282 = and i32 %145, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and282)
  %tobool283.not = icmp eq i32 %and282, 0
  br i1 %tobool283.not, label %if.else305, label %if.then284

if.then284:                                       ; preds = %if.end280
  %146 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %band, align 4
  call fastcc void @il4965_rs_get_tbl_info_from_mcs(i32 noundef %34, i32 noundef %147, ptr noundef nonnull %tbl_type, ptr noundef nonnull %rs_idx)
  %148 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rs_idx, align 4
  %ampdu_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %150 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %ampdu_len, align 1
  %conv290 = zext i8 %151 to i32
  %ampdu_ack_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %152 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ampdu_ack_len, align 8
  %conv291 = zext i8 %153 to i32
  tail call fastcc void @il4965_rs_collect_tx_data(ptr noundef %curr_tbl.0, i32 noundef %149, i32 noundef %conv290, i32 noundef %conv291)
  %stay_in_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 2
  %154 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool293.not = icmp eq i8 %155, 0
  br i1 %tobool293.not, label %if.then284.if.end353_crit_edge, label %if.then294

if.then284.if.end353_crit_edge:                   ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end353

if.then294:                                       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ampdu_ack_len, align 8
  %conv296 = zext i8 %157 to i32
  %total_success = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 10
  %158 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %total_success, align 4
  %add297 = add i32 %159, %conv296
  store i32 %add297, ptr %total_success, align 4
  %160 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %ampdu_len, align 1
  %conv299 = zext i8 %161 to i32
  %162 = load i8, ptr %ampdu_ack_len, align 8
  %conv301 = zext i8 %162 to i32
  %sub302 = sub nsw i32 %conv299, %conv301
  br label %if.end353.sink.split

if.else305:                                       ; preds = %if.end280
  %163 = ptrtoint ptr %flags57 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %bf.load308 = load i16, ptr %flags57, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load308)
  %cmp311 = icmp sgt i16 %bf.load308, -1
  %bf.lshr = lshr i16 %bf.load308, 11
  %conv309 = zext i16 %bf.lshr to i32
  %sub310 = add nsw i32 %conv309, -1
  %cond = select i1 %cmp311, i32 %sub310, i32 15
  %and314 = lshr i32 %145, 9
  %and314.lobit = and i32 %and314, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp320.not559 = icmp slt i32 %cond, 0
  br i1 %cmp320.not559, label %if.else305.for.end_crit_edge, label %for.body.lr.ph

if.else305.for.end_crit_edge:                     ; preds = %if.else305
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else305
  %ant_type2.i536 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom175.pn, i32 1
  %is_SGI7.i540 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %idxprom175.pn, i32 2
  %ant_type2.i546 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub180.pn, i32 1
  %is_SGI7.i550 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 23, i32 %sub180.pn, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0560 = phi i32 [ 0, %for.body.lr.ph ], [ %inc342, %for.inc.for.body_crit_edge ]
  %arrayidx323 = getelementptr %struct.il_lq_sta, ptr %il_sta, i32 0, i32 22, i32 5, i32 %i.0560
  %164 = ptrtoint ptr %arrayidx323 to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %arrayidx323, align 1
  %166 = tail call i32 @llvm.bswap.i32(i32 %165)
  %167 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %band, align 4
  call fastcc void @il4965_rs_get_tbl_info_from_mcs(i32 noundef %166, i32 noundef %168, ptr noundef nonnull %tbl_type, ptr noundef nonnull %rs_idx)
  %169 = ptrtoint ptr %tbl_type to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %tbl_type, align 8
  %171 = ptrtoint ptr %curr_tbl.0 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %curr_tbl.0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %172)
  %cmp.i534 = icmp eq i32 %170, %172
  br i1 %cmp.i534, label %land.lhs.true.i538, label %for.body.if.else329_crit_edge

for.body.if.else329_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else329

land.lhs.true.i538:                               ; preds = %for.body
  %173 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ant_type.i, align 4
  %175 = ptrtoint ptr %ant_type2.i536 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %ant_type2.i536, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %174, i8 %176)
  %cmp4.i537 = icmp eq i8 %174, %176
  br i1 %cmp4.i537, label %il4965_table_type_matches.exit543, label %land.lhs.true.i538.if.else329_crit_edge

land.lhs.true.i538.if.else329_crit_edge:          ; preds = %land.lhs.true.i538
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else329

il4965_table_type_matches.exit543:                ; preds = %land.lhs.true.i538
  %177 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %is_SGI.i, align 1
  %179 = ptrtoint ptr %is_SGI7.i540 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %is_SGI7.i540, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %178, i8 %180)
  %cmp9.i541 = icmp eq i8 %178, %180
  br i1 %cmp9.i541, label %il4965_table_type_matches.exit543.if.end334_crit_edge, label %il4965_table_type_matches.exit543.if.else329_crit_edge

il4965_table_type_matches.exit543.if.else329_crit_edge: ; preds = %il4965_table_type_matches.exit543
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else329

il4965_table_type_matches.exit543.if.end334_crit_edge: ; preds = %il4965_table_type_matches.exit543
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.else329:                                       ; preds = %il4965_table_type_matches.exit543.if.else329_crit_edge, %land.lhs.true.i538.if.else329_crit_edge, %for.body.if.else329_crit_edge
  %181 = ptrtoint ptr %other_tbl.0 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %other_tbl.0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %182)
  %cmp.i544 = icmp eq i32 %170, %182
  br i1 %cmp.i544, label %land.lhs.true.i548, label %if.else329.for.inc_crit_edge

if.else329.for.inc_crit_edge:                     ; preds = %if.else329
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.i548:                               ; preds = %if.else329
  %183 = ptrtoint ptr %ant_type.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %ant_type.i, align 4
  %185 = ptrtoint ptr %ant_type2.i546 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %ant_type2.i546, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %184, i8 %186)
  %cmp4.i547 = icmp eq i8 %184, %186
  br i1 %cmp4.i547, label %il4965_table_type_matches.exit553, label %land.lhs.true.i548.for.inc_crit_edge

land.lhs.true.i548.for.inc_crit_edge:             ; preds = %land.lhs.true.i548
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

il4965_table_type_matches.exit553:                ; preds = %land.lhs.true.i548
  %187 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %is_SGI.i, align 1
  %189 = ptrtoint ptr %is_SGI7.i550 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %is_SGI7.i550, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %188, i8 %190)
  %cmp9.i551 = icmp eq i8 %188, %190
  br i1 %cmp9.i551, label %il4965_table_type_matches.exit553.if.end334_crit_edge, label %il4965_table_type_matches.exit553.for.inc_crit_edge

il4965_table_type_matches.exit553.for.inc_crit_edge: ; preds = %il4965_table_type_matches.exit553
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

il4965_table_type_matches.exit553.if.end334_crit_edge: ; preds = %il4965_table_type_matches.exit553
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end334

if.end334:                                        ; preds = %il4965_table_type_matches.exit553.if.end334_crit_edge, %il4965_table_type_matches.exit543.if.end334_crit_edge
  %tmp_tbl.0 = phi ptr [ %curr_tbl.0, %il4965_table_type_matches.exit543.if.end334_crit_edge ], [ %other_tbl.0, %il4965_table_type_matches.exit553.if.end334_crit_edge ]
  %191 = ptrtoint ptr %rs_idx to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rs_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0560, i32 %cond)
  %cmp335 = icmp slt i32 %i.0560, %cond
  %spec.select483 = select i1 %cmp335, i32 0, i32 %and314.lobit
  tail call fastcc void @il4965_rs_collect_tx_data(ptr noundef %tmp_tbl.0, i32 noundef %192, i32 noundef 1, i32 noundef %spec.select483)
  br label %for.inc

for.inc:                                          ; preds = %if.end334, %il4965_table_type_matches.exit553.for.inc_crit_edge, %land.lhs.true.i548.for.inc_crit_edge, %if.else329.for.inc_crit_edge
  %inc342 = add nuw nsw i32 %i.0560, 1
  %exitcond = icmp eq i32 %i.0560, %cond
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else305.for.end_crit_edge
  %tx_rate.0.lcssa = phi i32 [ %34, %if.else305.for.end_crit_edge ], [ %166, %for.inc.for.end_crit_edge ]
  %stay_in_tbl343 = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 2
  %193 = ptrtoint ptr %stay_in_tbl343 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %stay_in_tbl343, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool344.not = icmp eq i8 %194, 0
  br i1 %tobool344.not, label %for.end.if.end353_crit_edge, label %if.then345

for.end.if.end353_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end353

if.then345:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %total_success346 = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 10
  %195 = ptrtoint ptr %total_success346 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %total_success346, align 4
  %add347 = add i32 %196, %and314.lobit
  store i32 %add347, ptr %total_success346, align 4
  %sub348 = xor i32 %and314.lobit, 1
  %add349 = add nsw i32 %cond, %sub348
  br label %if.end353.sink.split

if.end353.sink.split:                             ; preds = %if.then345, %if.then294
  %add349.sink = phi i32 [ %add349, %if.then345 ], [ %sub302, %if.then294 ]
  %tx_rate.1.ph = phi i32 [ %tx_rate.0.lcssa, %if.then345 ], [ %34, %if.then294 ]
  %total_failed = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 9
  %197 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %total_failed, align 8
  %add351 = add i32 %add349.sink, %198
  store i32 %add351, ptr %total_failed, align 8
  br label %if.end353

if.end353:                                        ; preds = %if.end353.sink.split, %for.end.if.end353_crit_edge, %if.then284.if.end353_crit_edge
  %tx_rate.1 = phi i32 [ %34, %if.then284.if.end353_crit_edge ], [ %tx_rate.0.lcssa, %for.end.if.end353_crit_edge ], [ %tx_rate.1.ph, %if.end353.sink.split ]
  %last_rate_n_flags = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 29
  %199 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %tx_rate.1, ptr %last_rate_n_flags, align 8
  br label %done

done:                                             ; preds = %if.end353, %do.end278
  %band354 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %sband, i32 0, i32 2
  %200 = ptrtoint ptr %band354 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %band354, align 4
  %arrayidx355 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %201
  %202 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx355, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool356.not = icmp eq i32 %203, 0
  br i1 %tobool356.not, label %done.cleanup_crit_edge, label %if.then357

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then357:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @il4965_rs_rate_scale_perform(ptr noundef %il_r, ptr noundef %skb, ptr noundef %sta, ptr noundef %il_sta)
  br label %cleanup

cleanup:                                          ; preds = %if.then357, %done.cleanup_crit_edge, %if.then162, %do.end156.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end30, %il_get_debug_level.exit494.cleanup_crit_edge, %do.end14, %il_get_debug_level.exit489.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %tbl_type) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rs_idx) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_rs_get_rate(ptr nocapture noundef readonly %il_r, ptr noundef readonly %sta, ptr noundef %il_sta, ptr nocapture noundef readonly %txrc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 3
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %sband2 = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 1
  %2 = ptrtoint ptr %sband2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sband2, align 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il_r, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i222 = icmp eq i32 %5, 0
  br i1 %tobool.not.i222, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il_r, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.169) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end6_crit_edge
  %tobool7.not = icmp eq ptr %il_sta, null
  br i1 %tobool7.not, label %do.end6.cleanup_crit_edge, label %if.then8

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then8:                                         ; preds = %do.end6
  %rate_idx_mask = getelementptr inbounds %struct.ieee80211_tx_rate_control, ptr %txrc, i32 0, i32 7
  %11 = ptrtoint ptr %rate_idx_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rate_idx_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #13, !range !400
  %14 = trunc i32 %13 to i8
  %15 = sub nuw nsw i8 32, %14
  %16 = select i1 %tobool.not.i, i8 0, i8 %15
  %conv = add nsw i8 %16, -1
  %max_rate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 20
  %17 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %max_rate_idx, align 2
  %band = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp ne i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp13.not = icmp eq i8 %16, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13.not
  br i1 %or.cond, label %if.end19thread-pre-split, label %if.then15

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %add = add nuw nsw i8 %16, 3
  %20 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %add, ptr %max_rate_idx, align 2
  br label %if.end19

if.end19thread-pre-split:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %max_rate_idx, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.then15
  %22 = phi i8 [ %.pr, %if.end19thread-pre-split ], [ %add, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %22)
  %23 = icmp ugt i8 %22, 12
  br i1 %23, label %if.then28, label %if.end19.land.lhs.true33_crit_edge

if.end19.land.lhs.true33_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true33

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %max_rate_idx, align 2
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.then28, %if.end19.land.lhs.true33_crit_edge
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 27
  %25 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drv, align 8
  %tobool34.not = icmp eq ptr %26, null
  br i1 %tobool34.not, label %do.body36, label %land.lhs.true33.if.end53_crit_edge

land.lhs.true33.if.end53_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.body36:                                        ; preds = %land.lhs.true33
  %27 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i224 = icmp eq i32 %28, 0
  br i1 %tobool.not.i224, label %if.else.i225, label %do.body36.il_get_debug_level.exit227_crit_edge

do.body36.il_get_debug_level.exit227_crit_edge:   ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit227

if.else.i225:                                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %29 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit227

il_get_debug_level.exit227:                       ; preds = %if.else.i225, %do.body36.il_get_debug_level.exit227_crit_edge
  %retval.0.i226 = phi i32 [ %29, %if.else.i225 ], [ %28, %do.body36.il_get_debug_level.exit227_crit_edge ]
  %and38 = and i32 %retval.0.i226, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %il_get_debug_level.exit227.if.end53_crit_edge, label %do.end43

il_get_debug_level.exit227.if.end53_crit_edge:    ; preds = %il_get_debug_level.exit227
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

do.end43:                                         ; preds = %il_get_debug_level.exit227
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %il_r to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %il_r, align 8
  %wiphy45 = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy45, align 8
  %dev46 = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.169) #16
  br label %if.end53

if.end53:                                         ; preds = %do.end43, %il_get_debug_level.exit227.if.end53_crit_edge, %land.lhs.true33.if.end53_crit_edge
  %last_txrate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 28
  %34 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_txrate_idx, align 4
  %last_rate_n_flags = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 29
  %36 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %last_rate_n_flags, align 8
  %and54 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end53
  %sub57 = add i32 %35, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub57)
  %cmp58 = icmp sgt i32 %sub57, 0
  %sub60 = add i32 %35, -5
  %spec.select = select i1 %cmp58, i32 %sub60, i32 0
  %38 = and i32 %37, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp64.not = icmp eq i32 %38, 0
  %add67 = add i32 %spec.select, 8
  %rate_idx.0 = select i1 %cmp64.not, i32 %spec.select, i32 %add67
  %flags = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load = load i16, ptr %flags, align 1
  %bf.clear = and i16 %bf.load, -2048
  %bf.set = or i16 %bf.clear, 8
  store i16 %bf.set, ptr %flags, align 1
  %40 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_rate_n_flags, align 8
  %and70 = and i32 %41, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then56.if.end83_crit_edge, label %if.then72

if.then56.if.end83_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then72:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set82 = or i16 %bf.clear, 136
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %bf.set82, ptr %flags, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then72, %if.then56.if.end83_crit_edge
  %43 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %last_rate_n_flags, align 8
  %and85 = and i32 %44, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end83.if.end100_crit_edge, label %if.then87

if.end83.if.end100_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load91 = load i16, ptr %flags, align 1
  %bf.set99 = or i16 %bf.load91, 64
  store i16 %bf.set99, ptr %flags, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then87, %if.end83.if.end100_crit_edge
  %46 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %last_rate_n_flags, align 8
  %and102 = and i32 %47, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end100.if.end117_crit_edge, label %if.then104

if.end100.if.end117_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %bf.load108 = load i16, ptr %flags, align 1
  %bf.set116 = or i16 %bf.load108, 32
  store i16 %bf.set116, ptr %flags, align 1
  br label %if.end117

if.end117:                                        ; preds = %if.then104, %if.end100.if.end117_crit_edge
  %49 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_rate_n_flags, align 8
  %and119 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end117.if.end164_crit_edge, label %if.then121

if.end117.if.end164_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load125 = load i16, ptr %flags, align 1
  %bf.set133 = or i16 %bf.load125, 16
  store i16 %bf.set133, ptr %flags, align 1
  br label %if.end164

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %35)
  %52 = icmp ugt i32 %35, 11
  br i1 %52, label %if.else.if.then147_crit_edge, label %lor.lhs.false140

if.else.if.then147_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then147

lor.lhs.false140:                                 ; preds = %if.else
  %53 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp142 = icmp eq i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp145 = icmp ult i32 %35, 4
  %or.cond220 = select i1 %cmp142, i1 %cmp145, i1 false
  br i1 %or.cond220, label %lor.lhs.false140.if.then147_crit_edge, label %if.else150

lor.lhs.false140.if.then147_crit_edge:            ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then147

if.then147:                                       ; preds = %lor.lhs.false140.if.then147_crit_edge, %if.else.if.then147_crit_edge
  %n_bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %n_bitrates.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_bitrates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp46.i = icmp sgt i32 %56, 0
  br i1 %cmp46.i, label %for.body.lr.ph.i, label %if.then147.land.end.i_crit_edge

if.then147.land.end.i_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

for.body.lr.ph.i:                                 ; preds = %if.then147
  %cmp.i.i = icmp eq ptr %sta, null
  br i1 %cmp.i.i, label %for.body.lr.ph.i.if.then.i.split_crit_edge, label %for.body.lr.ph.i.split

for.body.lr.ph.i.if.then.i.split_crit_edge:       ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.split

for.body.lr.ph.i.split:                           ; preds = %for.body.lr.ph.i
  %57 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %band, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i.split
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i.split ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %61 = shl nuw i32 1, %i.047.i
  %62 = and i32 %60, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i228 = icmp eq i32 %62, 0
  br i1 %tobool.not.i228, label %for.inc.i, label %for.body.i.if.then.i.split_crit_edge

for.body.i.if.then.i.split_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.split

if.then.i.split:                                  ; preds = %for.body.i.if.then.i.split_crit_edge, %for.body.lr.ph.i.if.then.i.split_crit_edge
  %i.047.lcssa.i.split = phi i32 [ 0, %for.body.lr.ph.i.if.then.i.split_crit_edge ], [ %i.047.i, %for.body.i.if.then.i.split_crit_edge ]
  %sext = shl i32 %i.047.lcssa.i.split, 24
  %phi.cast = ashr exact i32 %sext, 24
  br label %if.end157

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %56
  br i1 %exitcond.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.then147.land.end.i_crit_edge
  %.b43.i = load i1, ptr @rate_lowest_index.__already_done, align 1
  br i1 %.b43.i, label %land.end.i.if.end157_crit_edge, label %if.then7.i, !prof !399

land.end.i.if.end157_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.then7.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rate_lowest_index.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 6355, i32 noundef 9, ptr noundef null) #13
  br label %if.end157

if.else150:                                       ; preds = %lor.lhs.false140
  call void @__sanitizer_cov_trace_pc() #15
  %sub155 = add nsw i32 %35, -4
  %spec.select221 = select i1 %cmp142, i32 %sub155, i32 %35
  br label %if.end157

if.end157:                                        ; preds = %if.else150, %if.then7.i, %land.end.i.if.end157_crit_edge, %if.then.i.split
  %rate_idx.1 = phi i32 [ %spec.select221, %if.else150 ], [ %phi.cast, %if.then.i.split ], [ 0, %if.then7.i ], [ 0, %land.end.i.if.end157_crit_edge ]
  %flags160 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %63 = ptrtoint ptr %flags160 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load161 = load i16, ptr %flags160, align 1
  %bf.clear162 = and i16 %bf.load161, -2048
  store i16 %bf.clear162, ptr %flags160, align 1
  br label %if.end164

if.end164:                                        ; preds = %if.end157, %if.then121, %if.end117.if.end164_crit_edge
  %rate_idx.2 = phi i32 [ %rate_idx.0, %if.then121 ], [ %rate_idx.0, %if.end117.if.end164_crit_edge ], [ %rate_idx.1, %if.end157 ]
  %conv165 = trunc i32 %rate_idx.2 to i8
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv165, ptr %64, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %66 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load170 = load i16, ptr %count, align 1
  %bf.clear171 = and i16 %bf.load170, 2047
  %bf.set172 = or i16 %bf.clear171, 2048
  store i16 %bf.set172, ptr %count, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end164, %do.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_rs_add_debugfs(ptr nocapture noundef readnone %il, ptr noundef %il_sta, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.172, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %il_sta, ptr noundef nonnull @rs_sta_dbgfs_scale_table_ops) #13
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.173, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %il_sta, ptr noundef nonnull @rs_sta_dbgfs_stats_table_ops) #13
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.174, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %il_sta, ptr noundef nonnull @rs_sta_dbgfs_rate_scale_data_ops) #13
  %tx_agg_tid_en = getelementptr inbounds %struct.il_lq_sta, ptr %il_sta, i32 0, i32 25
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.175, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %tx_agg_tid_en) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_stay_in_table(ptr nocapture noundef %lq_sta, i1 noundef zeroext %force_search) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 27
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 8
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %conv = zext i8 %3 to i32
  %stay_in_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 2
  %4 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end71_crit_edge, label %if.then

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.then:                                          ; preds = %entry
  %flush_timer = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 11
  %6 = ptrtoint ptr %flush_timer to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flush_timer, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool2.not = icmp eq i64 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %8 = trunc i64 %7 to i32
  %conv5 = add i32 %8, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %conv5, %9
  %sub.lobit = lshr i32 %sub, 31
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %flush_interval_passed.0 = phi i32 [ %sub.lobit, %if.then3 ], [ 0, %if.then.if.end_crit_edge ]
  br i1 %force_search, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %total_failed = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 9
  %10 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_failed, align 8
  %max_failure_limit = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 6
  %12 = ptrtoint ptr %max_failure_limit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_failure_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp ugt i32 %11, %13
  br i1 %cmp9, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false11

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %total_success = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 10
  %14 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_success, align 4
  %max_success_limit = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 7
  %16 = ptrtoint ptr %max_success_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_success_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp12 = icmp ugt i32 %15, %17
  br i1 %cmp12, label %lor.lhs.false11.do.body_crit_edge, label %lor.lhs.false14

lor.lhs.false11.do.body_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

lor.lhs.false14:                                  ; preds = %lor.lhs.false11
  %search_better_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %18 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp ne i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush_interval_passed.0)
  %tobool19.not = icmp eq i32 %flush_interval_passed.0, 0
  %20 = select i1 %tobool15.not, i1 true, i1 %tobool2.not
  %or.cond114 = select i1 %20, i1 true, i1 %tobool19.not
  br i1 %or.cond114, label %if.else, label %lor.lhs.false14.do.body_crit_edge

lor.lhs.false14.do.body_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false14.do.body_crit_edge, %lor.lhs.false11.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %21 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %23 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.else.i ], [ %22, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %il_get_debug_level.exit.do.end28_crit_edge, label %do.end

il_get_debug_level.exit.do.end28_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  %total_failed24 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 9
  %28 = ptrtoint ptr %total_failed24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_failed24, align 8
  %total_success25 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 10
  %30 = ptrtoint ptr %total_success25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total_success25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %29, i32 noundef %31, i32 noundef %flush_interval_passed.0) #16
  br label %do.end28

do.end28:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end28_crit_edge
  %32 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stay_in_tbl, align 2
  %total_failed30 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 9
  %33 = call ptr @memset(ptr %total_failed30, i32 0, i32 16)
  br label %if.end57

if.else:                                          ; preds = %lor.lhs.false14
  %table_count = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 8
  %34 = ptrtoint ptr %table_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %table_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %table_count, align 4
  %table_count_limit = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 5
  %36 = ptrtoint ptr %table_count_limit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %table_count_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %37)
  %cmp34.not = icmp ult i32 %inc, %37
  br i1 %cmp34.not, label %if.else.if.end57_crit_edge, label %if.then36

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then36:                                        ; preds = %if.else
  %38 = ptrtoint ptr %table_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %table_count, align 4
  %debug_level.i104 = getelementptr inbounds %struct.il_priv, ptr %1, i32 0, i32 114
  %39 = ptrtoint ptr %debug_level.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_level.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i105 = icmp eq i32 %40, 0
  br i1 %tobool.not.i105, label %if.else.i106, label %if.then36.il_get_debug_level.exit108_crit_edge

if.then36.il_get_debug_level.exit108_crit_edge:   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit108

if.else.i106:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %41 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit108

il_get_debug_level.exit108:                       ; preds = %if.else.i106, %if.then36.il_get_debug_level.exit108_crit_edge
  %retval.0.i107 = phi i32 [ %41, %if.else.i106 ], [ %40, %if.then36.il_get_debug_level.exit108_crit_edge ]
  %and40 = and i32 %retval.0.i107, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %il_get_debug_level.exit108.for.body.preheader_crit_edge, label %do.end45

il_get_debug_level.exit108.for.body.preheader_crit_edge: ; preds = %il_get_debug_level.exit108
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.preheader

do.end45:                                         ; preds = %il_get_debug_level.exit108
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %wiphy47 = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy47, align 8
  %dev48 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61) #16
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end45, %il_get_debug_level.exit108.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0115 = phi i32 [ %inc55, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx54 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %arrayidx54, align 8
  %success_counter.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115, i32 1
  %47 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115, i32 2
  %48 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115, i32 3
  %49 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115, i32 4
  %50 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.0115, i32 5
  %51 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %stamp.i, align 8
  %inc55 = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc55, 13
  br i1 %exitcond.not, label %for.body.if.end57_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.if.end57_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.end57:                                         ; preds = %for.body.if.end57_crit_edge, %if.else.if.end57_crit_edge, %do.end28
  %52 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool59.not = icmp eq i8 %53, 0
  br i1 %tobool59.not, label %if.end57.for.body64_crit_edge, label %if.end57.if.end71_crit_edge

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.end57.for.body64_crit_edge:                    ; preds = %if.end57
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end57.for.body64_crit_edge
  %i.1116 = phi i32 [ %inc68, %for.body64.for.body64_crit_edge ], [ 0, %if.end57.for.body64_crit_edge ]
  %arrayidx66 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116
  %54 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %arrayidx66, align 8
  %success_counter.i109 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116, i32 1
  %55 = ptrtoint ptr %success_counter.i109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %success_counter.i109, align 8
  %success_ratio.i110 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116, i32 2
  %56 = ptrtoint ptr %success_ratio.i110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %success_ratio.i110, align 4
  %counter.i111 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116, i32 3
  %57 = ptrtoint ptr %counter.i111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %counter.i111, align 8
  %average_tpt.i112 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116, i32 4
  %58 = ptrtoint ptr %average_tpt.i112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %average_tpt.i112, align 4
  %stamp.i113 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %conv, i32 9, i32 %i.1116, i32 5
  %59 = ptrtoint ptr %stamp.i113 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %stamp.i113, align 8
  %inc68 = add nuw nsw i32 %i.1116, 1
  %exitcond117.not = icmp eq i32 %inc68, 13
  br i1 %exitcond117.not, label %for.body64.if.end71_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body64

for.body64.if.end71_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end71

if.end71:                                         ; preds = %for.body64.if.end71_crit_edge, %if.end57.if.end71_crit_edge, %entry.if.end71_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_collect_tx_data(ptr nocapture noundef %tbl, i32 noundef %scale_idx, i32 noundef %attempts, i32 noundef %successes) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %scale_idx)
  %0 = icmp ugt i32 %scale_idx, 12
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx
  %expected_tpt.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %1 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %expected_tpt.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.il4965_get_expected_tpt.exit_crit_edge, label %if.then.i

if.end.il4965_get_expected_tpt.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_get_expected_tpt.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr i32, ptr %2, i32 %scale_idx
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  br label %il4965_get_expected_tpt.exit

il4965_get_expected_tpt.exit:                     ; preds = %if.then.i, %if.end.il4965_get_expected_tpt.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %if.end.il4965_get_expected_tpt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attempts)
  %cmp33 = icmp sgt i32 %attempts, 0
  br i1 %cmp33, label %while.body.lr.ph, label %il4965_get_expected_tpt.exit.while.end_crit_edge

il4965_get_expected_tpt.exit.while.end_crit_edge: ; preds = %il4965_get_expected_tpt.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %il4965_get_expected_tpt.exit
  %counter = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 3
  %success_counter = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 1
  %5 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %counter.promoted = load i32, ptr %counter, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %arrayidx.promoted = load i64, ptr %arrayidx, align 8
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i64 [ %arrayidx.promoted, %while.body.lr.ph ], [ %15, %if.end20.while.body_crit_edge ]
  %8 = phi i32 [ %counter.promoted, %while.body.lr.ph ], [ %inc, %if.end20.while.body_crit_edge ]
  %successes.addr.05 = phi i32 [ %successes, %while.body.lr.ph ], [ %successes.addr.1, %if.end20.while.body_crit_edge ]
  %attempts.addr.04 = phi i32 [ %attempts, %while.body.lr.ph ], [ %dec21, %if.end20.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %8)
  %cmp4 = icmp sgt i32 %8, 61
  br i1 %cmp4, label %if.then5, label %while.body.if.end11_crit_edge

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then5:                                         ; preds = %while.body
  %and = and i64 %7, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then5.if.end11_crit_edge, label %if.then7

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %and9 = and i64 %7, -2305843009213693953
  %9 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %success_counter, align 8
  %dec = add i32 %10, -1
  store i32 %dec, ptr %success_counter, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5.if.end11_crit_edge, %while.body.if.end11_crit_edge
  %11 = phi i64 [ %7, %if.then5.if.end11_crit_edge ], [ %and9, %if.then7 ], [ %7, %while.body.if.end11_crit_edge ]
  %12 = phi i32 [ 61, %if.then5.if.end11_crit_edge ], [ 61, %if.then7 ], [ %8, %while.body.if.end11_crit_edge ]
  %inc = add nsw i32 %12, 1
  %shl = shl i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %successes.addr.05)
  %cmp14 = icmp sgt i32 %successes.addr.05, 0
  br i1 %cmp14, label %if.then15, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %success_counter, align 8
  %inc17 = add i32 %14, 1
  store i32 %inc17, ptr %success_counter, align 8
  %or = or i64 %shl, 1
  %dec19 = add nsw i32 %successes.addr.05, -1
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end11.if.end20_crit_edge
  %15 = phi i64 [ %or, %if.then15 ], [ %shl, %if.end11.if.end20_crit_edge ]
  %successes.addr.1 = phi i32 [ %dec19, %if.then15 ], [ 0, %if.end11.if.end20_crit_edge ]
  %dec21 = add nsw i32 %attempts.addr.04, -1
  %cmp3 = icmp sgt i32 %attempts.addr.04, 1
  br i1 %cmp3, label %if.end20.while.body_crit_edge, label %while.cond.while.end_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %counter, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %15, ptr %arrayidx, align 8
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %il4965_get_expected_tpt.exit.while.end_crit_edge
  %counter22 = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 3
  %18 = ptrtoint ptr %counter22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %counter22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp23 = icmp sgt i32 %19, 0
  br i1 %cmp23, label %if.then24, label %while.end.if.end29_crit_edge

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %success_counter25 = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 1
  %20 = ptrtoint ptr %success_counter25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %success_counter25, align 8
  %mul26 = mul i32 %21, 12800
  %div = sdiv i32 %mul26, %19
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %while.end.if.end29_crit_edge
  %.sink = phi i32 [ %div, %if.then24 ], [ -1, %while.end.if.end29_crit_edge ]
  %22 = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %22, align 4
  %24 = ptrtoint ptr %counter22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %counter22, align 8
  %success_counter31 = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 1
  %26 = ptrtoint ptr %success_counter31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %success_counter31, align 8
  %sub = sub i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp32 = icmp sgt i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp35 = icmp sgt i32 %27, 7
  %or.cond1 = or i1 %cmp35, %cmp32
  br i1 %or.cond1, label %if.then36, label %if.end29.if.end42_crit_edge

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %22, align 4
  %mul38 = mul i32 %29, %retval.0.i
  %add = add i32 %mul38, 64
  %div39 = sdiv i32 %add, 128
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.end29.if.end42_crit_edge
  %.sink6 = phi i32 [ %div39, %if.then36 ], [ -1, %if.end29.if.end42_crit_edge ]
  %30 = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink6, ptr %30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %stamp = getelementptr %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 9, i32 %scale_idx, i32 5
  %33 = ptrtoint ptr %stamp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %stamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_rate_scale_perform(ptr noundef %il, ptr nocapture noundef readonly %skb, ptr noundef %sta, ptr noundef %lq_sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %il, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end7_crit_edge, label %do.end

il_get_debug_level.exit.do.end7_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end7_crit_edge
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 2
  %11 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %11)
  %cmp.i = icmp eq i16 %11, 2048
  br i1 %cmp.i, label %lor.lhs.false, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end7
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i, align 8
  %and9 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %band = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 15
  %14 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %band, align 4
  %arrayidx = getelementptr [6 x i32], ptr %sta, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %supp_rates13 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 16
  %18 = ptrtoint ptr %supp_rates13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %supp_rates13, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %19) #13
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %3, align 2
  %22 = and i16 %21, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %22)
  %cmp.i.i = icmp eq i16 %22, -30720
  br i1 %cmp.i.i, label %if.then.i, label %if.end12.if.else31_crit_edge

if.end12.if.else31_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

if.then.i:                                        ; preds = %if.end12
  %23 = and i16 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp.i.i.i = icmp eq i16 %23, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %3, i32 %retval.0.v.i.i
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %retval.0.i.i, align 1
  %26 = and i8 %25, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %cmp.i913 = icmp ugt i8 %26, 7
  br i1 %cmp.i913, label %if.then.i.if.else31_crit_edge, label %if.end8.i, !prof !401

if.then.i.if.else31_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

if.end8.i:                                        ; preds = %if.then.i
  %conv4.i = zext i8 %26 to i32
  %arrayidx9.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i
  %rem.i = urem i32 %call.i, 5
  %sub.i = sub i32 %call.i, %rem.i
  %queue_count.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 3
  %27 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool10.not.i = icmp eq i8 %28, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %total.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 2
  %29 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %total.i, align 4
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i, ptr %arrayidx9.i, align 4
  %31 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %queue_count.i, align 4
  %head.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 4
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %head.i, align 1
  %packet_count.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 1
  %33 = ptrtoint ptr %packet_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %packet_count.i, align 4
  br label %if.else31

if.end14.i:                                       ; preds = %if.end8.i
  %34 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx9.i, align 4
  %cond.i = sub i32 %sub.i, %35
  %div.i = udiv i32 %cond.i, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.i)
  %cmp22.i = icmp ugt i32 %cond.i, 999
  br i1 %cmp22.i, label %land.rhs.lr.ph.i.i, label %if.end14.i.if.end25.i_crit_edge

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end14.i
  %sub.i.i = add i32 %sub.i, -950
  %head.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 4
  %total.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %add.i83.i = phi i32 [ %add.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %35, %land.rhs.lr.ph.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i83.i, i32 %sub.i.i)
  %cmp.i82.i = icmp ult i32 %add.i83.i, %sub.i.i
  br i1 %cmp.i82.i, label %while.body.i.i, label %land.rhs.i.i.if.end25.i_crit_edge

land.rhs.i.i.if.end25.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %head.i.i, align 1
  %idxprom.i.i = zext i8 %37 to i32
  %arrayidx.i.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 1, i32 %idxprom.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %40 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %total.i.i, align 4
  %sub2.i.i = sub i32 %41, %39
  store i32 %sub2.i.i, ptr %total.i.i, align 4
  store i32 0, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %add.i83.i, 50
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i.i, ptr %arrayidx9.i, align 4
  %43 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %queue_count.i, align 4
  %dec.i.i = add i8 %44, -1
  store i8 %dec.i.i, ptr %queue_count.i, align 4
  %45 = load i8, ptr %head.i.i, align 1
  %inc.i.i = add i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %inc.i.i)
  %cmp12.i.i = icmp ugt i8 %inc.i.i, 19
  %spec.select.i.i = select i1 %cmp12.i.i, i8 0, i8 %inc.i.i
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.select.i.i, ptr %head.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end25.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

while.body.i.i.if.end25.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.end25.i:                                       ; preds = %while.body.i.i.if.end25.i_crit_edge, %land.rhs.i.i.if.end25.i_crit_edge, %if.end14.i.if.end25.i_crit_edge
  %head26.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 4
  %47 = ptrtoint ptr %head26.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %head26.i, align 1
  %conv27.i = zext i8 %48 to i32
  %add28.i = add nuw nsw i32 %div.i, %conv27.i
  %rem29.i = urem i32 %add28.i, 20
  %arrayidx31.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 1, i32 %rem29.i
  %49 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx31.i, align 4
  %add32.i = add i32 %50, 1
  store i32 %add32.i, ptr %arrayidx31.i, align 4
  %total35.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 24, i32 %conv4.i, i32 2
  %51 = ptrtoint ptr %total35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total35.i, align 4
  %add36.i = add i32 %52, 1
  store i32 %add36.i, ptr %total35.i, align 4
  %53 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %queue_count.i, align 4
  %conv40.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem29.i, i32 %conv40.i)
  %cmp41.not.i = icmp ult i32 %rem29.i, %conv40.i
  br i1 %cmp41.not.i, label %if.end25.i.il4965_rs_tl_add_packet.exit_crit_edge, label %if.then43.i

if.end25.i.il4965_rs_tl_add_packet.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_tl_add_packet.exit

if.then43.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %55 = trunc i32 %rem29.i to i8
  %conv45.i = add nuw nsw i8 %55, 1
  %56 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv45.i, ptr %queue_count.i, align 4
  br label %il4965_rs_tl_add_packet.exit

il4965_rs_tl_add_packet.exit:                     ; preds = %if.then43.i, %if.end25.i.il4965_rs_tl_add_packet.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %26)
  %cmp.not = icmp eq i8 %26, 9
  br i1 %cmp.not, label %il4965_rs_tl_add_packet.exit.if.else31_crit_edge, label %land.lhs.true

il4965_rs_tl_add_packet.exit.if.else31_crit_edge: ; preds = %il4965_rs_tl_add_packet.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

land.lhs.true:                                    ; preds = %il4965_rs_tl_add_packet.exit
  %tx_agg_tid_en = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 25
  %57 = ptrtoint ptr %tx_agg_tid_en to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_agg_tid_en, align 8
  %conv16 = zext i8 %58 to i32
  %shl = shl nuw i32 1, %conv4.i
  %and18 = and i32 %shl, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.if.else31_crit_edge, label %if.then20

land.lhs.true.if.else31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else31

if.then20:                                        ; preds = %land.lhs.true
  %lq = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22
  %59 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lq, align 4
  %idxprom = zext i8 %60 to i32
  %state = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %idxprom, i32 1, i32 %conv4.i, i32 2, i32 6
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp26 = icmp eq i8 %62, 0
  %is_agg = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %is_agg, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %is_agg to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %is_agg, align 4
  br label %if.end33

if.else31:                                        ; preds = %land.lhs.true.if.else31_crit_edge, %il4965_rs_tl_add_packet.exit.if.else31_crit_edge, %if.then11.i, %if.then.i.if.else31_crit_edge, %if.end12.if.else31_crit_edge
  %cmp.not983 = phi i1 [ false, %land.lhs.true.if.else31_crit_edge ], [ true, %il4965_rs_tl_add_packet.exit.if.else31_crit_edge ], [ true, %if.then11.i ], [ true, %if.end12.if.else31_crit_edge ], [ true, %if.then.i.if.else31_crit_edge ]
  %conv981 = phi i32 [ %conv4.i, %land.lhs.true.if.else31_crit_edge ], [ 9, %il4965_rs_tl_add_packet.exit.if.else31_crit_edge ], [ 9, %if.then11.i ], [ 9, %if.end12.if.else31_crit_edge ], [ 9, %if.then.i.if.else31_crit_edge ]
  %retval.0.i914979 = phi i8 [ %26, %land.lhs.true.if.else31_crit_edge ], [ 9, %il4965_rs_tl_add_packet.exit.if.else31_crit_edge ], [ 9, %if.then11.i ], [ 9, %if.end12.if.else31_crit_edge ], [ 9, %if.then.i.if.else31_crit_edge ]
  %is_agg32 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %65 = ptrtoint ptr %is_agg32 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %is_agg32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.else, %if.then28
  %cmp.not982 = phi i1 [ false, %if.then28 ], [ false, %if.else ], [ %cmp.not983, %if.else31 ]
  %conv980 = phi i32 [ %conv4.i, %if.then28 ], [ %conv4.i, %if.else ], [ %conv981, %if.else31 ]
  %retval.0.i914978 = phi i8 [ %26, %if.then28 ], [ %26, %if.else ], [ %retval.0.i914979, %if.else31 ]
  %search_better_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %66 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool34.not = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lq_sta, align 8
  %sub = sub i8 1, %69
  %active_tbl.0 = select i1 %tobool34.not, i8 %69, i8 %sub
  %idxprom42 = zext i8 %active_tbl.0 to i32
  %arrayidx43 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42
  %70 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx43, align 8
  %.off = add i32 %71, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end33.if.end56_crit_edge, label %if.else52

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.else52:                                        ; preds = %if.end33
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %72 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ht_cap.i, align 4
  %74 = and i16 %73, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i915 = icmp eq i16 %74, 0
  br i1 %tobool.not.i915, label %if.else52.il4965_rs_use_green.exit_crit_edge, label %land.rhs.i

if.else52.il4965_rs_use_green.exit_crit_edge:     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_use_green.exit

land.rhs.i:                                       ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #15
  %non_gf_sta_present.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 55, i32 2
  %75 = ptrtoint ptr %non_gf_sta_present.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %non_gf_sta_present.i, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool1.not.i = icmp eq i8 %76, 0
  br label %il4965_rs_use_green.exit

il4965_rs_use_green.exit:                         ; preds = %land.rhs.i, %if.else52.il4965_rs_use_green.exit_crit_edge
  %77 = phi i1 [ false, %if.else52.il4965_rs_use_green.exit_crit_edge ], [ %tobool1.not.i, %land.rhs.i ]
  %conv54 = zext i1 %77 to i8
  br label %if.end56

if.end56:                                         ; preds = %il4965_rs_use_green.exit, %if.end33.if.end56_crit_edge
  %conv54.sink = phi i8 [ %conv54, %il4965_rs_use_green.exit ], [ 0, %if.end33.if.end56_crit_edge ]
  %is_green55 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %78 = ptrtoint ptr %is_green55 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv54.sink, ptr %is_green55, align 1
  %last_txrate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 28
  %79 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %last_txrate_idx, align 4
  %81 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i917 = icmp eq i32 %82, 0
  br i1 %tobool.not.i917, label %if.else.i918, label %if.end56.il_get_debug_level.exit920_crit_edge

if.end56.il_get_debug_level.exit920_crit_edge:    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit920

if.else.i918:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %83 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit920

il_get_debug_level.exit920:                       ; preds = %if.else.i918, %if.end56.il_get_debug_level.exit920_crit_edge
  %retval.0.i919 = phi i32 [ %83, %if.else.i918 ], [ %82, %if.end56.il_get_debug_level.exit920_crit_edge ]
  %and60 = and i32 %retval.0.i919, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %il_get_debug_level.exit920.do.end72_crit_edge, label %do.end65

il_get_debug_level.exit920.do.end72_crit_edge:    ; preds = %il_get_debug_level.exit920
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end72

do.end65:                                         ; preds = %il_get_debug_level.exit920
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %il, align 8
  %wiphy67 = getelementptr inbounds %struct.ieee80211_hw, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %wiphy67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wiphy67, align 8
  %dev68 = getelementptr inbounds %struct.wiphy, ptr %87, i32 0, i32 56
  %88 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %80, i32 noundef %89) #16
  br label %do.end72

do.end72:                                         ; preds = %do.end65, %il_get_debug_level.exit920.do.end72_crit_edge
  %90 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx43, align 8
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %91, label %if.else4.i [
    i32 1, label %do.end72.if.then.i921_crit_edge
    i32 2, label %do.end72.if.then.i921_crit_edge1055
    i32 3, label %if.then3.i
  ]

do.end72.if.then.i921_crit_edge1055:              ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i921

do.end72.if.then.i921_crit_edge:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i921

if.then.i921:                                     ; preds = %do.end72.if.then.i921_crit_edge, %do.end72.if.then.i921_crit_edge1055
  %active_legacy_rate.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 17
  br label %il4965_rs_get_supported_rates.exit

if.then3.i:                                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  %active_siso_rate.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 18
  br label %il4965_rs_get_supported_rates.exit

if.else4.i:                                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #15
  %active_mimo2_rate.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 19
  br label %il4965_rs_get_supported_rates.exit

il4965_rs_get_supported_rates.exit:               ; preds = %if.else4.i, %if.then3.i, %if.then.i921
  %retval.0.in.i = phi ptr [ %active_legacy_rate.i, %if.then.i921 ], [ %active_siso_rate.i, %if.then3.i ], [ %active_mimo2_rate.i, %if.else4.i ]
  %93 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %retval.0.i922 = load i16, ptr %retval.0.in.i, align 2
  %94 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i924 = icmp eq i32 %95, 0
  br i1 %tobool.not.i924, label %if.else.i925, label %il4965_rs_get_supported_rates.exit.il_get_debug_level.exit927_crit_edge

il4965_rs_get_supported_rates.exit.il_get_debug_level.exit927_crit_edge: ; preds = %il4965_rs_get_supported_rates.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit927

if.else.i925:                                     ; preds = %il4965_rs_get_supported_rates.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %96 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit927

il_get_debug_level.exit927:                       ; preds = %if.else.i925, %il4965_rs_get_supported_rates.exit.il_get_debug_level.exit927_crit_edge
  %retval.0.i926 = phi i32 [ %96, %if.else.i925 ], [ %95, %il4965_rs_get_supported_rates.exit.il_get_debug_level.exit927_crit_edge ]
  %and77 = and i32 %retval.0.i926, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %il_get_debug_level.exit927.do.end89_crit_edge, label %do.end82

il_get_debug_level.exit927.do.end89_crit_edge:    ; preds = %il_get_debug_level.exit927
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end89

do.end82:                                         ; preds = %il_get_debug_level.exit927
  call void @__sanitizer_cov_trace_pc() #15
  %97 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %il, align 8
  %wiphy84 = getelementptr inbounds %struct.ieee80211_hw, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %wiphy84 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wiphy84, align 8
  %dev85 = getelementptr inbounds %struct.wiphy, ptr %100, i32 0, i32 56
  %conv86 = zext i16 %retval.0.i922 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i32 noundef %conv86) #16
  br label %do.end89

do.end89:                                         ; preds = %do.end82, %il_get_debug_level.exit927.do.end89_crit_edge
  %101 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx43, align 8
  %.off905 = add i32 %102, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off905)
  %switch906 = icmp ult i32 %.off905, 2
  br i1 %switch906, label %if.then97, label %do.end89.if.end114_crit_edge

do.end89.if.end114_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then97:                                        ; preds = %do.end89
  %103 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp99 = icmp eq i32 %104, 1
  %105 = ptrtoint ptr %supp_rates13 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %supp_rates13, align 8
  %.tr = trunc i32 %106 to i16
  br i1 %cmp99, label %if.then101, label %if.else107

if.then101:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  %107 = shl i16 %.tr, 4
  %conv106 = and i16 %107, %retval.0.i922
  br label %if.end114

if.else107:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #15
  %conv111 = and i16 %retval.0.i922, %.tr
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then101, %do.end89.if.end114_crit_edge
  %rate_scale_idx_msk.0 = phi i16 [ %conv106, %if.then101 ], [ %conv111, %if.else107 ], [ %retval.0.i922, %do.end89.if.end114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rate_scale_idx_msk.0)
  %tobool115.not = icmp eq i16 %rate_scale_idx_msk.0, 0
  %spec.select = select i1 %tobool115.not, i16 %retval.0.i922, i16 %rate_scale_idx_msk.0
  %shl118 = shl nuw i32 1, %80
  %conv119 = zext i16 %spec.select to i32
  %and120 = and i32 %shl118, %conv119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.end125, label %if.end138

do.end125:                                        ; preds = %if.end114
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %108 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pci_dev, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.74) #16
  %110 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool128.not = icmp eq i8 %111, 0
  br i1 %tobool128.not, label %do.end125.cleanup_crit_edge, label %if.then129

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then129:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx43, align 8
  %113 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %search_better_tbl, align 1
  %114 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %lq_sta, align 8
  %idxprom134 = zext i8 %115 to i32
  %arrayidx135 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom134
  %current_rate = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom134, i32 8
  %116 = ptrtoint ptr %current_rate to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %current_rate, align 8
  %call136 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %117)
  tail call fastcc void @il4965_rs_update_rate_tbl(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %arrayidx135, i32 noundef %call136, i8 noundef zeroext %conv54.sink)
  br label %cleanup

if.end138:                                        ; preds = %if.end114
  %expected_tpt = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 7
  %118 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %expected_tpt, align 4
  %tobool139.not = icmp eq ptr %119, null
  br i1 %tobool139.not, label %do.end143, label %if.end146

do.end143:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev144 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %120 = ptrtoint ptr %pci_dev144 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pci_dev144, align 8
  %dev145 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.77) #16
  br label %cleanup

if.end146:                                        ; preds = %if.end138
  %max_rate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 20
  %122 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %max_rate_idx, align 2
  %conv147 = sext i8 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp148.not = icmp ne i8 %123, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv147)
  %cmp153 = icmp sgt i32 %80, %conv147
  %or.cond = select i1 %cmp148.not, i1 %cmp153, i1 false
  br i1 %or.cond, label %if.end146.if.end511_crit_edge, label %if.end160

if.end146.if.end511_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end511

if.end160:                                        ; preds = %if.end146
  %counter = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %80, i32 3
  %124 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %80, i32 1
  %126 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %success_counter, align 8
  %sub163 = sub i32 %125, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub163)
  %cmp164 = icmp ult i32 %sub163, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %127)
  %cmp168 = icmp slt i32 %127, 8
  %or.cond890 = and i1 %cmp168, %cmp164
  br i1 %or.cond890, label %do.body171, label %if.end187

do.body171:                                       ; preds = %if.end160
  %128 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i929 = icmp eq i32 %129, 0
  br i1 %tobool.not.i929, label %if.else.i930, label %do.body171.il_get_debug_level.exit932_crit_edge

do.body171.il_get_debug_level.exit932_crit_edge:  ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit932

if.else.i930:                                     ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %130 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit932

il_get_debug_level.exit932:                       ; preds = %if.else.i930, %do.body171.il_get_debug_level.exit932_crit_edge
  %retval.0.i931 = phi i32 [ %130, %if.else.i930 ], [ %129, %do.body171.il_get_debug_level.exit932_crit_edge ]
  %and173 = and i32 %retval.0.i931, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %il_get_debug_level.exit932.do.end186_crit_edge, label %do.end178

il_get_debug_level.exit932.do.end186_crit_edge:   ; preds = %il_get_debug_level.exit932
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end186

do.end178:                                        ; preds = %il_get_debug_level.exit932
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %il, align 8
  %wiphy180 = getelementptr inbounds %struct.ieee80211_hw, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %wiphy180 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %wiphy180, align 8
  %dev181 = getelementptr inbounds %struct.wiphy, ptr %134, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev181, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.66, i32 noundef %127, i32 noundef %125, i32 noundef %80) #16
  br label %do.end186

do.end186:                                        ; preds = %do.end178, %il_get_debug_level.exit932.do.end186_crit_edge
  %average_tpt = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %80, i32 4
  %135 = ptrtoint ptr %average_tpt to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %average_tpt, align 4
  tail call fastcc void @il4965_rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  br label %out

if.end187:                                        ; preds = %if.end160
  %average_tpt188 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %80, i32 4
  %136 = ptrtoint ptr %average_tpt188 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %average_tpt188, align 4
  %success_ratio = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %80, i32 2
  %138 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %success_ratio, align 4
  %arrayidx190 = getelementptr i32, ptr %119, i32 %80
  %140 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx190, align 4
  %mul = mul i32 %141, %139
  %add = add i32 %mul, 64
  %div = sdiv i32 %add, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %div)
  %cmp191.not = icmp eq i32 %137, %div
  br i1 %cmp191.not, label %if.end187.if.end206_crit_edge, label %do.end196

if.end187.if.end206_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end206

do.end196:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev197 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %142 = ptrtoint ptr %pci_dev197 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pci_dev197, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev198, ptr noundef nonnull @.str.83) #16
  %144 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %success_ratio, align 4
  %146 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %expected_tpt, align 4
  %arrayidx201 = getelementptr i32, ptr %147, i32 %80
  %148 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx201, align 4
  %mul202 = mul i32 %149, %145
  %add203 = add i32 %mul202, 64
  %div204 = sdiv i32 %add203, 128
  %150 = ptrtoint ptr %average_tpt188 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %div204, ptr %average_tpt188, align 4
  br label %if.end206

if.end206:                                        ; preds = %do.end196, %if.end187.if.end206_crit_edge
  %151 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool208.not = icmp eq i8 %152, 0
  br i1 %tobool208.not, label %if.end270, label %if.then209

if.then209:                                       ; preds = %if.end206
  %153 = ptrtoint ptr %average_tpt188 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %average_tpt188, align 4
  %last_tpt = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  %155 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %last_tpt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp211 = icmp sgt i32 %154, %156
  %157 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i934 = icmp eq i32 %158, 0
  br i1 %cmp211, label %do.body214, label %do.body243

do.body214:                                       ; preds = %if.then209
  br i1 %tobool.not.i934, label %if.else.i935, label %do.body214.il_get_debug_level.exit937_crit_edge

do.body214.il_get_debug_level.exit937_crit_edge:  ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit937

if.else.i935:                                     ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %159 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit937

il_get_debug_level.exit937:                       ; preds = %if.else.i935, %do.body214.il_get_debug_level.exit937_crit_edge
  %retval.0.i936 = phi i32 [ %159, %if.else.i935 ], [ %158, %do.body214.il_get_debug_level.exit937_crit_edge ]
  %and216 = and i32 %retval.0.i936, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %il_get_debug_level.exit937.do.end230_crit_edge, label %do.end221

il_get_debug_level.exit937.do.end230_crit_edge:   ; preds = %il_get_debug_level.exit937
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end230

do.end221:                                        ; preds = %il_get_debug_level.exit937
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %il, align 8
  %wiphy223 = getelementptr inbounds %struct.ieee80211_hw, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %wiphy223 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %wiphy223, align 8
  %dev224 = getelementptr inbounds %struct.wiphy, ptr %163, i32 0, i32 56
  %164 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %success_ratio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev224, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.66, i32 noundef %165, i32 noundef %154, i32 noundef %156) #16
  br label %do.end230

do.end230:                                        ; preds = %do.end221, %il_get_debug_level.exit937.do.end230_crit_edge
  %166 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx43, align 8
  %.off907 = add i32 %167, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off907)
  %switch908 = icmp ult i32 %.off907, 2
  br i1 %switch908, label %do.end230.land.lhs.true449.critedge.thread_crit_edge, label %if.then238

do.end230.land.lhs.true449.critedge.thread_crit_edge: ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true449.critedge.thread

if.then238:                                       ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #15
  %enable_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 1
  %168 = ptrtoint ptr %enable_counter to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %enable_counter, align 1
  br label %land.lhs.true449.critedge.thread

do.body243:                                       ; preds = %if.then209
  br i1 %tobool.not.i934, label %if.else.i940, label %do.body243.il_get_debug_level.exit942_crit_edge

do.body243.il_get_debug_level.exit942_crit_edge:  ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit942

if.else.i940:                                     ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %169 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit942

il_get_debug_level.exit942:                       ; preds = %if.else.i940, %do.body243.il_get_debug_level.exit942_crit_edge
  %retval.0.i941 = phi i32 [ %169, %if.else.i940 ], [ %158, %do.body243.il_get_debug_level.exit942_crit_edge ]
  %and245 = and i32 %retval.0.i941, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %il_get_debug_level.exit942.lq_update.thread1011_crit_edge, label %do.end250

il_get_debug_level.exit942.lq_update.thread1011_crit_edge: ; preds = %il_get_debug_level.exit942
  call void @__sanitizer_cov_trace_pc() #15
  br label %lq_update.thread1011

do.end250:                                        ; preds = %il_get_debug_level.exit942
  call void @__sanitizer_cov_trace_pc() #15
  %170 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %il, align 8
  %wiphy252 = getelementptr inbounds %struct.ieee80211_hw, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %wiphy252 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wiphy252, align 8
  %dev253 = getelementptr inbounds %struct.wiphy, ptr %173, i32 0, i32 56
  %174 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %success_ratio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev253, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.66, i32 noundef %175, i32 noundef %154, i32 noundef %156) #16
  br label %lq_update.thread1011

if.end270:                                        ; preds = %if.end206
  %conv271 = trunc i32 %80 to i8
  %176 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx43, align 8
  %call273 = tail call fastcc zeroext i16 @il4965_rs_get_adjacent_rate(ptr noundef %il, i8 noundef zeroext %conv271, i16 noundef zeroext %spec.select, i32 noundef %177)
  %conv274 = zext i16 %call273 to i32
  %and275 = and i32 %conv274, 255
  %178 = lshr i32 %conv274, 8
  %179 = ptrtoint ptr %max_rate_idx to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %max_rate_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp280.not = icmp eq i8 %180, -1
  %conv279 = sext i8 %180 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %conv279)
  %cmp285 = icmp sgt i32 %178, %conv279
  %spec.store.select = select i1 %cmp285, i32 13, i32 %178
  %high.0 = select i1 %cmp280.not, i32 %178, i32 %spec.store.select
  %181 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %success_ratio, align 4
  %183 = ptrtoint ptr %average_tpt188 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %average_tpt188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and275)
  %cmp291.not = icmp eq i32 %and275, 13
  br i1 %cmp291.not, label %if.end270.if.end297_crit_edge, label %if.then293

if.end270.if.end297_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end297

if.then293:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #15
  %average_tpt296 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %and275, i32 4
  %185 = ptrtoint ptr %average_tpt296 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %average_tpt296, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.then293, %if.end270.if.end297_crit_edge
  %low_tpt.0 = phi i32 [ %186, %if.then293 ], [ -1, %if.end270.if.end297_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %high.0)
  %cmp298.not = icmp eq i32 %high.0, 13
  br i1 %cmp298.not, label %if.end297.if.end304_crit_edge, label %if.then300

if.end297.if.end304_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end304

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #15
  %average_tpt303 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom42, i32 9, i32 %high.0, i32 4
  %187 = ptrtoint ptr %average_tpt303 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %average_tpt303, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.then300, %if.end297.if.end304_crit_edge
  %high_tpt.0 = phi i32 [ %188, %if.then300 ], [ -1, %if.end297.if.end304_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %182)
  %cmp305 = icmp slt i32 %182, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp308 = icmp eq i32 %184, 0
  %or.cond891 = select i1 %cmp305, i1 true, i1 %cmp308
  br i1 %or.cond891, label %do.body311, label %if.else325

do.body311:                                       ; preds = %if.end304
  %189 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i944 = icmp eq i32 %190, 0
  br i1 %tobool.not.i944, label %if.else.i945, label %do.body311.il_get_debug_level.exit947_crit_edge

do.body311.il_get_debug_level.exit947_crit_edge:  ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit947

if.else.i945:                                     ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %191 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit947

il_get_debug_level.exit947:                       ; preds = %if.else.i945, %do.body311.il_get_debug_level.exit947_crit_edge
  %retval.0.i946 = phi i32 [ %191, %if.else.i945 ], [ %190, %do.body311.il_get_debug_level.exit947_crit_edge ]
  %and313 = and i32 %retval.0.i946, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %il_get_debug_level.exit947.if.end400_crit_edge, label %il_get_debug_level.exit947.if.end400.sink.split_crit_edge

il_get_debug_level.exit947.if.end400.sink.split_crit_edge: ; preds = %il_get_debug_level.exit947
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end400.sink.split

il_get_debug_level.exit947.if.end400_crit_edge:   ; preds = %il_get_debug_level.exit947
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end400

if.else325:                                       ; preds = %if.end304
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low_tpt.0)
  %cmp326 = icmp eq i32 %low_tpt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %high_tpt.0)
  %cmp329 = icmp eq i32 %high_tpt.0, -1
  %or.cond892 = select i1 %cmp326, i1 %cmp329, i1 false
  br i1 %or.cond892, label %if.then331, label %if.else344

if.then331:                                       ; preds = %if.else325
  %cmp298.not.not = xor i1 %cmp298.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %182)
  %cmp335 = icmp ugt i32 %182, 6399
  %or.cond893 = select i1 %cmp298.not.not, i1 %cmp335, i1 false
  br i1 %or.cond893, label %if.then331.sw.bb423_crit_edge, label %if.then331.do.body429_crit_edge

if.then331.do.body429_crit_edge:                  ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.then331.sw.bb423_crit_edge:                    ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb423

if.else344:                                       ; preds = %if.else325
  %or.cond894 = select i1 %cmp326, i1 true, i1 %cmp329
  %or.cond894.not = xor i1 %or.cond894, true
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %184)
  %cmp351 = icmp slt i32 %low_tpt.0, %184
  %or.cond895 = select i1 %or.cond894.not, i1 %cmp351, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %184)
  %cmp354 = icmp slt i32 %high_tpt.0, %184
  %or.cond896 = select i1 %or.cond895, i1 %cmp354, i1 false
  br i1 %or.cond896, label %if.else344.do.body429_crit_edge, label %if.else357

if.else344.do.body429_crit_edge:                  ; preds = %if.else344
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.else357:                                       ; preds = %if.else344
  br i1 %cmp329, label %if.else369, label %if.then360

if.then360:                                       ; preds = %if.else357
  call void @__sanitizer_cov_trace_cmp4(i32 %high_tpt.0, i32 %184)
  %cmp361 = icmp sgt i32 %high_tpt.0, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %182)
  %cmp364 = icmp ugt i32 %182, 6399
  %or.cond897 = select i1 %cmp361, i1 %cmp364, i1 false
  br i1 %or.cond897, label %if.then360.sw.bb423_crit_edge, label %if.then360.do.body429_crit_edge

if.then360.do.body429_crit_edge:                  ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.then360.sw.bb423_crit_edge:                    ; preds = %if.then360
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb423

if.else369:                                       ; preds = %if.else357
  br i1 %cmp326, label %if.else369.do.body429_crit_edge, label %if.then372

if.else369.do.body429_crit_edge:                  ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.then372:                                       ; preds = %if.else369
  call void @__sanitizer_cov_trace_cmp4(i32 %low_tpt.0, i32 %184)
  %cmp373 = icmp sgt i32 %low_tpt.0, %184
  br i1 %cmp373, label %do.body376, label %if.end417

do.body376:                                       ; preds = %if.then372
  %192 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i949 = icmp eq i32 %193, 0
  br i1 %tobool.not.i949, label %if.else.i950, label %do.body376.il_get_debug_level.exit952_crit_edge

do.body376.il_get_debug_level.exit952_crit_edge:  ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit952

if.else.i950:                                     ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %194 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit952

il_get_debug_level.exit952:                       ; preds = %if.else.i950, %do.body376.il_get_debug_level.exit952_crit_edge
  %retval.0.i951 = phi i32 [ %194, %if.else.i950 ], [ %193, %do.body376.il_get_debug_level.exit952_crit_edge ]
  %and378 = and i32 %retval.0.i951, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %tobool379.not = icmp eq i32 %and378, 0
  br i1 %tobool379.not, label %il_get_debug_level.exit952.if.end400_crit_edge, label %il_get_debug_level.exit952.if.end400.sink.split_crit_edge

il_get_debug_level.exit952.if.end400.sink.split_crit_edge: ; preds = %il_get_debug_level.exit952
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end400.sink.split

il_get_debug_level.exit952.if.end400_crit_edge:   ; preds = %il_get_debug_level.exit952
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end400

if.end400.sink.split:                             ; preds = %il_get_debug_level.exit952.if.end400.sink.split_crit_edge, %il_get_debug_level.exit947.if.end400.sink.split_crit_edge
  %.str.95.sink = phi ptr [ @.str.92, %il_get_debug_level.exit947.if.end400.sink.split_crit_edge ], [ @.str.95, %il_get_debug_level.exit952.if.end400.sink.split_crit_edge ]
  %195 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %il, align 8
  %wiphy385 = getelementptr inbounds %struct.ieee80211_hw, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %wiphy385 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %wiphy385, align 8
  %dev386 = getelementptr inbounds %struct.wiphy, ptr %198, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev386, ptr noundef nonnull %.str.95.sink, ptr noundef nonnull @.str.66) #16
  br label %if.end400

if.end400:                                        ; preds = %if.end400.sink.split, %il_get_debug_level.exit952.if.end400_crit_edge, %il_get_debug_level.exit947.if.end400_crit_edge
  br i1 %cmp291.not, label %if.end400.if.end417.thread_crit_edge, label %land.lhs.true407

if.end400.if.end417.thread_crit_edge:             ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end417.thread

land.lhs.true407:                                 ; preds = %if.end400
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %182)
  %cmp408 = icmp sgt i32 %182, 10880
  br i1 %cmp408, label %land.lhs.true407.do.body429_crit_edge, label %lor.lhs.false410

land.lhs.true407.do.body429_crit_edge:            ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

lor.lhs.false410:                                 ; preds = %land.lhs.true407
  %199 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %expected_tpt, align 4
  %arrayidx412 = getelementptr i32, ptr %200, i32 %and275
  %201 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx412, align 4
  %mul413 = mul i32 %202, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %mul413)
  %cmp414 = icmp sgt i32 %184, %mul413
  br i1 %cmp414, label %lor.lhs.false410.do.body429_crit_edge, label %lor.lhs.false410.if.end417.thread_crit_edge

lor.lhs.false410.if.end417.thread_crit_edge:      ; preds = %lor.lhs.false410
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end417.thread

lor.lhs.false410.do.body429_crit_edge:            ; preds = %lor.lhs.false410
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.end417.thread:                                 ; preds = %lor.lhs.false410.if.end417.thread_crit_edge, %if.end400.if.end417.thread_crit_edge
  %spec.select900 = phi i32 [ %and275, %lor.lhs.false410.if.end417.thread_crit_edge ], [ %80, %if.end400.if.end417.thread_crit_edge ]
  %not.cmp291.not = xor i1 %cmp291.not, true
  br label %do.body429

if.end417:                                        ; preds = %if.then372
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %182)
  %cmp391 = icmp ugt i32 %182, 6399
  br i1 %cmp391, label %if.end417.sw.bb423_crit_edge, label %if.end417.do.body429_crit_edge

if.end417.do.body429_crit_edge:                   ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body429

if.end417.sw.bb423_crit_edge:                     ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb423

sw.bb423:                                         ; preds = %if.end417.sw.bb423_crit_edge, %if.then360.sw.bb423_crit_edge, %if.then331.sw.bb423_crit_edge
  %spec.select902 = select i1 %cmp298.not, i32 %80, i32 %high.0
  %not.cmp298.not = xor i1 %cmp298.not, true
  br label %do.body429

do.body429:                                       ; preds = %sw.bb423, %if.end417.do.body429_crit_edge, %if.end417.thread, %lor.lhs.false410.do.body429_crit_edge, %land.lhs.true407.do.body429_crit_edge, %if.else369.do.body429_crit_edge, %if.then360.do.body429_crit_edge, %if.else344.do.body429_crit_edge, %if.then331.do.body429_crit_edge
  %conv418991 = phi i32 [ 0, %if.end417.do.body429_crit_edge ], [ -1, %if.end417.thread ], [ 1, %sw.bb423 ], [ 0, %land.lhs.true407.do.body429_crit_edge ], [ 0, %lor.lhs.false410.do.body429_crit_edge ], [ 0, %if.else344.do.body429_crit_edge ], [ 0, %if.else369.do.body429_crit_edge ], [ 0, %if.then360.do.body429_crit_edge ], [ 0, %if.then331.do.body429_crit_edge ]
  %idx.1 = phi i32 [ %80, %if.end417.do.body429_crit_edge ], [ %spec.select900, %if.end417.thread ], [ %spec.select902, %sw.bb423 ], [ %80, %land.lhs.true407.do.body429_crit_edge ], [ %80, %lor.lhs.false410.do.body429_crit_edge ], [ %80, %if.else344.do.body429_crit_edge ], [ %80, %if.else369.do.body429_crit_edge ], [ %80, %if.then360.do.body429_crit_edge ], [ %80, %if.then331.do.body429_crit_edge ]
  %update_lq.1.shrunk = phi i1 [ false, %if.end417.do.body429_crit_edge ], [ %not.cmp291.not, %if.end417.thread ], [ %not.cmp298.not, %sw.bb423 ], [ false, %land.lhs.true407.do.body429_crit_edge ], [ false, %lor.lhs.false410.do.body429_crit_edge ], [ false, %if.else344.do.body429_crit_edge ], [ false, %if.else369.do.body429_crit_edge ], [ false, %if.then360.do.body429_crit_edge ], [ false, %if.then331.do.body429_crit_edge ]
  %203 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i954 = icmp eq i32 %204, 0
  br i1 %tobool.not.i954, label %if.else.i955, label %do.body429.il_get_debug_level.exit957_crit_edge

do.body429.il_get_debug_level.exit957_crit_edge:  ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit957

if.else.i955:                                     ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %205 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit957

il_get_debug_level.exit957:                       ; preds = %if.else.i955, %do.body429.il_get_debug_level.exit957_crit_edge
  %retval.0.i956 = phi i32 [ %205, %if.else.i955 ], [ %204, %do.body429.il_get_debug_level.exit957_crit_edge ]
  %and431 = and i32 %retval.0.i956, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and431)
  %tobool432.not = icmp eq i32 %and431, 0
  br i1 %tobool432.not, label %il_get_debug_level.exit957.lq_update_crit_edge, label %do.end436

il_get_debug_level.exit957.lq_update_crit_edge:   ; preds = %il_get_debug_level.exit957
  call void @__sanitizer_cov_trace_pc() #15
  br label %lq_update

do.end436:                                        ; preds = %il_get_debug_level.exit957
  call void @__sanitizer_cov_trace_pc() #15
  %206 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %il, align 8
  %wiphy438 = getelementptr inbounds %struct.ieee80211_hw, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %wiphy438 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %wiphy438, align 8
  %dev439 = getelementptr inbounds %struct.wiphy, ptr %209, i32 0, i32 56
  %210 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev439, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.66, i32 noundef %idx.1, i32 noundef %conv418991, i32 noundef %and275, i32 noundef %high.0, i32 noundef %211) #16
  br label %lq_update

lq_update:                                        ; preds = %do.end436, %il_get_debug_level.exit957.lq_update_crit_edge
  br i1 %update_lq.1.shrunk, label %lq_update.if.end511_crit_edge, label %land.lhs.true451

lq_update.if.end511_crit_edge:                    ; preds = %lq_update
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end511

lq_update.thread1011:                             ; preds = %do.end250, %il_get_debug_level.exit942.lq_update.thread1011_crit_edge
  %212 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %arrayidx43, align 8
  %213 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %lq_sta, align 8
  %idxprom263 = zext i8 %214 to i32
  %arrayidx264 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom263
  %current_rate265 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom263, i32 8
  %215 = ptrtoint ptr %current_rate265 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %current_rate265, align 8
  %call266 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %216)
  %217 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %search_better_tbl, align 1
  br label %if.end511

land.lhs.true449.critedge.thread:                 ; preds = %if.then238, %do.end230.land.lhs.true449.critedge.thread_crit_edge
  %218 = ptrtoint ptr %lq_sta to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %active_tbl.0, ptr %lq_sta, align 8
  %219 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %search_better_tbl, align 1
  tail call fastcc void @il4965_rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  br label %land.lhs.true514

land.lhs.true451:                                 ; preds = %lq_update
  tail call fastcc void @il4965_rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  %stay_in_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 2
  %220 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool452.not = icmp eq i8 %221, 0
  br i1 %tobool452.not, label %land.lhs.true453, label %land.lhs.true451.out_crit_edge

land.lhs.true451.out_crit_edge:                   ; preds = %land.lhs.true451
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true453:                                 ; preds = %land.lhs.true451
  %222 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool455.not = icmp eq i32 %223, 0
  br i1 %tobool455.not, label %land.lhs.true453.out_crit_edge, label %if.then456

land.lhs.true453.out_crit_edge:                   ; preds = %land.lhs.true453
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then456:                                       ; preds = %land.lhs.true453
  %last_tpt457 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  %224 = ptrtoint ptr %last_tpt457 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %184, ptr %last_tpt457, align 4
  %225 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx43, align 8
  %227 = zext i32 %226 to i64
  call void @__sanitizer_cov_trace_switch(i64 %227, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %226, label %if.else473 [
    i32 1, label %if.then456.if.then465_crit_edge
    i32 2, label %if.then456.if.then465_crit_edge1056
    i32 3, label %if.then471
  ]

if.then456.if.then465_crit_edge1056:              ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then465

if.then456.if.then465_crit_edge:                  ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then465

if.then465:                                       ; preds = %if.then456.if.then465_crit_edge, %if.then456.if.then465_crit_edge1056
  tail call fastcc void @il4965_rs_move_legacy_other(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %idx.1)
  br label %if.end476

if.then471:                                       ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @il4965_rs_move_siso_to_other(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %idx.1)
  br label %if.end476

if.else473:                                       ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @il4965_rs_move_mimo2_to_other(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %1, ptr noundef %sta, i32 noundef %idx.1)
  br label %if.end476

if.end476:                                        ; preds = %if.else473, %if.then471, %if.then465
  %228 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %search_better_tbl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool478.not = icmp eq i8 %229, 0
  br i1 %tobool478.not, label %if.end476.land.lhs.true514_crit_edge, label %if.then479

if.end476.land.lhs.true514_crit_edge:             ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true514

if.then479:                                       ; preds = %if.end476
  %230 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %lq_sta, align 8
  %conv482 = zext i8 %231 to i32
  %sub483 = sub nsw i32 1, %conv482
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then479
  %i.01052 = phi i32 [ 0, %if.then479 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx488 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052
  %232 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 0, ptr %arrayidx488, align 8
  %success_counter.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052, i32 1
  %233 = ptrtoint ptr %success_counter.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 0, ptr %success_counter.i, align 8
  %success_ratio.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052, i32 2
  %234 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 -1, ptr %success_ratio.i, align 4
  %counter.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052, i32 3
  %235 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %counter.i, align 8
  %average_tpt.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052, i32 4
  %236 = ptrtoint ptr %average_tpt.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -1, ptr %average_tpt.i, align 4
  %stamp.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 9, i32 %i.01052, i32 5
  %237 = ptrtoint ptr %stamp.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %stamp.i, align 8
  %inc = add nuw nsw i32 %i.01052, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx484 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483
  %current_rate489 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub483, i32 8
  %238 = ptrtoint ptr %current_rate489 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %current_rate489, align 8
  %call490 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %239)
  %240 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool.not.i960 = icmp eq i32 %241, 0
  br i1 %tobool.not.i960, label %if.else.i961, label %for.end.il_get_debug_level.exit963_crit_edge

for.end.il_get_debug_level.exit963_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit963

if.else.i961:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %242 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit963

il_get_debug_level.exit963:                       ; preds = %if.else.i961, %for.end.il_get_debug_level.exit963_crit_edge
  %retval.0.i962 = phi i32 [ %242, %if.else.i961 ], [ %241, %for.end.il_get_debug_level.exit963_crit_edge ]
  %and493 = and i32 %retval.0.i962, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and493)
  %tobool494.not = icmp eq i32 %and493, 0
  br i1 %tobool494.not, label %il_get_debug_level.exit963.do.end505_crit_edge, label %do.end498

il_get_debug_level.exit963.do.end505_crit_edge:   ; preds = %il_get_debug_level.exit963
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end505

do.end498:                                        ; preds = %il_get_debug_level.exit963
  call void @__sanitizer_cov_trace_pc() #15
  %243 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %il, align 8
  %wiphy500 = getelementptr inbounds %struct.ieee80211_hw, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %wiphy500 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %wiphy500, align 8
  %dev501 = getelementptr inbounds %struct.wiphy, ptr %246, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev501, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.66, i32 noundef %239, i32 noundef %call490) #16
  br label %do.end505

do.end505:                                        ; preds = %do.end498, %il_get_debug_level.exit963.do.end505_crit_edge
  %247 = ptrtoint ptr %current_rate489 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %current_rate489, align 8
  tail call fastcc void @il4965_rs_fill_link_cmd(ptr noundef %il, ptr noundef %lq_sta, i32 noundef %248)
  %lq507 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22
  %call508 = tail call i32 @il_send_lq_cmd(ptr noundef %il, ptr noundef %lq507, i8 noundef zeroext 2, i1 noundef zeroext false) #13
  br label %out

if.end511:                                        ; preds = %lq_update.thread1011, %lq_update.if.end511_crit_edge, %if.end146.if.end511_crit_edge
  %tobool513.not = phi i1 [ false, %lq_update.thread1011 ], [ true, %if.end146.if.end511_crit_edge ], [ true, %lq_update.if.end511_crit_edge ]
  %tbl.11009 = phi ptr [ %arrayidx264, %lq_update.thread1011 ], [ %arrayidx43, %if.end146.if.end511_crit_edge ], [ %arrayidx43, %lq_update.if.end511_crit_edge ]
  %idx.21007 = phi i32 [ %call266, %lq_update.thread1011 ], [ %conv147, %if.end146.if.end511_crit_edge ], [ %idx.1, %lq_update.if.end511_crit_edge ]
  %call.i958 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %tbl.11009, i32 noundef %idx.21007, i8 noundef zeroext %conv54.sink) #13
  tail call fastcc void @il4965_rs_fill_link_cmd(ptr noundef %il, ptr noundef %lq_sta, i32 noundef %call.i958) #13
  %lq.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22
  %call1.i = tail call i32 @il_send_lq_cmd(ptr noundef %il, ptr noundef %lq.i, i8 noundef zeroext 2, i1 noundef zeroext false) #13
  tail call fastcc void @il4965_rs_stay_in_table(ptr noundef %lq_sta, i1 noundef zeroext false)
  br i1 %tobool513.not, label %if.end511.out_crit_edge, label %if.end511.land.lhs.true514_crit_edge

if.end511.land.lhs.true514_crit_edge:             ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true514

if.end511.out_crit_edge:                          ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true514:                                 ; preds = %if.end511.land.lhs.true514_crit_edge, %if.end476.land.lhs.true514_crit_edge, %land.lhs.true449.critedge.thread
  %tbl.21044 = phi ptr [ %tbl.11009, %if.end511.land.lhs.true514_crit_edge ], [ %arrayidx43, %land.lhs.true449.critedge.thread ], [ %arrayidx43, %if.end476.land.lhs.true514_crit_edge ]
  %idx.31043 = phi i32 [ %idx.21007, %if.end511.land.lhs.true514_crit_edge ], [ %80, %land.lhs.true449.critedge.thread ], [ %idx.1, %if.end476.land.lhs.true514_crit_edge ]
  %stay_in_tbl515 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 2
  %249 = ptrtoint ptr %stay_in_tbl515 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %stay_in_tbl515, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool516.not = icmp eq i8 %250, 0
  br i1 %tobool516.not, label %if.then517, label %land.lhs.true514.out_crit_edge

land.lhs.true514.out_crit_edge:                   ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then517:                                       ; preds = %land.lhs.true514
  %251 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %lq_sta, align 8
  %idxprom520 = zext i8 %252 to i32
  %arrayidx521 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom520
  %253 = ptrtoint ptr %arrayidx521 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx521, align 8
  %.off911 = add i32 %254, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off911)
  %switch912 = icmp ult i32 %.off911, 2
  br i1 %switch912, label %land.lhs.true529, label %if.then517.if.end551_crit_edge

if.then517.if.end551_crit_edge:                   ; preds = %if.then517
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end551

land.lhs.true529:                                 ; preds = %if.then517
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7, i32 1
  %255 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %width.i, align 4
  %257 = zext i32 %256 to i64
  call void @__sanitizer_cov_trace_switch(i64 %257, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %256, label %land.lhs.true529.if.end551_crit_edge [
    i32 6, label %land.lhs.true529.land.lhs.true531_crit_edge
    i32 7, label %land.lhs.true529.land.lhs.true531_crit_edge1057
    i32 0, label %land.lhs.true529.land.lhs.true531_crit_edge1058
  ]

land.lhs.true529.land.lhs.true531_crit_edge1058:  ; preds = %land.lhs.true529
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true531

land.lhs.true529.land.lhs.true531_crit_edge1057:  ; preds = %land.lhs.true529
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true531

land.lhs.true529.land.lhs.true531_crit_edge:      ; preds = %land.lhs.true529
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true531

land.lhs.true529.if.end551_crit_edge:             ; preds = %land.lhs.true529
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end551

land.lhs.true531:                                 ; preds = %land.lhs.true529.land.lhs.true531_crit_edge, %land.lhs.true529.land.lhs.true531_crit_edge1057, %land.lhs.true529.land.lhs.true531_crit_edge1058
  %action_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %258 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %action_counter, align 8
  %max_search = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom520, i32 6
  %260 = ptrtoint ptr %max_search to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %max_search, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %259, i8 %261)
  %cmp534 = icmp ugt i8 %259, %261
  br i1 %cmp534, label %do.body537, label %land.lhs.true531.if.end551_crit_edge

land.lhs.true531.if.end551_crit_edge:             ; preds = %land.lhs.true531
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end551

do.body537:                                       ; preds = %land.lhs.true531
  %262 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool.not.i966 = icmp eq i32 %263, 0
  br i1 %tobool.not.i966, label %if.else.i967, label %do.body537.il_get_debug_level.exit969_crit_edge

do.body537.il_get_debug_level.exit969_crit_edge:  ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit969

if.else.i967:                                     ; preds = %do.body537
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %264 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit969

il_get_debug_level.exit969:                       ; preds = %if.else.i967, %do.body537.il_get_debug_level.exit969_crit_edge
  %retval.0.i968 = phi i32 [ %264, %if.else.i967 ], [ %263, %do.body537.il_get_debug_level.exit969_crit_edge ]
  %and539 = and i32 %retval.0.i968, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and539)
  %tobool540.not = icmp eq i32 %and539, 0
  br i1 %tobool540.not, label %il_get_debug_level.exit969.do.end550_crit_edge, label %do.end544

il_get_debug_level.exit969.do.end550_crit_edge:   ; preds = %il_get_debug_level.exit969
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end550

do.end544:                                        ; preds = %il_get_debug_level.exit969
  call void @__sanitizer_cov_trace_pc() #15
  %265 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %il, align 8
  %wiphy546 = getelementptr inbounds %struct.ieee80211_hw, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %wiphy546 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %wiphy546, align 8
  %dev547 = getelementptr inbounds %struct.wiphy, ptr %268, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev547, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.66) #16
  br label %do.end550

do.end550:                                        ; preds = %do.end544, %il_get_debug_level.exit969.do.end550_crit_edge
  tail call fastcc void @il4965_rs_set_stay_in_table(ptr noundef %il, i8 noundef zeroext 1, ptr noundef %lq_sta)
  br label %if.end551

if.end551:                                        ; preds = %do.end550, %land.lhs.true531.if.end551_crit_edge, %land.lhs.true529.if.end551_crit_edge, %if.then517.if.end551_crit_edge
  %enable_counter552 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 1
  %269 = ptrtoint ptr %enable_counter552 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %enable_counter552, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool554.not = icmp eq i8 %270, 0
  br i1 %tobool554.not, label %if.end551.out_crit_edge, label %land.lhs.true555

if.end551.out_crit_edge:                          ; preds = %if.end551
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true555:                                 ; preds = %if.end551
  %action_counter556 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %271 = ptrtoint ptr %action_counter556 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %action_counter556, align 8
  %max_search558 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom520, i32 6
  %273 = ptrtoint ptr %max_search558 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %max_search558, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %272, i8 %274)
  %cmp560.not = icmp ult i8 %272, %274
  br i1 %cmp560.not, label %land.lhs.true555.out_crit_edge, label %if.then562

land.lhs.true555.out_crit_edge:                   ; preds = %land.lhs.true555
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then562:                                       ; preds = %land.lhs.true555
  %last_tpt563 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  %275 = ptrtoint ptr %last_tpt563 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %last_tpt563, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %cmp564 = icmp sgt i32 %276, 0
  br i1 %cmp564, label %land.lhs.true566, label %if.then562.if.end608_crit_edge

if.then562.if.end608_crit_edge:                   ; preds = %if.then562
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end608

land.lhs.true566:                                 ; preds = %if.then562
  %tx_agg_tid_en567 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 25
  %277 = ptrtoint ptr %tx_agg_tid_en567 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %tx_agg_tid_en567, align 8
  %conv568 = zext i8 %278 to i32
  %shl570 = shl nuw i32 1, %conv980
  %and571 = and i32 %shl570, %conv568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and571)
  %tobool572.not = icmp eq i32 %and571, 0
  %brmerge904 = or i1 %cmp.not982, %tobool572.not
  br i1 %brmerge904, label %land.lhs.true566.if.end608_crit_edge, label %if.then577

land.lhs.true566.if.end608_crit_edge:             ; preds = %land.lhs.true566
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end608

if.then577:                                       ; preds = %land.lhs.true566
  %lq579 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22
  %279 = ptrtoint ptr %lq579 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %lq579, align 4
  %idxprom581 = zext i8 %280 to i32
  %state587 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %idxprom581, i32 1, i32 %conv980, i32 2, i32 6
  %281 = ptrtoint ptr %state587 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %state587, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %cmp589 = icmp eq i8 %282, 0
  br i1 %cmp589, label %do.body592, label %if.then577.if.end608_crit_edge

if.then577.if.end608_crit_edge:                   ; preds = %if.then577
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end608

do.body592:                                       ; preds = %if.then577
  %283 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i971 = icmp eq i32 %284, 0
  br i1 %tobool.not.i971, label %if.else.i972, label %do.body592.il_get_debug_level.exit974_crit_edge

do.body592.il_get_debug_level.exit974_crit_edge:  ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit974

if.else.i972:                                     ; preds = %do.body592
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %285 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit974

il_get_debug_level.exit974:                       ; preds = %if.else.i972, %do.body592.il_get_debug_level.exit974_crit_edge
  %retval.0.i973 = phi i32 [ %285, %if.else.i972 ], [ %284, %do.body592.il_get_debug_level.exit974_crit_edge ]
  %and594 = and i32 %retval.0.i973, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and594)
  %tobool595.not = icmp eq i32 %and594, 0
  br i1 %tobool595.not, label %il_get_debug_level.exit974.do.end606_crit_edge, label %do.end599

il_get_debug_level.exit974.do.end606_crit_edge:   ; preds = %il_get_debug_level.exit974
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end606

do.end599:                                        ; preds = %il_get_debug_level.exit974
  call void @__sanitizer_cov_trace_pc() #15
  %286 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %il, align 8
  %wiphy601 = getelementptr inbounds %struct.ieee80211_hw, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %wiphy601 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %wiphy601, align 8
  %dev602 = getelementptr inbounds %struct.wiphy, ptr %289, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev602, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.66, i32 noundef %conv980) #16
  br label %do.end606

do.end606:                                        ; preds = %do.end599, %il_get_debug_level.exit974.do.end606_crit_edge
  tail call fastcc void @il4965_rs_tl_turn_on_agg(ptr noundef %il, i8 noundef zeroext %retval.0.i914978, ptr noundef %lq_sta, ptr noundef %sta)
  br label %if.end608

if.end608:                                        ; preds = %do.end606, %if.then577.if.end608_crit_edge, %land.lhs.true566.if.end608_crit_edge, %if.then562.if.end608_crit_edge
  tail call fastcc void @il4965_rs_set_stay_in_table(ptr noundef %il, i8 noundef zeroext 0, ptr noundef %lq_sta)
  br label %out

out:                                              ; preds = %if.end608, %land.lhs.true555.out_crit_edge, %if.end551.out_crit_edge, %land.lhs.true514.out_crit_edge, %if.end511.out_crit_edge, %do.end505, %land.lhs.true453.out_crit_edge, %land.lhs.true451.out_crit_edge, %do.end186
  %idx.4 = phi i32 [ %idx.31043, %land.lhs.true514.out_crit_edge ], [ %idx.31043, %if.end608 ], [ %idx.31043, %land.lhs.true555.out_crit_edge ], [ %idx.31043, %if.end551.out_crit_edge ], [ %idx.21007, %if.end511.out_crit_edge ], [ %80, %do.end186 ], [ %idx.1, %land.lhs.true453.out_crit_edge ], [ %call490, %do.end505 ], [ %idx.1, %land.lhs.true451.out_crit_edge ]
  %tbl.3 = phi ptr [ %tbl.21044, %land.lhs.true514.out_crit_edge ], [ %tbl.21044, %if.end608 ], [ %tbl.21044, %land.lhs.true555.out_crit_edge ], [ %tbl.21044, %if.end551.out_crit_edge ], [ %tbl.11009, %if.end511.out_crit_edge ], [ %arrayidx43, %do.end186 ], [ %arrayidx43, %land.lhs.true453.out_crit_edge ], [ %arrayidx484, %do.end505 ], [ %arrayidx43, %land.lhs.true451.out_crit_edge ]
  %call611 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %tbl.3, i32 noundef %idx.4, i8 noundef zeroext %conv54.sink)
  %current_rate612 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl.3, i32 0, i32 8
  %290 = ptrtoint ptr %current_rate612 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %call611, ptr %current_rate612, align 8
  %291 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %idx.4, ptr %last_txrate_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end143, %if.then129, %do.end125.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_update_rate_tbl(ptr noundef %il, ptr noundef %lq_sta, ptr nocapture noundef readonly %tbl, i32 noundef %idx, i8 noundef zeroext %is_green) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %tbl, i32 noundef %idx, i8 noundef zeroext %is_green)
  tail call fastcc void @il4965_rs_fill_link_cmd(ptr noundef %il, ptr noundef %lq_sta, i32 noundef %call)
  %lq = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 22
  %call1 = tail call i32 @il_send_lq_cmd(ptr noundef %il, ptr noundef %lq, i8 noundef zeroext 2, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_move_legacy_other(ptr noundef %il, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx3 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub
  %valid_tx_ant6 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %2 = ptrtoint ptr %valid_tx_ant6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %valid_tx_ant6, align 2
  %tx_chains_num8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 5
  %4 = ptrtoint ptr %tx_chains_num8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_chains_num8, align 4
  %action = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 5
  %6 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %action, align 8
  %action_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %debug_level.i15 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %is_SGI75 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 2
  %ant_type86 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp19 = icmp ult i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp27 = icmp ult i8 %5, 3
  %success_ratio = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 9, i32 %idx, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %7 = phi i8 [ %spec.select, %sw.epilog.for.cond_crit_edge ], [ 2, %entry ]
  %8 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %action_counter, align 8
  %inc = add i8 %9, 1
  store i8 %inc, ptr %action_counter, align 8
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.220)
  switch i8 %7, label %for.cond.sw.epilog_crit_edge [
    i8 0, label %for.cond.do.body_crit_edge
    i8 1, label %for.cond.do.body_crit_edge37
    i8 2, label %do.body41
    i8 3, label %for.cond.do.body61_crit_edge
    i8 4, label %for.cond.do.body61_crit_edge38
    i8 5, label %for.cond.do.body61_crit_edge39
  ]

for.cond.do.body61_crit_edge39:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body61

for.cond.do.body61_crit_edge38:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body61

for.cond.do.body61_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body61

for.cond.do.body_crit_edge37:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %for.cond.do.body_crit_edge37
  %11 = ptrtoint ptr %debug_level.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_level.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %13 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.else.i ], [ %12, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end14_crit_edge, label %do.end

il_get_debug_level.exit.do.end14_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #16
  br label %do.end14

do.end14:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end14_crit_edge
  %18 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp = icmp eq i8 %19, 0
  %or.cond = select i1 %cmp, i1 %cmp19, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp23 = icmp eq i8 %19, 1
  %or.cond2 = select i1 %cmp23, i1 %cmp27, i1 false
  %or.cond29 = select i1 %or.cond, i1 true, i1 %or.cond2
  br i1 %or.cond29, label %do.end14.sw.epilog_crit_edge, label %if.end30

do.end14.sw.epilog_crit_edge:                     ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end30:                                         ; preds = %do.end14
  %20 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %21)
  %cmp31 = icmp sgt i32 %21, 12799
  br i1 %cmp31, label %if.end30.sw.epilog_crit_edge, label %if.end34

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end34:                                         ; preds = %if.end30
  %22 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %23 = ptrtoint ptr %ant_type86 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ant_type86, align 4
  %25 = add i8 %24, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %25)
  %26 = icmp ult i8 %25, 7
  %and6.i.i = and i8 %24, %3
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %24)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %24
  %or.cond22 = select i1 %26, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond22, label %if.end34.while.cond.i_crit_edge, label %if.end34.sw.epilog_crit_edge

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end34.while.cond.i_crit_edge:                  ; preds = %if.end34
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end34.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %24, %if.end34.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %27 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %24)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %24
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %3
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %if.then38, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

if.then38:                                        ; preds = %land.rhs.i
  %current_rate.le = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %28 = ptrtoint ptr %ant_type86 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %new_ant_type.0.i, ptr %ant_type86, align 4
  %29 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_rate.le, align 4
  %and.i = and i32 %30, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3, align 8
  %.off.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end46.i, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %if.then38
  %.b145.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i, label %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, label %if.then.i, !prof !399

land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.then.i:                                        ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i:                                       ; preds = %if.then38
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %32, label %land.lhs.true69.i [
    i32 1, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
    i32 2, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge40
    i32 3, label %land.lhs.true.i
  ]

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge40: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true.i:                                  ; preds = %if.end46.i
  %is_ht40.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 3
  %34 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_ht40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool57.not.i = icmp eq i8 %35, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %lor.lhs.false58.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false58.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %is_dup.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %36 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_dup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool59.not.i = icmp eq i8 %37, 0
  %spec.select.i = select i1 %tobool59.not.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i

land.lhs.true69.i:                                ; preds = %if.end46.i
  %is_ht4070.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 3
  %38 = ptrtoint ptr %is_ht4070.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_ht4070.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool71.not.i = icmp eq i8 %39, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end80.i_crit_edge, label %lor.lhs.false72.i

land.lhs.true69.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false72.i:                                ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  %is_dup73.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %40 = ptrtoint ptr %is_dup73.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_dup73.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool75.not.i = icmp eq i8 %41, 0
  %spec.select150.i = select i1 %tobool75.not.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i

if.end80.i:                                       ; preds = %lor.lhs.false72.i, %land.lhs.true69.i.if.end80.i_crit_edge, %lor.lhs.false58.i, %land.lhs.true.i.if.end80.i_crit_edge
  %ht_tbl_pointer.0.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.if.end80.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.if.end80.i_crit_edge ], [ %spec.select.i, %lor.lhs.false58.i ], [ %spec.select150.i, %lor.lhs.false72.i ]
  %42 = ptrtoint ptr %is_SGI75 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_SGI75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool81.not.i = icmp eq i8 %43, 0
  %is_agg.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %44 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_agg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool83.not.i = icmp eq i8 %45, 0
  br i1 %tobool81.not.i, label %land.lhs.true82.i, label %land.lhs.true90.i

land.lhs.true82.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select23.idx = select i1 %tobool83.not.i, i32 0, i32 2
  %spec.select23 = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 %spec.select23.idx
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true90.i:                                ; preds = %if.end80.i
  br i1 %tobool83.not.i, label %if.then93.i, label %if.else108.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit

if.else108.i:                                     ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit

il4965_rs_set_expected_tpt_table.exit:            ; preds = %if.else108.i, %if.then93.i, %land.lhs.true82.i, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge40, %if.then.i, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
  %ht_tbl_pointer.0.sink.i = phi ptr [ %arrayidx109.i, %if.else108.i ], [ %arrayidx94.i, %if.then93.i ], [ @expected_tpt_legacy, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.then.i ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge40 ], [ %spec.select23, %land.lhs.true82.i ]
  %expected_tpt85.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 7
  %46 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ht_tbl_pointer.0.sink.i, ptr %expected_tpt85.i, align 4
  %search_better_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %47 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %search_better_tbl, align 1
  %48 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %action, align 8
  %inc118 = add i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc118)
  %cmp121 = icmp ugt i8 %inc118, 5
  %spec.select3 = select i1 %cmp121, i8 0, i8 %inc118
  %50 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select3, ptr %action, align 8
  %action129 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 5
  %51 = ptrtoint ptr %action129 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select3, ptr %action129, align 8
  br label %cleanup

do.body41:                                        ; preds = %for.cond
  %52 = ptrtoint ptr %debug_level.i15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_level.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i11 = icmp eq i32 %53, 0
  br i1 %tobool.not.i11, label %if.else.i12, label %do.body41.il_get_debug_level.exit14_crit_edge

do.body41.il_get_debug_level.exit14_crit_edge:    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit14

if.else.i12:                                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %54 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit14

il_get_debug_level.exit14:                        ; preds = %if.else.i12, %do.body41.il_get_debug_level.exit14_crit_edge
  %retval.0.i13 = phi i32 [ %54, %if.else.i12 ], [ %53, %do.body41.il_get_debug_level.exit14_crit_edge ]
  %and43 = and i32 %retval.0.i13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %il_get_debug_level.exit14.do.end54_crit_edge, label %do.end48

il_get_debug_level.exit14.do.end54_crit_edge:     ; preds = %il_get_debug_level.exit14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

do.end48:                                         ; preds = %il_get_debug_level.exit14
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %il, align 8
  %wiphy50 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy50, align 8
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #16
  br label %do.end54

do.end54:                                         ; preds = %do.end48, %il_get_debug_level.exit14.do.end54_crit_edge
  %59 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %60 = ptrtoint ptr %is_SGI75 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %is_SGI75, align 1
  %call55 = tail call fastcc i32 @il4965_rs_switch_to_siso(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx3, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %do.end54.sw.epilog_crit_edge

do.end54.sw.epilog_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then57:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %action_counter, align 8
  %search_better_tbl.c5 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %62 = ptrtoint ptr %search_better_tbl.c5 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %search_better_tbl.c5, align 1
  %63 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %action, align 8
  %inc118.c6 = add i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc118.c6)
  %cmp121.c7 = icmp ugt i8 %inc118.c6, 5
  %spec.select3.c8 = select i1 %cmp121.c7, i8 0, i8 %inc118.c6
  %65 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.select3.c8, ptr %action, align 8
  br label %cleanup

do.body61:                                        ; preds = %for.cond.do.body61_crit_edge, %for.cond.do.body61_crit_edge38, %for.cond.do.body61_crit_edge39
  %66 = ptrtoint ptr %debug_level.i15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_level.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i16 = icmp eq i32 %67, 0
  br i1 %tobool.not.i16, label %if.else.i17, label %do.body61.il_get_debug_level.exit19_crit_edge

do.body61.il_get_debug_level.exit19_crit_edge:    ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit19

if.else.i17:                                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %68 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit19

il_get_debug_level.exit19:                        ; preds = %if.else.i17, %do.body61.il_get_debug_level.exit19_crit_edge
  %retval.0.i18 = phi i32 [ %68, %if.else.i17 ], [ %67, %do.body61.il_get_debug_level.exit19_crit_edge ]
  %and63 = and i32 %retval.0.i18, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %il_get_debug_level.exit19.do.end74_crit_edge, label %do.end68

il_get_debug_level.exit19.do.end74_crit_edge:     ; preds = %il_get_debug_level.exit19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end74

do.end68:                                         ; preds = %il_get_debug_level.exit19
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %il, align 8
  %wiphy70 = getelementptr inbounds %struct.ieee80211_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wiphy70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy70, align 8
  %dev71 = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.110) #16
  br label %do.end74

do.end74:                                         ; preds = %do.end68, %il_get_debug_level.exit19.do.end74_crit_edge
  %73 = call ptr @memcpy(ptr %arrayidx3, ptr %arrayidx, i32 24)
  %74 = ptrtoint ptr %is_SGI75 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %is_SGI75, align 1
  %75 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %76)
  %switch.selectcmp = icmp eq i8 %76, 4
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %switch.selectcmp32 = icmp eq i8 %76, 3
  %switch.select33 = select i1 %switch.selectcmp32, i8 3, i8 %switch.select
  %77 = ptrtoint ptr %ant_type86 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %switch.select33, ptr %ant_type86, align 4
  %and6.i = and i8 %switch.select33, %3
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select33)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select33
  br i1 %cmp.i.not, label %if.end95, label %do.end74.sw.epilog_crit_edge

do.end74.sw.epilog_crit_edge:                     ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end95:                                         ; preds = %do.end74
  %call96 = tail call fastcc i32 @il4965_rs_switch_to_mimo2(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx3, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then98, label %if.end95.sw.epilog_crit_edge

if.end95.sw.epilog_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %action_counter, align 8
  %search_better_tbl.c = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %79 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %search_better_tbl.c, align 1
  %80 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %action, align 8
  %inc118.c = add i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc118.c)
  %cmp121.c = icmp ugt i8 %inc118.c, 5
  %spec.select3.c = select i1 %cmp121.c, i8 0, i8 %inc118.c
  %82 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %spec.select3.c, ptr %action, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end95.sw.epilog_crit_edge, %do.end74.sw.epilog_crit_edge, %do.end54.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge, %if.end30.sw.epilog_crit_edge, %do.end14.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge
  %83 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %action, align 8
  %inc102 = add i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc102)
  %cmp105 = icmp ugt i8 %inc102, 5
  %spec.select = select i1 %cmp105, i8 0, i8 %inc102
  %85 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.select, ptr %action, align 8
  %cmp113 = icmp eq i8 %spec.select, 2
  br i1 %cmp113, label %for.end, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx3, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then98, %if.then57, %il4965_rs_set_expected_tpt_table.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_move_siso_to_other(ptr noundef %il, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx4 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub
  %ht_cap7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %valid_tx_ant8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %4 = ptrtoint ptr %valid_tx_ant8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_tx_ant8, align 2
  %tx_chains_num10 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 5
  %6 = ptrtoint ptr %tx_chains_num10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_chains_num10, align 4
  %action = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 5
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %action, align 8
  %action_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %is_ht40 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 3
  %debug_level.i10 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool112.not = icmp eq i8 %1, 0
  %is_SGI114 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 2
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %is_SGI127 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 2
  %is_ht40.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 3
  %is_dup.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %is_agg.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %expected_tpt85.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 7
  %last_tpt = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  %ant_type66 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp20 = icmp ult i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp28 = icmp ult i8 %7, 3
  %success_ratio = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 9, i32 %idx, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %10 = phi i8 [ %spec.select, %sw.epilog.for.cond_crit_edge ], [ %9, %entry ]
  %11 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %action_counter, align 8
  %inc = add i8 %12, 1
  store i8 %inc, ptr %action_counter, align 8
  %13 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.222)
  switch i8 %10, label %for.cond.sw.epilog_crit_edge [
    i8 0, label %for.cond.do.body_crit_edge
    i8 1, label %for.cond.do.body_crit_edge28
    i8 2, label %for.cond.do.body42_crit_edge
    i8 3, label %for.cond.do.body42_crit_edge29
    i8 4, label %for.cond.do.body42_crit_edge30
    i8 5, label %sw.bb80
  ]

for.cond.do.body42_crit_edge30:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

for.cond.do.body42_crit_edge29:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

for.cond.do.body42_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body42

for.cond.do.body_crit_edge28:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %for.cond.do.body_crit_edge28
  %14 = ptrtoint ptr %debug_level.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_level.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %16 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.else.i ], [ %15, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end15_crit_edge, label %do.end

il_get_debug_level.exit.do.end15_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139) #16
  br label %do.end15

do.end15:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end15_crit_edge
  %21 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp = icmp eq i8 %22, 0
  %or.cond = select i1 %cmp, i1 %cmp20, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp24 = icmp eq i8 %22, 1
  %or.cond2 = select i1 %cmp24, i1 %cmp28, i1 false
  %or.cond20 = select i1 %or.cond, i1 true, i1 %or.cond2
  br i1 %or.cond20, label %do.end15.sw.epilog_crit_edge, label %if.end31

do.end15.sw.epilog_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end31:                                         ; preds = %do.end15
  %23 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %24)
  %cmp32 = icmp sgt i32 %24, 12799
  br i1 %cmp32, label %if.end31.sw.epilog_crit_edge, label %if.end35

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end35:                                         ; preds = %if.end31
  %25 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %26 = ptrtoint ptr %ant_type66 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ant_type66, align 4
  %28 = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %28)
  %29 = icmp ult i8 %28, 7
  %and6.i.i = and i8 %27, %5
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %27)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %27
  %or.cond17 = select i1 %29, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond17, label %if.end35.while.cond.i_crit_edge, label %if.end35.sw.epilog_crit_edge

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end35.while.cond.i_crit_edge:                  ; preds = %if.end35
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end35.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %27, %if.end35.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %30 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %27)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %27
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %5
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %il4965_rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

il4965_rs_toggle_antenna.exit:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %current_rate.le = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %31 = ptrtoint ptr %ant_type66 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %new_ant_type.0.i, ptr %ant_type66, align 4
  %32 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %current_rate.le, align 4
  %and.i = and i32 %33, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  br label %out

do.body42:                                        ; preds = %for.cond.do.body42_crit_edge, %for.cond.do.body42_crit_edge29, %for.cond.do.body42_crit_edge30
  %34 = ptrtoint ptr %debug_level.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_level.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i6 = icmp eq i32 %35, 0
  br i1 %tobool.not.i6, label %if.else.i7, label %do.body42.il_get_debug_level.exit9_crit_edge

do.body42.il_get_debug_level.exit9_crit_edge:     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit9

if.else.i7:                                       ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %36 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit9

il_get_debug_level.exit9:                         ; preds = %if.else.i7, %do.body42.il_get_debug_level.exit9_crit_edge
  %retval.0.i8 = phi i32 [ %36, %if.else.i7 ], [ %35, %do.body42.il_get_debug_level.exit9_crit_edge ]
  %and44 = and i32 %retval.0.i8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %il_get_debug_level.exit9.do.end55_crit_edge, label %do.end49

il_get_debug_level.exit9.do.end55_crit_edge:      ; preds = %il_get_debug_level.exit9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end55

do.end49:                                         ; preds = %il_get_debug_level.exit9
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %il, align 8
  %wiphy51 = getelementptr inbounds %struct.ieee80211_hw, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %wiphy51 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wiphy51, align 8
  %dev52 = getelementptr inbounds %struct.wiphy, ptr %40, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139) #16
  br label %do.end55

do.end55:                                         ; preds = %do.end49, %il_get_debug_level.exit9.do.end55_crit_edge
  %41 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %42 = ptrtoint ptr %is_SGI127 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_SGI127, align 1
  %43 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %switch.selectcmp = icmp eq i8 %44, 3
  %switch.select = select i1 %switch.selectcmp, i8 5, i8 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %switch.selectcmp23 = icmp eq i8 %44, 2
  %switch.select24 = select i1 %switch.selectcmp23, i8 3, i8 %switch.select
  %45 = ptrtoint ptr %ant_type66 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %switch.select24, ptr %ant_type66, align 4
  %and6.i = and i8 %switch.select24, %5
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select24)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select24
  br i1 %cmp.i.not, label %if.end75, label %do.end55.sw.epilog_crit_edge

do.end55.sw.epilog_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end75:                                         ; preds = %do.end55
  %call76 = tail call fastcc i32 @il4965_rs_switch_to_mimo2(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup169.critedge, label %if.end75.sw.epilog_crit_edge

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb80:                                          ; preds = %for.cond
  %46 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool81.not = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %ht_cap7 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ht_cap7, align 2
  br i1 %tobool81.not, label %land.lhs.true82, label %land.lhs.true91

land.lhs.true82:                                  ; preds = %sw.bb80
  %50 = and i16 %49, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool85.not = icmp eq i16 %50, 0
  br i1 %tobool85.not, label %land.lhs.true82.sw.epilog_crit_edge, label %land.lhs.true82.do.body98_crit_edge

land.lhs.true82.do.body98_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body98

land.lhs.true82.sw.epilog_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true91:                                  ; preds = %sw.bb80
  %51 = and i16 %49, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool95.not = icmp eq i16 %51, 0
  br i1 %tobool95.not, label %land.lhs.true91.sw.epilog_crit_edge, label %land.lhs.true91.do.body98_crit_edge

land.lhs.true91.do.body98_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body98

land.lhs.true91.sw.epilog_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body98:                                        ; preds = %land.lhs.true91.do.body98_crit_edge, %land.lhs.true82.do.body98_crit_edge
  %52 = ptrtoint ptr %debug_level.i10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %debug_level.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i11 = icmp eq i32 %53, 0
  br i1 %tobool.not.i11, label %if.else.i12, label %do.body98.il_get_debug_level.exit14_crit_edge

do.body98.il_get_debug_level.exit14_crit_edge:    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit14

if.else.i12:                                      ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %54 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit14

il_get_debug_level.exit14:                        ; preds = %if.else.i12, %do.body98.il_get_debug_level.exit14_crit_edge
  %retval.0.i13 = phi i32 [ %54, %if.else.i12 ], [ %53, %do.body98.il_get_debug_level.exit14_crit_edge ]
  %and100 = and i32 %retval.0.i13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %il_get_debug_level.exit14.do.end111_crit_edge, label %do.end105

il_get_debug_level.exit14.do.end111_crit_edge:    ; preds = %il_get_debug_level.exit14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end111

do.end105:                                        ; preds = %il_get_debug_level.exit14
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %il, align 8
  %wiphy107 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy107 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy107, align 8
  %dev108 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.139) #16
  br label %do.end111

do.end111:                                        ; preds = %do.end105, %il_get_debug_level.exit14.do.end111_crit_edge
  %59 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  br i1 %tobool112.not, label %do.end111.if.end123_crit_edge, label %if.then113

do.end111.if.end123_crit_edge:                    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end123

if.then113:                                       ; preds = %do.end111
  %60 = ptrtoint ptr %is_SGI114 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %is_SGI114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool115.not = icmp eq i8 %61, 0
  br i1 %tobool115.not, label %if.then113.sw.epilog_crit_edge, label %do.end120

if.then113.sw.epilog_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end120:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci_dev, align 8
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev121, ptr noundef nonnull @.str.147) #16
  br label %if.end123

if.end123:                                        ; preds = %do.end120, %do.end111.if.end123_crit_edge
  %64 = ptrtoint ptr %is_SGI114 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_SGI114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool125.not = icmp eq i8 %65, 0
  %conv126 = zext i1 %tobool125.not to i8
  %66 = ptrtoint ptr %is_SGI127 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv126, ptr %is_SGI127, align 1
  %67 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx4, align 8
  %.off.i = add i32 %68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end46.i, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %if.end123
  %.b145.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i, label %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, label %if.then.i, !prof !399

land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.then.i:                                        ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i:                                       ; preds = %if.end123
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %68, label %land.lhs.true69.i [
    i32 1, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
    i32 2, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge31
    i32 3, label %land.lhs.true.i
  ]

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge31: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true.i:                                  ; preds = %if.end46.i
  %70 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_ht40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool57.not.i = icmp eq i8 %71, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %lor.lhs.false58.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false58.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %is_dup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool59.not.i = icmp eq i8 %73, 0
  %spec.select.i = select i1 %tobool59.not.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i

land.lhs.true69.i:                                ; preds = %if.end46.i
  %74 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %is_ht40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool71.not.i = icmp eq i8 %75, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end80.i_crit_edge, label %lor.lhs.false72.i

land.lhs.true69.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false72.i:                                ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_dup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool75.not.i = icmp eq i8 %77, 0
  %spec.select150.i = select i1 %tobool75.not.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i

if.end80.i:                                       ; preds = %lor.lhs.false72.i, %land.lhs.true69.i.if.end80.i_crit_edge, %lor.lhs.false58.i, %land.lhs.true.i.if.end80.i_crit_edge
  %ht_tbl_pointer.0.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.if.end80.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.if.end80.i_crit_edge ], [ %spec.select.i, %lor.lhs.false58.i ], [ %spec.select150.i, %lor.lhs.false72.i ]
  %78 = ptrtoint ptr %is_SGI127 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_SGI127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool81.not.i = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_agg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool83.not.i = icmp eq i8 %81, 0
  br i1 %tobool81.not.i, label %land.lhs.true82.i, label %land.lhs.true90.i

land.lhs.true82.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select18.idx = select i1 %tobool83.not.i, i32 0, i32 2
  %spec.select18 = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 %spec.select18.idx
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true90.i:                                ; preds = %if.end80.i
  br i1 %tobool83.not.i, label %if.then93.i, label %if.else108.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit

if.else108.i:                                     ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit

il4965_rs_set_expected_tpt_table.exit:            ; preds = %if.else108.i, %if.then93.i, %land.lhs.true82.i, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge31, %if.then.i, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
  %ht_tbl_pointer.0.sink.i = phi ptr [ %arrayidx109.i, %if.else108.i ], [ %arrayidx94.i, %if.then93.i ], [ @expected_tpt_legacy, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.then.i ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge31 ], [ %spec.select18, %land.lhs.true82.i ]
  %82 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %ht_tbl_pointer.0.sink.i, ptr %expected_tpt85.i, align 4
  %83 = ptrtoint ptr %is_SGI114 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %is_SGI114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool129.not = icmp eq i8 %84, 0
  br i1 %tobool129.not, label %il4965_rs_set_expected_tpt_table.exit.if.end136_crit_edge, label %if.then130

il4965_rs_set_expected_tpt_table.exit.if.end136_crit_edge: ; preds = %il4965_rs_set_expected_tpt_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.then130:                                       ; preds = %il4965_rs_set_expected_tpt_table.exit
  %85 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %last_tpt, align 4
  %div = sdiv i32 %86, 100
  %87 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %expected_tpt85.i, align 4
  %arrayidx131 = getelementptr i32, ptr %88, i32 %idx
  %89 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %90)
  %cmp132.not = icmp slt i32 %div, %90
  br i1 %cmp132.not, label %if.then130.if.end136_crit_edge, label %if.then130.sw.epilog_crit_edge

if.then130.sw.epilog_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then130.if.end136_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end136

if.end136:                                        ; preds = %if.then130.if.end136_crit_edge, %il4965_rs_set_expected_tpt_table.exit.if.end136_crit_edge
  %call137 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %arrayidx4, i32 noundef %idx, i8 noundef zeroext %1)
  %current_rate138 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 8
  %91 = ptrtoint ptr %current_rate138 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call137, ptr %current_rate138, align 8
  br label %out

sw.epilog:                                        ; preds = %if.then130.sw.epilog_crit_edge, %if.then113.sw.epilog_crit_edge, %land.lhs.true91.sw.epilog_crit_edge, %land.lhs.true82.sw.epilog_crit_edge, %if.end75.sw.epilog_crit_edge, %do.end55.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %if.end35.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge, %do.end15.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge
  %92 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %action, align 8
  %inc140 = add i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc140)
  %cmp143 = icmp ugt i8 %inc140, 5
  %spec.select = select i1 %cmp143, i8 0, i8 %inc140
  %94 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %spec.select, ptr %action, align 8
  %cmp151 = icmp eq i8 %spec.select, %9
  br i1 %cmp151, label %for.end, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx4, align 8
  br label %cleanup169

out:                                              ; preds = %if.end136, %il4965_rs_toggle_antenna.exit
  %search_better_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %96 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %search_better_tbl, align 1
  %97 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %action, align 8
  %inc156 = add i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc156)
  %cmp159 = icmp ugt i8 %inc156, 5
  %spec.select3 = select i1 %cmp159, i8 0, i8 %inc156
  %99 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.select3, ptr %action, align 8
  %action167 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 5
  %100 = ptrtoint ptr %action167 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %spec.select3, ptr %action167, align 8
  br label %cleanup169

cleanup169.critedge:                              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %search_better_tbl.c = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %101 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %search_better_tbl.c, align 1
  %102 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %action, align 8
  %inc156.c = add i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc156.c)
  %cmp159.c = icmp ugt i8 %inc156.c, 5
  %spec.select3.c = select i1 %cmp159.c, i8 0, i8 %inc156.c
  %104 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %spec.select3.c, ptr %action, align 8
  br label %cleanup169

cleanup169:                                       ; preds = %cleanup169.critedge, %out, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_move_mimo2_to_other(ptr noundef %il, ptr noundef %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %2 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lq_sta, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom
  %sub = sub nsw i32 1, %idxprom
  %arrayidx4 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub
  %ht_cap7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %valid_tx_ant8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 7
  %4 = ptrtoint ptr %valid_tx_ant8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_tx_ant8, align 2
  %tx_chains_num10 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 5
  %6 = ptrtoint ptr %tx_chains_num10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_chains_num10, align 4
  %action = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 5
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %action, align 8
  %action_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %is_ht40 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 3
  %debug_level.i9 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %is_SGI = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 2
  %is_SGI101 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 2
  %is_ht40.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 3
  %is_dup.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %is_agg.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %expected_tpt85.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 7
  %last_tpt = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  %ant_type54 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp ult i8 %7, 3
  %success_ratio = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom, i32 9, i32 %idx, i32 2
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %10 = phi i8 [ %spec.select, %sw.epilog.for.cond_crit_edge ], [ %9, %entry ]
  %11 = ptrtoint ptr %action_counter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %action_counter, align 8
  %inc = add i8 %12, 1
  store i8 %inc, ptr %action_counter, align 8
  %13 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.224)
  switch i8 %10, label %for.cond.sw.epilog_crit_edge [
    i8 0, label %for.cond.do.body_crit_edge
    i8 1, label %for.cond.do.body_crit_edge25
    i8 2, label %for.cond.do.body30_crit_edge
    i8 3, label %for.cond.do.body30_crit_edge26
    i8 4, label %for.cond.do.body30_crit_edge27
    i8 5, label %sw.bb68
  ]

for.cond.do.body30_crit_edge27:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30

for.cond.do.body30_crit_edge26:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30

for.cond.do.body30_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body30

for.cond.do.body_crit_edge25:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %for.cond.do.body_crit_edge25
  %14 = ptrtoint ptr %debug_level.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_level.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %16 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %16, %if.else.i ], [ %15, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end15_crit_edge, label %do.end

il_get_debug_level.exit.do.end15_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150) #16
  br label %do.end15

do.end15:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end15_crit_edge
  br i1 %cmp, label %do.end15.sw.epilog_crit_edge, label %if.end19

do.end15.sw.epilog_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end19:                                         ; preds = %do.end15
  %21 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %success_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %22)
  %cmp20 = icmp sgt i32 %22, 12799
  br i1 %cmp20, label %if.end19.sw.epilog_crit_edge, label %if.end23

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end23:                                         ; preds = %if.end19
  %23 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %24 = ptrtoint ptr %ant_type54 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ant_type54, align 4
  %26 = add i8 %25, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %26)
  %27 = icmp ult i8 %26, 7
  %and6.i.i = and i8 %25, %5
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i.i, i8 %25)
  %cmp.i.not.i = icmp eq i8 %and6.i.i, %25
  %or.cond = select i1 %27, i1 %cmp.i.not.i, i1 false
  br i1 %or.cond, label %if.end23.while.cond.i_crit_edge, label %if.end23.sw.epilog_crit_edge

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end23.while.cond.i_crit_edge:                  ; preds = %if.end23
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %if.end23.while.cond.i_crit_edge
  %idxprom.pn.in.i = phi i8 [ %new_ant_type.0.i, %land.rhs.i.while.cond.i_crit_edge ], [ %25, %if.end23.while.cond.i_crit_edge ]
  %idxprom.pn.i = zext i8 %idxprom.pn.in.i to i32
  %new_ant_type.0.in.i = getelementptr [8 x i8], ptr @ant_toggle_lookup, i32 0, i32 %idxprom.pn.i
  %28 = ptrtoint ptr %new_ant_type.0.in.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %new_ant_type.0.i = load i8, ptr %new_ant_type.0.in.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_ant_type.0.i, i8 %25)
  %cmp12.not.i = icmp eq i8 %new_ant_type.0.i, %25
  br i1 %cmp12.not.i, label %while.cond.i.sw.epilog_crit_edge, label %land.rhs.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.rhs.i:                                       ; preds = %while.cond.i
  %and6.i41.i = and i8 %new_ant_type.0.i, %5
  %cmp.i42.not.i = icmp eq i8 %and6.i41.i, %new_ant_type.0.i
  br i1 %cmp.i42.not.i, label %il4965_rs_toggle_antenna.exit, label %land.rhs.i.while.cond.i_crit_edge

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

il4965_rs_toggle_antenna.exit:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %current_rate.le = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 8
  %conv9.le.i = zext i8 %new_ant_type.0.i to i32
  %29 = ptrtoint ptr %ant_type54 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %new_ant_type.0.i, ptr %ant_type54, align 4
  %30 = ptrtoint ptr %current_rate.le to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %current_rate.le, align 4
  %and.i = and i32 %31, -114689
  %shl.i = shl nuw nsw i32 %conv9.le.i, 14
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %current_rate.le, align 4
  br label %out

do.body30:                                        ; preds = %for.cond.do.body30_crit_edge, %for.cond.do.body30_crit_edge26, %for.cond.do.body30_crit_edge27
  %32 = ptrtoint ptr %debug_level.i9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_level.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i5 = icmp eq i32 %33, 0
  br i1 %tobool.not.i5, label %if.else.i6, label %do.body30.il_get_debug_level.exit8_crit_edge

do.body30.il_get_debug_level.exit8_crit_edge:     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit8

if.else.i6:                                       ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %34 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit8

il_get_debug_level.exit8:                         ; preds = %if.else.i6, %do.body30.il_get_debug_level.exit8_crit_edge
  %retval.0.i7 = phi i32 [ %34, %if.else.i6 ], [ %33, %do.body30.il_get_debug_level.exit8_crit_edge ]
  %and32 = and i32 %retval.0.i7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %il_get_debug_level.exit8.do.end43_crit_edge, label %do.end37

il_get_debug_level.exit8.do.end43_crit_edge:      ; preds = %il_get_debug_level.exit8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43

do.end37:                                         ; preds = %il_get_debug_level.exit8
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %il, align 8
  %wiphy39 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy39, align 8
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.150) #16
  br label %do.end43

do.end43:                                         ; preds = %do.end37, %il_get_debug_level.exit8.do.end43_crit_edge
  %39 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %40 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %switch.selectcmp = icmp eq i8 %41, 3
  %switch.select = select i1 %switch.selectcmp, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %switch.selectcmp20 = icmp eq i8 %41, 2
  %switch.select21 = select i1 %switch.selectcmp20, i8 1, i8 %switch.select
  %42 = ptrtoint ptr %ant_type54 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %switch.select21, ptr %ant_type54, align 4
  %and6.i = and i8 %switch.select21, %5
  call void @__sanitizer_cov_trace_cmp1(i8 %and6.i, i8 %switch.select21)
  %cmp.i.not = icmp eq i8 %and6.i, %switch.select21
  br i1 %cmp.i.not, label %if.end63, label %do.end43.sw.epilog_crit_edge

do.end43.sw.epilog_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end63:                                         ; preds = %do.end43
  %call64 = tail call fastcc i32 @il4965_rs_switch_to_siso(ptr noundef %il, ptr noundef %lq_sta, ptr noundef %conf, ptr noundef %sta, ptr noundef %arrayidx4, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %cleanup143.critedge, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb68:                                          ; preds = %for.cond
  %43 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool69.not = icmp eq i8 %44, 0
  %45 = ptrtoint ptr %ht_cap7 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ht_cap7, align 2
  br i1 %tobool69.not, label %land.lhs.true, label %land.lhs.true78

land.lhs.true:                                    ; preds = %sw.bb68
  %47 = and i16 %46, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool72.not = icmp eq i16 %47, 0
  br i1 %tobool72.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.do.body85_crit_edge

land.lhs.true.do.body85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body85

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true78:                                  ; preds = %sw.bb68
  %48 = and i16 %46, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool82.not = icmp eq i16 %48, 0
  br i1 %tobool82.not, label %land.lhs.true78.sw.epilog_crit_edge, label %land.lhs.true78.do.body85_crit_edge

land.lhs.true78.do.body85_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body85

land.lhs.true78.sw.epilog_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body85:                                        ; preds = %land.lhs.true78.do.body85_crit_edge, %land.lhs.true.do.body85_crit_edge
  %49 = ptrtoint ptr %debug_level.i9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_level.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i10 = icmp eq i32 %50, 0
  br i1 %tobool.not.i10, label %if.else.i11, label %do.body85.il_get_debug_level.exit13_crit_edge

do.body85.il_get_debug_level.exit13_crit_edge:    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit13

if.else.i11:                                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %51 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit13

il_get_debug_level.exit13:                        ; preds = %if.else.i11, %do.body85.il_get_debug_level.exit13_crit_edge
  %retval.0.i12 = phi i32 [ %51, %if.else.i11 ], [ %50, %do.body85.il_get_debug_level.exit13_crit_edge ]
  %and87 = and i32 %retval.0.i12, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %il_get_debug_level.exit13.do.end98_crit_edge, label %do.end92

il_get_debug_level.exit13.do.end98_crit_edge:     ; preds = %il_get_debug_level.exit13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end98

do.end92:                                         ; preds = %il_get_debug_level.exit13
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %il, align 8
  %wiphy94 = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wiphy94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy94, align 8
  %dev95 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev95, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.150) #16
  br label %do.end98

do.end98:                                         ; preds = %do.end92, %il_get_debug_level.exit13.do.end98_crit_edge
  %56 = call ptr @memcpy(ptr %arrayidx4, ptr %arrayidx, i32 24)
  %57 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool99.not = icmp eq i8 %58, 0
  %conv100 = zext i1 %tobool99.not to i8
  %59 = ptrtoint ptr %is_SGI101 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv100, ptr %is_SGI101, align 1
  %60 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx4, align 8
  %.off.i = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end46.i, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %do.end98
  %.b145.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i, label %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, label %if.then.i, !prof !399

land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.then.i:                                        ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i:                                       ; preds = %do.end98
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %61, label %land.lhs.true69.i [
    i32 1, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
    i32 2, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge28
    i32 3, label %land.lhs.true.i
  ]

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge28: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true.i:                                  ; preds = %if.end46.i
  %63 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %is_ht40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool57.not.i = icmp eq i8 %64, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %lor.lhs.false58.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false58.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_dup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool59.not.i = icmp eq i8 %66, 0
  %spec.select.i = select i1 %tobool59.not.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i

land.lhs.true69.i:                                ; preds = %if.end46.i
  %67 = ptrtoint ptr %is_ht40.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_ht40.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool71.not.i = icmp eq i8 %68, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end80.i_crit_edge, label %lor.lhs.false72.i

land.lhs.true69.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false72.i:                                ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %is_dup.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_dup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool75.not.i = icmp eq i8 %70, 0
  %spec.select150.i = select i1 %tobool75.not.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i

if.end80.i:                                       ; preds = %lor.lhs.false72.i, %land.lhs.true69.i.if.end80.i_crit_edge, %lor.lhs.false58.i, %land.lhs.true.i.if.end80.i_crit_edge
  %ht_tbl_pointer.0.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.if.end80.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.if.end80.i_crit_edge ], [ %spec.select.i, %lor.lhs.false58.i ], [ %spec.select150.i, %lor.lhs.false72.i ]
  %71 = ptrtoint ptr %is_SGI101 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_SGI101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool81.not.i = icmp eq i8 %72, 0
  %73 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_agg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool83.not.i = icmp eq i8 %74, 0
  br i1 %tobool81.not.i, label %land.lhs.true82.i, label %land.lhs.true90.i

land.lhs.true82.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select16.idx = select i1 %tobool83.not.i, i32 0, i32 2
  %spec.select16 = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 %spec.select16.idx
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true90.i:                                ; preds = %if.end80.i
  br i1 %tobool83.not.i, label %if.then93.i, label %if.else108.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit

if.else108.i:                                     ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit

il4965_rs_set_expected_tpt_table.exit:            ; preds = %if.else108.i, %if.then93.i, %land.lhs.true82.i, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge28, %if.then.i, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
  %ht_tbl_pointer.0.sink.i = phi ptr [ %arrayidx109.i, %if.else108.i ], [ %arrayidx94.i, %if.then93.i ], [ @expected_tpt_legacy, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.then.i ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge28 ], [ %spec.select16, %land.lhs.true82.i ]
  %75 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %ht_tbl_pointer.0.sink.i, ptr %expected_tpt85.i, align 4
  %76 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool103.not = icmp eq i8 %77, 0
  br i1 %tobool103.not, label %il4965_rs_set_expected_tpt_table.exit.if.end110_crit_edge, label %if.then104

il4965_rs_set_expected_tpt_table.exit.if.end110_crit_edge: ; preds = %il4965_rs_set_expected_tpt_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.then104:                                       ; preds = %il4965_rs_set_expected_tpt_table.exit
  %78 = ptrtoint ptr %last_tpt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %last_tpt, align 4
  %div = sdiv i32 %79, 100
  %80 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %expected_tpt85.i, align 4
  %arrayidx105 = getelementptr i32, ptr %81, i32 %idx
  %82 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx105, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %83)
  %cmp106.not = icmp slt i32 %div, %83
  br i1 %cmp106.not, label %if.then104.if.end110_crit_edge, label %if.then104.sw.epilog_crit_edge

if.then104.sw.epilog_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then104.if.end110_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

if.end110:                                        ; preds = %if.then104.if.end110_crit_edge, %il4965_rs_set_expected_tpt_table.exit.if.end110_crit_edge
  %call111 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %arrayidx4, i32 noundef %idx, i8 noundef zeroext %1)
  %current_rate112 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 8
  %84 = ptrtoint ptr %current_rate112 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call111, ptr %current_rate112, align 8
  br label %out

sw.epilog:                                        ; preds = %if.then104.sw.epilog_crit_edge, %land.lhs.true78.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end63.sw.epilog_crit_edge, %do.end43.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %if.end23.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge, %do.end15.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge
  %85 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %action, align 8
  %inc114 = add i8 %86, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc114)
  %cmp117 = icmp ugt i8 %inc114, 5
  %spec.select = select i1 %cmp117, i8 0, i8 %inc114
  %87 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select, ptr %action, align 8
  %cmp125 = icmp eq i8 %spec.select, %9
  br i1 %cmp125, label %for.end, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx4, align 8
  br label %cleanup143

out:                                              ; preds = %if.end110, %il4965_rs_toggle_antenna.exit
  %search_better_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %89 = ptrtoint ptr %search_better_tbl to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %search_better_tbl, align 1
  %90 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %action, align 8
  %inc130 = add i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc130)
  %cmp133 = icmp ugt i8 %inc130, 5
  %spec.select2 = select i1 %cmp133, i8 0, i8 %inc130
  %92 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %spec.select2, ptr %action, align 8
  %action141 = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %sub, i32 5
  %93 = ptrtoint ptr %action141 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %spec.select2, ptr %action141, align 8
  br label %cleanup143

cleanup143.critedge:                              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %search_better_tbl.c = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 3
  %94 = ptrtoint ptr %search_better_tbl.c to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %search_better_tbl.c, align 1
  %95 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %action, align 8
  %inc130.c = add i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc130.c)
  %cmp133.c = icmp ugt i8 %inc130.c, 5
  %spec.select2.c = select i1 %cmp133.c, i8 0, i8 %inc130.c
  %97 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %spec.select2.c, ptr %action, align 8
  br label %cleanup143

cleanup143:                                       ; preds = %cleanup143.critedge, %out, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_set_stay_in_table(ptr nocapture noundef readonly %il, i8 noundef zeroext %is_legacy, ptr nocapture noundef writeonly %lq_sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end2_crit_edge, label %do.end

il_get_debug_level.exit.do.end2_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end2

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158) #16
  br label %do.end2

do.end2:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end2_crit_edge
  %stay_in_tbl = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 2
  %7 = ptrtoint ptr %stay_in_tbl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %stay_in_tbl, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_legacy)
  %tobool3.not = icmp eq i8 %is_legacy, 0
  %.sink22 = select i1 %tobool3.not, i32 1500, i32 160
  %.sink21 = select i1 %tobool3.not, i32 400, i32 160
  %.sink = select i1 %tobool3.not, i32 4500, i32 480
  %8 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink22, ptr %8, align 8
  %10 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink21, ptr %10, align 4
  %12 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 8
  %table_count = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 8
  %14 = ptrtoint ptr %table_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %table_count, align 4
  %total_failed = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 9
  %15 = ptrtoint ptr %total_failed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total_failed, align 8
  %total_success = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 10
  %16 = ptrtoint ptr %total_success to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %total_success, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %17 to i64
  %flush_timer = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 11
  %18 = ptrtoint ptr %flush_timer to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %flush_timer, align 8
  %action_counter = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 12
  %19 = ptrtoint ptr %action_counter to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %action_counter, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il4965_rs_tl_turn_on_agg(ptr nocapture noundef readonly %il, i8 noundef zeroext %tid, ptr nocapture noundef %lq_data, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %tid)
  %cmp = icmp ult i8 %tid, 8
  br i1 %cmp, label %if.end.i.i, label %do.end

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %0) #13
  %conv.i.i = zext i8 %tid to i32
  %arrayidx.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i
  %rem.i.i = urem i32 %call.i.i, 5
  %sub.i.i = sub i32 %call.i.i, %rem.i.i
  %queue_count.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i, i32 3
  %1 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %queue_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.body19.i_crit_edge, label %if.end3.i.i

if.end.i.i.do.body19.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %cond.i.i = sub i32 %sub.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.i.i)
  %cmp10.i.i = icmp ugt i32 %cond.i.i, 999
  br i1 %cmp10.i.i, label %land.rhs.lr.ph.i.i.i, label %if.end3.i.i.il4965_rs_tl_get_load.exit.i_crit_edge

if.end3.i.i.il4965_rs_tl_get_load.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_tl_get_load.exit.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.end3.i.i
  %sub.i.i.i = add i32 %sub.i.i, -950
  %head.i.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i, i32 4
  %total.i.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i, i32 2
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %add.i28.i.i = phi i32 [ %add.i.i.i, %while.body.i.i.i.land.rhs.i.i.i_crit_edge ], [ %4, %land.rhs.lr.ph.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i28.i.i, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i28.i.i, %sub.i.i.i
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %land.rhs.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge

land.rhs.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_tl_get_load.exit.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %5 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %head.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %6 to i32
  %arrayidx.i.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i, i32 1, i32 %idxprom.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  %9 = ptrtoint ptr %total.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total.i.i.i, align 4
  %sub2.i.i.i = sub i32 %10, %8
  store i32 %sub2.i.i.i, ptr %total.i.i.i, align 4
  store i32 0, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %add.i28.i.i, 50
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i.i.i, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %queue_count.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %queue_count.i.i, align 4
  %dec.i.i.i = add i8 %13, -1
  store i8 %dec.i.i.i, ptr %queue_count.i.i, align 4
  %14 = load i8, ptr %head.i.i.i, align 1
  %inc.i.i.i = add i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %inc.i.i.i)
  %cmp12.i.i.i = icmp ugt i8 %inc.i.i.i, 19
  %spec.select.i.i.i = select i1 %cmp12.i.i.i, i8 0, i8 %inc.i.i.i
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i.i.i, ptr %head.i.i.i, align 1
  %tobool.not.i.i.i = icmp eq i8 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge, label %while.body.i.i.i.land.rhs.i.i.i_crit_edge

while.body.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i.i

while.body.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_tl_get_load.exit.i

il4965_rs_tl_get_load.exit.i:                     ; preds = %while.body.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge, %land.rhs.i.i.i.il4965_rs_tl_get_load.exit.i_crit_edge, %if.end3.i.i.il4965_rs_tl_get_load.exit.i_crit_edge
  %total.i.i = getelementptr %struct.il_lq_sta, ptr %lq_data, i32 0, i32 24, i32 %conv.i.i, i32 2
  %16 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp.i = icmp ugt i32 %17, 10
  br i1 %cmp.i, label %do.body.i, label %il4965_rs_tl_get_load.exit.i.do.body19.i_crit_edge

il4965_rs_tl_get_load.exit.i.do.body19.i_crit_edge: ; preds = %il4965_rs_tl_get_load.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body19.i

do.body.i:                                        ; preds = %il4965_rs_tl_get_load.exit.i
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %18 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i1.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i1.i, label %if.else.i.i, label %do.body.i.il_get_debug_level.exit.i_crit_edge

do.body.i.il_get_debug_level.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %20 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i2.i = phi i32 [ %20, %if.else.i.i ], [ %19, %do.body.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i2.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %il_get_debug_level.exit.i.do.end5.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end5.i_crit_edge:    ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %24, i32 0, i32 56
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, ptr noundef %addr.i, i32 noundef %conv.i.i) #16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end5.i_crit_edge
  %conv6.i = zext i8 %tid to i16
  %call7.i = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv6.i, i16 noundef zeroext 5000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, -11
  br i1 %cmp8.i, label %do.end13.i, label %do.end5.i.if.end_crit_edge

do.end5.i.if.end_crit_edge:                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end13.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.164, i32 noundef %conv.i.i) #16
  %call17.i = tail call i32 @ieee80211_stop_tx_ba_session(ptr noundef %sta, i16 noundef zeroext %conv6.i) #13
  br label %if.end

do.body19.i:                                      ; preds = %il4965_rs_tl_get_load.exit.i.do.body19.i_crit_edge, %if.end.i.i.do.body19.i_crit_edge
  %retval.0.i10.i = phi i32 [ %17, %il4965_rs_tl_get_load.exit.i.do.body19.i_crit_edge ], [ 0, %if.end.i.i.do.body19.i_crit_edge ]
  %debug_level.i3.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %27 = ptrtoint ptr %debug_level.i3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_level.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i4.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i4.i, label %if.else.i5.i, label %do.body19.i.il_get_debug_level.exit7.i_crit_edge

do.body19.i.il_get_debug_level.exit7.i_crit_edge: ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit7.i

if.else.i5.i:                                     ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %29 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit7.i

il_get_debug_level.exit7.i:                       ; preds = %if.else.i5.i, %do.body19.i.il_get_debug_level.exit7.i_crit_edge
  %retval.0.i6.i = phi i32 [ %29, %if.else.i5.i ], [ %28, %do.body19.i.il_get_debug_level.exit7.i_crit_edge ]
  %and21.i = and i32 %retval.0.i6.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %il_get_debug_level.exit7.i.if.end_crit_edge, label %do.end26.i

il_get_debug_level.exit7.i.if.end_crit_edge:      ; preds = %il_get_debug_level.exit7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end26.i:                                       ; preds = %il_get_debug_level.exit7.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %il, align 8
  %wiphy28.i = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy28.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy28.i, align 8
  %dev29.i = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.162, i32 noundef %conv.i.i, i32 noundef %retval.0.i10.i) #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i8 %tid to i32
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %34 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.159, i32 noundef %conv, i32 noundef 8) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %do.end26.i, %il_get_debug_level.exit7.i.if.end_crit_edge, %do.end13.i, %do.end5.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_rs_switch_to_siso(ptr noundef %il, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, ptr nocapture noundef %tbl, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %3, label %lor.lhs.false [
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge128
    i32 0, label %entry.cleanup_crit_edge129
  ]

entry.cleanup_crit_edge129:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge128:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ht_supported, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %7 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %9 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.else.i ], [ %8, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %il_get_debug_level.exit.do.end8_crit_edge, label %do.end

il_get_debug_level.exit.do.end8_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118) #16
  br label %do.end8

do.end8:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end8_crit_edge
  %is_dup = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %14 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_dup, align 2
  %is_dup9 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %16 = ptrtoint ptr %is_dup9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %is_dup9, align 1
  %17 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %tbl, align 8
  %action = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 5
  %18 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %action, align 8
  %max_search = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %19 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %max_search, align 1
  %active_siso_rate = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 18
  %20 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %active_siso_rate, align 2
  %call11 = tail call zeroext i1 @il_is_ht40_tx_allowed(ptr noundef %il, ptr noundef %ht_cap) #13
  %spec.select127 = zext i1 %call11 to i8
  %22 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select127, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool15.not = icmp eq i8 %1, 0
  br i1 %tobool15.not, label %do.end8.if.end17_crit_edge, label %if.then16

do.end8.if.end17_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %is_SGI = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %24 = ptrtoint ptr %is_SGI to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_SGI, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.end8.if.end17_crit_edge
  %25 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tbl, align 8
  %.off.i = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end46.i, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %if.end17
  %.b145.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i, label %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, label %if.then.i, !prof !399

land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.then.i:                                        ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i:                                       ; preds = %if.end17
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %26, label %land.lhs.true69.i [
    i32 1, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
    i32 2, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge130
    i32 3, label %land.lhs.true.i
  ]

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge130: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true.i:                                  ; preds = %if.end46.i
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool57.not.i = icmp eq i8 %29, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %lor.lhs.false58.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false58.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool59.not.i = icmp eq i8 %31, 0
  %spec.select.i = select i1 %tobool59.not.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i

land.lhs.true69.i:                                ; preds = %if.end46.i
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool71.not.i = icmp eq i8 %33, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end80.i_crit_edge, label %lor.lhs.false72.i

land.lhs.true69.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false72.i:                                ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool75.not.i = icmp eq i8 %35, 0
  %spec.select150.i = select i1 %tobool75.not.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i

if.end80.i:                                       ; preds = %lor.lhs.false72.i, %land.lhs.true69.i.if.end80.i_crit_edge, %lor.lhs.false58.i, %land.lhs.true.i.if.end80.i_crit_edge
  %ht_tbl_pointer.0.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.if.end80.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.if.end80.i_crit_edge ], [ %spec.select.i, %lor.lhs.false58.i ], [ %spec.select150.i, %lor.lhs.false72.i ]
  %is_SGI.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %36 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_SGI.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool81.not.i = icmp eq i8 %37, 0
  %is_agg.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %38 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_agg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool83.not.i = icmp eq i8 %39, 0
  br i1 %tobool81.not.i, label %land.lhs.true82.i, label %land.lhs.true90.i

land.lhs.true82.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.idx = select i1 %tobool83.not.i, i32 0, i32 2
  %spec.select = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 %spec.select.idx
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true90.i:                                ; preds = %if.end80.i
  br i1 %tobool83.not.i, label %if.then93.i, label %if.else108.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit

if.else108.i:                                     ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit

il4965_rs_set_expected_tpt_table.exit:            ; preds = %if.else108.i, %if.then93.i, %land.lhs.true82.i, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge130, %if.then.i, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
  %ht_tbl_pointer.0.sink.i = phi ptr [ %arrayidx109.i, %if.else108.i ], [ %arrayidx94.i, %if.then93.i ], [ @expected_tpt_legacy, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.then.i ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge130 ], [ %spec.select, %land.lhs.true82.i ]
  %expected_tpt85.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %40 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ht_tbl_pointer.0.sink.i, ptr %expected_tpt85.i, align 4
  %41 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lq_sta, align 8
  %idxprom.i = zext i8 %42 to i32
  %sext = shl i32 %idx, 24
  %idxprom2.i = ashr exact i32 %sext, 24
  %success_ratio.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom.i, i32 9, i32 %idxprom2.i, i32 2
  %43 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_ratio.i, align 4
  %expected_tpt.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom.i, i32 7
  %45 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %expected_tpt.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %46, i32 %idxprom2.i
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx5.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %44)
  %cmp12.i = icmp slt i32 %44, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %44)
  %cmp15.i = icmp sgt i32 %44, 10880
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %44)
  %cmp22.i = icmp slt i32 %44, 10880
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %il4965_rs_set_expected_tpt_table.exit
  %new_rate.0.i = phi i32 [ 13, %il4965_rs_set_expected_tpt_table.exit ], [ %new_rate.0.i.be, %for.cond.i.backedge ]
  %start_hi.0.i = phi i32 [ 13, %il4965_rs_set_expected_tpt_table.exit ], [ %start_hi.0.i.be, %for.cond.i.backedge ]
  %rate.0.i.in = phi i32 [ %idx, %il4965_rs_set_expected_tpt_table.exit ], [ %rate.0.i.in.be, %for.cond.i.backedge ]
  %rate.0.i = trunc i32 %rate.0.i.in to i8
  %49 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tbl, align 8
  %call.i = tail call fastcc zeroext i16 @il4965_rs_get_adjacent_rate(ptr noundef %il, i8 noundef zeroext %rate.0.i, i16 noundef zeroext %21, i32 noundef %50) #13
  %conv.i = zext i16 %call.i to i32
  %and.i = and i32 %conv.i, 255
  %51 = lshr i32 %conv.i, 8
  %sext126 = shl i32 %rate.0.i.in, 24
  %idxprom9.i = ashr exact i32 %sext126, 24
  %arrayidx10.i = getelementptr i32, ptr %ht_tbl_pointer.0.sink.i, i32 %idxprom9.i
  %52 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx10.i, align 4
  %mul.i = mul i32 %53, 100
  %54 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %55)
  %cmp.i = icmp sle i32 %mul.i, %55
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp12.i
  %or.cond74.i = select i1 %or.cond.i, i1 true, i1 %cmp15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %48)
  %cmp20.not.i = icmp sgt i32 %53, %48
  %or.cond75.i = select i1 %or.cond74.i, i1 true, i1 %cmp20.not.i
  %cmp20.not.not.i = xor i1 %cmp20.not.i, true
  %brmerge.i = select i1 %cmp22.i, i1 true, i1 %cmp20.not.not.i
  %or.cond76.i = select i1 %or.cond75.i, i1 %brmerge.i, i1 false
  br i1 %or.cond76.i, label %if.else38.i, label %if.then.i110

if.then.i110:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %start_hi.0.i)
  %cmp29.not.i = icmp eq i32 %start_hi.0.i, 13
  br i1 %cmp29.not.i, label %if.end.i, label %if.then.i110.il4965_rs_get_best_rate.exit_crit_edge

if.then.i110.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.end.i:                                         ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp33.not.i = icmp eq i32 %and.i, 13
  br i1 %cmp33.not.i, label %if.end.i.il4965_rs_get_best_rate.exit_crit_edge, label %if.end.i.for.cond.i.backedge_crit_edge

if.end.i.for.cond.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

if.end.i.il4965_rs_get_best_rate.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.else38.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.0.i)
  %cmp39.not.i = icmp eq i32 %new_rate.0.i, 13
  br i1 %cmp39.not.i, label %if.else42.i, label %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge

if.else38.i.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.else42.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %51)
  %cmp43.not.i = icmp eq i32 %51, 13
  br i1 %cmp43.not.i, label %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge, label %if.else42.i.for.cond.i.backedge_crit_edge

if.else42.i.for.cond.i.backedge_crit_edge:        ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

if.else42.i.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

for.cond.i.backedge:                              ; preds = %if.else42.i.for.cond.i.backedge_crit_edge, %if.end.i.for.cond.i.backedge_crit_edge
  %new_rate.0.i.be = phi i32 [ %idxprom9.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ 13, %if.else42.i.for.cond.i.backedge_crit_edge ]
  %start_hi.0.i.be = phi i32 [ 13, %if.end.i.for.cond.i.backedge_crit_edge ], [ %51, %if.else42.i.for.cond.i.backedge_crit_edge ]
  %rate.0.i.in.be = phi i32 [ %and.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ %51, %if.else42.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

il4965_rs_get_best_rate.exit:                     ; preds = %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge, %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge, %if.end.i.il4965_rs_get_best_rate.exit_crit_edge, %if.then.i110.il4965_rs_get_best_rate.exit_crit_edge
  %new_rate.2.i = phi i32 [ %idxprom9.i, %if.end.i.il4965_rs_get_best_rate.exit_crit_edge ], [ %new_rate.0.i, %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge ], [ %start_hi.0.i, %if.then.i110.il4965_rs_get_best_rate.exit_crit_edge ], [ %idxprom9.i, %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge ]
  %56 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i112 = icmp eq i32 %57, 0
  br i1 %tobool.not.i112, label %if.else.i113, label %il4965_rs_get_best_rate.exit.il_get_debug_level.exit115_crit_edge

il4965_rs_get_best_rate.exit.il_get_debug_level.exit115_crit_edge: ; preds = %il4965_rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit115

if.else.i113:                                     ; preds = %il4965_rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %58 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit115

il_get_debug_level.exit115:                       ; preds = %if.else.i113, %il4965_rs_get_best_rate.exit.il_get_debug_level.exit115_crit_edge
  %retval.0.i114 = phi i32 [ %58, %if.else.i113 ], [ %57, %il4965_rs_get_best_rate.exit.il_get_debug_level.exit115_crit_edge ]
  %and21 = and i32 %retval.0.i114, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %il_get_debug_level.exit115.do.end33_crit_edge, label %do.end26

il_get_debug_level.exit115.do.end33_crit_edge:    ; preds = %il_get_debug_level.exit115
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

do.end26:                                         ; preds = %il_get_debug_level.exit115
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %il, align 8
  %wiphy28 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wiphy28 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy28, align 8
  %dev29 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56
  %conv30 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.118, i32 noundef %new_rate.2.i, i32 noundef %conv30) #16
  br label %do.end33

do.end33:                                         ; preds = %do.end26, %il_get_debug_level.exit115.do.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.2.i)
  %cmp = icmp eq i32 %new_rate.2.i, 13
  br i1 %cmp, label %do.end33.do.body40_crit_edge, label %lor.lhs.false35

do.end33.do.body40_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

lor.lhs.false35:                                  ; preds = %do.end33
  %shl = shl nuw i32 1, %new_rate.2.i
  %conv36 = zext i16 %21 to i32
  %and37 = and i32 %shl, %conv36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false35.do.body40_crit_edge, label %if.end55

lor.lhs.false35.do.body40_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40

do.body40:                                        ; preds = %lor.lhs.false35.do.body40_crit_edge, %do.end33.do.body40_crit_edge
  %63 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i117 = icmp eq i32 %64, 0
  br i1 %tobool.not.i117, label %if.else.i118, label %do.body40.il_get_debug_level.exit120_crit_edge

do.body40.il_get_debug_level.exit120_crit_edge:   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit120

if.else.i118:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %65 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit120

il_get_debug_level.exit120:                       ; preds = %if.else.i118, %do.body40.il_get_debug_level.exit120_crit_edge
  %retval.0.i119 = phi i32 [ %65, %if.else.i118 ], [ %64, %do.body40.il_get_debug_level.exit120_crit_edge ]
  %and42 = and i32 %retval.0.i119, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %il_get_debug_level.exit120.cleanup_crit_edge, label %do.end47

il_get_debug_level.exit120.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end47:                                         ; preds = %il_get_debug_level.exit120
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %il, align 8
  %wiphy49 = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wiphy49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy49, align 8
  %dev50 = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  %conv51 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.118, i32 noundef %new_rate.2.i, i32 noundef %conv51) #16
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false35
  %call56 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %tbl, i32 noundef %new_rate.2.i, i8 noundef zeroext %1)
  %current_rate = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 8
  %70 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call56, ptr %current_rate, align 8
  %71 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i122 = icmp eq i32 %72, 0
  br i1 %tobool.not.i122, label %if.else.i123, label %if.end55.il_get_debug_level.exit125_crit_edge

if.end55.il_get_debug_level.exit125_crit_edge:    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit125

if.else.i123:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %73 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit125

il_get_debug_level.exit125:                       ; preds = %if.else.i123, %if.end55.il_get_debug_level.exit125_crit_edge
  %retval.0.i124 = phi i32 [ %73, %if.else.i123 ], [ %72, %if.end55.il_get_debug_level.exit125_crit_edge ]
  %and59 = and i32 %retval.0.i124, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %il_get_debug_level.exit125.cleanup_crit_edge, label %do.end64

il_get_debug_level.exit125.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end64:                                         ; preds = %il_get_debug_level.exit125
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %il, align 8
  %wiphy66 = getelementptr inbounds %struct.ieee80211_hw, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %wiphy66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wiphy66, align 8
  %dev67 = getelementptr inbounds %struct.wiphy, ptr %77, i32 0, i32 56
  %conv69 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.118, i32 noundef %call56, i32 noundef %conv69) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %il_get_debug_level.exit125.cleanup_crit_edge, %do.end47, %il_get_debug_level.exit120.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge128, %entry.cleanup_crit_edge129
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %do.end47 ], [ -1, %il_get_debug_level.exit120.cleanup_crit_edge ], [ 0, %do.end64 ], [ 0, %il_get_debug_level.exit125.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge128 ], [ -1, %entry.cleanup_crit_edge129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_rs_switch_to_mimo2(ptr noundef %il, ptr nocapture noundef readonly %lq_sta, ptr nocapture noundef readonly %conf, ptr noundef %sta, ptr nocapture noundef %tbl, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_green1 = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 13
  %0 = ptrtoint ptr %is_green1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_green1, align 1
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %3, label %lor.lhs.false [
    i32 6, label %entry.cleanup_crit_edge
    i32 7, label %entry.cleanup_crit_edge133
    i32 0, label %entry.cleanup_crit_edge134
  ]

entry.cleanup_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ht_supported, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %smps_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 15
  %7 = ptrtoint ptr %smps_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smps_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_chains_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 5
  %9 = ptrtoint ptr %tx_chains_num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_chains_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp4 = icmp ult i8 %10, 2
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end3
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %11 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %13 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.else.i ], [ %12, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %il_get_debug_level.exit.do.end14_crit_edge, label %do.end

il_get_debug_level.exit.do.end14_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #16
  br label %do.end14

do.end14:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end14_crit_edge
  %18 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %tbl, align 8
  %is_dup = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 14
  %19 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_dup, align 2
  %is_dup15 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 4
  %21 = ptrtoint ptr %is_dup15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %is_dup15, align 1
  %action = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 5
  %22 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %action, align 8
  %max_search = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 6
  %23 = ptrtoint ptr %max_search to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %max_search, align 1
  %active_mimo2_rate = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 19
  %24 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %active_mimo2_rate, align 8
  %call17 = tail call zeroext i1 @il_is_ht40_tx_allowed(ptr noundef %il, ptr noundef %ht_cap) #13
  %spec.select132 = zext i1 %call17 to i8
  %26 = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select132, ptr %26, align 2
  %28 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tbl, align 8
  %.off.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end46.i, label %land.rhs9.i

land.rhs9.i:                                      ; preds = %do.end14
  %.b145.i = load i1, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  br i1 %.b145.i, label %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, label %if.then.i, !prof !399

land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.then.i:                                        ; preds = %land.rhs9.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il4965_rs_set_expected_tpt_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #13
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i:                                       ; preds = %do.end14
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %29, label %land.lhs.true69.i [
    i32 1, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
    i32 2, label %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge135
    i32 3, label %land.lhs.true.i
  ]

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge135: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true.i:                                  ; preds = %if.end46.i
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool57.not.i = icmp eq i8 %32, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %lor.lhs.false58.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false58.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool59.not.i = icmp eq i8 %34, 0
  %spec.select.i = select i1 %tobool59.not.i, ptr @expected_tpt_siso40MHz, ptr @expected_tpt_siso20MHz
  br label %if.end80.i

land.lhs.true69.i:                                ; preds = %if.end46.i
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool71.not.i = icmp eq i8 %36, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.if.end80.i_crit_edge, label %lor.lhs.false72.i

land.lhs.true69.i.if.end80.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80.i

lor.lhs.false72.i:                                ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_dup, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool75.not.i = icmp eq i8 %38, 0
  %spec.select150.i = select i1 %tobool75.not.i, ptr @expected_tpt_mimo2_40MHz, ptr @expected_tpt_mimo2_20MHz
  br label %if.end80.i

if.end80.i:                                       ; preds = %lor.lhs.false72.i, %land.lhs.true69.i.if.end80.i_crit_edge, %lor.lhs.false58.i, %land.lhs.true.i.if.end80.i_crit_edge
  %ht_tbl_pointer.0.i = phi ptr [ @expected_tpt_siso20MHz, %land.lhs.true.i.if.end80.i_crit_edge ], [ @expected_tpt_mimo2_20MHz, %land.lhs.true69.i.if.end80.i_crit_edge ], [ %spec.select.i, %lor.lhs.false58.i ], [ %spec.select150.i, %lor.lhs.false72.i ]
  %is_SGI.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 2
  %39 = ptrtoint ptr %is_SGI.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %is_SGI.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool81.not.i = icmp eq i8 %40, 0
  %is_agg.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 30
  %41 = ptrtoint ptr %is_agg.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_agg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool83.not.i = icmp eq i8 %42, 0
  br i1 %tobool81.not.i, label %land.lhs.true82.i, label %land.lhs.true90.i

land.lhs.true82.i:                                ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #15
  %spec.select.idx = select i1 %tobool83.not.i, i32 0, i32 2
  %spec.select = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 %spec.select.idx
  br label %il4965_rs_set_expected_tpt_table.exit

land.lhs.true90.i:                                ; preds = %if.end80.i
  br i1 %tobool83.not.i, label %if.then93.i, label %if.else108.i

if.then93.i:                                      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx94.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 1
  br label %il4965_rs_set_expected_tpt_table.exit

if.else108.i:                                     ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx109.i = getelementptr [13 x i32], ptr %ht_tbl_pointer.0.i, i32 3
  br label %il4965_rs_set_expected_tpt_table.exit

il4965_rs_set_expected_tpt_table.exit:            ; preds = %if.else108.i, %if.then93.i, %land.lhs.true82.i, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge135, %if.then.i, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge
  %ht_tbl_pointer.0.sink.i = phi ptr [ %arrayidx109.i, %if.else108.i ], [ %arrayidx94.i, %if.then93.i ], [ @expected_tpt_legacy, %land.rhs9.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.then.i ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge ], [ @expected_tpt_legacy, %if.end46.i.il4965_rs_set_expected_tpt_table.exit_crit_edge135 ], [ %spec.select, %land.lhs.true82.i ]
  %expected_tpt85.i = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 7
  %43 = ptrtoint ptr %expected_tpt85.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ht_tbl_pointer.0.sink.i, ptr %expected_tpt85.i, align 4
  %44 = ptrtoint ptr %lq_sta to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lq_sta, align 8
  %idxprom.i = zext i8 %45 to i32
  %sext = shl i32 %idx, 24
  %idxprom2.i = ashr exact i32 %sext, 24
  %success_ratio.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom.i, i32 9, i32 %idxprom2.i, i32 2
  %46 = ptrtoint ptr %success_ratio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %success_ratio.i, align 4
  %expected_tpt.i = getelementptr %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 23, i32 %idxprom.i, i32 7
  %48 = ptrtoint ptr %expected_tpt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %expected_tpt.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %49, i32 %idxprom2.i
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i, align 4
  %last_tpt.i = getelementptr inbounds %struct.il_lq_sta, ptr %lq_sta, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1921, i32 %47)
  %cmp12.i = icmp slt i32 %47, 1921
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %47)
  %cmp15.i = icmp sgt i32 %47, 10880
  call void @__sanitizer_cov_trace_const_cmp4(i32 10880, i32 %47)
  %cmp22.i = icmp slt i32 %47, 10880
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %il4965_rs_set_expected_tpt_table.exit
  %new_rate.0.i = phi i32 [ 13, %il4965_rs_set_expected_tpt_table.exit ], [ %new_rate.0.i.be, %for.cond.i.backedge ]
  %start_hi.0.i = phi i32 [ 13, %il4965_rs_set_expected_tpt_table.exit ], [ %start_hi.0.i.be, %for.cond.i.backedge ]
  %rate.0.i.in = phi i32 [ %idx, %il4965_rs_set_expected_tpt_table.exit ], [ %rate.0.i.in.be, %for.cond.i.backedge ]
  %rate.0.i = trunc i32 %rate.0.i.in to i8
  %52 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tbl, align 8
  %call.i = tail call fastcc zeroext i16 @il4965_rs_get_adjacent_rate(ptr noundef %il, i8 noundef zeroext %rate.0.i, i16 noundef zeroext %25, i32 noundef %53) #13
  %conv.i = zext i16 %call.i to i32
  %and.i = and i32 %conv.i, 255
  %54 = lshr i32 %conv.i, 8
  %sext131 = shl i32 %rate.0.i.in, 24
  %idxprom9.i = ashr exact i32 %sext131, 24
  %arrayidx10.i = getelementptr i32, ptr %ht_tbl_pointer.0.sink.i, i32 %idxprom9.i
  %55 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx10.i, align 4
  %mul.i = mul i32 %56, 100
  %57 = ptrtoint ptr %last_tpt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_tpt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %58)
  %cmp.i = icmp sle i32 %mul.i, %58
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp12.i
  %or.cond74.i = select i1 %or.cond.i, i1 true, i1 %cmp15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %51)
  %cmp20.not.i = icmp sgt i32 %56, %51
  %or.cond75.i = select i1 %or.cond74.i, i1 true, i1 %cmp20.not.i
  %cmp20.not.not.i = xor i1 %cmp20.not.i, true
  %brmerge.i = select i1 %cmp22.i, i1 true, i1 %cmp20.not.not.i
  %or.cond76.i = select i1 %or.cond75.i, i1 %brmerge.i, i1 false
  br i1 %or.cond76.i, label %if.else38.i, label %if.then.i115

if.then.i115:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %start_hi.0.i)
  %cmp29.not.i = icmp eq i32 %start_hi.0.i, 13
  br i1 %cmp29.not.i, label %if.end.i, label %if.then.i115.il4965_rs_get_best_rate.exit_crit_edge

if.then.i115.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.end.i:                                         ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i)
  %cmp33.not.i = icmp eq i32 %and.i, 13
  br i1 %cmp33.not.i, label %if.end.i.il4965_rs_get_best_rate.exit_crit_edge, label %if.end.i.for.cond.i.backedge_crit_edge

if.end.i.for.cond.i.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

if.end.i.il4965_rs_get_best_rate.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.else38.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.0.i)
  %cmp39.not.i = icmp eq i32 %new_rate.0.i, 13
  br i1 %cmp39.not.i, label %if.else42.i, label %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge

if.else38.i.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

if.else42.i:                                      ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %54)
  %cmp43.not.i = icmp eq i32 %54, 13
  br i1 %cmp43.not.i, label %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge, label %if.else42.i.for.cond.i.backedge_crit_edge

if.else42.i.for.cond.i.backedge_crit_edge:        ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.backedge

if.else42.i.il4965_rs_get_best_rate.exit_crit_edge: ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il4965_rs_get_best_rate.exit

for.cond.i.backedge:                              ; preds = %if.else42.i.for.cond.i.backedge_crit_edge, %if.end.i.for.cond.i.backedge_crit_edge
  %new_rate.0.i.be = phi i32 [ %idxprom9.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ 13, %if.else42.i.for.cond.i.backedge_crit_edge ]
  %start_hi.0.i.be = phi i32 [ 13, %if.end.i.for.cond.i.backedge_crit_edge ], [ %54, %if.else42.i.for.cond.i.backedge_crit_edge ]
  %rate.0.i.in.be = phi i32 [ %and.i, %if.end.i.for.cond.i.backedge_crit_edge ], [ %54, %if.else42.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

il4965_rs_get_best_rate.exit:                     ; preds = %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge, %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge, %if.end.i.il4965_rs_get_best_rate.exit_crit_edge, %if.then.i115.il4965_rs_get_best_rate.exit_crit_edge
  %new_rate.2.i = phi i32 [ %idxprom9.i, %if.end.i.il4965_rs_get_best_rate.exit_crit_edge ], [ %new_rate.0.i, %if.else38.i.il4965_rs_get_best_rate.exit_crit_edge ], [ %start_hi.0.i, %if.then.i115.il4965_rs_get_best_rate.exit_crit_edge ], [ %idxprom9.i, %if.else42.i.il4965_rs_get_best_rate.exit_crit_edge ]
  %59 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i117 = icmp eq i32 %60, 0
  br i1 %tobool.not.i117, label %if.else.i118, label %il4965_rs_get_best_rate.exit.il_get_debug_level.exit120_crit_edge

il4965_rs_get_best_rate.exit.il_get_debug_level.exit120_crit_edge: ; preds = %il4965_rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit120

if.else.i118:                                     ; preds = %il4965_rs_get_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %61 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit120

il_get_debug_level.exit120:                       ; preds = %if.else.i118, %il4965_rs_get_best_rate.exit.il_get_debug_level.exit120_crit_edge
  %retval.0.i119 = phi i32 [ %61, %if.else.i118 ], [ %60, %il4965_rs_get_best_rate.exit.il_get_debug_level.exit120_crit_edge ]
  %and25 = and i32 %retval.0.i119, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %il_get_debug_level.exit120.do.end37_crit_edge, label %do.end30

il_get_debug_level.exit120.do.end37_crit_edge:    ; preds = %il_get_debug_level.exit120
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end37

do.end30:                                         ; preds = %il_get_debug_level.exit120
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %il, align 8
  %wiphy32 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wiphy32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wiphy32, align 8
  %dev33 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  %conv34 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.129, i32 noundef %new_rate.2.i, i32 noundef %conv34) #16
  br label %do.end37

do.end37:                                         ; preds = %do.end30, %il_get_debug_level.exit120.do.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %new_rate.2.i)
  %cmp38 = icmp eq i32 %new_rate.2.i, 13
  br i1 %cmp38, label %do.end37.do.body45_crit_edge, label %lor.lhs.false40

do.end37.do.body45_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

lor.lhs.false40:                                  ; preds = %do.end37
  %shl = shl nuw i32 1, %new_rate.2.i
  %conv41 = zext i16 %25 to i32
  %and42 = and i32 %shl, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %lor.lhs.false40.do.body45_crit_edge, label %if.end60

lor.lhs.false40.do.body45_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

do.body45:                                        ; preds = %lor.lhs.false40.do.body45_crit_edge, %do.end37.do.body45_crit_edge
  %66 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i122 = icmp eq i32 %67, 0
  br i1 %tobool.not.i122, label %if.else.i123, label %do.body45.il_get_debug_level.exit125_crit_edge

do.body45.il_get_debug_level.exit125_crit_edge:   ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit125

if.else.i123:                                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %68 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit125

il_get_debug_level.exit125:                       ; preds = %if.else.i123, %do.body45.il_get_debug_level.exit125_crit_edge
  %retval.0.i124 = phi i32 [ %68, %if.else.i123 ], [ %67, %do.body45.il_get_debug_level.exit125_crit_edge ]
  %and47 = and i32 %retval.0.i124, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %il_get_debug_level.exit125.cleanup_crit_edge, label %do.end52

il_get_debug_level.exit125.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end52:                                         ; preds = %il_get_debug_level.exit125
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %il, align 8
  %wiphy54 = getelementptr inbounds %struct.ieee80211_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wiphy54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy54, align 8
  %dev55 = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 56
  %conv56 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.129, i32 noundef %new_rate.2.i, i32 noundef %conv56) #16
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false40
  %call61 = tail call fastcc i32 @il4965_rate_n_flags_from_tbl(ptr noundef %il, ptr noundef %tbl, i32 noundef %new_rate.2.i, i8 noundef zeroext %1)
  %current_rate = getelementptr inbounds %struct.il_scale_tbl_info, ptr %tbl, i32 0, i32 8
  %73 = ptrtoint ptr %current_rate to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call61, ptr %current_rate, align 8
  %74 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i127 = icmp eq i32 %75, 0
  br i1 %tobool.not.i127, label %if.else.i128, label %if.end60.il_get_debug_level.exit130_crit_edge

if.end60.il_get_debug_level.exit130_crit_edge:    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit130

if.else.i128:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %76 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit130

il_get_debug_level.exit130:                       ; preds = %if.else.i128, %if.end60.il_get_debug_level.exit130_crit_edge
  %retval.0.i129 = phi i32 [ %76, %if.else.i128 ], [ %75, %if.end60.il_get_debug_level.exit130_crit_edge ]
  %and64 = and i32 %retval.0.i129, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %il_get_debug_level.exit130.cleanup_crit_edge, label %do.end69

il_get_debug_level.exit130.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit130
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end69:                                         ; preds = %il_get_debug_level.exit130
  call void @__sanitizer_cov_trace_pc() #15
  %77 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %il, align 8
  %wiphy71 = getelementptr inbounds %struct.ieee80211_hw, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %wiphy71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wiphy71, align 8
  %dev72 = getelementptr inbounds %struct.wiphy, ptr %80, i32 0, i32 56
  %conv74 = sext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.129, i32 noundef %call61, i32 noundef %conv74) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %il_get_debug_level.exit130.cleanup_crit_edge, %do.end52, %il_get_debug_level.exit125.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge133, %entry.cleanup_crit_edge134
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end3.cleanup_crit_edge ], [ -1, %do.end52 ], [ -1, %il_get_debug_level.exit125.cleanup_crit_edge ], [ 0, %do.end69 ], [ 0, %il_get_debug_level.exit130.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge133 ], [ -1, %entry.cleanup_crit_edge134 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @il_is_ht40_tx_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_stop_tx_ba_session(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_rs_sta_dbgfs_scale_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %idxprom
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lq = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lq, align 4
  %conv = zext i8 %8 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.176, i32 noundef %conv)
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %total_failed = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %total_failed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_failed, align 8
  %total_success = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %total_success to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_success, align 4
  %active_legacy_rate = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %active_legacy_rate, align 4
  %conv3 = zext i16 %14 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.177, i32 noundef %10, i32 noundef %12, i32 noundef %conv3)
  %add5 = add i32 %call4, %call1
  %add.ptr6 = getelementptr i8, ptr %call7.i, i32 %add5
  %dbg_fixed_rate = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %dbg_fixed_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dbg_fixed_rate, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr6, ptr noundef nonnull @.str.178, i32 noundef %16)
  %add8 = add i32 %call7, %add5
  %add.ptr9 = getelementptr i8, ptr %call7.i, i32 %add8
  %valid_tx_ant = getelementptr inbounds %struct.il_priv, ptr %5, i32 0, i32 97, i32 7
  %17 = ptrtoint ptr %valid_tx_ant to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_tx_ant, align 2
  %conv10 = zext i8 %18 to i32
  %and = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool11.not, ptr @.str.181, ptr @.str.180
  %and15 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond17 = select i1 %tobool16.not, ptr @.str.181, ptr @.str.182
  %and21 = and i32 %conv10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.181, ptr @.str.183
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.179, ptr noundef nonnull %cond, ptr noundef nonnull %cond17, ptr noundef nonnull %cond23)
  %add25 = add i32 %call24, %add8
  %add.ptr26 = getelementptr i8, ptr %call7.i, i32 %add25
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 8
  %21 = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %22 = icmp ult i32 %21, 2
  %23 = select i1 %22, ptr @.str.185, ptr @.str.186
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr26, ptr noundef nonnull @.str.184, ptr noundef nonnull %23)
  %add33 = add i32 %call32, %add25
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %.off247 = add i32 %25, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off247)
  %switch248 = icmp ult i32 %.off247, 2
  br i1 %switch248, label %if.then40, label %if.end.if.end66_crit_edge

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr41 = getelementptr i8, ptr %call7.i, i32 %add33
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp43 = icmp eq i32 %25, 3
  %cond45 = select i1 %cmp43, ptr @.str.188, ptr @.str.189
  %call46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr41, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond45)
  %add47 = add i32 %call46, %add33
  %add.ptr48 = getelementptr i8, ptr %call7.i, i32 %add47
  %is_ht40 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %idxprom, i32 3
  %26 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_ht40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool50.not = icmp eq i8 %27, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.191, ptr @.str.190
  %call52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr48, ptr noundef nonnull @.str.187, ptr noundef nonnull %cond51)
  %add53 = add i32 %call52, %add47
  %add.ptr54 = getelementptr i8, ptr %call7.i, i32 %add53
  %is_SGI = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_SGI, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool56.not = icmp eq i8 %29, 0
  %cond57 = select i1 %tobool56.not, ptr @.str.181, ptr @.str.193
  %is_green = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %is_green to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_green, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool59.not = icmp eq i8 %31, 0
  %cond60 = select i1 %tobool59.not, ptr @.str.181, ptr @.str.194
  %is_agg = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 30
  %32 = ptrtoint ptr %is_agg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_agg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool62.not = icmp eq i8 %33, 0
  %cond63 = select i1 %tobool62.not, ptr @.str.181, ptr @.str.195
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr54, ptr noundef nonnull @.str.192, ptr noundef nonnull %cond57, ptr noundef nonnull %cond60, ptr noundef nonnull %cond63)
  %add65 = add i32 %call64, %add53
  br label %if.end66

if.end66:                                         ; preds = %if.then40, %if.end.if.end66_crit_edge
  %desc.0 = phi i32 [ %add65, %if.then40 ], [ %add33, %if.end.if.end66_crit_edge ]
  %add.ptr67 = getelementptr i8, ptr %call7.i, i32 %desc.0
  %last_rate_n_flags = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 29
  %34 = ptrtoint ptr %last_rate_n_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_rate_n_flags, align 8
  %call68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr67, ptr noundef nonnull @.str.196, i32 noundef %35)
  %add69 = add i32 %call68, %desc.0
  %add.ptr70 = getelementptr i8, ptr %call7.i, i32 %add69
  %general_params = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3
  %36 = ptrtoint ptr %general_params to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %general_params, align 4
  %conv72 = zext i8 %37 to i32
  %mimo_delimiter = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 1
  %38 = ptrtoint ptr %mimo_delimiter to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mimo_delimiter, align 1
  %conv75 = zext i8 %39 to i32
  %single_stream_ant_msk = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 2
  %40 = ptrtoint ptr %single_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %single_stream_ant_msk, align 2
  %conv78 = zext i8 %41 to i32
  %dual_stream_ant_msk = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 3
  %42 = ptrtoint ptr %dual_stream_ant_msk to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dual_stream_ant_msk, align 1
  %conv81 = zext i8 %43 to i32
  %call82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr70, ptr noundef nonnull @.str.197, i32 noundef %conv72, i32 noundef %conv75, i32 noundef %conv78, i32 noundef %conv81)
  %add83 = add i32 %call82, %add69
  %add.ptr84 = getelementptr i8, ptr %call7.i, i32 %add83
  %agg_params = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 4
  %44 = ptrtoint ptr %agg_params to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %agg_params, align 4
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv86 = zext i16 %46 to i32
  %agg_dis_start_th = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 4, i32 1
  %47 = ptrtoint ptr %agg_dis_start_th to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %agg_dis_start_th, align 2
  %conv89 = zext i8 %48 to i32
  %agg_frame_cnt_limit = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 4, i32 2
  %49 = ptrtoint ptr %agg_frame_cnt_limit to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %agg_frame_cnt_limit, align 1
  %conv92 = zext i8 %50 to i32
  %call93 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr84, ptr noundef nonnull @.str.198, i32 noundef %conv86, i32 noundef %conv89, i32 noundef %conv92)
  %add94 = add i32 %call93, %add83
  %add.ptr95 = getelementptr i8, ptr %call7.i, i32 %add94
  %start_rate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 4
  %51 = ptrtoint ptr %start_rate_idx to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %start_rate_idx, align 4
  %conv99 = zext i8 %52 to i32
  %arrayidx103 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 4, i32 1
  %53 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %54 to i32
  %arrayidx108 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 4, i32 2
  %55 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx108, align 2
  %conv109 = zext i8 %56 to i32
  %arrayidx113 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 3, i32 4, i32 3
  %57 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %58 to i32
  %call115 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr95, ptr noundef nonnull @.str.199, i32 noundef %conv99, i32 noundef %conv104, i32 noundef %conv109, i32 noundef %conv114)
  %add116 = add i32 %call115, %add94
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end66
  %i.0250 = phi i32 [ 0, %if.end66 ], [ %inc, %for.inc.for.body_crit_edge ]
  %desc.1249 = phi i32 [ %add116, %if.end66 ], [ %desc.2, %for.inc.for.body_crit_edge ]
  %arrayidx120 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 22, i32 5, i32 %i.0250
  %59 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx120, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %call121 = tail call fastcc i32 @il4965_hwrate_to_plcp_idx(i32 noundef %61)
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 8
  %.off = add i32 %63, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %add.ptr130 = getelementptr i8, ptr %call7.i, i32 %desc.1249
  %arrayidx135 = getelementptr [13 x %struct.il_rate_mcs_info], ptr @il_rate_mcs, i32 0, i32 %call121
  br i1 %switch, label %if.then129, label %if.else

if.then129:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call136 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr130, ptr noundef nonnull @.str.200, i32 noundef %i.0250, i32 noundef %61, ptr noundef %arrayidx135)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %mcs = getelementptr [13 x %struct.il_rate_mcs_info], ptr @il_rate_mcs, i32 0, i32 %call121, i32 1
  %call148 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr130, ptr noundef nonnull @.str.201, i32 noundef %i.0250, i32 noundef %61, ptr noundef %arrayidx135, ptr noundef %mcs)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then129
  %call136.pn = phi i32 [ %call136, %if.then129 ], [ %call148, %if.else ]
  %desc.2 = add i32 %call136.pn, %desc.1249
  %inc = add nuw nsw i32 %i.0250, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %call151 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %desc.2) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call151, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_rs_sta_dbgfs_scale_table_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %parsed_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed_rate) #13
  %2 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %parsed_rate, align 4, !annotation !402
  %drv = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 8
  %5 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %6 = tail call i32 @llvm.umin.i32(i32 %count, i32 63)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %6, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.207, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %6, i32 -1226833920) #18, !srcloc !403
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !399

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %6) #13
  %8 = call i32 @llvm.read_register.i32(metadata !388) #13
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !404
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !405
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !406
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !405
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !406
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !399

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.202, ptr noundef nonnull %parsed_rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %parsed_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parsed_rate, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %.sink = phi i32 [ %13, %if.then5 ], [ 0, %if.end.if.end7_crit_edge ]
  %14 = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 26
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %active_legacy_rate = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %active_legacy_rate to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4095, ptr %active_legacy_rate, align 4
  %active_siso_rate = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 18
  %17 = ptrtoint ptr %active_siso_rate to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8144, ptr %active_siso_rate, align 2
  %active_mimo2_rate = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %active_mimo2_rate to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8144, ptr %active_mimo2_rate, align 8
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %4, i32 0, i32 114
  %19 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end7.il_get_debug_level.exit_crit_edge

if.end7.il_get_debug_level.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %21 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.end7.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.else.i ], [ %20, %if.end7.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %il_get_debug_level.exit.do.end15_crit_edge, label %do.end

il_get_debug_level.exit.do.end15_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  %lq = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22
  %26 = ptrtoint ptr %lq to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lq, align 4
  %conv = zext i8 %27 to i32
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, i32 noundef %conv, i32 noundef %29) #16
  br label %do.end15

do.end15:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end15_crit_edge
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not = icmp eq i32 %31, 0
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.then18

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @il4965_rs_fill_link_cmd(ptr noundef null, ptr noundef %1, i32 noundef %31)
  %32 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv, align 8
  %lq21 = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 22
  %call22 = call i32 @il_send_lq_cmd(ptr noundef %33, ptr noundef %lq21, i8 noundef zeroext 2, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end15.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.then18 ], [ %count, %do.end15.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed_rate) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_rs_sta_dbgfs_stats_table_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 1024) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %is_green = getelementptr inbounds %struct.il_lq_sta, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.077 = phi i32 [ 0, %for.cond.preheader ], [ %inc35, %for.body.for.body_crit_edge ]
  %desc.076 = phi i32 [ 0, %for.cond.preheader ], [ %add33.12, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call7.i, i32 %desc.076
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 8
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %conv)
  %cmp1 = icmp eq i32 %i.077, %conv
  %cond = select i1 %cmp1, ptr @.str.209, ptr @.str.210
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %is_SGI = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 2
  %7 = ptrtoint ptr %is_SGI to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_SGI, align 1
  %conv5 = zext i8 %8 to i32
  %is_ht40 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 3
  %9 = ptrtoint ptr %is_ht40 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_ht40, align 2
  %conv8 = zext i8 %10 to i32
  %is_dup = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 4
  %11 = ptrtoint ptr %is_dup to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dup, align 1
  %conv11 = zext i8 %12 to i32
  %13 = ptrtoint ptr %is_green to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_green, align 1
  %conv12 = zext i8 %14 to i32
  %current_rate = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 8
  %15 = ptrtoint ptr %current_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_rate, align 8
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.208, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %16)
  %add = add i32 %call15, %desc.076
  %add.ptr20 = getelementptr i8, ptr %call7.i, i32 %add
  %counter = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 0, i32 3
  %17 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %counter, align 8
  %success_counter = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 0, i32 1
  %19 = ptrtoint ptr %success_counter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %success_counter, align 8
  %success_ratio = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %success_ratio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %success_ratio, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20, ptr noundef nonnull @.str.211, i32 noundef %18, i32 noundef %20, i32 noundef %22)
  %add33 = add i32 %call32, %add
  %add.ptr20.1 = getelementptr i8, ptr %call7.i, i32 %add33
  %counter.1 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 1, i32 3
  %23 = ptrtoint ptr %counter.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %counter.1, align 8
  %success_counter.1 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 1, i32 1
  %25 = ptrtoint ptr %success_counter.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %success_counter.1, align 8
  %success_ratio.1 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 1, i32 2
  %27 = ptrtoint ptr %success_ratio.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %success_ratio.1, align 4
  %call32.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.1, ptr noundef nonnull @.str.211, i32 noundef %24, i32 noundef %26, i32 noundef %28)
  %add33.1 = add i32 %call32.1, %add33
  %add.ptr20.2 = getelementptr i8, ptr %call7.i, i32 %add33.1
  %counter.2 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 2, i32 3
  %29 = ptrtoint ptr %counter.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %counter.2, align 8
  %success_counter.2 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 2, i32 1
  %31 = ptrtoint ptr %success_counter.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %success_counter.2, align 8
  %success_ratio.2 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 2, i32 2
  %33 = ptrtoint ptr %success_ratio.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %success_ratio.2, align 4
  %call32.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.2, ptr noundef nonnull @.str.211, i32 noundef %30, i32 noundef %32, i32 noundef %34)
  %add33.2 = add i32 %call32.2, %add33.1
  %add.ptr20.3 = getelementptr i8, ptr %call7.i, i32 %add33.2
  %counter.3 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 3, i32 3
  %35 = ptrtoint ptr %counter.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %counter.3, align 8
  %success_counter.3 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 3, i32 1
  %37 = ptrtoint ptr %success_counter.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %success_counter.3, align 8
  %success_ratio.3 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 3, i32 2
  %39 = ptrtoint ptr %success_ratio.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %success_ratio.3, align 4
  %call32.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.3, ptr noundef nonnull @.str.211, i32 noundef %36, i32 noundef %38, i32 noundef %40)
  %add33.3 = add i32 %call32.3, %add33.2
  %add.ptr20.4 = getelementptr i8, ptr %call7.i, i32 %add33.3
  %counter.4 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 4, i32 3
  %41 = ptrtoint ptr %counter.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %counter.4, align 8
  %success_counter.4 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 4, i32 1
  %43 = ptrtoint ptr %success_counter.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %success_counter.4, align 8
  %success_ratio.4 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 4, i32 2
  %45 = ptrtoint ptr %success_ratio.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %success_ratio.4, align 4
  %call32.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.4, ptr noundef nonnull @.str.211, i32 noundef %42, i32 noundef %44, i32 noundef %46)
  %add33.4 = add i32 %call32.4, %add33.3
  %add.ptr20.5 = getelementptr i8, ptr %call7.i, i32 %add33.4
  %counter.5 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 5, i32 3
  %47 = ptrtoint ptr %counter.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter.5, align 8
  %success_counter.5 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 5, i32 1
  %49 = ptrtoint ptr %success_counter.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %success_counter.5, align 8
  %success_ratio.5 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 5, i32 2
  %51 = ptrtoint ptr %success_ratio.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %success_ratio.5, align 4
  %call32.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.5, ptr noundef nonnull @.str.211, i32 noundef %48, i32 noundef %50, i32 noundef %52)
  %add33.5 = add i32 %call32.5, %add33.4
  %add.ptr20.6 = getelementptr i8, ptr %call7.i, i32 %add33.5
  %counter.6 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 6, i32 3
  %53 = ptrtoint ptr %counter.6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %counter.6, align 8
  %success_counter.6 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 6, i32 1
  %55 = ptrtoint ptr %success_counter.6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %success_counter.6, align 8
  %success_ratio.6 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 6, i32 2
  %57 = ptrtoint ptr %success_ratio.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %success_ratio.6, align 4
  %call32.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.6, ptr noundef nonnull @.str.211, i32 noundef %54, i32 noundef %56, i32 noundef %58)
  %add33.6 = add i32 %call32.6, %add33.5
  %add.ptr20.7 = getelementptr i8, ptr %call7.i, i32 %add33.6
  %counter.7 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 7, i32 3
  %59 = ptrtoint ptr %counter.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %counter.7, align 8
  %success_counter.7 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 7, i32 1
  %61 = ptrtoint ptr %success_counter.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %success_counter.7, align 8
  %success_ratio.7 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 7, i32 2
  %63 = ptrtoint ptr %success_ratio.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %success_ratio.7, align 4
  %call32.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.7, ptr noundef nonnull @.str.211, i32 noundef %60, i32 noundef %62, i32 noundef %64)
  %add33.7 = add i32 %call32.7, %add33.6
  %add.ptr20.8 = getelementptr i8, ptr %call7.i, i32 %add33.7
  %counter.8 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 8, i32 3
  %65 = ptrtoint ptr %counter.8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %counter.8, align 8
  %success_counter.8 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 8, i32 1
  %67 = ptrtoint ptr %success_counter.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %success_counter.8, align 8
  %success_ratio.8 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 8, i32 2
  %69 = ptrtoint ptr %success_ratio.8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %success_ratio.8, align 4
  %call32.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.8, ptr noundef nonnull @.str.211, i32 noundef %66, i32 noundef %68, i32 noundef %70)
  %add33.8 = add i32 %call32.8, %add33.7
  %add.ptr20.9 = getelementptr i8, ptr %call7.i, i32 %add33.8
  %counter.9 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 9, i32 3
  %71 = ptrtoint ptr %counter.9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %counter.9, align 8
  %success_counter.9 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 9, i32 1
  %73 = ptrtoint ptr %success_counter.9 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %success_counter.9, align 8
  %success_ratio.9 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 9, i32 2
  %75 = ptrtoint ptr %success_ratio.9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %success_ratio.9, align 4
  %call32.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.9, ptr noundef nonnull @.str.211, i32 noundef %72, i32 noundef %74, i32 noundef %76)
  %add33.9 = add i32 %call32.9, %add33.8
  %add.ptr20.10 = getelementptr i8, ptr %call7.i, i32 %add33.9
  %counter.10 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 10, i32 3
  %77 = ptrtoint ptr %counter.10 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %counter.10, align 8
  %success_counter.10 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 10, i32 1
  %79 = ptrtoint ptr %success_counter.10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %success_counter.10, align 8
  %success_ratio.10 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 10, i32 2
  %81 = ptrtoint ptr %success_ratio.10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %success_ratio.10, align 4
  %call32.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.10, ptr noundef nonnull @.str.211, i32 noundef %78, i32 noundef %80, i32 noundef %82)
  %add33.10 = add i32 %call32.10, %add33.9
  %add.ptr20.11 = getelementptr i8, ptr %call7.i, i32 %add33.10
  %counter.11 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 11, i32 3
  %83 = ptrtoint ptr %counter.11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %counter.11, align 8
  %success_counter.11 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 11, i32 1
  %85 = ptrtoint ptr %success_counter.11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %success_counter.11, align 8
  %success_ratio.11 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 11, i32 2
  %87 = ptrtoint ptr %success_ratio.11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %success_ratio.11, align 4
  %call32.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.11, ptr noundef nonnull @.str.211, i32 noundef %84, i32 noundef %86, i32 noundef %88)
  %add33.11 = add i32 %call32.11, %add33.10
  %add.ptr20.12 = getelementptr i8, ptr %call7.i, i32 %add33.11
  %counter.12 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 12, i32 3
  %89 = ptrtoint ptr %counter.12 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %counter.12, align 8
  %success_counter.12 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 12, i32 1
  %91 = ptrtoint ptr %success_counter.12 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %success_counter.12, align 8
  %success_ratio.12 = getelementptr %struct.il_lq_sta, ptr %1, i32 0, i32 23, i32 %i.077, i32 9, i32 12, i32 2
  %93 = ptrtoint ptr %success_ratio.12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %success_ratio.12, align 4
  %call32.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20.12, ptr noundef nonnull @.str.211, i32 noundef %90, i32 noundef %92, i32 noundef %94)
  %add33.12 = add i32 %call32.12, %add33.11
  %inc35 = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc35, 2
  br i1 %exitcond.not, label %for.end36, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add33.12) #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %for.end36 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_rs_sta_dbgfs_rate_scale_data_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buff = alloca [120 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %buff) #13
  %0 = call ptr @memset(ptr %buff, i32 255, i32 120)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 8
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.il_lq_sta, ptr %2, i32 0, i32 23, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %.off = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %expected_tpt = getelementptr %struct.il_lq_sta, ptr %2, i32 0, i32 23, i32 %idxprom, i32 7
  %7 = ptrtoint ptr %expected_tpt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %expected_tpt, align 4
  %last_txrate_idx = getelementptr inbounds %struct.il_lq_sta, ptr %2, i32 0, i32 28
  %9 = ptrtoint ptr %last_txrate_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_txrate_idx, align 4
  %arrayidx3 = getelementptr i32, ptr %8, i32 %10
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %last_txrate_idx6 = getelementptr inbounds %struct.il_lq_sta, ptr %2, i32 0, i32 28
  %13 = ptrtoint ptr %last_txrate_idx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_txrate_idx6, align 4
  %ieee = getelementptr [13 x %struct.il_rate_info], ptr @il_rates, i32 0, i32 %14, i32 3
  %15 = ptrtoint ptr %ieee to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ieee, align 1
  %17 = lshr i8 %16, 1
  %18 = zext i8 %17 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %18, %if.else ], [ %12, %if.then ]
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buff, ptr noundef nonnull @.str.212, i32 noundef %.sink)
  %call11 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buff, i32 noundef %call8) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %buff) #13
  ret i32 %call11
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 198)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !365, !366, !367, !369, !370, !372, !374, !376, !378, !380, !382, !384, !386}
!llvm.named.register.sp = !{!388}
!llvm.module.flags = !{!389, !390, !391, !392, !393, !394, !395, !396}
!llvm.ident = !{!397}

!0 = !{ptr @il_rates, !1, !"il_rates", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 81, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2297, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @il4965_rs_rate_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @il4965_rs_rate_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/net/mac80211.h", i32 6355, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ant_toggle_lookup, !14, !"ant_toggle_lookup", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 50, i32 17}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 494, i32 4}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @il4965_rate_n_flags_from_tbl._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @il4965_rate_n_flags_from_tbl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 504, i32 3}
!22 = !{ptr @il4965_rate_n_flags_from_tbl._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @il4965_rate_n_flags_from_tbl._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 524, i32 5}
!26 = !{ptr @il4965_rate_n_flags_from_tbl._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @il4965_rate_n_flags_from_tbl._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1018, i32 6}
!30 = !{ptr @expected_tpt_legacy, !31, !"expected_tpt_legacy", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 156, i32 12}
!32 = !{ptr @expected_tpt_siso20MHz, !33, !"expected_tpt_siso20MHz", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 160, i32 12}
!34 = !{ptr @expected_tpt_siso40MHz, !35, !"expected_tpt_siso40MHz", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 167, i32 12}
!36 = !{ptr @expected_tpt_mimo2_20MHz, !37, !"expected_tpt_mimo2_20MHz", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 174, i32 12}
!38 = !{ptr @expected_tpt_mimo2_40MHz, !39, !"expected_tpt_mimo2_40MHz", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 181, i32 12}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2516, i32 4}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @il4965_rs_dbgfs_set_mcs._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @il4965_rs_dbgfs_set_mcs._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2519, i32 4}
!47 = !{ptr @il4965_rs_dbgfs_set_mcs._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2522, i32 4}
!51 = !{ptr @il4965_rs_dbgfs_set_mcs._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @il4965_rs_dbgfs_set_mcs._entry.22, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2525, i32 3}
!55 = !{ptr @il4965_rs_dbgfs_set_mcs._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rs_ht_to_legacy, !57, !"rs_ht_to_legacy", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 40, i32 11}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 697, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @il4965_rs_get_adjacent_rate._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @il4965_rs_get_adjacent_rate._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 707, i32 3}
!65 = !{ptr @il4965_rs_get_adjacent_rate._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @il4965_rs_get_adjacent_rate._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2776, i32 10}
!69 = !{ptr @rs_4965_ops, !70, !"rs_4965_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2775, i32 38}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2260, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @il4965_rs_alloc_sta._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @il4965_rs_alloc_sta._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2494, i32 2}
!78 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @il4965_rs_free_sta._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @il4965_rs_free_sta._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2495, i32 2}
!83 = !{ptr @il4965_rs_free_sta._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @il4965_rs_free_sta._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 808, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @il4965_rs_tx_status._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @il4965_rs_tx_status._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 812, i32 3}
!92 = !{ptr @il4965_rs_tx_status._entry.39, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @il4965_rs_tx_status._entry_ptr.41, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 815, i32 3}
!96 = !{ptr @il4965_rs_tx_status._entry.42, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @il4965_rs_tx_status._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 864, i32 3}
!100 = !{ptr @il4965_rs_tx_status._entry.45, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @il4965_rs_tx_status._entry_ptr.47, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 893, i32 3}
!104 = !{ptr @il4965_rs_tx_status._entry.48, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @il4965_rs_tx_status._entry_ptr.50, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 895, i32 3}
!108 = !{ptr @il4965_rs_tx_status._entry.51, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @il4965_rs_tx_status._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 898, i32 3}
!112 = !{ptr @il4965_rs_tx_status._entry.54, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @il4965_rs_tx_status._entry_ptr.56, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 900, i32 3}
!116 = !{ptr @il4965_rs_tx_status._entry.57, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @il4965_rs_tx_status._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1666, i32 4}
!120 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @il4965_rs_stay_in_table._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @il4965_rs_stay_in_table._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1687, i32 5}
!125 = !{ptr @il4965_rs_stay_in_table._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @il4965_rs_stay_in_table._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = distinct !{null, !128, !"mask", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 408, i32 19}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1755, i32 2}
!131 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @il4965_rs_rate_scale_perform._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1795, i32 2}
!136 = !{ptr @il4965_rs_rate_scale_perform._entry.67, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.69, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1800, i32 2}
!140 = !{ptr @il4965_rs_rate_scale_perform._entry.70, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.72, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1820, i32 3}
!144 = !{ptr @il4965_rs_rate_scale_perform._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1836, i32 3}
!148 = !{ptr @il4965_rs_rate_scale_perform._entry.76, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.78, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1860, i32 3}
!152 = !{ptr @il4965_rs_rate_scale_perform._entry.79, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.81, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1876, i32 3}
!156 = !{ptr @il4965_rs_rate_scale_perform._entry.82, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.84, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1888, i32 4}
!160 = !{ptr @il4965_rs_rate_scale_perform._entry.85, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.87, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1903, i32 4}
!164 = !{ptr @il4965_rs_rate_scale_perform._entry.88, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.90, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1955, i32 3}
!168 = !{ptr @il4965_rs_rate_scale_perform._entry.91, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.93, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1988, i32 5}
!172 = !{ptr @il4965_rs_rate_scale_perform._entry.94, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.96, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2025, i32 2}
!176 = !{ptr @il4965_rs_rate_scale_perform._entry.97, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.99, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.101, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2068, i32 4}
!180 = !{ptr @il4965_rs_rate_scale_perform._entry.100, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.102, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.104, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2085, i32 4}
!184 = !{ptr @il4965_rs_rate_scale_perform._entry.103, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.105, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2100, i32 6}
!188 = !{ptr @il4965_rs_rate_scale_perform._entry.106, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @il4965_rs_rate_scale_perform._entry_ptr.108, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.109, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1284, i32 4}
!192 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @il4965_rs_move_legacy_other._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @il4965_rs_move_legacy_other._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1309, i32 4}
!197 = !{ptr @il4965_rs_move_legacy_other._entry.111, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @il4965_rs_move_legacy_other._entry_ptr.113, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.115, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1326, i32 4}
!201 = !{ptr @il4965_rs_move_legacy_other._entry.114, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @il4965_rs_move_legacy_other._entry_ptr.116, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1223, i32 2}
!205 = !{ptr @.str.118, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @il4965_rs_switch_to_siso._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @il4965_rs_switch_to_siso._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.120, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1242, i32 2}
!210 = !{ptr @il4965_rs_switch_to_siso._entry.119, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @il4965_rs_switch_to_siso._entry_ptr.121, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.123, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1244, i32 3}
!214 = !{ptr @il4965_rs_switch_to_siso._entry.122, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @il4965_rs_switch_to_siso._entry_ptr.124, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.126, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1250, i32 2}
!218 = !{ptr @il4965_rs_switch_to_siso._entry.125, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @il4965_rs_switch_to_siso._entry_ptr.127, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.128, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1177, i32 2}
!222 = !{ptr @.str.129, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @il4965_rs_switch_to_mimo2._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @il4965_rs_switch_to_mimo2._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.131, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1194, i32 2}
!227 = !{ptr @il4965_rs_switch_to_mimo2._entry.130, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @il4965_rs_switch_to_mimo2._entry_ptr.132, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.134, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1196, i32 3}
!231 = !{ptr @il4965_rs_switch_to_mimo2._entry.133, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @il4965_rs_switch_to_mimo2._entry_ptr.135, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @il4965_rs_switch_to_mimo2._entry.136, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1203, i32 2}
!235 = !{ptr @il4965_rs_switch_to_mimo2._entry_ptr.137, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.138, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1404, i32 4}
!238 = !{ptr @.str.139, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @il4965_rs_move_siso_to_other._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @il4965_rs_move_siso_to_other._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.141, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1425, i32 4}
!243 = !{ptr @il4965_rs_move_siso_to_other._entry.140, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @il4965_rs_move_siso_to_other._entry_ptr.142, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.144, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1454, i32 4}
!247 = !{ptr @il4965_rs_move_siso_to_other._entry.143, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @il4965_rs_move_siso_to_other._entry_ptr.145, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.147, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1461, i32 6}
!251 = !{ptr @il4965_rs_move_siso_to_other._entry.146, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @il4965_rs_move_siso_to_other._entry_ptr.148, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.149, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1526, i32 4}
!255 = !{ptr @.str.150, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @il4965_rs_move_mimo2_to_other._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @il4965_rs_move_mimo2_to_other._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.152, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1545, i32 4}
!260 = !{ptr @il4965_rs_move_mimo2_to_other._entry.151, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @il4965_rs_move_mimo2_to_other._entry_ptr.153, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.155, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 1577, i32 4}
!264 = !{ptr @il4965_rs_move_mimo2_to_other._entry.154, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @il4965_rs_move_mimo2_to_other._entry_ptr.156, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.157, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 989, i32 2}
!268 = !{ptr @.str.158, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @il4965_rs_set_stay_in_table._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @il4965_rs_set_stay_in_table._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.159, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 372, i32 3}
!273 = !{ptr @.str.160, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @il4965_rs_tl_turn_on_agg._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @il4965_rs_tl_turn_on_agg._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.161, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 347, i32 3}
!278 = !{ptr @.str.162, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.164, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 355, i32 4}
!283 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.163, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.165, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.167, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 359, i32 3}
!287 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry.166, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @il4965_rs_tl_turn_on_agg_for_tid._entry_ptr.168, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.169, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2193, i32 2}
!291 = !{ptr @il4965_rs_get_rate._entry, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @il4965_rs_get_rate._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @il4965_rs_get_rate._entry.170, !294, !"_entry", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2208, i32 3}
!295 = !{ptr @il4965_rs_get_rate._entry_ptr.171, !294, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.172, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2752, i32 22}
!298 = !{ptr @.str.173, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2754, i32 22}
!300 = !{ptr @.str.174, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2756, i32 22}
!302 = !{ptr @.str.175, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2758, i32 20}
!304 = !{ptr @rs_sta_dbgfs_scale_table_ops, !305, !"rs_sta_dbgfs_scale_table_ops", i1 false, i1 false}
!305 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2667, i32 37}
!306 = !{ptr @.str.176, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2585, i32 31}
!308 = !{ptr @.str.177, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2587, i32 27}
!310 = !{ptr @.str.178, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2591, i32 27}
!312 = !{ptr @.str.179, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2593, i32 27}
!314 = !{ptr @.str.180, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2594, i32 46}
!316 = !{ptr @.str.181, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2594, i32 57}
!318 = !{ptr @.str.182, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2595, i32 46}
!320 = !{ptr @.str.183, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2596, i32 46}
!322 = !{ptr @.str.184, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2598, i32 27}
!324 = !{ptr @.str.185, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2599, i32 35}
!326 = !{ptr @.str.186, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2599, i32 46}
!328 = !{ptr @.str.187, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2602, i32 28}
!330 = !{ptr @.str.188, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2603, i32 34}
!332 = !{ptr @.str.189, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2603, i32 43}
!334 = !{ptr @.str.190, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2606, i32 25}
!336 = !{ptr @.str.191, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2606, i32 35}
!338 = !{ptr @.str.192, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2608, i32 28}
!340 = !{ptr @.str.193, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2609, i32 24}
!342 = !{ptr @.str.194, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2610, i32 29}
!344 = !{ptr @.str.195, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2611, i32 27}
!346 = !{ptr @.str.196, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2614, i32 27}
!348 = !{ptr @.str.197, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2618, i32 7}
!350 = !{ptr @.str.198, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2626, i32 7}
!352 = !{ptr @.str.199, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2634, i32 7}
!354 = !{ptr @.str.200, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2647, i32 29}
!356 = !{ptr @.str.201, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2653, i32 29}
!358 = !{ptr @il_rate_mcs, !359, !"il_rate_mcs", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 189, i32 38}
!360 = !{ptr @.str.202, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2546, i32 18}
!362 = !{ptr @.str.203, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2555, i32 2}
!364 = !{ptr @.str.204, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @il4965_rs_sta_dbgfs_scale_table_write._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @il4965_rs_sta_dbgfs_scale_table_write._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = distinct !{null, !368, !"__already_done", i1 false, i1 false}
!368 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!369 = distinct !{null, !368, !"<string literal>", i1 false, i1 false}
!370 = distinct !{null, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!372 = !{ptr @.str.207, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!374 = !{ptr @rs_sta_dbgfs_stats_table_ops, !375, !"rs_sta_dbgfs_stats_table_ops", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2713, i32 37}
!376 = !{ptr @.str.208, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2692, i32 8}
!378 = !{ptr @.str.209, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2693, i32 49}
!380 = !{ptr @.str.210, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2693, i32 55}
!382 = !{ptr @.str.211, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2702, i32 9}
!384 = !{ptr @rs_sta_dbgfs_rate_scale_data_ops, !385, !"rs_sta_dbgfs_rate_scale_data_ops", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2741, i32 37}
!386 = !{ptr @.str.212, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/intel/iwlegacy/4965-rs.c", i32 2731, i32 28}
!388 = !{!"sp"}
!389 = !{i32 1, !"wchar_size", i32 2}
!390 = !{i32 1, !"min_enum_size", i32 4}
!391 = !{i32 8, !"branch-target-enforcement", i32 0}
!392 = !{i32 8, !"sign-return-address", i32 0}
!393 = !{i32 8, !"sign-return-address-all", i32 0}
!394 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!395 = !{i32 7, !"uwtable", i32 1}
!396 = !{i32 7, !"frame-pointer", i32 2}
!397 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!398 = !{i8 0, i8 2}
!399 = !{!"branch_weights", i32 2000, i32 1}
!400 = !{i32 0, i32 33}
!401 = !{!"branch_weights", i32 1, i32 2000}
!402 = !{!"auto-init"}
!403 = !{i64 2152400128, i64 2152400153}
!404 = !{i64 4895683}
!405 = !{i64 4895880}
!406 = !{i64 2152381113}
