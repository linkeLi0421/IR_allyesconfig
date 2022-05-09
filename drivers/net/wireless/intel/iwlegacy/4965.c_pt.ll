; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/4965.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/4965.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.il_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.il_mod_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.il_cfg = type { ptr, ptr, i32, i32, i8, i8, i32, i16, i16, ptr, ptr, [6 x i8], i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i8, i8, i8, i8, [7 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.il4965_txpower_comp_entry = type { i32, i32 }
%struct.gain_entry = type { i8, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.136, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.il_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.il4965_scd_bc_tbl = type { [320 x i16], [384 x i8] }
%struct.il4965_channel_switch_cmd = type { i8, i8, i16, i32, i32, i32, %struct.il4965_tx_power_db }
%struct.il4965_tx_power_db = type { [33 x %struct.tx_power_dual_stream] }
%struct.tx_power_dual_stream = type { i32 }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.133, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.133 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.134] }
%struct.anon.134 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.il_channel_info = type { %struct.il4965_channel_tgd_info, %struct.il4965_channel_tgh_info, %struct.il_eeprom_channel, %struct.il_eeprom_channel, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, [33 x %struct.il3945_channel_power_info], [2 x %struct.il3945_scan_power_info] }
%struct.il4965_channel_tgd_info = type { i8, i8 }
%struct.il4965_channel_tgh_info = type { i64 }
%struct.il_eeprom_channel = type { i8, i8 }
%struct.il3945_channel_power_info = type { %struct.il3945_tx_power, i8, i8, i8 }
%struct.il3945_tx_power = type { i8, i8 }
%struct.il3945_scan_power_info = type { %struct.il3945_tx_power, i8, i8 }
%struct.il4965_txpowertable_cmd = type { i8, i8, i16, %struct.il4965_tx_power_db }
%struct.il4965_rxon_assoc_cmd = type { i32, i32, i8, i8, i8, i8, i16, i16 }
%struct.il4965_addsta_cmd = type { i8, [3 x i8], %struct.sta_id_modify, %struct.il4965_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }
%struct.il_calib_diff_gain_cmd = type { %struct.il_calib_hdr, i8, i8, i8, i8 }
%struct.il_calib_hdr = type { i8, i8, i8, i8 }
%struct.il_host_cmd = type { ptr, i32, ptr, i32, i16, i8 }
%struct.il_eeprom_calib_ch_info = type { i8, [2 x [3 x %struct.il_eeprom_calib_measure]] }
%struct.il_eeprom_calib_measure = type { i8, i8, i8, i8 }
%struct.il_eeprom_calib_info = type { i8, i8, i16, [8 x %struct.il_eeprom_calib_subband_info] }
%struct.il_eeprom_calib_subband_info = type { i8, i8, %struct.il_eeprom_calib_ch_info, %struct.il_eeprom_calib_ch_info }

@il4965_verify_ucode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Bootstrap uCode is good in inst SRAM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"il4965_verify_ucode\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intel/iwlegacy/4965.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il4965_verify_ucode._entry_ptr = internal global ptr @il4965_verify_ucode._entry, section ".printk_index", align 4
@il4965_verify_ucode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Initialize uCode is good in inst SRAM\0A\00", [54 x i8] zeroinitializer }, align 32
@il4965_verify_ucode._entry_ptr.7 = internal global ptr @il4965_verify_ucode._entry.5, section ".printk_index", align 4
@il4965_verify_ucode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s Runtime uCode is good in inst SRAM\0A\00", [57 x i8] zeroinitializer }, align 32
@il4965_verify_ucode._entry_ptr.10 = internal global ptr @il4965_verify_ucode._entry.8, section ".printk_index", align 4
@il4965_verify_ucode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 137, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NO VALID UCODE IMAGE IN INSTRUCTION SRAM!!\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_verify_ucode._entry_ptr.13 = internal global ptr @il4965_verify_ucode._entry.11, section ".printk_index", align 4
@il4965_eeprom_check_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 206, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device EEPROM VER=0x%x, CALIB=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_eeprom_check_version\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@il4965_eeprom_check_version._entry_ptr = internal global ptr @il4965_eeprom_check_version._entry, section ".printk_index", align 4
@il4965_eeprom_check_version._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@il4965_eeprom_check_version._entry_ptr.19 = internal global ptr @il4965_eeprom_check_version._entry.17, section ".printk_index", align 4
@il4965_temperature_calib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s Temperature changed from %ldC to %ldC\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_temperature_calib\00", [39 x i8] zeroinitializer }, align 32
@il4965_temperature_calib._entry_ptr = internal global ptr @il4965_temperature_calib._entry, section ".printk_index", align 4
@il4965_temperature_calib._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 1677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Temperature initialized to %ldC\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_temperature_calib._entry_ptr.24 = internal global ptr @il4965_temperature_calib._entry.22, section ".printk_index", align 4
@il4965_ops = dso_local constant { %struct.il_ops, [52 x i8] } { %struct.il_ops { ptr @il4965_txq_update_byte_cnt_tbl, ptr @il4965_hw_txq_attach_buf_to_tfd, ptr @il4965_hw_txq_free_tfd, ptr @il4965_hw_tx_queue_init, ptr @il4965_init_alive_start, ptr @il4965_hw_valid_rtc_data_addr, ptr @il4965_load_bsm, ptr @il4965_dump_nic_error_log, ptr @il4965_dump_fh, ptr @il4965_hw_channel_switch, ptr @il_apm_init, ptr @il4965_send_tx_power, ptr @il4965_update_chain_flags, ptr @il4965_eeprom_acquire_semaphore, ptr @il4965_eeprom_release_semaphore, ptr @il4965_send_rxon_assoc, ptr @il4965_commit_rxon, ptr @il4965_set_rxon_chain, ptr @il4965_get_hcmd_size, ptr @il4965_build_addsta_hcmd, ptr @il4965_request_scan, ptr @il4965_post_scan, ptr @il4965_post_associate, ptr @il4965_config_ap, ptr @il4965_update_bcast_stations, ptr @il4965_manage_ibss_station, ptr @il4965_send_led_cmd }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Intel(R) Wireless WiFi Link 4965AGN\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-4965-\00", [18 x i8] zeroinitializer }, align 32
@il4965_mod_params = external dso_local global %struct.il_mod_params, align 4
@il4965_cfg = dso_local global { %struct.il_cfg, [52 x i8] } { %struct.il_cfg { ptr @.str.25, ptr @.str.26, i32 2, i32 2, i8 3, i8 7, i32 11, i16 47, i16 5, ptr @il4965_mod_params, ptr null, [6 x i8] c"\00\06\00\00\00\00", i32 2, i32 1024, i32 16, i32 8, i32 0, i8 1, i8 1, i16 61, i32 20, i32 2000, i8 1, i8 1, i8 1, i8 1, [7 x i32] [i32 198, i32 228, i32 256, i32 282, i32 306, i32 320, i32 336] }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware354 = internal constant [38 x i8] c"iwl4965.firmware=iwlwifi-4965-2.ucode\00", section ".modinfo", align 1
@il4965_verify_inst_sparse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s ucode inst image size is %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il4965_verify_inst_sparse\00", [38 x i8] zeroinitializer }, align 32
@il4965_verify_inst_sparse._entry_ptr = internal global ptr @il4965_verify_inst_sparse._entry, section ".printk_index", align 4
@il_debug_level = external dso_local local_unnamed_addr global i32, align 4
@il4965_verify_inst_full._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_verify_inst_full\00", [40 x i8] zeroinitializer }, align 32
@il4965_verify_inst_full._entry_ptr = internal global ptr @il4965_verify_inst_full._entry, section ".printk_index", align 4
@il4965_verify_inst_full._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"uCode INST section is invalid at offset 0x%x, is 0x%x, s/b 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@il4965_verify_inst_full._entry_ptr.32 = internal global ptr @il4965_verify_inst_full._entry.30, section ".printk_index", align 4
@il4965_verify_inst_full._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s ucode image in INSTRUCTION memory is good\0A\00", [50 x i8] zeroinitializer }, align 32
@il4965_verify_inst_full._entry_ptr.35 = internal global ptr @il4965_verify_inst_full._entry.33, section ".printk_index", align 4
@il4965_hw_get_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1571, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Running HT40 temperature calibration\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il4965_hw_get_temperature\00", [38 x i8] zeroinitializer }, align 32
@il4965_hw_get_temperature._entry_ptr = internal global ptr @il4965_hw_get_temperature._entry, section ".printk_index", align 4
@il4965_hw_get_temperature._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 1577, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Running temperature calibration\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_hw_get_temperature._entry_ptr.40 = internal global ptr @il4965_hw_get_temperature._entry.38, section ".printk_index", align 4
@il4965_hw_get_temperature._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 1598, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Calib values R[1-3]: %d %d %d R4: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_hw_get_temperature._entry_ptr.43 = internal global ptr @il4965_hw_get_temperature._entry.41, section ".printk_index", align 4
@il4965_hw_get_temperature._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.2, i32 1601, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Calibration conflict R1 == R3\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_hw_get_temperature._entry_ptr.46 = internal global ptr @il4965_hw_get_temperature._entry.44, section ".printk_index", align 4
@il4965_hw_get_temperature._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 1613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Calibrated temperature: %dK, %ldC\0A\00", [58 x i8] zeroinitializer }, align 32
@il4965_hw_get_temperature._entry_ptr.49 = internal global ptr @il4965_hw_get_temperature._entry.47, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1636, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s Temperature not updated -- no stats.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il4965_is_temp_calib_needed\00", [36 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr = internal global ptr @il4965_is_temp_calib_needed._entry, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 1644, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Getting cooler, delta %d\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr.54 = internal global ptr @il4965_is_temp_calib_needed._entry.52, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 1647, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s Temperature unchanged\0A\00", [38 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr.57 = internal global ptr @il4965_is_temp_calib_needed._entry.55, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 1649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Getting warmer, delta %d\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr.60 = internal global ptr @il4965_is_temp_calib_needed._entry.58, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 1652, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s  => thermal txpower calib not needed\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr.63 = internal global ptr @il4965_is_temp_calib_needed._entry.61, section ".printk_index", align 4
@il4965_is_temp_calib_needed._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.2, i32 1656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s  => thermal txpower calib needed\0A\00", [59 x i8] zeroinitializer }, align 32
@il4965_is_temp_calib_needed._entry_ptr.66 = internal global ptr @il4965_is_temp_calib_needed._entry.64, section ".printk_index", align 4
@il4965_init_alive_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Bad \22initialize\22 uCode load.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_init_alive_start\00", [40 x i8] zeroinitializer }, align 32
@il4965_init_alive_start._entry_ptr = internal global ptr @il4965_init_alive_start._entry, section ".printk_index", align 4
@il4965_init_alive_start._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Initialization Alive received.\0A\00", [61 x i8] zeroinitializer }, align 32
@il4965_init_alive_start._entry_ptr.71 = internal global ptr @il4965_init_alive_start._entry.69, section ".printk_index", align 4
@il4965_init_alive_start._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Couldn't set up uCode pointers.\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_init_alive_start._entry_ptr.74 = internal global ptr @il4965_init_alive_start._entry.72, section ".printk_index", align 4
@il4965_set_ucode_ptrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Runtime uCode pointers are set.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"il4965_set_ucode_ptrs\00", [42 x i8] zeroinitializer }, align 32
@il4965_set_ucode_ptrs._entry_ptr = internal global ptr @il4965_set_ucode_ptrs._entry, section ".printk_index", align 4
@il4965_load_bsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Begin load bsm\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"il4965_load_bsm\00", [16 x i8] zeroinitializer }, align 32
@il4965_load_bsm._entry_ptr = internal global ptr @il4965_load_bsm._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@il4965_load_bsm._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 392, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s BSM write complete, poll %d iterations\0A\00", [53 x i8] zeroinitializer }, align 32
@il4965_load_bsm._entry_ptr.81 = internal global ptr @il4965_load_bsm._entry.79, section ".printk_index", align 4
@il4965_load_bsm._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BSM write did not complete!\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_load_bsm._entry_ptr.84 = internal global ptr @il4965_load_bsm._entry.82, section ".printk_index", align 4
@il4965_verify_bsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.2, i32 274, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Begin verify bsm\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"il4965_verify_bsm\00", [46 x i8] zeroinitializer }, align 32
@il4965_verify_bsm._entry_ptr = internal global ptr @il4965_verify_bsm._entry, section ".printk_index", align 4
@il4965_verify_bsm._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"BSM uCode verification failed at addr 0x%08X+%u (of %u), is 0x%x, s/b 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_verify_bsm._entry_ptr.89 = internal global ptr @il4965_verify_bsm._entry.87, section ".printk_index", align 4
@il4965_verify_bsm._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.2, i32 290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s BSM bootstrap uCode image OK\0A\00", [63 x i8] zeroinitializer }, align 32
@il4965_verify_bsm._entry_ptr.92 = internal global ptr @il4965_verify_bsm._entry.90, section ".printk_index", align 4
@il4965_hw_channel_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@il4965_hw_channel_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1511, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s uCode time for the switch is 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_hw_channel_switch\00", [39 x i8] zeroinitializer }, align 32
@il4965_hw_channel_switch._entry_ptr = internal global ptr @il4965_hw_channel_switch._entry, section ".printk_index", align 4
@il4965_hw_channel_switch._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.2, i32 1517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid channel switch from %u to %u\0A\00", [58 x i8] zeroinitializer }, align 32
@il4965_hw_channel_switch._entry_ptr.97 = internal global ptr @il4965_hw_channel_switch._entry.95, section ".printk_index", align 4
@il4965_hw_channel_switch._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 1524, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s error:%d  fill txpower_tbl\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_hw_channel_switch._entry_ptr.100 = internal global ptr @il4965_hw_channel_switch._entry.98, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1036, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s chan %d band %d is_ht40 %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_fill_txpower_tbl\00", [40 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr = internal global ptr @il4965_fill_txpower_tbl._entry, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1047, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't find txatten group for channel %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.105 = internal global ptr @il4965_fill_txpower_tbl._entry.103, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.2, i32 1052, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s channel %d belongs to txatten group %d\0A\00", [53 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.108 = internal global ptr @il4965_fill_txpower_tbl._entry.106, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.2, i32 1102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s curr volt %d eeprom volt %d volt comp %d\0A\00", [51 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.111 = internal global ptr @il4965_fill_txpower_tbl._entry.109, section ".printk_index", align 4
@tx_power_cmp_tble = internal constant { [5 x %struct.il4965_txpower_comp_entry], [56 x i8] } { [5 x %struct.il4965_txpower_comp_entry] [%struct.il4965_txpower_comp_entry { i32 9, i32 2 }, %struct.il4965_txpower_comp_entry { i32 4, i32 1 }, %struct.il4965_txpower_comp_entry { i32 4, i32 1 }, %struct.il4965_txpower_comp_entry { i32 4, i32 1 }, %struct.il4965_txpower_comp_entry { i32 3, i32 1 }], [56 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.2, i32 1131, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s chain = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.114 = internal global ptr @il4965_fill_txpower_tbl._entry.112, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.102, ptr @.str.2, i32 1133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s fctry tmp %d, curr tmp %d, comp %d steps\0A\00", [51 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.117 = internal global ptr @il4965_fill_txpower_tbl._entry.115, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.102, ptr @.str.2, i32 1136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s fctry idx %d, fctry pwr %d\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.120 = internal global ptr @il4965_fill_txpower_tbl._entry.118, section ".printk_index", align 4
@back_off_table = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 10, i32 10, i32 10, i32 10, i32 10, i32 15, i32 17, i32 20, i32 10, i32 10, i32 10, i32 10, i32 10, i32 15, i32 17, i32 20, i32 10, i32 10, i32 10, i32 10, i32 10, i32 15, i32 17, i32 20, i32 10, i32 10, i32 10, i32 10, i32 10, i32 15, i32 17, i32 20, i32 10], [60 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.102, ptr @.str.2, i32 1170, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s rate %d sat %d reg %d usr %d tgt %d\0A\00", [56 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.123 = internal global ptr @il4965_fill_txpower_tbl._entry.121, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.102, ptr @.str.2, i32 1207, ptr @.str.126, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"txpower idx %d > 107\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.127 = internal global ptr @il4965_fill_txpower_tbl._entry.124, section ".printk_index", align 4
@il4965_fill_txpower_tbl._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.102, ptr @.str.2, i32 1211, ptr @.str.126, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"txpower idx %d < 0\0A\00", [44 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.130 = internal global ptr @il4965_fill_txpower_tbl._entry.128, section ".printk_index", align 4
@gain_table = internal constant { [2 x [108 x %struct.gain_entry]], [112 x i8] } { [2 x [108 x %struct.gain_entry]] [[108 x %struct.gain_entry] [%struct.gain_entry { i8 123, i8 63 }, %struct.gain_entry { i8 117, i8 63 }, %struct.gain_entry { i8 110, i8 63 }, %struct.gain_entry { i8 104, i8 63 }, %struct.gain_entry { i8 98, i8 63 }, %struct.gain_entry { i8 110, i8 62 }, %struct.gain_entry { i8 104, i8 62 }, %struct.gain_entry { i8 98, i8 62 }, %struct.gain_entry { i8 110, i8 61 }, %struct.gain_entry { i8 104, i8 61 }, %struct.gain_entry { i8 98, i8 61 }, %struct.gain_entry { i8 110, i8 60 }, %struct.gain_entry { i8 104, i8 60 }, %struct.gain_entry { i8 98, i8 60 }, %struct.gain_entry { i8 110, i8 59 }, %struct.gain_entry { i8 104, i8 59 }, %struct.gain_entry { i8 98, i8 59 }, %struct.gain_entry { i8 110, i8 58 }, %struct.gain_entry { i8 104, i8 58 }, %struct.gain_entry { i8 98, i8 58 }, %struct.gain_entry { i8 110, i8 57 }, %struct.gain_entry { i8 104, i8 57 }, %struct.gain_entry { i8 98, i8 57 }, %struct.gain_entry { i8 110, i8 56 }, %struct.gain_entry { i8 104, i8 56 }, %struct.gain_entry { i8 98, i8 56 }, %struct.gain_entry { i8 110, i8 55 }, %struct.gain_entry { i8 104, i8 55 }, %struct.gain_entry { i8 98, i8 55 }, %struct.gain_entry { i8 110, i8 54 }, %struct.gain_entry { i8 104, i8 54 }, %struct.gain_entry { i8 98, i8 54 }, %struct.gain_entry { i8 110, i8 53 }, %struct.gain_entry { i8 104, i8 53 }, %struct.gain_entry { i8 98, i8 53 }, %struct.gain_entry { i8 110, i8 52 }, %struct.gain_entry { i8 104, i8 52 }, %struct.gain_entry { i8 98, i8 52 }, %struct.gain_entry { i8 110, i8 51 }, %struct.gain_entry { i8 104, i8 51 }, %struct.gain_entry { i8 98, i8 51 }, %struct.gain_entry { i8 110, i8 50 }, %struct.gain_entry { i8 104, i8 50 }, %struct.gain_entry { i8 98, i8 50 }, %struct.gain_entry { i8 110, i8 49 }, %struct.gain_entry { i8 104, i8 49 }, %struct.gain_entry { i8 98, i8 49 }, %struct.gain_entry { i8 110, i8 48 }, %struct.gain_entry { i8 104, i8 48 }, %struct.gain_entry { i8 98, i8 48 }, %struct.gain_entry { i8 110, i8 37 }, %struct.gain_entry { i8 104, i8 37 }, %struct.gain_entry { i8 98, i8 37 }, %struct.gain_entry { i8 110, i8 36 }, %struct.gain_entry { i8 104, i8 36 }, %struct.gain_entry { i8 98, i8 36 }, %struct.gain_entry { i8 110, i8 35 }, %struct.gain_entry { i8 104, i8 35 }, %struct.gain_entry { i8 98, i8 35 }, %struct.gain_entry { i8 110, i8 34 }, %struct.gain_entry { i8 104, i8 24 }, %struct.gain_entry { i8 98, i8 24 }, %struct.gain_entry { i8 110, i8 23 }, %struct.gain_entry { i8 104, i8 23 }, %struct.gain_entry { i8 98, i8 23 }, %struct.gain_entry { i8 110, i8 22 }, %struct.gain_entry { i8 104, i8 22 }, %struct.gain_entry { i8 98, i8 22 }, %struct.gain_entry { i8 110, i8 21 }, %struct.gain_entry { i8 104, i8 21 }, %struct.gain_entry { i8 98, i8 21 }, %struct.gain_entry { i8 110, i8 20 }, %struct.gain_entry { i8 104, i8 20 }, %struct.gain_entry { i8 98, i8 20 }, %struct.gain_entry { i8 110, i8 19 }, %struct.gain_entry { i8 104, i8 19 }, %struct.gain_entry { i8 98, i8 19 }, %struct.gain_entry { i8 110, i8 18 }, %struct.gain_entry { i8 104, i8 8 }, %struct.gain_entry { i8 98, i8 8 }, %struct.gain_entry { i8 110, i8 7 }, %struct.gain_entry { i8 104, i8 7 }, %struct.gain_entry { i8 98, i8 7 }, %struct.gain_entry { i8 110, i8 6 }, %struct.gain_entry { i8 104, i8 6 }, %struct.gain_entry { i8 98, i8 6 }, %struct.gain_entry { i8 110, i8 5 }, %struct.gain_entry { i8 104, i8 5 }, %struct.gain_entry { i8 98, i8 5 }, %struct.gain_entry { i8 110, i8 4 }, %struct.gain_entry { i8 104, i8 4 }, %struct.gain_entry { i8 98, i8 4 }, %struct.gain_entry { i8 110, i8 3 }, %struct.gain_entry { i8 104, i8 3 }, %struct.gain_entry { i8 98, i8 3 }, %struct.gain_entry { i8 110, i8 2 }, %struct.gain_entry { i8 104, i8 2 }, %struct.gain_entry { i8 98, i8 2 }, %struct.gain_entry { i8 110, i8 1 }, %struct.gain_entry { i8 104, i8 1 }, %struct.gain_entry { i8 98, i8 1 }, %struct.gain_entry { i8 110, i8 0 }, %struct.gain_entry { i8 104, i8 0 }, %struct.gain_entry { i8 98, i8 0 }, %struct.gain_entry { i8 93, i8 0 }, %struct.gain_entry { i8 88, i8 0 }, %struct.gain_entry { i8 83, i8 0 }, %struct.gain_entry { i8 78, i8 0 }], [108 x %struct.gain_entry] [%struct.gain_entry { i8 110, i8 63 }, %struct.gain_entry { i8 104, i8 63 }, %struct.gain_entry { i8 98, i8 63 }, %struct.gain_entry { i8 110, i8 62 }, %struct.gain_entry { i8 104, i8 62 }, %struct.gain_entry { i8 98, i8 62 }, %struct.gain_entry { i8 110, i8 61 }, %struct.gain_entry { i8 104, i8 61 }, %struct.gain_entry { i8 98, i8 61 }, %struct.gain_entry { i8 110, i8 60 }, %struct.gain_entry { i8 104, i8 60 }, %struct.gain_entry { i8 98, i8 60 }, %struct.gain_entry { i8 110, i8 59 }, %struct.gain_entry { i8 104, i8 59 }, %struct.gain_entry { i8 98, i8 59 }, %struct.gain_entry { i8 110, i8 58 }, %struct.gain_entry { i8 104, i8 58 }, %struct.gain_entry { i8 98, i8 58 }, %struct.gain_entry { i8 110, i8 57 }, %struct.gain_entry { i8 104, i8 57 }, %struct.gain_entry { i8 98, i8 57 }, %struct.gain_entry { i8 110, i8 56 }, %struct.gain_entry { i8 104, i8 56 }, %struct.gain_entry { i8 98, i8 56 }, %struct.gain_entry { i8 110, i8 55 }, %struct.gain_entry { i8 104, i8 55 }, %struct.gain_entry { i8 98, i8 55 }, %struct.gain_entry { i8 110, i8 54 }, %struct.gain_entry { i8 104, i8 54 }, %struct.gain_entry { i8 98, i8 54 }, %struct.gain_entry { i8 110, i8 53 }, %struct.gain_entry { i8 104, i8 53 }, %struct.gain_entry { i8 98, i8 53 }, %struct.gain_entry { i8 110, i8 52 }, %struct.gain_entry { i8 104, i8 52 }, %struct.gain_entry { i8 98, i8 52 }, %struct.gain_entry { i8 110, i8 51 }, %struct.gain_entry { i8 104, i8 51 }, %struct.gain_entry { i8 98, i8 51 }, %struct.gain_entry { i8 110, i8 50 }, %struct.gain_entry { i8 104, i8 50 }, %struct.gain_entry { i8 98, i8 50 }, %struct.gain_entry { i8 110, i8 49 }, %struct.gain_entry { i8 104, i8 49 }, %struct.gain_entry { i8 98, i8 49 }, %struct.gain_entry { i8 110, i8 48 }, %struct.gain_entry { i8 104, i8 48 }, %struct.gain_entry { i8 98, i8 48 }, %struct.gain_entry { i8 110, i8 6 }, %struct.gain_entry { i8 104, i8 6 }, %struct.gain_entry { i8 98, i8 6 }, %struct.gain_entry { i8 110, i8 5 }, %struct.gain_entry { i8 104, i8 5 }, %struct.gain_entry { i8 98, i8 5 }, %struct.gain_entry { i8 110, i8 4 }, %struct.gain_entry { i8 104, i8 4 }, %struct.gain_entry { i8 98, i8 4 }, %struct.gain_entry { i8 110, i8 3 }, %struct.gain_entry { i8 104, i8 3 }, %struct.gain_entry { i8 98, i8 3 }, %struct.gain_entry { i8 110, i8 2 }, %struct.gain_entry { i8 104, i8 2 }, %struct.gain_entry { i8 98, i8 2 }, %struct.gain_entry { i8 110, i8 1 }, %struct.gain_entry { i8 104, i8 1 }, %struct.gain_entry { i8 98, i8 1 }, %struct.gain_entry { i8 110, i8 0 }, %struct.gain_entry { i8 104, i8 0 }, %struct.gain_entry { i8 98, i8 0 }, %struct.gain_entry { i8 97, i8 0 }, %struct.gain_entry { i8 96, i8 0 }, %struct.gain_entry { i8 95, i8 0 }, %struct.gain_entry { i8 94, i8 0 }, %struct.gain_entry { i8 93, i8 0 }, %struct.gain_entry { i8 92, i8 0 }, %struct.gain_entry { i8 91, i8 0 }, %struct.gain_entry { i8 90, i8 0 }, %struct.gain_entry { i8 89, i8 0 }, %struct.gain_entry { i8 88, i8 0 }, %struct.gain_entry { i8 87, i8 0 }, %struct.gain_entry { i8 86, i8 0 }, %struct.gain_entry { i8 85, i8 0 }, %struct.gain_entry { i8 84, i8 0 }, %struct.gain_entry { i8 83, i8 0 }, %struct.gain_entry { i8 82, i8 0 }, %struct.gain_entry { i8 81, i8 0 }, %struct.gain_entry { i8 80, i8 0 }, %struct.gain_entry { i8 79, i8 0 }, %struct.gain_entry { i8 78, i8 0 }, %struct.gain_entry { i8 77, i8 0 }, %struct.gain_entry { i8 76, i8 0 }, %struct.gain_entry { i8 75, i8 0 }, %struct.gain_entry { i8 74, i8 0 }, %struct.gain_entry { i8 73, i8 0 }, %struct.gain_entry { i8 72, i8 0 }, %struct.gain_entry { i8 71, i8 0 }, %struct.gain_entry { i8 70, i8 0 }, %struct.gain_entry { i8 69, i8 0 }, %struct.gain_entry { i8 68, i8 0 }, %struct.gain_entry { i8 67, i8 0 }, %struct.gain_entry { i8 66, i8 0 }, %struct.gain_entry { i8 65, i8 0 }, %struct.gain_entry { i8 64, i8 0 }, %struct.gain_entry { i8 63, i8 0 }, %struct.gain_entry { i8 62, i8 0 }, %struct.gain_entry { i8 61, i8 0 }, %struct.gain_entry { i8 60, i8 0 }, %struct.gain_entry { i8 59, i8 0 }]], [112 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.102, ptr @.str.2, i32 1224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s chain %d mimo %d idx %d gain 0x%02x dsp %d\0A\00", [49 x i8] zeroinitializer }, align 32
@il4965_fill_txpower_tbl._entry_ptr.133 = internal global ptr @il4965_fill_txpower_tbl._entry.131, section ".printk_index", align 4
@il4965_interpolate_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.2, i32 680, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Tx Power can not find channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"il4965_interpolate_chan\00", [40 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr = internal global ptr @il4965_interpolate_chan._entry, section ".printk_index", align 4
@il4965_interpolate_chan._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.2, i32 689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s channel %d subband %d factory cal ch %d & %d\0A\00", [47 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr.138 = internal global ptr @il4965_interpolate_chan._entry.136, section ".printk_index", align 4
@il4965_interpolate_chan._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.2, i32 719, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s chain %d meas %d AP1=%d AP2=%d AP=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr.141 = internal global ptr @il4965_interpolate_chan._entry.139, section ".printk_index", align 4
@il4965_interpolate_chan._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.2, i32 722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s chain %d meas %d NI1=%d NI2=%d NI=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr.144 = internal global ptr @il4965_interpolate_chan._entry.142, section ".printk_index", align 4
@il4965_interpolate_chan._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.2, i32 724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s chain %d meas %d PA1=%d PA2=%d PA=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr.147 = internal global ptr @il4965_interpolate_chan._entry.145, section ".printk_index", align 4
@il4965_interpolate_chan._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.2, i32 727, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s chain %d meas %d  T1=%d  T2=%d  T=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@il4965_interpolate_chan._entry_ptr.150 = internal global ptr @il4965_interpolate_chan._entry.148, section ".printk_index", align 4
@il4965_send_tx_power.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.151 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TX Power requested while scanning!\0A\00", [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@il4965_send_rxon_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 1295, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Using current RXON_ASSOC.  Not resending.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il4965_send_rxon_assoc\00", [41 x i8] zeroinitializer }, align 32
@il4965_send_rxon_assoc._entry_ptr = internal global ptr @il4965_send_rxon_assoc._entry, section ".printk_index", align 4
@il4965_commit_rxon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 1333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid RXON configuration.  Not committing.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il4965_commit_rxon\00", [45 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr = internal global ptr @il4965_commit_rxon._entry, section ".printk_index", align 4
@il4965_commit_rxon._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 1344, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s abort channel switch on %d\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.158 = internal global ptr @il4965_commit_rxon._entry.156, section ".printk_index", align 4
@il4965_commit_rxon._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 1354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error setting RXON_ASSOC (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.161 = internal global ptr @il4965_commit_rxon._entry.159, section ".printk_index", align 4
@il4965_commit_rxon._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 1373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s Toggling associated bit on current RXON\0A\00", [52 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.164 = internal global ptr @il4965_commit_rxon._entry.162, section ".printk_index", align 4
@il4965_commit_rxon._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 1384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error clearing ASSOC_MSK (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.167 = internal global ptr @il4965_commit_rxon._entry.165, section ".printk_index", align 4
@il4965_commit_rxon._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.155, ptr @.str.2, i32 1391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to restore WEP keys (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.170 = internal global ptr @il4965_commit_rxon._entry.168, section ".printk_index", align 4
@il4965_commit_rxon._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.155, ptr @.str.2, i32 1398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s Sending RXON\0A* with%s RXON_FILTER_ASSOC_MSK\0A* channel = %d\0A* bssid = %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.173 = internal global ptr @il4965_commit_rxon._entry.171, section ".printk_index", align 4
@.str.174 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.175 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.155, ptr @.str.2, i32 1411, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error setting new RXON (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.178 = internal global ptr @il4965_commit_rxon._entry.176, section ".printk_index", align 4
@il4965_commit_rxon._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.155, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Return from !new_assoc RXON.\0A\00", [63 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.181 = internal global ptr @il4965_commit_rxon._entry.179, section ".printk_index", align 4
@il4965_commit_rxon._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.155, ptr @.str.2, i32 1420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.183 = internal global ptr @il4965_commit_rxon._entry.182, section ".printk_index", align 4
@il4965_commit_rxon._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.155, ptr @.str.2, i32 1433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.185 = internal global ptr @il4965_commit_rxon._entry.184, section ".printk_index", align 4
@il4965_commit_rxon._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.155, ptr @.str.2, i32 1446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error sending TX power (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_commit_rxon._entry_ptr.188 = internal global ptr @il4965_commit_rxon._entry.186, section ".printk_index", align 4
@il4965_post_associate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 1750, ptr @.str.126, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RXON timing - Attempting to continue.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"il4965_post_associate\00", [42 x i8] zeroinitializer }, align 32
@il4965_post_associate._entry_ptr = internal global ptr @il4965_post_associate._entry, section ".printk_index", align 4
@il4965_post_associate._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 1762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s assoc id %d beacon interval %d\0A\00", [61 x i8] zeroinitializer }, align 32
@il4965_post_associate._entry_ptr.193 = internal global ptr @il4965_post_associate._entry.191, section ".printk_index", align 4
@il4965_post_associate._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.2, i32 1779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Associated as %d to: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@il4965_post_associate._entry_ptr.196 = internal global ptr @il4965_post_associate._entry.194, section ".printk_index", align 4
@il4965_post_associate._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.190, ptr @.str.2, i32 1789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s Should not be called in %d mode\0A\00", [60 x i8] zeroinitializer }, align 32
@il4965_post_associate._entry_ptr.199 = internal global ptr @il4965_post_associate._entry.197, section ".printk_index", align 4
@il4965_chain_noise_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 546, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not send C_PHY_CALIBRATION\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il4965_chain_noise_reset\00", [39 x i8] zeroinitializer }, align 32
@il4965_chain_noise_reset._entry_ptr = internal global ptr @il4965_chain_noise_reset._entry, section ".printk_index", align 4
@il4965_chain_noise_reset._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Run chain_noise_calibrate\0A\00", [34 x i8] zeroinitializer }, align 32
@il4965_chain_noise_reset._entry_ptr.204 = internal global ptr @il4965_chain_noise_reset._entry.202, section ".printk_index", align 4
@il4965_config_ap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 1826, ptr @.str.126, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RXON timing failed - Attempting to continue.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"il4965_config_ap\00", [47 x i8] zeroinitializer }, align 32
@il4965_config_ap._entry_ptr = internal global ptr @il4965_config_ap._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 115, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 124, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 133, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 137, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 206, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 210, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1672, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1676, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [11 x i8] c"il4965_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1856, i32 21 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1891, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1892, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant [11 x i8] c"il4965_cfg\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1890, i32 15 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 41, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 72, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 83, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 94, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1571, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1577, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1598, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1601, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1612, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1636, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1644, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1647, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1649, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1652, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1656, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 458, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 468, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 472, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 433, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 341, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 392, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 394, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 274, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 282, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 290, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1511, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1516, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1524, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1036, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1047, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1051, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1101, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [18 x i8] c"tx_power_cmp_tble\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 749, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1131, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1132, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1135, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant [15 x i8] c"back_off_table\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 736, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1168, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1207, i32 5 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1211, i32 5 }
@___asan_gen_.552 = private unnamed_addr constant [11 x i8] c"gain_table\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 777, i32 32 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1221, i32 4 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 680, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 688, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 717, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 720, i32 4 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 723, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 725, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1249, i32 6 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1295, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1333, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1343, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1354, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1373, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1384, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1391, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1396, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1411, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1414, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1420, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1433, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1446, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1750, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1761, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1778, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1788, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 546, i32 4 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 548, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.736 = private constant [46 x i8] c"../drivers/net/wireless/intel/iwlegacy/4965.c\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.736, i32 1825, i32 4 }
@llvm.compiler.used = appending global [251 x ptr] [ptr @__UNIQUE_ID_firmware354, ptr @il4965_chain_noise_reset._entry, ptr @il4965_chain_noise_reset._entry.202, ptr @il4965_chain_noise_reset._entry_ptr, ptr @il4965_chain_noise_reset._entry_ptr.204, ptr @il4965_commit_rxon._entry, ptr @il4965_commit_rxon._entry.156, ptr @il4965_commit_rxon._entry.159, ptr @il4965_commit_rxon._entry.162, ptr @il4965_commit_rxon._entry.165, ptr @il4965_commit_rxon._entry.168, ptr @il4965_commit_rxon._entry.171, ptr @il4965_commit_rxon._entry.176, ptr @il4965_commit_rxon._entry.179, ptr @il4965_commit_rxon._entry.182, ptr @il4965_commit_rxon._entry.184, ptr @il4965_commit_rxon._entry.186, ptr @il4965_commit_rxon._entry_ptr, ptr @il4965_commit_rxon._entry_ptr.158, ptr @il4965_commit_rxon._entry_ptr.161, ptr @il4965_commit_rxon._entry_ptr.164, ptr @il4965_commit_rxon._entry_ptr.167, ptr @il4965_commit_rxon._entry_ptr.170, ptr @il4965_commit_rxon._entry_ptr.173, ptr @il4965_commit_rxon._entry_ptr.178, ptr @il4965_commit_rxon._entry_ptr.181, ptr @il4965_commit_rxon._entry_ptr.183, ptr @il4965_commit_rxon._entry_ptr.185, ptr @il4965_commit_rxon._entry_ptr.188, ptr @il4965_config_ap._entry, ptr @il4965_config_ap._entry_ptr, ptr @il4965_eeprom_check_version._entry, ptr @il4965_eeprom_check_version._entry.17, ptr @il4965_eeprom_check_version._entry_ptr, ptr @il4965_eeprom_check_version._entry_ptr.19, ptr @il4965_fill_txpower_tbl._entry, ptr @il4965_fill_txpower_tbl._entry.103, ptr @il4965_fill_txpower_tbl._entry.106, ptr @il4965_fill_txpower_tbl._entry.109, ptr @il4965_fill_txpower_tbl._entry.112, ptr @il4965_fill_txpower_tbl._entry.115, ptr @il4965_fill_txpower_tbl._entry.118, ptr @il4965_fill_txpower_tbl._entry.121, ptr @il4965_fill_txpower_tbl._entry.124, ptr @il4965_fill_txpower_tbl._entry.128, ptr @il4965_fill_txpower_tbl._entry.131, ptr @il4965_fill_txpower_tbl._entry_ptr, ptr @il4965_fill_txpower_tbl._entry_ptr.105, ptr @il4965_fill_txpower_tbl._entry_ptr.108, ptr @il4965_fill_txpower_tbl._entry_ptr.111, ptr @il4965_fill_txpower_tbl._entry_ptr.114, ptr @il4965_fill_txpower_tbl._entry_ptr.117, ptr @il4965_fill_txpower_tbl._entry_ptr.120, ptr @il4965_fill_txpower_tbl._entry_ptr.123, ptr @il4965_fill_txpower_tbl._entry_ptr.127, ptr @il4965_fill_txpower_tbl._entry_ptr.130, ptr @il4965_fill_txpower_tbl._entry_ptr.133, ptr @il4965_hw_channel_switch._entry, ptr @il4965_hw_channel_switch._entry.95, ptr @il4965_hw_channel_switch._entry.98, ptr @il4965_hw_channel_switch._entry_ptr, ptr @il4965_hw_channel_switch._entry_ptr.100, ptr @il4965_hw_channel_switch._entry_ptr.97, ptr @il4965_hw_get_temperature._entry, ptr @il4965_hw_get_temperature._entry.38, ptr @il4965_hw_get_temperature._entry.41, ptr @il4965_hw_get_temperature._entry.44, ptr @il4965_hw_get_temperature._entry.47, ptr @il4965_hw_get_temperature._entry_ptr, ptr @il4965_hw_get_temperature._entry_ptr.40, ptr @il4965_hw_get_temperature._entry_ptr.43, ptr @il4965_hw_get_temperature._entry_ptr.46, ptr @il4965_hw_get_temperature._entry_ptr.49, ptr @il4965_init_alive_start._entry, ptr @il4965_init_alive_start._entry.69, ptr @il4965_init_alive_start._entry.72, ptr @il4965_init_alive_start._entry_ptr, ptr @il4965_init_alive_start._entry_ptr.71, ptr @il4965_init_alive_start._entry_ptr.74, ptr @il4965_interpolate_chan._entry, ptr @il4965_interpolate_chan._entry.136, ptr @il4965_interpolate_chan._entry.139, ptr @il4965_interpolate_chan._entry.142, ptr @il4965_interpolate_chan._entry.145, ptr @il4965_interpolate_chan._entry.148, ptr @il4965_interpolate_chan._entry_ptr, ptr @il4965_interpolate_chan._entry_ptr.138, ptr @il4965_interpolate_chan._entry_ptr.141, ptr @il4965_interpolate_chan._entry_ptr.144, ptr @il4965_interpolate_chan._entry_ptr.147, ptr @il4965_interpolate_chan._entry_ptr.150, ptr @il4965_is_temp_calib_needed._entry, ptr @il4965_is_temp_calib_needed._entry.52, ptr @il4965_is_temp_calib_needed._entry.55, ptr @il4965_is_temp_calib_needed._entry.58, ptr @il4965_is_temp_calib_needed._entry.61, ptr @il4965_is_temp_calib_needed._entry.64, ptr @il4965_is_temp_calib_needed._entry_ptr, ptr @il4965_is_temp_calib_needed._entry_ptr.54, ptr @il4965_is_temp_calib_needed._entry_ptr.57, ptr @il4965_is_temp_calib_needed._entry_ptr.60, ptr @il4965_is_temp_calib_needed._entry_ptr.63, ptr @il4965_is_temp_calib_needed._entry_ptr.66, ptr @il4965_load_bsm._entry, ptr @il4965_load_bsm._entry.79, ptr @il4965_load_bsm._entry.82, ptr @il4965_load_bsm._entry_ptr, ptr @il4965_load_bsm._entry_ptr.81, ptr @il4965_load_bsm._entry_ptr.84, ptr @il4965_post_associate._entry, ptr @il4965_post_associate._entry.191, ptr @il4965_post_associate._entry.194, ptr @il4965_post_associate._entry.197, ptr @il4965_post_associate._entry_ptr, ptr @il4965_post_associate._entry_ptr.193, ptr @il4965_post_associate._entry_ptr.196, ptr @il4965_post_associate._entry_ptr.199, ptr @il4965_send_rxon_assoc._entry, ptr @il4965_send_rxon_assoc._entry_ptr, ptr @il4965_set_ucode_ptrs._entry, ptr @il4965_set_ucode_ptrs._entry_ptr, ptr @il4965_temperature_calib._entry, ptr @il4965_temperature_calib._entry.22, ptr @il4965_temperature_calib._entry_ptr, ptr @il4965_temperature_calib._entry_ptr.24, ptr @il4965_verify_bsm._entry, ptr @il4965_verify_bsm._entry.87, ptr @il4965_verify_bsm._entry.90, ptr @il4965_verify_bsm._entry_ptr, ptr @il4965_verify_bsm._entry_ptr.89, ptr @il4965_verify_bsm._entry_ptr.92, ptr @il4965_verify_inst_full._entry, ptr @il4965_verify_inst_full._entry.30, ptr @il4965_verify_inst_full._entry.33, ptr @il4965_verify_inst_full._entry_ptr, ptr @il4965_verify_inst_full._entry_ptr.32, ptr @il4965_verify_inst_full._entry_ptr.35, ptr @il4965_verify_inst_sparse._entry, ptr @il4965_verify_inst_sparse._entry_ptr, ptr @il4965_verify_ucode._entry, ptr @il4965_verify_ucode._entry.11, ptr @il4965_verify_ucode._entry.5, ptr @il4965_verify_ucode._entry.8, ptr @il4965_verify_ucode._entry_ptr, ptr @il4965_verify_ucode._entry_ptr.10, ptr @il4965_verify_ucode._entry_ptr.13, ptr @il4965_verify_ucode._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @il4965_ops, ptr @.str.25, ptr @.str.26, ptr @il4965_cfg, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @tx_power_cmp_tble, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @back_off_table, ptr @.str.122, ptr @.str.125, ptr @.str.126, ptr @.str.129, ptr @gain_table, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.205, ptr @.str.206], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_ucode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_ucode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_ucode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_ucode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_eeprom_check_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_eeprom_check_version._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_temperature_calib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_temperature_calib._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_cfg to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_inst_sparse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_inst_full._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_inst_full._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_inst_full._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_get_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_get_temperature._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_get_temperature._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_get_temperature._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_get_temperature._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_is_temp_calib_needed._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_init_alive_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_init_alive_start._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_init_alive_start._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_set_ucode_ptrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_load_bsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_load_bsm._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_load_bsm._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_bsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_bsm._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_verify_bsm._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_channel_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_channel_switch._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_hw_channel_switch._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_power_cmp_tble to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @back_off_table to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gain_table to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_fill_txpower_tbl._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_interpolate_chan._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_send_rxon_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_commit_rxon._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_post_associate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_post_associate._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_post_associate._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_post_associate._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_chain_noise_reset._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il4965_config_ap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il4965_verify_ucode(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ucode_boot = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 49
  %0 = ptrtoint ptr %ucode_boot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucode_boot, align 8
  %len2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 49, i32 2
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 8
  %call = tail call fastcc i32 @il4965_verify_inst_sparse(ptr noundef %il, ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %ucode_init = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47
  %11 = ptrtoint ptr %ucode_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ucode_init, align 8
  %len12 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47, i32 2
  %13 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len12, align 8
  %call13 = tail call fastcc i32 @il4965_verify_inst_sparse(ptr noundef %il, ptr noundef %12, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body16, label %if.end30

do.body16:                                        ; preds = %if.end9
  %debug_level.i90 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %15 = ptrtoint ptr %debug_level.i90 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_level.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i91 = icmp eq i32 %16, 0
  br i1 %tobool.not.i91, label %if.else.i92, label %do.body16.il_get_debug_level.exit94_crit_edge

do.body16.il_get_debug_level.exit94_crit_edge:    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit94

if.else.i92:                                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %17 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit94

il_get_debug_level.exit94:                        ; preds = %if.else.i92, %do.body16.il_get_debug_level.exit94_crit_edge
  %retval.0.i93 = phi i32 [ %17, %if.else.i92 ], [ %16, %do.body16.il_get_debug_level.exit94_crit_edge ]
  %and18 = and i32 %retval.0.i93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %il_get_debug_level.exit94.cleanup_crit_edge, label %do.end23

il_get_debug_level.exit94.cleanup_crit_edge:      ; preds = %il_get_debug_level.exit94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %il_get_debug_level.exit94
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %il, align 8
  %wiphy25 = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %wiphy25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wiphy25, align 8
  %dev26 = getelementptr inbounds %struct.wiphy, ptr %21, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end9
  %ucode_code = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 44
  %22 = ptrtoint ptr %ucode_code to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ucode_code, align 4
  %len33 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 44, i32 2
  %24 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len33, align 4
  %call34 = tail call fastcc i32 @il4965_verify_inst_sparse(ptr noundef %il, ptr noundef %23, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body37, label %do.end54

do.body37:                                        ; preds = %if.end30
  %debug_level.i95 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %26 = ptrtoint ptr %debug_level.i95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_level.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i96 = icmp eq i32 %27, 0
  br i1 %tobool.not.i96, label %if.else.i97, label %do.body37.il_get_debug_level.exit99_crit_edge

do.body37.il_get_debug_level.exit99_crit_edge:    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit99

if.else.i97:                                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %28 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit99

il_get_debug_level.exit99:                        ; preds = %if.else.i97, %do.body37.il_get_debug_level.exit99_crit_edge
  %retval.0.i98 = phi i32 [ %28, %if.else.i97 ], [ %27, %do.body37.il_get_debug_level.exit99_crit_edge ]
  %and39 = and i32 %retval.0.i98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %il_get_debug_level.exit99.cleanup_crit_edge, label %do.end44

il_get_debug_level.exit99.cleanup_crit_edge:      ; preds = %il_get_debug_level.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44:                                         ; preds = %il_get_debug_level.exit99
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %il, align 8
  %wiphy46 = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy46, align 8
  %dev47 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #12
  br label %cleanup

do.end54:                                         ; preds = %if.end30
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %33 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.12) #12
  %35 = ptrtoint ptr %ucode_boot to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ucode_boot, align 8
  %37 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len2, align 8
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %39 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end54.il_get_debug_level.exit.i_crit_edge

do.end54.il_get_debug_level.exit.i_crit_edge:     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %41 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.end54.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %41, %if.else.i.i ], [ %40, %do.end54.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i100 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i100, label %il_get_debug_level.exit.i.do.end3.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end3.i_crit_edge:    ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %38) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end3.i_crit_edge
  %reg_lock.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 32
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #9
  %call5.i.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #9
  br i1 %call5.i.i, label %if.then.i.i, label %do.end3.i.il_wr.exit.i_crit_edge, !prof !345

do.end3.i.il_wr.exit.i_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_wr.exit.i

if.then.i.i:                                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %hw_base.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %46 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !347
  %48 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #9, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %51 = and i32 %50, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i2.i.i.i.i = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i.i, i32 %51) #9, !srcloc !347
  br label %il_wr.exit.i

il_wr.exit.i:                                     ; preds = %if.then.i.i, %do.end3.i.il_wr.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not59.i = icmp eq i32 %38, 0
  br i1 %cmp.not59.i, label %il_wr.exit.i.do.body18.i_crit_edge, label %for.body.lr.ph.i

il_wr.exit.i.do.body18.i_crit_edge:               ; preds = %il_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18.i

for.body.lr.ph.i:                                 ; preds = %il_wr.exit.i
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %errcnt.063.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %errcnt.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ret.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %len.addr.061.i = phi i32 [ %38, %for.body.lr.ph.i ], [ %sub15.i, %for.inc.i.for.body.i_crit_edge ]
  %image.addr.060.i = phi ptr [ %36, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 1052
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %57 = ptrtoint ptr %image.addr.060.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %image.addr.060.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp5.not.i = icmp eq i32 %56, %58
  br i1 %cmp5.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end9.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end9.i:                                        ; preds = %for.body.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %56) #9
  %61 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci_dev, align 8
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %sub.i = sub i32 %38, %len.addr.061.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.31, i32 noundef %sub.i, i32 noundef %60, i32 noundef %59) #12
  %inc.i = add i32 %errcnt.063.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %inc.i)
  %cmp11.i = icmp ugt i32 %inc.i, 19
  br i1 %cmp11.i, label %do.end9.i.cleanup_crit_edge, label %do.end9.i.for.inc.i_crit_edge

do.end9.i.for.inc.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %do.end9.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ -5, %do.end9.i.for.inc.i_crit_edge ], [ %ret.062.i, %for.body.i.for.inc.i_crit_edge ]
  %errcnt.1.i = phi i32 [ %inc.i, %do.end9.i.for.inc.i_crit_edge ], [ %errcnt.063.i, %for.body.i.for.inc.i_crit_edge ]
  %sub15.i = add i32 %len.addr.061.i, -4
  %incdec.ptr.i = getelementptr i32, ptr %image.addr.060.i, i32 1
  %cmp.not.i = icmp eq i32 %sub15.i, 0
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errcnt.1.i)
  %tobool16.not.i = icmp eq i32 %errcnt.1.i, 0
  br i1 %tobool16.not.i, label %for.end.i.do.body18.i_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i.do.body18.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18.i

do.body18.i:                                      ; preds = %for.end.i.do.body18.i_crit_edge, %il_wr.exit.i.do.body18.i_crit_edge
  %ret.0.lcssa68.i = phi i32 [ %ret.1.i, %for.end.i.do.body18.i_crit_edge ], [ 0, %il_wr.exit.i.do.body18.i_crit_edge ]
  %63 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i49.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i49.i, label %if.else.i50.i, label %do.body18.i.il_get_debug_level.exit52.i_crit_edge

do.body18.i.il_get_debug_level.exit52.i_crit_edge: ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit52.i

if.else.i50.i:                                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %65 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit52.i

il_get_debug_level.exit52.i:                      ; preds = %if.else.i50.i, %do.body18.i.il_get_debug_level.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ %65, %if.else.i50.i ], [ %64, %do.body18.i.il_get_debug_level.exit52.i_crit_edge ]
  %and20.i = and i32 %retval.0.i51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %il_get_debug_level.exit52.i.cleanup_crit_edge, label %do.end25.i

il_get_debug_level.exit52.i.cleanup_crit_edge:    ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end25.i:                                       ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %il, align 8
  %wiphy27.i = getelementptr inbounds %struct.ieee80211_hw, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %wiphy27.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wiphy27.i, align 8
  %dev28.i = getelementptr inbounds %struct.wiphy, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end25.i, %il_get_debug_level.exit52.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.end9.i.cleanup_crit_edge, %do.end44, %il_get_debug_level.exit99.cleanup_crit_edge, %do.end23, %il_get_debug_level.exit94.cleanup_crit_edge, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %il_get_debug_level.exit.cleanup_crit_edge ], [ 0, %do.end23 ], [ 0, %il_get_debug_level.exit94.cleanup_crit_edge ], [ 0, %do.end44 ], [ 0, %il_get_debug_level.exit99.cleanup_crit_edge ], [ %ret.0.lcssa68.i, %il_get_debug_level.exit52.i.cleanup_crit_edge ], [ %ret.0.lcssa68.i, %do.end25.i ], [ %ret.1.i, %for.end.i.cleanup_crit_edge ], [ -5, %do.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_verify_inst_sparse(ptr noundef %il, ptr nocapture noundef readonly %image, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end3_crit_edge, label %do.end

il_get_debug_level.exit.do.end3_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %len) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp20.not = icmp eq i32 %len, 0
  br i1 %cmp20.not, label %do.end3.for.end_crit_edge, label %for.body.lr.ph

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end3
  %reg_lock.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 32
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %for.inc.for.body_crit_edge ]
  %errcnt.023 = phi i32 [ 0, %for.body.lr.ph ], [ %errcnt.1, %for.inc.for.body_crit_edge ]
  %ret.022 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %image.addr.021 = phi ptr [ %image, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #9
  %call5.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #9
  br i1 %call5.i, label %if.then.i, label %for.body.il_wr.exit_crit_edge, !prof !345

for.body.il_wr.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_wr.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.024) #9
  %8 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #9, !srcloc !347
  %10 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %13 = and i32 %12, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %13) #9, !srcloc !347
  br label %il_wr.exit

il_wr.exit:                                       ; preds = %if.then.i, %for.body.il_wr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #9
  %16 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1052
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %19 = ptrtoint ptr %image.addr.021 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %image.addr.021, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp5.not = icmp eq i32 %18, %20
  br i1 %cmp5.not, label %il_wr.exit.for.inc_crit_edge, label %if.then6

il_wr.exit.for.inc_crit_edge:                     ; preds = %il_wr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %il_wr.exit
  %inc = add i32 %errcnt.023, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp7 = icmp ugt i32 %inc, 2
  br i1 %cmp7, label %if.then6.for.end_crit_edge, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.then6.for.inc_crit_edge, %il_wr.exit.for.inc_crit_edge
  %ret.1 = phi i32 [ -5, %if.then6.for.inc_crit_edge ], [ %ret.022, %il_wr.exit.for.inc_crit_edge ]
  %errcnt.1 = phi i32 [ %inc, %if.then6.for.inc_crit_edge ], [ %errcnt.023, %il_wr.exit.for.inc_crit_edge ]
  %add11 = add i32 %i.024, 100
  %add.ptr = getelementptr i32, ptr %image.addr.021, i32 25
  %cmp = icmp ult i32 %add11, %len
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge, %do.end3.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %do.end3.for.end_crit_edge ], [ -5, %if.then6.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il4965_eeprom_acquire_semaphore(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %count.09 = phi i16 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 2097152) #9
  %call = tail call i32 @_il_poll_bit(ptr noundef %il, i32 noundef 0, i32 noundef 2097152, i32 noundef 2097152, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %inc = add nuw nsw i16 %count.09, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %count.09)
  %cmp = icmp ult i16 %count.09, 999
  %or.cond = select i1 %cmp2, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_il_poll_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_eeprom_release_semaphore(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @il_clear_bit(ptr noundef %il, i32 noundef 0, i32 noundef 2097152) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_clear_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il4965_eeprom_check_version(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @il_eeprom_query16(ptr noundef %il, i32 noundef 136) #9
  %call1 = tail call zeroext i16 @il_eeprom_query16(ptr noundef %il, i32 noundef 364) #9
  %conv = zext i16 %call to i32
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %eeprom_ver2 = getelementptr inbounds %struct.il_cfg, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %eeprom_ver2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %eeprom_ver2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %call, i16 %3)
  %cmp = icmp ult i16 %call, %3
  br i1 %cmp, label %entry.do.end14_crit_edge, label %lor.lhs.false

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

lor.lhs.false:                                    ; preds = %entry
  %eeprom_calib_ver = getelementptr inbounds %struct.il_cfg, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eeprom_calib_ver to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %eeprom_calib_ver, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %call1, i16 %5)
  %cmp8 = icmp ult i16 %call1, %5
  br i1 %cmp8, label %lor.lhs.false.do.end14_crit_edge, label %do.end

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i16 %call1 to i32
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv5) #12
  br label %cleanup

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %entry.do.end14_crit_edge
  %pci_dev15 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %8 = ptrtoint ptr %pci_dev15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv20 = zext i16 %3 to i32
  %conv21 = zext i16 %call1 to i32
  %eeprom_calib_ver23 = getelementptr inbounds %struct.il_cfg, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %eeprom_calib_ver23 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %eeprom_calib_ver23, align 2
  %conv24 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv24) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @il_eeprom_query16(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_eeprom_get_mac(ptr noundef %il, ptr nocapture noundef writeonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @il_eeprom_query_addr(ptr noundef %il, i32 noundef 42) #9
  %0 = call ptr @memcpy(ptr %mac, ptr %call, i32 6)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @il_eeprom_query_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_led_enable(ptr nocapture noundef readonly %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2013265920) #9, !srcloc !347
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_nic_config(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call5 = tail call zeroext i16 @il_eeprom_query16(ptr noundef %il, i32 noundef 144) #9
  %conv6 = zext i16 %call5 to i32
  %and = and i32 %conv6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp7 = icmp eq i32 %and, 1
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = lshr i32 %conv6, 2
  %1 = lshr i32 %conv6, 4
  %and1228 = or i32 %0, %1
  %or = and i32 %and1228, 2
  %or16 = or i32 %or, 1
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef %or16) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 768) #9
  %call17 = tail call ptr @il_eeprom_query_addr(ptr noundef %il, i32 noundef 464) #9
  %calib_info = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 93
  %2 = ptrtoint ptr %calib_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call17, ptr %calib_info, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il4965_temperature_calib(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @il4965_hw_get_temperature(ptr noundef %il)
  %0 = add i32 %call, -411
  call void @__sanitizer_cov_trace_const_cmp4(i32 -148, i32 %0)
  %1 = icmp ult i32 %0, -148
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %2 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call)
  %cmp2.not = icmp eq i32 %3, %call
  br i1 %cmp2.not, label %if.end.if.end32_crit_edge, label %if.then3

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %debug_level.i67 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i67 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i68 = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body16, label %do.body

do.body:                                          ; preds = %if.then3
  br i1 %tobool.not.i68, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %il_get_debug_level.exit.if.end32_crit_edge, label %do.end

il_get_debug_level.exit.if.end32_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  %add8.i = add i32 %3, -273
  %add8.i66 = add nsw i32 %call, -273
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %add8.i, i32 noundef %add8.i66) #12
  br label %if.end32

do.body16:                                        ; preds = %if.then3
  br i1 %tobool.not.i68, label %if.else.i69, label %do.body16.il_get_debug_level.exit71_crit_edge

do.body16.il_get_debug_level.exit71_crit_edge:    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit71

if.else.i69:                                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %11 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit71

il_get_debug_level.exit71:                        ; preds = %if.else.i69, %do.body16.il_get_debug_level.exit71_crit_edge
  %retval.0.i70 = phi i32 [ %11, %if.else.i69 ], [ %5, %do.body16.il_get_debug_level.exit71_crit_edge ]
  %and18 = and i32 %retval.0.i70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %il_get_debug_level.exit71.if.end32_crit_edge, label %do.end23

il_get_debug_level.exit71.if.end32_crit_edge:     ; preds = %il_get_debug_level.exit71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.end23:                                         ; preds = %il_get_debug_level.exit71
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %il, align 8
  %wiphy25 = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy25, align 8
  %dev26 = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  %add8.i72 = add nsw i32 %call, -273
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %add8.i72) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end23, %il_get_debug_level.exit71.if.end32_crit_edge, %do.end, %il_get_debug_level.exit.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %16 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call, ptr %temperature, align 8
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  tail call void @_set_bit(i32 noundef 8, ptr noundef %status) #9
  %disable_tx_power_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 126
  %17 = ptrtoint ptr %disable_tx_power_cal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disable_tx_power_cal, align 2, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %land.lhs.true, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end32
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool37.not = icmp eq i32 %21, 0
  br i1 %tobool37.not, label %land.lhs.true41, label %land.lhs.true.cleanup_crit_edge, !prof !351

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true41:                                  ; preds = %land.lhs.true
  %call42 = tail call fastcc i32 @il4965_is_temp_calib_needed(ptr noundef %il)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.cleanup_crit_edge, label %if.then44

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #11
  %workqueue = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 99
  %22 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %workqueue, align 4
  %txpower_work = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 123
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %txpower_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true41.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_hw_get_temperature(ptr noundef %il) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %land.lhs.true

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96
  %stats = getelementptr inbounds %struct.anon.141, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %stats, align 1
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.do.body15_crit_edge, label %do.body

land.lhs.true.do.body15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.body:                                          ; preds = %land.lhs.true
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %6 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.else.i ], [ %7, %do.body.il_get_debug_level.exit_crit_edge ]
  %and3 = and i32 %retval.0.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %il_get_debug_level.exit.do.end8_crit_edge, label %do.end

il_get_debug_level.exit.do.end8_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end8_crit_edge
  %arrayidx = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 12, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx10 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 13, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx12 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx14 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 15, i32 1
  br label %if.end41

do.body15:                                        ; preds = %land.lhs.true.do.body15_crit_edge, %entry.do.body15_crit_edge
  %debug_level.i130 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %22 = ptrtoint ptr %debug_level.i130 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_level.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i131 = icmp eq i32 %23, 0
  br i1 %tobool.not.i131, label %if.else.i132, label %do.body15.il_get_debug_level.exit134_crit_edge

do.body15.il_get_debug_level.exit134_crit_edge:   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit134

if.else.i132:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %24 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit134

il_get_debug_level.exit134:                       ; preds = %if.else.i132, %do.body15.il_get_debug_level.exit134_crit_edge
  %retval.0.i133 = phi i32 [ %24, %if.else.i132 ], [ %23, %do.body15.il_get_debug_level.exit134_crit_edge ]
  %and17 = and i32 %retval.0.i133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %il_get_debug_level.exit134.do.end28_crit_edge, label %do.end22

il_get_debug_level.exit134.do.end28_crit_edge:    ; preds = %il_get_debug_level.exit134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end22:                                         ; preds = %il_get_debug_level.exit134
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %il, align 8
  %wiphy24 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy24, align 8
  %dev25 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end22, %il_get_debug_level.exit134.do.end28_crit_edge
  %therm_r130 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 60, i32 12
  %29 = ptrtoint ptr %therm_r130 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %therm_r130, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %therm_r233 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 60, i32 13
  %32 = ptrtoint ptr %therm_r233 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %therm_r233, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %therm_r336 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 60, i32 14
  %35 = ptrtoint ptr %therm_r336 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %therm_r336, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %therm_r439 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 60, i32 15
  br label %if.end41

if.end41:                                         ; preds = %do.end28, %do.end8
  %therm_r439.sink = phi ptr [ %therm_r439, %do.end28 ], [ %arrayidx14, %do.end8 ]
  %R1.0 = phi i32 [ %31, %do.end28 ], [ %15, %do.end8 ]
  %R2.0 = phi i32 [ %34, %do.end28 ], [ %18, %do.end8 ]
  %R3.0 = phi i32 [ %37, %do.end28 ], [ %21, %do.end8 ]
  %38 = ptrtoint ptr %therm_r439.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %therm_r439.sink, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %status, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool44.not = icmp eq i32 %43, 0
  br i1 %tobool44.not, label %if.end41.do.body52_crit_edge, label %if.else47

if.end41.do.body52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

if.else47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %44 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96
  %general = getelementptr inbounds %struct.anon.141, ptr %44, i32 0, i32 9, i32 3
  %45 = ptrtoint ptr %general to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %general, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  br label %do.body52

do.body52:                                        ; preds = %if.else47, %if.end41.do.body52_crit_edge
  %vt.0.in.in = phi i32 [ %47, %if.else47 ], [ %40, %if.end41.do.body52_crit_edge ]
  %vt.0.in = shl i32 %vt.0.in.in, 8
  %vt.0 = ashr exact i32 %vt.0.in, 8
  %debug_level.i135 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %48 = ptrtoint ptr %debug_level.i135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug_level.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i136 = icmp eq i32 %49, 0
  br i1 %tobool.not.i136, label %if.else.i137, label %do.body52.il_get_debug_level.exit139_crit_edge

do.body52.il_get_debug_level.exit139_crit_edge:   ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit139

if.else.i137:                                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %50 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit139

il_get_debug_level.exit139:                       ; preds = %if.else.i137, %do.body52.il_get_debug_level.exit139_crit_edge
  %retval.0.i138 = phi i32 [ %50, %if.else.i137 ], [ %49, %do.body52.il_get_debug_level.exit139_crit_edge ]
  %and54 = and i32 %retval.0.i138, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %il_get_debug_level.exit139.do.end65_crit_edge, label %do.end59

il_get_debug_level.exit139.do.end65_crit_edge:    ; preds = %il_get_debug_level.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end59:                                         ; preds = %il_get_debug_level.exit139
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %il, align 8
  %wiphy61 = getelementptr inbounds %struct.ieee80211_hw, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wiphy61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wiphy61, align 8
  %dev62 = getelementptr inbounds %struct.wiphy, ptr %54, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %R1.0, i32 noundef %R2.0, i32 noundef %R3.0, i32 noundef %vt.0) #12
  br label %do.end65

do.end65:                                         ; preds = %do.end59, %il_get_debug_level.exit139.do.end65_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %R3.0, i32 %R1.0)
  %cmp = icmp eq i32 %R3.0, %R1.0
  br i1 %cmp, label %do.end69, label %if.end71

do.end69:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 8
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.45) #12
  br label %cleanup

if.end71:                                         ; preds = %do.end65
  %sub = sub i32 %vt.0, %R2.0
  %mul = mul i32 %sub, 259
  %sub72 = sub i32 %R3.0, %R1.0
  %div = sdiv i32 %mul, %sub72
  %mul73 = mul i32 %div, 97
  %div74 = sdiv i32 %mul73, 100
  %add = add nsw i32 %div74, 8
  %57 = ptrtoint ptr %debug_level.i135 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug_level.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i141 = icmp eq i32 %58, 0
  br i1 %tobool.not.i141, label %if.else.i142, label %if.end71.il_get_debug_level.exit144_crit_edge

if.end71.il_get_debug_level.exit144_crit_edge:    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit144

if.else.i142:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %59 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit144

il_get_debug_level.exit144:                       ; preds = %if.else.i142, %if.end71.il_get_debug_level.exit144_crit_edge
  %retval.0.i143 = phi i32 [ %59, %if.else.i142 ], [ %58, %if.end71.il_get_debug_level.exit144_crit_edge ]
  %and77 = and i32 %retval.0.i143, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %il_get_debug_level.exit144.cleanup_crit_edge, label %do.end82

il_get_debug_level.exit144.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end82:                                         ; preds = %il_get_debug_level.exit144
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %il, align 8
  %wiphy84 = getelementptr inbounds %struct.ieee80211_hw, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %wiphy84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wiphy84, align 8
  %dev85 = getelementptr inbounds %struct.wiphy, ptr %63, i32 0, i32 56
  %add8.i = add nsw i32 %div74, -265
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.37, i32 noundef %add, i32 noundef %add8.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %il_get_debug_level.exit144.cleanup_crit_edge, %do.end69
  %retval.0 = phi i32 [ -1, %do.end69 ], [ %add, %do.end82 ], [ %add, %il_get_debug_level.exit144.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_is_temp_calib_needed(ptr noundef %il) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %3 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %5 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.else.i ], [ %4, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %il_get_debug_level.exit.cleanup.sink.split_crit_edge

il_get_debug_level.exit.cleanup.sink.split_crit_edge: ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %6 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temperature, align 8
  %last_temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 21
  %8 = ptrtoint ptr %last_temperature to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_temperature, align 4
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body9, label %if.else

do.body9:                                         ; preds = %if.end7
  %debug_level.i107 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %10 = ptrtoint ptr %debug_level.i107 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_level.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i108 = icmp eq i32 %11, 0
  br i1 %tobool.not.i108, label %if.else.i109, label %do.body9.il_get_debug_level.exit111_crit_edge

do.body9.il_get_debug_level.exit111_crit_edge:    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit111

if.else.i109:                                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %12 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit111

il_get_debug_level.exit111:                       ; preds = %if.else.i109, %do.body9.il_get_debug_level.exit111_crit_edge
  %retval.0.i110 = phi i32 [ %12, %if.else.i109 ], [ %11, %do.body9.il_get_debug_level.exit111_crit_edge ]
  %and11 = and i32 %retval.0.i110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %il_get_debug_level.exit111.do.end22_crit_edge, label %do.end16

il_get_debug_level.exit111.do.end22_crit_edge:    ; preds = %il_get_debug_level.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

do.end16:                                         ; preds = %il_get_debug_level.exit111
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %il, align 8
  %wiphy18 = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy18, align 8
  %dev19 = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %sub) #12
  br label %do.end22

do.end22:                                         ; preds = %do.end16, %il_get_debug_level.exit111.do.end22_crit_edge
  %sub23 = sub i32 0, %sub
  br label %if.end56

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp24 = icmp eq i32 %sub, 0
  %debug_level.i112 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %17 = ptrtoint ptr %debug_level.i112 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_level.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i113 = icmp eq i32 %18, 0
  br i1 %cmp24, label %do.body26, label %do.body41

do.body26:                                        ; preds = %if.else
  br i1 %tobool.not.i113, label %if.else.i114, label %do.body26.il_get_debug_level.exit116_crit_edge

do.body26.il_get_debug_level.exit116_crit_edge:   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit116

if.else.i114:                                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %19 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit116

il_get_debug_level.exit116:                       ; preds = %if.else.i114, %do.body26.il_get_debug_level.exit116_crit_edge
  %retval.0.i115 = phi i32 [ %19, %if.else.i114 ], [ %18, %do.body26.il_get_debug_level.exit116_crit_edge ]
  %and28 = and i32 %retval.0.i115, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %il_get_debug_level.exit116.do.body59_crit_edge, label %do.end33

il_get_debug_level.exit116.do.body59_crit_edge:   ; preds = %il_get_debug_level.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

do.end33:                                         ; preds = %il_get_debug_level.exit116
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %il, align 8
  %wiphy35 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy35, align 8
  %dev36 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.51) #12
  br label %do.body59

do.body41:                                        ; preds = %if.else
  br i1 %tobool.not.i113, label %if.else.i119, label %do.body41.il_get_debug_level.exit121_crit_edge

do.body41.il_get_debug_level.exit121_crit_edge:   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit121

if.else.i119:                                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %24 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit121

il_get_debug_level.exit121:                       ; preds = %if.else.i119, %do.body41.il_get_debug_level.exit121_crit_edge
  %retval.0.i120 = phi i32 [ %24, %if.else.i119 ], [ %18, %do.body41.il_get_debug_level.exit121_crit_edge ]
  %and43 = and i32 %retval.0.i120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %il_get_debug_level.exit121.if.end56_crit_edge, label %do.end48

il_get_debug_level.exit121.if.end56_crit_edge:    ; preds = %il_get_debug_level.exit121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end48:                                         ; preds = %il_get_debug_level.exit121
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %il, align 8
  %wiphy50 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy50, align 8
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, i32 noundef %sub) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end48, %il_get_debug_level.exit121.if.end56_crit_edge, %do.end22
  %temp_diff.0 = phi i32 [ %sub23, %do.end22 ], [ %sub, %do.end48 ], [ %sub, %il_get_debug_level.exit121.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %temp_diff.0)
  %cmp57 = icmp slt i32 %temp_diff.0, 3
  br i1 %cmp57, label %if.end56.do.body59_crit_edge, label %do.body74

if.end56.do.body59_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

do.body59:                                        ; preds = %if.end56.do.body59_crit_edge, %do.end33, %il_get_debug_level.exit116.do.body59_crit_edge
  %debug_level.i122 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %29 = ptrtoint ptr %debug_level.i122 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_level.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i123 = icmp eq i32 %30, 0
  br i1 %tobool.not.i123, label %if.else.i124, label %do.body59.il_get_debug_level.exit126_crit_edge

do.body59.il_get_debug_level.exit126_crit_edge:   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit126

if.else.i124:                                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %31 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit126

il_get_debug_level.exit126:                       ; preds = %if.else.i124, %do.body59.il_get_debug_level.exit126_crit_edge
  %retval.0.i125 = phi i32 [ %31, %if.else.i124 ], [ %30, %do.body59.il_get_debug_level.exit126_crit_edge ]
  %and61 = and i32 %retval.0.i125, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %il_get_debug_level.exit126.cleanup_crit_edge, label %il_get_debug_level.exit126.cleanup.sink.split_crit_edge

il_get_debug_level.exit126.cleanup.sink.split_crit_edge: ; preds = %il_get_debug_level.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

il_get_debug_level.exit126.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body74:                                        ; preds = %if.end56
  %debug_level.i127 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %32 = ptrtoint ptr %debug_level.i127 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_level.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i128 = icmp eq i32 %33, 0
  br i1 %tobool.not.i128, label %if.else.i129, label %do.body74.il_get_debug_level.exit131_crit_edge

do.body74.il_get_debug_level.exit131_crit_edge:   ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit131

if.else.i129:                                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %34 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit131

il_get_debug_level.exit131:                       ; preds = %if.else.i129, %do.body74.il_get_debug_level.exit131_crit_edge
  %retval.0.i130 = phi i32 [ %34, %if.else.i129 ], [ %33, %do.body74.il_get_debug_level.exit131_crit_edge ]
  %and76 = and i32 %retval.0.i130, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %il_get_debug_level.exit131.cleanup_crit_edge, label %il_get_debug_level.exit131.cleanup.sink.split_crit_edge

il_get_debug_level.exit131.cleanup.sink.split_crit_edge: ; preds = %il_get_debug_level.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

il_get_debug_level.exit131.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %il_get_debug_level.exit131.cleanup.sink.split_crit_edge, %il_get_debug_level.exit126.cleanup.sink.split_crit_edge, %il_get_debug_level.exit.cleanup.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.50, %il_get_debug_level.exit.cleanup.sink.split_crit_edge ], [ @.str.62, %il_get_debug_level.exit126.cleanup.sink.split_crit_edge ], [ @.str.65, %il_get_debug_level.exit131.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %il_get_debug_level.exit.cleanup.sink.split_crit_edge ], [ 0, %il_get_debug_level.exit126.cleanup.sink.split_crit_edge ], [ 1, %il_get_debug_level.exit131.cleanup.sink.split_crit_edge ]
  %35 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %il, align 8
  %wiphy83 = getelementptr inbounds %struct.ieee80211_hw, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %wiphy83 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wiphy83, align 8
  %dev84 = getelementptr inbounds %struct.wiphy, ptr %38, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull %.str.65.sink, ptr noundef nonnull @.str.51) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %il_get_debug_level.exit131.cleanup_crit_edge, %il_get_debug_level.exit126.cleanup_crit_edge, %il_get_debug_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %il_get_debug_level.exit.cleanup_crit_edge ], [ 0, %il_get_debug_level.exit126.cleanup_crit_edge ], [ 1, %il_get_debug_level.exit131.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_txq_update_byte_cnt_tbl(ptr nocapture noundef readonly %il, ptr nocapture noundef readonly %txq, i16 noundef zeroext %byte_cnt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 75, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %id = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 5
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %write_ptr2 = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 1
  %4 = ptrtoint ptr %write_ptr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_ptr2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4087, i16 %byte_cnt)
  %cmp = icmp ugt i16 %byte_cnt, 4087
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp5 = icmp sgt i32 %5, 255
  %spec.select = select i1 %cmp, i1 true, i1 %cmp5
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !351

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1544, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = add i16 %byte_cnt, 8
  %7 = and i16 %6, 4095
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %arrayidx = getelementptr %struct.il4965_scd_bc_tbl, ptr %1, i32 %3
  %arrayidx26 = getelementptr [320 x i16], ptr %arrayidx, i32 0, i32 %5
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp27 = icmp slt i32 %5, 64
  br i1 %cmp27, label %if.then29, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add32 = add nsw i32 %5, 256
  %arrayidx33 = getelementptr [320 x i16], ptr %arrayidx, i32 0, i32 %add32
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %8, ptr %arrayidx33, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_hw_txq_attach_buf_to_tfd(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il4965_hw_txq_free_tfd(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_hw_tx_queue_init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_init_alive_start(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @il4965_verify_ucode(ptr noundef %il)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %0 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %2 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.else.i ], [ %1, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %il_get_debug_level.exit.restart_crit_edge, label %do.end

il_get_debug_level.exit.restart_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #12
  br label %restart

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @il4965_hw_get_temperature(ptr noundef %il)
  %temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %7 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %temperature, align 8
  %debug_level.i49 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %8 = ptrtoint ptr %debug_level.i49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_level.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i50 = icmp eq i32 %9, 0
  br i1 %tobool.not.i50, label %if.else.i51, label %if.end6.il_get_debug_level.exit53_crit_edge

if.end6.il_get_debug_level.exit53_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit53

if.else.i51:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %10 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit53

il_get_debug_level.exit53:                        ; preds = %if.else.i51, %if.end6.il_get_debug_level.exit53_crit_edge
  %retval.0.i52 = phi i32 [ %10, %if.else.i51 ], [ %9, %if.end6.il_get_debug_level.exit53_crit_edge ]
  %and10 = and i32 %retval.0.i52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %il_get_debug_level.exit53.do.end19_crit_edge, label %do.end14

il_get_debug_level.exit53.do.end19_crit_edge:     ; preds = %il_get_debug_level.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end14:                                         ; preds = %il_get_debug_level.exit53
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %il, align 8
  %wiphy16 = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy16, align 8
  %dev17 = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %il_get_debug_level.exit53.do.end19_crit_edge
  %p_addr.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 44, i32 1
  %15 = ptrtoint ptr %p_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_addr.i, align 4
  %shr.i = lshr i32 %16, 4
  %p_addr1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 46, i32 1
  %17 = ptrtoint ptr %p_addr1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p_addr1.i, align 4
  %shr2.i = lshr i32 %18, 4
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13456, i32 noundef %shr.i) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13464, i32 noundef %shr2.i) #9
  %len.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 45, i32 2
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 8
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13468, i32 noundef %20) #9
  %len4.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 44, i32 2
  %21 = ptrtoint ptr %len4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len4.i, align 4
  %or.i = or i32 %22, -2147483648
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13460, i32 noundef %or.i) #9
  %23 = ptrtoint ptr %debug_level.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_level.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end19.il_get_debug_level.exit.i_crit_edge

do.end19.il_get_debug_level.exit.i_crit_edge:     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %25 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.end19.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %25, %if.else.i.i ], [ %24, %do.end19.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %il_get_debug_level.exit.i.return_crit_edge, label %do.end.i

il_get_debug_level.exit.i.return_crit_edge:       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #12
  br label %return

restart:                                          ; preds = %do.end, %il_get_debug_level.exit.restart_crit_edge
  %workqueue = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 99
  %30 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %workqueue, align 4
  %restart36 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 100
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %restart36) #9
  br label %return

return:                                           ; preds = %restart, %do.end.i, %il_get_debug_level.exit.i.return_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @il4965_hw_valid_rtc_data_addr(i32 noundef %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = add i32 %addr, -8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %0)
  %1 = icmp ult i32 %0, 40960
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_load_bsm(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ucode_boot = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 49
  %0 = ptrtoint ptr %ucode_boot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucode_boot, align 8
  %len2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 49, i32 2
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 8
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %4 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %6 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.else.i ], [ %5, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end5_crit_edge, label %do.end

il_get_debug_level.exit.do.end5_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end5_crit_edge
  %ucode_type = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 50
  %11 = ptrtoint ptr %ucode_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %ucode_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp ugt i32 %3, 1024
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %p_addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47, i32 1
  %12 = ptrtoint ptr %p_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_addr, align 4
  %shr = lshr i32 %13, 4
  %p_addr8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 48, i32 1
  %14 = ptrtoint ptr %p_addr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_addr8, align 4
  %shr9 = lshr i32 %15, 4
  %len11 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47, i32 2
  %16 = ptrtoint ptr %len11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len11, align 8
  %len13 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 48, i32 2
  %18 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len13, align 4
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13456, i32 noundef %shr) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13464, i32 noundef %shr9) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13460, i32 noundef %17) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13468, i32 noundef %19) #9
  %add = add nuw nsw i32 %3, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14107.not = icmp eq i32 %3, 0
  br i1 %cmp14107.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %reg_offset.0109 = phi i32 [ 14336, %for.body.lr.ph ], [ %add15, %for.body.for.body_crit_edge ]
  %image.0108 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %image.0108 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image.0108, align 4
  %and.i = and i32 %reg_offset.0109, 65532
  %or.i = or i32 %and.i, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %23 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %22) #9, !srcloc !347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %26, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %21) #9, !srcloc !347
  %add15 = add i32 %reg_offset.0109, 4
  %incdec.ptr = getelementptr i32, ptr %image.0108, i32 1
  %cmp14 = icmp ult i32 %add15, %add
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %27 = ptrtoint ptr %ucode_boot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ucode_boot, align 8
  %29 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len2, align 8
  %31 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.end.il_get_debug_level.exit.i_crit_edge

for.end.il_get_debug_level.exit.i_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %33 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %for.end.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %33, %if.else.i.i ], [ %32, %for.end.il_get_debug_level.exit.i_crit_edge ]
  %and.i93 = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.not.i94 = icmp eq i32 %and.i93, 0
  br i1 %tobool.not.i94, label %il_get_debug_level.exit.i.do.end5.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end5.i_crit_edge:    ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %37, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end5.i_crit_edge
  %call6.i = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef 13324) #9
  %add.i = add i32 %30, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 14336, i32 %add.i)
  %cmp54.i = icmp ugt i32 %add.i, 14336
  br i1 %cmp54.i, label %do.end5.i.for.body.i_crit_edge, label %do.end5.i.do.body16.i_crit_edge

do.end5.i.do.body16.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i

do.end5.i.for.body.i_crit_edge:                   ; preds = %do.end5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end5.i.for.body.i_crit_edge
  %reg.056.i = phi i32 [ %add15.i, %for.inc.i.for.body.i_crit_edge ], [ 14336, %do.end5.i.for.body.i_crit_edge ]
  %image.055.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %28, %do.end5.i.for.body.i_crit_edge ]
  %call7.i = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef %reg.056.i) #9
  %38 = ptrtoint ptr %image.055.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %image.055.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %40)
  %cmp8.not.i = icmp eq i32 %call7.i, %40
  br i1 %cmp8.not.i, label %for.inc.i, label %il4965_verify_bsm.exit

for.inc.i:                                        ; preds = %for.body.i
  %add15.i = add i32 %reg.056.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %image.055.i, i32 1
  %cmp.i = icmp ult i32 %add15.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body16.i_crit_edge

for.inc.i.do.body16.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body16.i:                                      ; preds = %for.inc.i.do.body16.i_crit_edge, %do.end5.i.do.body16.i_crit_edge
  %41 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i49.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i49.i, label %if.else.i50.i, label %do.body16.i.il_get_debug_level.exit52.i_crit_edge

do.body16.i.il_get_debug_level.exit52.i_crit_edge: ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit52.i

if.else.i50.i:                                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %43 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit52.i

il_get_debug_level.exit52.i:                      ; preds = %if.else.i50.i, %do.body16.i.il_get_debug_level.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ %43, %if.else.i50.i ], [ %42, %do.body16.i.il_get_debug_level.exit52.i_crit_edge ]
  %and18.i = and i32 %retval.0.i51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %il_get_debug_level.exit52.i.if.end19_crit_edge, label %do.end23.i

il_get_debug_level.exit52.i.if.end19_crit_edge:   ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end23.i:                                       ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %il, align 8
  %wiphy25.i = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy25.i, align 8
  %dev26.i = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.86) #12
  br label %if.end19

il4965_verify_bsm.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %48 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_dev.i, align 8
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %sub.i = add i32 %reg.056.i, -14336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.88, i32 noundef 14336, i32 noundef %sub.i, i32 noundef %30, i32 noundef %call7.i, i32 noundef %40) #12
  br label %cleanup

if.end19:                                         ; preds = %do.end23.i, %il_get_debug_level.exit52.i.if.end19_crit_edge
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13316, i32 noundef 0) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13320, i32 noundef 0) #9
  %div92 = lshr i32 %3, 2
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13324, i32 noundef %div92) #9
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13312, i32 noundef -2147483648) #9
  br label %for.body22

for.body22:                                       ; preds = %if.end27.for.body22_crit_edge, %if.end19
  %i.0110 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end27.for.body22_crit_edge ]
  %call23 = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef 13312) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %tobool25.not = icmp sgt i32 %call23, -1
  br i1 %tobool25.not, label %do.body32.critedge, label %if.end27

if.end27:                                         ; preds = %for.body22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #9
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end48, label %if.end27.for.body22_crit_edge

if.end27.for.body22_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

do.body32.critedge:                               ; preds = %for.body22
  %51 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i97 = icmp eq i32 %52, 0
  br i1 %tobool.not.i97, label %if.else.i98, label %do.body32.critedge.il_get_debug_level.exit100_crit_edge

do.body32.critedge.il_get_debug_level.exit100_crit_edge: ; preds = %do.body32.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit100

if.else.i98:                                      ; preds = %do.body32.critedge
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %53 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit100

il_get_debug_level.exit100:                       ; preds = %if.else.i98, %do.body32.critedge.il_get_debug_level.exit100_crit_edge
  %retval.0.i99 = phi i32 [ %53, %if.else.i98 ], [ %52, %do.body32.critedge.il_get_debug_level.exit100_crit_edge ]
  %and34 = and i32 %retval.0.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %il_get_debug_level.exit100.if.end50_crit_edge, label %do.end39

il_get_debug_level.exit100.if.end50_crit_edge:    ; preds = %il_get_debug_level.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end39:                                         ; preds = %il_get_debug_level.exit100
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %il, align 8
  %wiphy41 = getelementptr inbounds %struct.ieee80211_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wiphy41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy41, align 8
  %dev42 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, i32 noundef %i.0110) #12
  br label %if.end50

do.end48:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %58 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pci_dev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.83) #12
  br label %cleanup

if.end50:                                         ; preds = %do.end39, %il_get_debug_level.exit100.if.end50_crit_edge
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13312, i32 noundef 1073741824) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end48, %il4965_verify_bsm.exit, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -5, %do.end48 ], [ -22, %do.end5.cleanup_crit_edge ], [ -5, %il4965_verify_bsm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il4965_dump_nic_error_log(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_dump_fh(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_hw_channel_switch(ptr noundef %il, ptr nocapture noundef readonly %ch_switch) #0 align 64 {
entry:
  %cmd = alloca %struct.il4965_channel_switch_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 147)
  %beacon_interval1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 58, i32 1
  %2 = ptrtoint ptr %beacon_interval1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %beacon_interval1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %vif2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 53
  %5 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif2, align 4
  %band3 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %7 = ptrtoint ptr %band3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %band3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %conv4 = zext i1 %cmp to i8
  %cmp5 = icmp eq ptr %6, null
  br i1 %cmp5, label %land.rhs, label %if.end44

land.rhs:                                         ; preds = %entry
  %.b203 = load i1, ptr @il4965_hw_channel_switch.__already_done, align 1
  br i1 %.b203, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !345

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @il4965_hw_channel_switch.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1471, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end44:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags, align 1
  %11 = lshr i32 %10, 1
  %shr.i = and i32 %11, 3
  %12 = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  %frombool45 = zext i1 %13 to i8
  %and = lshr i32 %10, 14
  %14 = trunc i32 %and to i8
  %15 = and i8 %14, 1
  %ctrl_chan_high.0 = select i1 %13, i8 %15, i8 0
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4, ptr %cmd, align 1
  %expect_beacon = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 1
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %17 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chandef, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hw_value, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %channel = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %channel, align 1
  %rxon_flags = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 3
  %23 = ptrtoint ptr %rxon_flags to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %10, ptr %rxon_flags, align 1
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %24 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %filter_flags, align 1
  %rxon_filter_flags = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 4
  %26 = ptrtoint ptr %rxon_filter_flags to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %rxon_filter_flags, align 1
  %count = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count, align 4
  %29 = ptrtoint ptr %ch_switch to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ch_switch, align 8
  %conv58 = trunc i64 %30 to i32
  %ucode_beacon_time = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 14
  %31 = ptrtoint ptr %ucode_beacon_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ucode_beacon_time, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv58)
  %cmp59 = icmp ule i32 %32, %conv58
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool63.not = icmp eq i16 %3, 0
  %or.cond = select i1 %cmp59, i1 true, i1 %tobool63.not
  br i1 %or.cond, label %if.end44.if.end79_crit_edge, label %if.then64

if.end44.if.end79_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then64:                                        ; preds = %if.end44
  %conv62 = zext i16 %4 to i32
  %conv65 = zext i8 %28 to i32
  %sub = sub i32 %32, %conv58
  %div = udiv i32 %sub, %conv62
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv65)
  %cmp68 = icmp ult i32 %div, %conv65
  br i1 %cmp68, label %if.then70, label %if.then64.if.then83_crit_edge

if.then64.if.then83_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then70:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %33 = trunc i32 %div to i8
  %conv77 = sub i8 %28, %33
  br label %if.end79

if.end79:                                         ; preds = %if.then70, %if.end44.if.end79_crit_edge
  %switch_count.0 = phi i8 [ %conv77, %if.then70 ], [ %28, %if.end44.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %switch_count.0)
  %cmp81 = icmp ult i8 %switch_count.0, 2
  br i1 %cmp81, label %if.end79.if.then83_crit_edge, label %if.else85

if.end79.if.then83_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

if.then83:                                        ; preds = %if.end79.if.then83_crit_edge, %if.then64.if.then83_crit_edge
  %34 = tail call i32 @llvm.bswap.i32(i32 %32)
  br label %do.body96

if.else85:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %conv80 = zext i8 %switch_count.0 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %6, i32 0, i32 1, i32 19
  %35 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %beacon_int, align 2
  %conv86 = zext i16 %36 to i32
  %mul = shl nuw nsw i32 %conv80, 10
  %mul88 = mul i32 %mul, %conv86
  %conv89 = zext i16 %4 to i32
  %call90 = tail call i32 @il_usecs_to_beacons(ptr noundef %il, i32 noundef %mul88, i32 noundef %conv89) #9
  %37 = ptrtoint ptr %ucode_beacon_time to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ucode_beacon_time, align 8
  %call93 = tail call i32 @il_add_beacon_time(ptr noundef %il, i32 noundef %38, i32 noundef %call90, i32 noundef %conv89) #9
  br label %do.body96

do.body96:                                        ; preds = %if.else85, %if.then83
  %.sink = phi i32 [ %34, %if.then83 ], [ %call93, %if.else85 ]
  %switch_time = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 5
  %39 = ptrtoint ptr %switch_time to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %.sink, ptr %switch_time, align 1
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %40 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body96.il_get_debug_level.exit_crit_edge

do.body96.il_get_debug_level.exit_crit_edge:      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %42 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body96.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %42, %if.else.i ], [ %41, %do.body96.il_get_debug_level.exit_crit_edge ]
  %and98 = and i32 %retval.0.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %il_get_debug_level.exit.do.end107_crit_edge, label %do.end103

il_get_debug_level.exit.do.end107_crit_edge:      ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.end103:                                        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  %switch_time104 = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 5
  %47 = ptrtoint ptr %switch_time104 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %switch_time104, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %48) #12
  br label %do.end107

do.end107:                                        ; preds = %do.end103, %il_get_debug_level.exit.do.end107_crit_edge
  %49 = ptrtoint ptr %band3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %band3, align 4
  %call109 = tail call ptr @il_get_channel_info(ptr noundef %il, i32 noundef %50, i16 noundef zeroext %20) #9
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %do.end118, label %if.then111

if.then111:                                       ; preds = %do.end107
  %flags.i = getelementptr inbounds %struct.il_channel_info, ptr %call109, i32 0, i32 5
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags.i, align 1
  %53 = lshr i8 %52, 4
  %.lobit.i = and i8 %53, 1
  %54 = ptrtoint ptr %expect_beacon to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.lobit.i, ptr %expect_beacon, align 1
  %tx_power = getelementptr inbounds %struct.il4965_channel_switch_cmd, ptr %cmd, i32 0, i32 6
  %call126 = call fastcc i32 @il4965_fill_txpower_tbl(ptr noundef %il, i8 noundef zeroext %conv4, i16 noundef zeroext %20, i8 noundef zeroext %frombool45, i8 noundef zeroext %ctrl_chan_high.0, ptr noundef %tx_power)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end143, label %do.body129

do.end118:                                        ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %55 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci_dev, align 8
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %channel120 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 14
  %57 = ptrtoint ptr %channel120 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %channel120, align 1
  %conv121 = zext i16 %58 to i32
  %conv122 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119, ptr noundef nonnull @.str.96, i32 noundef %conv121, i32 noundef %conv122) #12
  br label %cleanup

do.body129:                                       ; preds = %if.then111
  %59 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i206 = icmp eq i32 %60, 0
  br i1 %tobool.not.i206, label %if.else.i207, label %do.body129.il_get_debug_level.exit209_crit_edge

do.body129.il_get_debug_level.exit209_crit_edge:  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit209

if.else.i207:                                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %61 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit209

il_get_debug_level.exit209:                       ; preds = %if.else.i207, %do.body129.il_get_debug_level.exit209_crit_edge
  %retval.0.i208 = phi i32 [ %61, %if.else.i207 ], [ %60, %do.body129.il_get_debug_level.exit209_crit_edge ]
  %and131 = and i32 %retval.0.i208, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %il_get_debug_level.exit209.cleanup_crit_edge, label %do.end136

il_get_debug_level.exit209.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit209
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end136:                                        ; preds = %il_get_debug_level.exit209
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %il, align 8
  %wiphy138 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wiphy138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wiphy138, align 8
  %dev139 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev139, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.94, i32 noundef %call126) #12
  br label %cleanup

if.end143:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %call144 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 114, i16 noundef zeroext 148, ptr noundef nonnull %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end143, %do.end136, %il_get_debug_level.exit209.cleanup_crit_edge, %do.end118, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call144, %if.end143 ], [ -14, %do.end118 ], [ -5, %if.then ], [ %call126, %do.end136 ], [ %call126, %il_get_debug_level.exit209.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_apm_init(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_send_tx_power(ptr noundef %il) #0 align 64 {
entry:
  %cmd = alloca %struct.il4965_txpowertable_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 135)
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b78 = load i1, ptr @il4965_send_tx_power.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !345

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @il4965_send_tx_power.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1251, i32 noundef 9, ptr noundef nonnull @.str.151) #9
  br label %cleanup

if.end38:                                         ; preds = %entry
  %band39 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %5 = ptrtoint ptr %band39 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %band39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %conv40 = zext i1 %cmp to i8
  %flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 12
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %flags, align 1
  %9 = lshr i32 %8, 1
  %shr.i80 = and i32 %9, 3
  %10 = add nsw i32 %shr.i80, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp ult i32 %10, 2
  %frombool42 = zext i1 %11 to i8
  %and = lshr i32 %8, 14
  %12 = trunc i32 %and to i8
  %13 = and i8 %12, 1
  %ctrl_chan_high.0 = select i1 %11, i8 %13, i8 0
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv40, ptr %cmd, align 1
  %channel = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 14
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %channel, align 1
  %channel52 = getelementptr inbounds %struct.il4965_txpowertable_cmd, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %channel52 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %channel52, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %16)
  %tx_power = getelementptr inbounds %struct.il4965_txpowertable_cmd, ptr %cmd, i32 0, i32 3
  %call57 = call fastcc i32 @il4965_fill_txpower_tbl(ptr noundef %il, i8 noundef zeroext %conv40, i16 noundef zeroext %18, i8 noundef zeroext %frombool42, i8 noundef zeroext %ctrl_chan_high.0, ptr noundef %tx_power)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext -105, i16 noundef zeroext 136, ptr noundef nonnull %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then ], [ %call57, %if.end38.cleanup_crit_edge ], [ %call61, %if.end60 ], [ -11, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il4965_update_chain_flags(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_send_rxon_assoc(ptr noundef %il) #0 align 64 {
entry:
  %rxon_assoc = alloca %struct.il4965_rxon_assoc_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rxon_assoc) #9
  %0 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 4
  %4 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 5
  %5 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 6
  %6 = getelementptr inbounds %struct.il4965_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 33, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !351

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1284, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 1
  %flags24 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 12
  %10 = ptrtoint ptr %flags24 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %flags24, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp25 = icmp eq i32 %9, %11
  br i1 %cmp25, label %land.lhs.true, label %if.end.if.end68_crit_edge

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %12 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %filter_flags, align 1
  %filter_flags26 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %14 = ptrtoint ptr %filter_flags26 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %filter_flags26, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp27 = icmp eq i32 %13, %15
  br i1 %cmp27, label %land.lhs.true28, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true28:                                  ; preds = %land.lhs.true
  %cck_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 10
  %16 = ptrtoint ptr %cck_basic_rates to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cck_basic_rates, align 1
  %cck_basic_rates29 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 10
  %18 = ptrtoint ptr %cck_basic_rates29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cck_basic_rates29, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp31 = icmp eq i8 %17, %19
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true28.if.end68_crit_edge

land.lhs.true28.if.end68_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %ofdm_ht_single_stream_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 15
  %20 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ofdm_ht_single_stream_basic_rates, align 1
  %ofdm_ht_single_stream_basic_rates35 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 15
  %22 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ofdm_ht_single_stream_basic_rates35, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp37 = icmp eq i8 %21, %23
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true33.if.end68_crit_edge

land.lhs.true33.if.end68_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true39:                                  ; preds = %land.lhs.true33
  %ofdm_ht_dual_stream_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 16
  %24 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ofdm_ht_dual_stream_basic_rates, align 1
  %ofdm_ht_dual_stream_basic_rates41 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 16
  %26 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates41 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ofdm_ht_dual_stream_basic_rates41, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp43 = icmp eq i8 %25, %27
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true39.if.end68_crit_edge

land.lhs.true39.if.end68_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true45:                                  ; preds = %land.lhs.true39
  %rx_chain = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 8
  %28 = ptrtoint ptr %rx_chain to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %rx_chain, align 1
  %rx_chain47 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 8
  %30 = ptrtoint ptr %rx_chain47 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %rx_chain47, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp49 = icmp eq i16 %29, %31
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true45.if.end68_crit_edge

land.lhs.true45.if.end68_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true51:                                  ; preds = %land.lhs.true45
  %ofdm_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 9
  %32 = ptrtoint ptr %ofdm_basic_rates to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ofdm_basic_rates, align 1
  %ofdm_basic_rates53 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 9
  %34 = ptrtoint ptr %ofdm_basic_rates53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ofdm_basic_rates53, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp55 = icmp eq i8 %33, %35
  br i1 %cmp55, label %do.body58, label %land.lhs.true51.if.end68_crit_edge

land.lhs.true51.if.end68_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body58:                                        ; preds = %land.lhs.true51
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %36 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body58.il_get_debug_level.exit_crit_edge

do.body58.il_get_debug_level.exit_crit_edge:      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %38 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body58.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %38, %if.else.i ], [ %37, %do.body58.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end64

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end64:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153) #12
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true51.if.end68_crit_edge, %land.lhs.true45.if.end68_crit_edge, %land.lhs.true39.if.end68_crit_edge, %land.lhs.true33.if.end68_crit_edge, %land.lhs.true28.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end.if.end68_crit_edge
  %43 = ptrtoint ptr %rxon_assoc to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %9, ptr %rxon_assoc, align 4
  %filter_flags73 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %44 = ptrtoint ptr %filter_flags73 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %filter_flags73, align 1
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %0, align 4
  %ofdm_basic_rates76 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 9
  %47 = ptrtoint ptr %ofdm_basic_rates76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ofdm_basic_rates76, align 1
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %1, align 4
  %cck_basic_rates79 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 10
  %50 = ptrtoint ptr %cck_basic_rates79 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cck_basic_rates79, align 1
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %2, align 1
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %6, align 2
  %ofdm_ht_single_stream_basic_rates82 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 15
  %54 = ptrtoint ptr %ofdm_ht_single_stream_basic_rates82 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ofdm_ht_single_stream_basic_rates82, align 1
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %3, align 2
  %ofdm_ht_dual_stream_basic_rates85 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 16
  %57 = ptrtoint ptr %ofdm_ht_dual_stream_basic_rates85 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ofdm_ht_dual_stream_basic_rates85, align 1
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %4, align 1
  %rx_chain88 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 8
  %60 = ptrtoint ptr %rx_chain88 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %rx_chain88, align 1
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %5, align 4
  %call89 = call i32 @il_send_cmd_pdu_async(ptr noundef %il, i8 noundef zeroext 17, i16 noundef zeroext 16, ptr noundef nonnull %rxon_assoc, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end64, %il_get_debug_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %if.end68 ], [ 0, %do.end64 ], [ 0, %il_get_debug_level.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rxon_assoc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_commit_rxon(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56
  %staging = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %0 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %filter_flags, align 1
  %and = and i32 %1, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %status.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %flags, align 1
  %or = or i32 %6, 8388608
  store i32 %or, ptr %flags, align 1
  %call4 = tail call i32 @il_check_rxon_cmd(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.154) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 4
  %11 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.end7.if.end28_crit_edge, label %land.lhs.true

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end7
  %switch_channel = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 59
  %12 = ptrtoint ptr %switch_channel to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %switch_channel, align 2
  %channel = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 14
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %channel, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not = icmp eq i16 %13, %15
  br i1 %cmp.not, label %land.lhs.true.if.end28_crit_edge, label %do.body14

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body14:                                        ; preds = %land.lhs.true
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %16 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body14.il_get_debug_level.exit_crit_edge

do.body14.il_get_debug_level.exit_crit_edge:      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %18 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body14.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %18, %if.else.i ], [ %17, %do.body14.il_get_debug_level.exit_crit_edge ]
  %and16 = and i32 %retval.0.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %il_get_debug_level.exit.do.end27_crit_edge, label %do.end21

il_get_debug_level.exit.do.end27_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27

do.end21:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wiphy, align 8
  %dev22 = getelementptr inbounds %struct.wiphy, ptr %22, i32 0, i32 56
  %23 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, i32 noundef %conv24) #12
  br label %do.end27

do.end27:                                         ; preds = %do.end21, %il_get_debug_level.exit.do.end27_crit_edge
  tail call void @il_chswitch_done(ptr noundef %il, i1 noundef zeroext false) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %land.lhs.true.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %call29 = tail call i32 @il_full_rxon_required(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end43

if.then31:                                        ; preds = %if.end28
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 8
  %rxon_assoc.i = getelementptr inbounds %struct.il_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %rxon_assoc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxon_assoc.i, align 4
  %call.i = tail call i32 %27(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev38 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %28 = ptrtoint ptr %pci_dev38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci_dev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.160, i32 noundef %call.i) #12
  br label %cleanup

if.end40:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %30 = call ptr @memcpy(ptr %active, ptr %staging, i32 46)
  tail call void @il_print_rx_config_cmd(ptr noundef %il) #9
  %tx_power_next = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 113
  %31 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_power_next, align 2
  %call42 = tail call i32 @il_set_tx_power(ptr noundef %il, i8 noundef signext %32, i1 noundef zeroext false) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %filter_flags.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %33 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %filter_flags.i, align 1
  %35 = and i32 %34, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  %brmerge = select i1 %tobool45.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end43.do.body87_crit_edge, label %do.body50

if.end43.do.body87_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body87

do.body50:                                        ; preds = %if.end43
  %debug_level.i255 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %36 = ptrtoint ptr %debug_level.i255 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_level.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i256 = icmp eq i32 %37, 0
  br i1 %tobool.not.i256, label %if.else.i257, label %do.body50.il_get_debug_level.exit259_crit_edge

do.body50.il_get_debug_level.exit259_crit_edge:   ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit259

if.else.i257:                                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %38 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit259

il_get_debug_level.exit259:                       ; preds = %if.else.i257, %do.body50.il_get_debug_level.exit259_crit_edge
  %retval.0.i258 = phi i32 [ %38, %if.else.i257 ], [ %37, %do.body50.il_get_debug_level.exit259_crit_edge ]
  %and52 = and i32 %retval.0.i258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %il_get_debug_level.exit259.do.end63_crit_edge, label %do.end57

il_get_debug_level.exit259.do.end63_crit_edge:    ; preds = %il_get_debug_level.exit259
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end57:                                         ; preds = %il_get_debug_level.exit259
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %il, align 8
  %wiphy59 = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy59, align 8
  %dev60 = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.155) #12
  br label %do.end63

do.end63:                                         ; preds = %do.end57, %il_get_debug_level.exit259.do.end63_crit_edge
  %43 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %filter_flags.i, align 1
  %and65 = and i32 %44, -536870913
  store i32 %and65, ptr %filter_flags.i, align 1
  %call66 = tail call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 16, i16 noundef zeroext 46, ptr noundef %active) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end76, label %if.then68

if.then68:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %filter_flags.i, align 1
  %or70 = or i32 %46, 536870912
  store i32 %or70, ptr %filter_flags.i, align 1
  %pci_dev74 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %47 = ptrtoint ptr %pci_dev74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev74, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.166, i32 noundef %call66) #12
  br label %cleanup

if.end76:                                         ; preds = %do.end63
  tail call void @il_clear_ucode_stations(ptr noundef %il) #9
  tail call void @il_restore_stations(ptr noundef %il) #9
  %call77 = tail call i32 @il4965_restore_default_wep_keys(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end76.do.body87_crit_edge, label %do.end82

if.end76.do.body87_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body87

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev83 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %49 = ptrtoint ptr %pci_dev83 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci_dev83, align 8
  %dev84 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.169, i32 noundef %call77) #12
  br label %cleanup

do.body87:                                        ; preds = %if.end76.do.body87_crit_edge, %if.end43.do.body87_crit_edge
  %debug_level.i260 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %51 = ptrtoint ptr %debug_level.i260 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug_level.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i261 = icmp eq i32 %52, 0
  br i1 %tobool.not.i261, label %if.else.i262, label %do.body87.il_get_debug_level.exit264_crit_edge

do.body87.il_get_debug_level.exit264_crit_edge:   ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit264

if.else.i262:                                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %53 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit264

il_get_debug_level.exit264:                       ; preds = %if.else.i262, %do.body87.il_get_debug_level.exit264_crit_edge
  %retval.0.i263 = phi i32 [ %53, %if.else.i262 ], [ %52, %do.body87.il_get_debug_level.exit264_crit_edge ]
  %and89 = and i32 %retval.0.i263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %il_get_debug_level.exit264.do.end106_crit_edge, label %do.end94

il_get_debug_level.exit264.do.end106_crit_edge:   ; preds = %il_get_debug_level.exit264
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

do.end94:                                         ; preds = %il_get_debug_level.exit264
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %il, align 8
  %wiphy96 = getelementptr inbounds %struct.ieee80211_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wiphy96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy96, align 8
  %dev97 = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  %cond = select i1 %tobool.not, ptr @.str.175, ptr @.str.174
  %channel101 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 14
  %58 = ptrtoint ptr %channel101 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %channel101, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %conv102 = zext i16 %60 to i32
  %bssid_addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.155, ptr noundef nonnull %cond, i32 noundef %conv102, ptr noundef %bssid_addr) #12
  br label %do.end106

do.end106:                                        ; preds = %do.end94, %il_get_debug_level.exit264.do.end106_crit_edge
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cfg, align 4
  %mod_params = getelementptr inbounds %struct.il_cfg, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mod_params, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool107.not = icmp eq i32 %66, 0
  %lnot.ext = zext i1 %tobool107.not to i32
  tail call void @il_set_rxon_hwcrypto(ptr noundef %il, i32 noundef %lnot.ext) #9
  br i1 %tobool.not, label %if.then110, label %if.then147.critedge

if.then110:                                       ; preds = %do.end106
  %call112 = tail call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 16, i16 noundef zeroext 46, ptr noundef %staging) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %do.body121, label %do.end117

do.end117:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev118 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %67 = ptrtoint ptr %pci_dev118 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev118, align 8
  %dev119 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119, ptr noundef nonnull @.str.177, i32 noundef %call112) #12
  br label %cleanup

do.body121:                                       ; preds = %if.then110
  %69 = ptrtoint ptr %debug_level.i260 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %debug_level.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i266 = icmp eq i32 %70, 0
  br i1 %tobool.not.i266, label %if.else.i267, label %do.body121.il_get_debug_level.exit269_crit_edge

do.body121.il_get_debug_level.exit269_crit_edge:  ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit269

if.else.i267:                                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %71 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit269

il_get_debug_level.exit269:                       ; preds = %if.else.i267, %do.body121.il_get_debug_level.exit269_crit_edge
  %retval.0.i268 = phi i32 [ %71, %if.else.i267 ], [ %70, %do.body121.il_get_debug_level.exit269_crit_edge ]
  %and123 = and i32 %retval.0.i268, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %il_get_debug_level.exit269.do.end134_crit_edge, label %do.end128

il_get_debug_level.exit269.do.end134_crit_edge:   ; preds = %il_get_debug_level.exit269
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end134

do.end128:                                        ; preds = %il_get_debug_level.exit269
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %il, align 8
  %wiphy130 = getelementptr inbounds %struct.ieee80211_hw, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %wiphy130 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wiphy130, align 8
  %dev131 = getelementptr inbounds %struct.wiphy, ptr %75, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.155) #12
  br label %do.end134

do.end134:                                        ; preds = %do.end128, %il_get_debug_level.exit269.do.end134_crit_edge
  %76 = call ptr @memcpy(ptr %active, ptr %staging, i32 46)
  tail call void @il_clear_ucode_stations(ptr noundef %il) #9
  tail call void @il_restore_stations(ptr noundef %il) #9
  %call136 = tail call i32 @il4965_restore_default_wep_keys(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %do.end134.if.end159_crit_edge, label %do.end141

do.end134.if.end159_crit_edge:                    ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

do.end141:                                        ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev142 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %77 = ptrtoint ptr %pci_dev142 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pci_dev142, align 8
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev143, ptr noundef nonnull @.str.169, i32 noundef %call136) #12
  br label %cleanup

if.then147.critedge:                              ; preds = %do.end106
  %start_calib = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 63
  %79 = ptrtoint ptr %start_calib to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %start_calib, align 2
  %call149 = tail call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 16, i16 noundef zeroext 46, ptr noundef %staging) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end157, label %do.end154

do.end154:                                        ; preds = %if.then147.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev155 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %80 = ptrtoint ptr %pci_dev155 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev155, align 8
  %dev156 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev156, ptr noundef nonnull @.str.177, i32 noundef %call149) #12
  br label %cleanup

if.end157:                                        ; preds = %if.then147.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %82 = call ptr @memcpy(ptr %active, ptr %staging, i32 46)
  br label %if.end159

if.end159:                                        ; preds = %if.end157, %do.end134.if.end159_crit_edge
  tail call void @il_print_rx_config_cmd(ptr noundef %il) #9
  tail call void @il4965_init_sensitivity(ptr noundef %il) #9
  %tx_power_next160 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 113
  %83 = ptrtoint ptr %tx_power_next160 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %tx_power_next160, align 2
  %call161 = tail call i32 @il_set_tx_power(ptr noundef %il, i8 noundef signext %84, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end159.cleanup_crit_edge, label %do.end166

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end166:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev167 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %85 = ptrtoint ptr %pci_dev167 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pci_dev167, align 8
  %dev168 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev168, ptr noundef nonnull @.str.187, i32 noundef %call161) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end166, %if.end159.cleanup_crit_edge, %do.end154, %do.end141, %do.end117, %do.end82, %if.then68, %if.end40, %do.end37, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call66, %if.then68 ], [ %call77, %do.end82 ], [ %call149, %do.end154 ], [ %call161, %do.end166 ], [ %call112, %do.end117 ], [ %call136, %do.end141 ], [ %call.i, %do.end37 ], [ 0, %if.end40 ], [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il4965_set_rxon_chain(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @il4965_get_hcmd_size(i8 noundef zeroext %cmd_id, i16 noundef zeroext %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %cmd_id)
  %cond = icmp eq i8 %cmd_id, 16
  %.len = select i1 %cond, i16 44, i16 %len
  ret i16 %.len
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @il4965_build_addsta_hcmd(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %data, align 1
  %sta = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 2
  %sta2 = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %sta, ptr %sta2, i32 12)
  %key = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 3
  %key3 = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %key, ptr %key3, i32 32)
  %station_flags = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %station_flags to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %station_flags, align 1
  %station_flags4 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %station_flags4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %station_flags4, align 1
  %station_flags_msk = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %station_flags_msk, align 1
  %station_flags_msk5 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %station_flags_msk5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %station_flags_msk5, align 1
  %tid_disable_tx = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 6
  %11 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %tid_disable_tx, align 1
  %tid_disable_tx6 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 6
  %13 = ptrtoint ptr %tid_disable_tx6 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %tid_disable_tx6, align 1
  %add_immediate_ba_tid = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 8
  %14 = ptrtoint ptr %add_immediate_ba_tid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add_immediate_ba_tid, align 1
  %add_immediate_ba_tid7 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 8
  %16 = ptrtoint ptr %add_immediate_ba_tid7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %add_immediate_ba_tid7, align 1
  %remove_immediate_ba_tid = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 9
  %17 = ptrtoint ptr %remove_immediate_ba_tid to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %remove_immediate_ba_tid, align 1
  %remove_immediate_ba_tid8 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 9
  %19 = ptrtoint ptr %remove_immediate_ba_tid8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %remove_immediate_ba_tid8, align 1
  %add_immediate_ba_ssn = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 10
  %20 = ptrtoint ptr %add_immediate_ba_ssn to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add_immediate_ba_ssn, align 1
  %add_immediate_ba_ssn9 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 10
  %22 = ptrtoint ptr %add_immediate_ba_ssn9 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %add_immediate_ba_ssn9, align 1
  %sleep_tx_count = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 11
  %23 = ptrtoint ptr %sleep_tx_count to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %sleep_tx_count, align 1
  %sleep_tx_count10 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 11
  %25 = ptrtoint ptr %sleep_tx_count10 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %sleep_tx_count10, align 1
  %reserved1 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 7
  %26 = ptrtoint ptr %reserved1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %reserved1, align 1
  %reserved2 = getelementptr inbounds %struct.il4965_addsta_cmd, ptr %data, i32 0, i32 12
  %27 = ptrtoint ptr %reserved2 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 0, ptr %reserved2, align 1
  ret i16 68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_request_scan(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_post_scan(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %staging = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57
  %active = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(46) %staging, ptr noundef dereferenceable(46) %active, i32 46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %commit_rxon.i = getelementptr inbounds %struct.il_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %commit_rxon.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %commit_rxon.i, align 4
  %call.i = tail call i32 %3(ptr noundef %il) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_post_associate(ptr noundef %il) #0 align 64 {
entry:
  %cmd.i = alloca %struct.il_calib_diff_gain_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 53
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_open = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 90
  %2 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @il_scan_cancel_timeout(ptr noundef %il, i32 noundef 200) #9
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %7 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %filter_flags, align 1
  %and = and i32 %8, -536870913
  store i32 %and, ptr %filter_flags, align 1
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 8
  %commit_rxon.i = getelementptr inbounds %struct.il_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %commit_rxon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %commit_rxon.i, align 4
  %call.i = tail call i32 %12(ptr noundef %il) #9
  %call8 = tail call i32 @il_send_rxon_timing(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.if.end11_crit_edge, label %do.end

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %13 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.189) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end5.if.end11_crit_edge
  %15 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %filter_flags, align 1
  %or = or i32 %16, 536870912
  store i32 %or, ptr %filter_flags, align 1
  %current_ht_config = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 67
  tail call void @il_set_rxon_ht(ptr noundef %il, ptr noundef %current_ht_config) #9
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 8
  %set_rxon_chain = getelementptr inbounds %struct.il_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %set_rxon_chain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_rxon_chain, align 4
  %tobool14.not = icmp eq ptr %20, null
  br i1 %tobool14.not, label %if.end11.if.end18_crit_edge, label %if.then15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %20(ptr noundef %il) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end11.if.end18_crit_edge
  %aid = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 13
  %21 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %aid, align 2
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %assoc_id = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 11
  %24 = ptrtoint ptr %assoc_id to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %assoc_id, align 1
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %25 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end18.il_get_debug_level.exit_crit_edge

if.end18.il_get_debug_level.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %27 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.end18.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.else.i ], [ %26, %if.end18.il_get_debug_level.exit_crit_edge ]
  %and22 = and i32 %retval.0.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %il_get_debug_level.exit.do.end35_crit_edge, label %do.end27

il_get_debug_level.exit.do.end35_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end27:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy, align 8
  %dev28 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  %32 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %aid, align 2
  %conv = zext i16 %33 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 19
  %34 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %beacon_int, align 2
  %conv32 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.190, i32 noundef %conv, i32 noundef %conv32) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end27, %il_get_debug_level.exit.do.end35_crit_edge
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 15
  %36 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %use_short_preamble, align 1, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool37.not = icmp eq i8 %37, 0
  %flags42 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %38 = ptrtoint ptr %flags42 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %flags42, align 1
  %and43 = and i32 %39, -536870913
  %masksel = select i1 %tobool37.not, i32 0, i32 536870912
  %and43.sink = or i32 %and43, %masksel
  store i32 %and43.sink, ptr %flags42, align 1
  %and47 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.end35.if.end61_crit_edge, label %if.then49

do.end35.if.end61_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then49:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  %flags46 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 16
  %40 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_short_slot, align 2, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool51.not = icmp eq i8 %41, 0
  %and59 = and i32 %and43.sink, -268435457
  %masksel142 = select i1 %tobool51.not, i32 0, i32 268435456
  %or55.sink = or i32 %and59, %masksel142
  %42 = ptrtoint ptr %flags46 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %or55.sink, ptr %flags46, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then49, %do.end35.if.end61_crit_edge
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 8
  %commit_rxon.i134 = getelementptr inbounds %struct.il_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %commit_rxon.i134 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %commit_rxon.i134, align 4
  %call.i135 = tail call i32 %46(ptr noundef %il) #9
  %47 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i137 = icmp eq i32 %48, 0
  br i1 %tobool.not.i137, label %if.else.i138, label %if.end61.il_get_debug_level.exit140_crit_edge

if.end61.il_get_debug_level.exit140_crit_edge:    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit140

if.else.i138:                                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %49 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit140

il_get_debug_level.exit140:                       ; preds = %if.else.i138, %if.end61.il_get_debug_level.exit140_crit_edge
  %retval.0.i139 = phi i32 [ %49, %if.else.i138 ], [ %48, %if.end61.il_get_debug_level.exit140_crit_edge ]
  %and65 = and i32 %retval.0.i139, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %il_get_debug_level.exit140.do.end79_crit_edge, label %do.end70

il_get_debug_level.exit140.do.end79_crit_edge:    ; preds = %il_get_debug_level.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

do.end70:                                         ; preds = %il_get_debug_level.exit140
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %il, align 8
  %wiphy72 = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %wiphy72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wiphy72, align 8
  %dev73 = getelementptr inbounds %struct.wiphy, ptr %53, i32 0, i32 56
  %54 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %aid, align 2
  %conv76 = zext i16 %55 to i32
  %bssid_addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.190, i32 noundef %conv76, ptr noundef %bssid_addr) #12
  br label %do.end79

do.end79:                                         ; preds = %do.end70, %il_get_debug_level.exit140.do.end79_crit_edge
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %1, align 8
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %do.end83 [
    i32 2, label %do.end79.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

do.end79.sw.epilog_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  %call80 = tail call i32 @il4965_send_beacon_cmd(ptr noundef %il) #9
  br label %sw.epilog

do.end83:                                         ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev84 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %59 = ptrtoint ptr %pci_dev84 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_dev84, align 8
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.190, i32 noundef %57) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end83, %sw.bb, %do.end79.sw.epilog_crit_edge
  %state = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 11
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %62)
  %cmp = icmp eq i8 %62, 3
  br i1 %cmp, label %if.then89, label %sw.epilog.if.end91_crit_edge

sw.epilog.if.end91_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then89:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = tail call i32 @il_power_update_mode(ptr noundef %il, i1 noundef zeroext false) #9
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %63)
  %.pr = load i8, ptr %state, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %sw.epilog.if.end91_crit_edge
  %64 = phi i8 [ %.pr, %if.then89 ], [ %62, %sw.epilog.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp.i = icmp eq i8 %64, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end91.il4965_chain_noise_reset.exit_crit_edge

if.end91.il4965_chain_noise_reset.exit_crit_edge: ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %il4965_chain_noise_reset.exit

land.lhs.true.i:                                  ; preds = %if.end91
  %filter_flags.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %65 = ptrtoint ptr %filter_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %filter_flags.i.i.i, align 1
  %67 = and i32 %66, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i141 = icmp eq i32 %67, 0
  br i1 %tobool.not.i141, label %land.lhs.true.i.il4965_chain_noise_reset.exit_crit_edge, label %if.then.i

land.lhs.true.i.il4965_chain_noise_reset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il4965_chain_noise_reset.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #9
  %chain_noise_a.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65, i32 1
  %68 = call ptr @memset(ptr %chain_noise_a.i, i32 0, i32 26)
  %69 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 504403158265495552, ptr %cmd.i, align 8
  %call2.i = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext -80, i16 noundef zeroext 8, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %70 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.200) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %72 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %state, align 1
  %73 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.il_get_debug_level.exit.i_crit_edge

if.end.i.il_get_debug_level.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %75 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %if.end.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %75, %if.else.i.i ], [ %74, %if.end.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %il_get_debug_level.exit.i.do.end16.i_crit_edge, label %do.end12.i

il_get_debug_level.exit.i.do.end16.i_crit_edge:   ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

do.end12.i:                                       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wiphy.i, align 8
  %dev13.i = getelementptr inbounds %struct.wiphy, ptr %79, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201) #12
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end12.i, %il_get_debug_level.exit.i.do.end16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #9
  br label %il4965_chain_noise_reset.exit

il4965_chain_noise_reset.exit:                    ; preds = %do.end16.i, %land.lhs.true.i.il4965_chain_noise_reset.exit_crit_edge, %if.end91.il4965_chain_noise_reset.exit_crit_edge
  %start_calib = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 63
  %80 = ptrtoint ptr %start_calib to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %start_calib, align 2
  br label %cleanup

cleanup:                                          ; preds = %il4965_chain_noise_reset.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il4965_config_ap(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vif1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 53
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 33, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !351

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1810, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %filter_flags.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %6 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %filter_flags.i, align 1
  %8 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool30.not = icmp eq i32 %8, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end75_crit_edge

if.end28.if.end75_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then31:                                        ; preds = %if.end28
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %9 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %filter_flags, align 1
  %and = and i32 %10, -536870913
  store i32 %and, ptr %filter_flags, align 1
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 8
  %commit_rxon.i = getelementptr inbounds %struct.il_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %commit_rxon.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %commit_rxon.i, align 4
  %call.i104 = tail call i32 %14(ptr noundef %il) #9
  %call33 = tail call i32 @il_send_rxon_timing(ptr noundef %il) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end39_crit_edge, label %do.end38

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.205) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.then31.if.end39_crit_edge
  %valid_rx_ant = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 8
  %17 = ptrtoint ptr %valid_rx_ant to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %valid_rx_ant, align 1
  %conv = zext i8 %18 to i32
  %chain_noise_data = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 65
  %19 = ptrtoint ptr %chain_noise_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %chain_noise_data, align 8
  %current_ht_config = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 67
  tail call void @il_set_rxon_ht(ptr noundef %il, ptr noundef %current_ht_config) #9
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 8
  %set_rxon_chain = getelementptr inbounds %struct.il_ops, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %set_rxon_chain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_rxon_chain, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %if.end39.if.end44_crit_edge, label %if.then41

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %il) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end39.if.end44_crit_edge
  %assoc_id = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 11
  %24 = ptrtoint ptr %assoc_id to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 0, ptr %assoc_id, align 1
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 15
  %25 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_short_preamble, align 1, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool46.not = icmp eq i8 %26, 0
  %flags50 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %27 = ptrtoint ptr %flags50 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %flags50, align 1
  %and51 = and i32 %28, -536870913
  %masksel = select i1 %tobool46.not, i32 0, i32 536870912
  %and51.sink = or i32 %and51, %masksel
  store i32 %and51.sink, ptr %flags50, align 1
  %and55 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end44.if.end69_crit_edge, label %if.then57

if.end44.if.end69_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then57:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %flags54 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %use_short_slot = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 16
  %29 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_short_slot, align 2, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool59.not = icmp eq i8 %30, 0
  %and67 = and i32 %and51.sink, -268435457
  %masksel108 = select i1 %tobool59.not, i32 0, i32 268435456
  %or63.sink = or i32 %and67, %masksel108
  %31 = ptrtoint ptr %flags54 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %or63.sink, ptr %flags54, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then57, %if.end44.if.end69_crit_edge
  %call70 = tail call i32 @il4965_send_beacon_cmd(ptr noundef %il) #9
  %32 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %filter_flags, align 1
  %or73 = or i32 %33, 536870912
  store i32 %or73, ptr %filter_flags, align 1
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 8
  %commit_rxon.i106 = getelementptr inbounds %struct.il_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %commit_rxon.i106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %commit_rxon.i106, align 4
  %call.i107 = tail call i32 %37(ptr noundef %il) #9
  br label %if.end75

if.end75:                                         ; preds = %if.end69, %if.end28.if.end75_crit_edge
  %call76 = tail call i32 @il4965_send_beacon_cmd(ptr noundef %il) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_update_bcast_stations(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_manage_ibss_station(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il4965_send_led_cmd(ptr noundef %il, ptr noundef %led_cmd) #0 align 64 {
entry:
  %cmd = alloca %struct.il_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %led_cmd, ptr %cmd, align 4
  %reply_page = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %reply_page to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %reply_page, align 4
  %callback = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %callback, align 4
  %flags = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %flags, align 4
  %len = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %len, align 4
  %id = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 5
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 72, ptr %id, align 2
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %8 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 148
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !348
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %and = and i32 %11, -33
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and)
  %cmp.not = icmp eq i32 %11, %and
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #9
  %13 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %14, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %12) #9, !srcloc !347
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = call i32 @il_send_cmd(ptr noundef %il, ptr noundef nonnull %cmd) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #9
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_il_grab_nic_access(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_wr_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_rd_prph(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_usecs_to_beacons(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_add_beacon_time(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @il_get_channel_info(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il4965_fill_txpower_tbl(ptr noundef %il, i8 noundef zeroext %band, i16 noundef zeroext %channel, i8 noundef zeroext %is_ht40, i8 noundef zeroext %ctrl_chan_high, ptr nocapture noundef writeonly %tx_power_tbl) unnamed_addr #0 align 64 {
entry:
  %ch_eeprom_info = alloca %struct.il_eeprom_calib_ch_info, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %ch_eeprom_info) #9
  %0 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 1, i32 1
  %4 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = getelementptr inbounds %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 1, i32 1, i32 2
  %tx_power_user_lmt = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 111
  %6 = call ptr @memset(ptr %ch_eeprom_info, i32 255, i32 25)
  %7 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_power_user_lmt, align 8
  %conv = sext i8 %8 to i32
  %mul = shl nsw i32 %conv, 1
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %9 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.il_get_debug_level.exit_crit_edge

entry.il_get_debug_level.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %11 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %entry.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.else.i ], [ %10, %entry.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end6_crit_edge, label %do.end

il_get_debug_level.exit.do.end6_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %15, i32 0, i32 56
  %conv2 = zext i16 %channel to i32
  %conv3 = zext i8 %band to i32
  %conv4 = zext i8 %is_ht40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end6_crit_edge
  %band7 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %16 = ptrtoint ptr %band7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %band7, align 4
  %call8 = tail call ptr @il_get_channel_info(ptr noundef %il, i32 noundef %17, i16 noundef zeroext %channel) #9
  %cmp.i = icmp eq ptr %call8, null
  br i1 %cmp.i, label %do.end6.cleanup_crit_edge, label %il_is_channel_valid.exit

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

il_is_channel_valid.exit:                         ; preds = %do.end6
  %flags.i = getelementptr inbounds %struct.il_channel_info, ptr %call8, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %il_is_channel_valid.exit.cleanup_crit_edge, label %if.end12

il_is_channel_valid.exit.cleanup_crit_edge:       ; preds = %il_is_channel_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %il_is_channel_valid.exit
  %21 = add i16 %channel, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %21)
  %22 = icmp ult i16 %21, 20
  br i1 %22, label %if.end12.do.body22_crit_edge, label %if.end.i445

if.end12.do.body22_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.end.i445:                                      ; preds = %if.end12
  %23 = add i16 %channel, -34
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %23)
  %24 = icmp ult i16 %23, 10
  br i1 %24, label %if.end.i445.do.body22_crit_edge, label %if.end13.i

if.end.i445.do.body22_crit_edge:                  ; preds = %if.end.i445
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.end13.i:                                       ; preds = %if.end.i445
  %25 = add i16 %channel, -44
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %25)
  %26 = icmp ult i16 %25, 27
  br i1 %26, label %if.end13.i.do.body22_crit_edge, label %if.end22.i

if.end13.i.do.body22_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.end22.i:                                       ; preds = %if.end13.i
  %27 = add i16 %channel, -71
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %27)
  %28 = icmp ult i16 %27, 54
  br i1 %28, label %if.end22.i.do.body22_crit_edge, label %if.end31.i

if.end22.i.do.body22_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

if.end31.i:                                       ; preds = %if.end22.i
  %29 = add i16 %channel, -125
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %29)
  %30 = icmp ult i16 %29, 76
  br i1 %30, label %if.end31.i.do.body22_crit_edge, label %do.end18

if.end31.i.do.body22_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.end18:                                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %conv20 = zext i16 %channel to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.104, i32 noundef %conv20) #12
  br label %cleanup

do.body22:                                        ; preds = %if.end31.i.do.body22_crit_edge, %if.end22.i.do.body22_crit_edge, %if.end13.i.do.body22_crit_edge, %if.end.i445.do.body22_crit_edge, %if.end12.do.body22_crit_edge
  %retval.0.i446.ph = phi i32 [ 2, %if.end22.i.do.body22_crit_edge ], [ 1, %if.end13.i.do.body22_crit_edge ], [ 0, %if.end.i445.do.body22_crit_edge ], [ 4, %if.end12.do.body22_crit_edge ], [ 3, %if.end31.i.do.body22_crit_edge ]
  %33 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i448 = icmp eq i32 %34, 0
  br i1 %tobool.not.i448, label %if.else.i449, label %do.body22.il_get_debug_level.exit451_crit_edge

do.body22.il_get_debug_level.exit451_crit_edge:   ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit451

if.else.i449:                                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %35 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit451

il_get_debug_level.exit451:                       ; preds = %if.else.i449, %do.body22.il_get_debug_level.exit451_crit_edge
  %retval.0.i450 = phi i32 [ %35, %if.else.i449 ], [ %34, %do.body22.il_get_debug_level.exit451_crit_edge ]
  %and24 = and i32 %retval.0.i450, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %il_get_debug_level.exit451.do.end36_crit_edge, label %do.end29

il_get_debug_level.exit451.do.end36_crit_edge:    ; preds = %il_get_debug_level.exit451
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end29:                                         ; preds = %il_get_debug_level.exit451
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %il, align 8
  %wiphy31 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy31, align 8
  %dev32 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  %conv33 = zext i16 %channel to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, i32 noundef %conv33, i32 noundef %retval.0.i446.ph) #12
  br label %do.end36

do.end36:                                         ; preds = %do.end29, %il_get_debug_level.exit451.do.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_ht40)
  %tobool37.not = icmp eq i8 %is_ht40, 0
  br i1 %tobool37.not, label %do.end36.if.end46_crit_edge, label %if.then38

do.end36.if.end46_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then38:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ctrl_chan_high)
  %tobool39.not = icmp eq i8 %ctrl_chan_high, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i16 %channel, -2
  br label %if.end46

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i16 %channel, 2
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then40, %do.end36.if.end46_crit_edge
  %channel.addr.0 = phi i16 [ %sub, %if.then40 ], [ %add, %if.else ], [ %channel, %do.end36.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %band)
  %tobool47.not = icmp eq i8 %band, 0
  %calib_info50 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 93
  %40 = ptrtoint ptr %calib_info50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %calib_info50, align 4
  %saturation_power52 = getelementptr inbounds %struct.il_eeprom_calib_info, ptr %41, i32 0, i32 1
  %saturation_power.0.in = select i1 %tobool47.not, ptr %saturation_power52, ptr %41
  %42 = ptrtoint ptr %saturation_power.0.in to i32
  call void @__asan_load1_noabort(i32 %42)
  %saturation_power.0 = load i8, ptr %saturation_power.0.in, align 1
  %43 = add i8 %saturation_power.0, -51
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %43)
  %44 = icmp ult i8 %43, -31
  %saturation_power.1 = select i1 %44, i8 38, i8 %saturation_power.0
  %ht40_max_power_avg = getelementptr inbounds %struct.il_channel_info, ptr %call8, i32 0, i32 13
  %max_power_avg = getelementptr inbounds %struct.il_channel_info, ptr %call8, i32 0, i32 6
  %reg_limit.0.in.in.in = select i1 %tobool37.not, ptr %max_power_avg, ptr %ht40_max_power_avg
  %45 = ptrtoint ptr %reg_limit.0.in.in.in to i32
  call void @__asan_load1_noabort(i32 %45)
  %reg_limit.0.in.in = load i8, ptr %reg_limit.0.in.in.in, align 2
  %reg_limit.0.in = sext i8 %reg_limit.0.in.in to i32
  %reg_limit.0 = shl nsw i32 %reg_limit.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %reg_limit.0.in.in)
  %46 = icmp ugt i8 %reg_limit.0.in.in, 17
  %reg_limit.1 = select i1 %46, i32 34, i32 %reg_limit.0
  %conv83 = zext i16 %channel.addr.0 to i32
  %calib_info.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 93
  %47 = ptrtoint ptr %calib_info.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %calib_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 0
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp1.i.i = icmp eq i8 %50, 0
  %51 = zext i8 %50 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %51)
  %cmp8.not.i.i = icmp ult i16 %channel.addr.0, %51
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp8.not.i.i
  br i1 %or.cond.i.i, label %if.end46.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.end46.for.inc.i.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end46
  %ch_to.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 0, i32 1
  %52 = ptrtoint ptr %ch_to.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ch_to.i.i, align 1
  %54 = zext i8 %53 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %54)
  %cmp14.not.i.i = icmp ugt i16 %channel.addr.0, %54
  br i1 %cmp14.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i452_crit_edge

land.lhs.true.i.i.if.end.i452_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end46.for.inc.i.i_crit_edge
  %arrayidx.1.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp1.1.i.i = icmp eq i8 %56, 0
  %57 = zext i8 %56 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %57)
  %cmp8.not.1.i.i = icmp ult i16 %channel.addr.0, %57
  %or.cond.1.i.i = or i1 %cmp1.1.i.i, %cmp8.not.1.i.i
  br i1 %or.cond.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %ch_to.1.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 1, i32 1
  %58 = ptrtoint ptr %ch_to.1.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ch_to.1.i.i, align 1
  %60 = zext i8 %59 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %60)
  %cmp14.not.1.i.i = icmp ugt i16 %channel.addr.0, %60
  br i1 %cmp14.not.1.i.i, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, label %land.lhs.true.1.i.i.if.end.i452_crit_edge

land.lhs.true.1.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %arrayidx.2.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp1.2.i.i = icmp eq i8 %62, 0
  %63 = zext i8 %62 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %63)
  %cmp8.not.2.i.i = icmp ult i16 %channel.addr.0, %63
  %or.cond.2.i.i = or i1 %cmp1.2.i.i, %cmp8.not.2.i.i
  br i1 %or.cond.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

land.lhs.true.2.i.i:                              ; preds = %for.inc.1.i.i
  %ch_to.2.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 2, i32 1
  %64 = ptrtoint ptr %ch_to.2.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ch_to.2.i.i, align 1
  %66 = zext i8 %65 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %66)
  %cmp14.not.2.i.i = icmp ugt i16 %channel.addr.0, %66
  br i1 %cmp14.not.2.i.i, label %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, label %land.lhs.true.2.i.i.if.end.i452_crit_edge

land.lhs.true.2.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %land.lhs.true.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %arrayidx.3.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp1.3.i.i = icmp eq i8 %68, 0
  %69 = zext i8 %68 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %69)
  %cmp8.not.3.i.i = icmp ult i16 %channel.addr.0, %69
  %or.cond.3.i.i = or i1 %cmp1.3.i.i, %cmp8.not.3.i.i
  br i1 %or.cond.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

land.lhs.true.3.i.i:                              ; preds = %for.inc.2.i.i
  %ch_to.3.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 3, i32 1
  %70 = ptrtoint ptr %ch_to.3.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ch_to.3.i.i, align 1
  %72 = zext i8 %71 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %72)
  %cmp14.not.3.i.i = icmp ugt i16 %channel.addr.0, %72
  br i1 %cmp14.not.3.i.i, label %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge, label %land.lhs.true.3.i.i.if.end.i452_crit_edge

land.lhs.true.3.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %land.lhs.true.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %arrayidx.4.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp1.4.i.i = icmp eq i8 %74, 0
  %75 = zext i8 %74 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %75)
  %cmp8.not.4.i.i = icmp ult i16 %channel.addr.0, %75
  %or.cond.4.i.i = or i1 %cmp1.4.i.i, %cmp8.not.4.i.i
  br i1 %or.cond.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %land.lhs.true.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

land.lhs.true.4.i.i:                              ; preds = %for.inc.3.i.i
  %ch_to.4.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 4, i32 1
  %76 = ptrtoint ptr %ch_to.4.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ch_to.4.i.i, align 1
  %78 = zext i8 %77 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %78)
  %cmp14.not.4.i.i = icmp ugt i16 %channel.addr.0, %78
  br i1 %cmp14.not.4.i.i, label %land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge, label %land.lhs.true.4.i.i.if.end.i452_crit_edge

land.lhs.true.4.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge:      ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %land.lhs.true.4.i.i.for.inc.4.i.i_crit_edge, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %arrayidx.5.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 5
  %79 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp1.5.i.i = icmp eq i8 %80, 0
  %81 = zext i8 %80 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %81)
  %cmp8.not.5.i.i = icmp ult i16 %channel.addr.0, %81
  %or.cond.5.i.i = or i1 %cmp1.5.i.i, %cmp8.not.5.i.i
  br i1 %or.cond.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %land.lhs.true.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i.i

land.lhs.true.5.i.i:                              ; preds = %for.inc.4.i.i
  %ch_to.5.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 5, i32 1
  %82 = ptrtoint ptr %ch_to.5.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ch_to.5.i.i, align 1
  %84 = zext i8 %83 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %84)
  %cmp14.not.5.i.i = icmp ugt i16 %channel.addr.0, %84
  br i1 %cmp14.not.5.i.i, label %land.lhs.true.5.i.i.for.inc.5.i.i_crit_edge, label %land.lhs.true.5.i.i.if.end.i452_crit_edge

land.lhs.true.5.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.5.i.i.for.inc.5.i.i_crit_edge:      ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %land.lhs.true.5.i.i.for.inc.5.i.i_crit_edge, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %arrayidx.6.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 6
  %85 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp1.6.i.i = icmp eq i8 %86, 0
  %87 = zext i8 %86 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %87)
  %cmp8.not.6.i.i = icmp ult i16 %channel.addr.0, %87
  %or.cond.6.i.i = or i1 %cmp1.6.i.i, %cmp8.not.6.i.i
  br i1 %or.cond.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %land.lhs.true.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i.i

land.lhs.true.6.i.i:                              ; preds = %for.inc.5.i.i
  %ch_to.6.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 6, i32 1
  %88 = ptrtoint ptr %ch_to.6.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ch_to.6.i.i, align 1
  %90 = zext i8 %89 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %90)
  %cmp14.not.6.i.i = icmp ugt i16 %channel.addr.0, %90
  br i1 %cmp14.not.6.i.i, label %land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge, label %land.lhs.true.6.i.i.if.end.i452_crit_edge

land.lhs.true.6.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge:      ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %land.lhs.true.6.i.i.for.inc.6.i.i_crit_edge, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %arrayidx.7.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 7
  %91 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp1.7.i.i = icmp eq i8 %92, 0
  %93 = zext i8 %92 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %93)
  %cmp8.not.7.i.i = icmp ult i16 %channel.addr.0, %93
  %or.cond.7.i.i = or i1 %cmp1.7.i.i, %cmp8.not.7.i.i
  br i1 %or.cond.7.i.i, label %for.inc.6.i.i.do.end.i_crit_edge, label %land.lhs.true.7.i.i

for.inc.6.i.i.do.end.i_crit_edge:                 ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.7.i.i:                              ; preds = %for.inc.6.i.i
  %ch_to.7.i.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 7, i32 1
  %94 = ptrtoint ptr %ch_to.7.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ch_to.7.i.i, align 1
  %96 = zext i8 %95 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %channel.addr.0, i16 %96)
  %cmp14.not.7.i.i = icmp ugt i16 %channel.addr.0, %96
  br i1 %cmp14.not.7.i.i, label %land.lhs.true.7.i.i.do.end.i_crit_edge, label %land.lhs.true.7.i.i.if.end.i452_crit_edge

land.lhs.true.7.i.i.if.end.i452_crit_edge:        ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i452

land.lhs.true.7.i.i.do.end.i_crit_edge:           ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.7.i.i.do.end.i_crit_edge, %for.inc.6.i.i.do.end.i_crit_edge
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %97 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.134, i32 noundef %conv83) #12
  br label %il4965_interpolate_chan.exit

if.end.i452:                                      ; preds = %land.lhs.true.7.i.i.if.end.i452_crit_edge, %land.lhs.true.6.i.i.if.end.i452_crit_edge, %land.lhs.true.5.i.i.if.end.i452_crit_edge, %land.lhs.true.4.i.i.if.end.i452_crit_edge, %land.lhs.true.3.i.i.if.end.i452_crit_edge, %land.lhs.true.2.i.i.if.end.i452_crit_edge, %land.lhs.true.1.i.i.if.end.i452_crit_edge, %land.lhs.true.i.i.if.end.i452_crit_edge
  %b.0.lcssa.i.ph.i = phi i32 [ 7, %land.lhs.true.7.i.i.if.end.i452_crit_edge ], [ 6, %land.lhs.true.6.i.i.if.end.i452_crit_edge ], [ 5, %land.lhs.true.5.i.i.if.end.i452_crit_edge ], [ 4, %land.lhs.true.4.i.i.if.end.i452_crit_edge ], [ 3, %land.lhs.true.3.i.i.if.end.i452_crit_edge ], [ 2, %land.lhs.true.2.i.i.if.end.i452_crit_edge ], [ 1, %land.lhs.true.1.i.i.if.end.i452_crit_edge ], [ 0, %land.lhs.true.i.i.if.end.i452_crit_edge ]
  %ch1.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2
  %99 = ptrtoint ptr %ch1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ch1.i, align 1
  %conv.i = zext i8 %100 to i32
  %ch2.i = getelementptr %struct.il_eeprom_calib_info, ptr %48, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3
  %101 = ptrtoint ptr %ch2.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ch2.i, align 1
  %conv5.i = zext i8 %102 to i32
  %conv6.i = trunc i16 %channel.addr.0 to i8
  %103 = ptrtoint ptr %ch_eeprom_info to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv6.i, ptr %ch_eeprom_info, align 1
  %104 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i452.il_get_debug_level.exit.i_crit_edge

if.end.i452.il_get_debug_level.exit.i_crit_edge:  ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %if.end.i452
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %106 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %if.end.i452.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %106, %if.else.i.i ], [ %105, %if.end.i452.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i453 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i453, label %il_get_debug_level.exit.i.do.end17.i_crit_edge, label %do.end13.i

il_get_debug_level.exit.i.do.end17.i_crit_edge:   ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

do.end13.i:                                       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %wiphy.i, align 8
  %dev14.i = getelementptr inbounds %struct.wiphy, ptr %110, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef %conv83, i32 noundef %b.0.lcssa.i.ph.i, i32 noundef %conv.i, i32 noundef %conv5.i) #12
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end13.i, %il_get_debug_level.exit.i.do.end17.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %100)
  %cmp.i.i = icmp eq i8 %102, %100
  %sub.i.i = sub nsw i32 %conv5.i, %conv83
  %sub2.i.i = sub nsw i32 %conv5.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i.i)
  %cmp2.i.i.i = icmp slt i32 %sub2.i.i, 0
  %111 = tail call i32 @llvm.abs.i32(i32 %sub2.i.i, i1 true) #9
  %mul7.i.i.i = shl nuw nsw i32 %111, 1
  br label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %for.inc144.i.for.cond20.preheader.i_crit_edge, %do.end17.i
  %c.0127.i = phi i32 [ 0, %do.end17.i ], [ %inc145.i, %for.inc144.i.for.cond20.preheader.i_crit_edge ]
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc.i.for.body23.i_crit_edge, %for.cond20.preheader.i
  %m.0121.i = phi i32 [ 0, %for.cond20.preheader.i ], [ %inc.i, %for.inc.i.for.body23.i_crit_edge ]
  %112 = ptrtoint ptr %calib_info.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %calib_info.i.i, align 4
  %arrayidx29.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i
  %arrayidx36.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i
  %arrayidx39.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i
  %actual_pow.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 2
  %114 = ptrtoint ptr %actual_pow.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %actual_pow.i, align 1
  %actual_pow41.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 2
  br i1 %cmp.i.i, label %il4965_interpolate_value.exit40.thread.i, label %if.else.i57.i

il4965_interpolate_value.exit40.thread.i:         ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  %actual_pow4585.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 2
  %116 = ptrtoint ptr %actual_pow4585.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %actual_pow4585.i, align 1
  %gain_idx86.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %117 = ptrtoint ptr %gain_idx86.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %gain_idx86.i, align 1
  %gain_idx4788.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %gain_idx5198.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %119 = ptrtoint ptr %gain_idx5198.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %gain_idx5198.i, align 1
  %120 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx29.i, align 1
  %122 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx39.i, align 1
  %pa_det111.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 3
  %123 = ptrtoint ptr %pa_det111.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %pa_det111.i, align 1
  %conv58112129.i = zext i8 %124 to i32
  %pa_det59113.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 3
  br label %il4965_interpolate_value.exit59.i

if.else.i57.i:                                    ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %actual_pow41.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %actual_pow41.i, align 1
  %conv42.i = zext i8 %126 to i32
  %conv40.i = zext i8 %115 to i32
  %sub1.i.i = sub nsw i32 %conv40.i, %conv42.i
  %mul.i.i = mul nsw i32 %sub1.i.i, %sub.i.i
  %127 = tail call i32 @llvm.abs.i32(i32 %mul.i.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i.i)
  %cmp.inv.i.i.i = icmp sgt i32 %mul.i.i, -1
  %spec.select1.i.i.i = select i1 %cmp.inv.i.i.i, i32 1, i32 -1
  %sub4.i.i.i = sub nsw i32 0, %spec.select1.i.i.i
  %sign.1.i.i.i = select i1 %cmp2.i.i.i, i32 %sub4.i.i.i, i32 %spec.select1.i.i.i
  %mul.i.i.i = shl nsw i32 %127, 1
  %add.i.i.i = add nsw i32 %mul.i.i.i, %111
  %div.i.i.i = sdiv i32 %add.i.i.i, %mul7.i.i.i
  %mul8.i.i.i = mul i32 %sign.1.i.i.i, %div.i.i.i
  %128 = trunc i32 %mul8.i.i.i to i8
  %conv44.i = add i8 %126, %128
  %actual_pow45.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 2
  %129 = ptrtoint ptr %actual_pow45.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv44.i, ptr %actual_pow45.i, align 1
  %gain_idx.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %130 = ptrtoint ptr %gain_idx.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %gain_idx.i, align 1
  %conv46.i = zext i8 %131 to i32
  %gain_idx47.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %132 = ptrtoint ptr %gain_idx47.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %gain_idx47.i, align 1
  %conv48.i = zext i8 %133 to i32
  %sub1.i5.i = sub nsw i32 %conv46.i, %conv48.i
  %mul.i6.i = mul nsw i32 %sub1.i5.i, %sub.i.i
  %134 = tail call i32 @llvm.abs.i32(i32 %mul.i6.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i6.i)
  %cmp.inv.i.i8.i = icmp sgt i32 %mul.i6.i, -1
  %spec.select1.i.i9.i = select i1 %cmp.inv.i.i8.i, i32 1, i32 -1
  %sub4.i.i11.i = sub nsw i32 0, %spec.select1.i.i9.i
  %sign.1.i.i12.i = select i1 %cmp2.i.i.i, i32 %sub4.i.i11.i, i32 %spec.select1.i.i9.i
  %mul.i.i13.i = shl nsw i32 %134, 1
  %add.i.i14.i = add nsw i32 %mul.i.i13.i, %111
  %div.i.i16.i = sdiv i32 %add.i.i14.i, %mul7.i.i.i
  %mul8.i.i17.i = mul i32 %sign.1.i.i12.i, %div.i.i16.i
  %135 = trunc i32 %mul8.i.i17.i to i8
  %conv50.i = add i8 %133, %135
  %gain_idx51.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 1
  %136 = ptrtoint ptr %gain_idx51.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv50.i, ptr %gain_idx51.i, align 1
  %137 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx29.i, align 1
  %conv52.i = zext i8 %138 to i32
  %139 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx36.i, align 1
  %conv54.i = zext i8 %140 to i32
  %sub1.i24.i = sub nsw i32 %conv52.i, %conv54.i
  %mul.i25.i = mul nsw i32 %sub1.i24.i, %sub.i.i
  %141 = tail call i32 @llvm.abs.i32(i32 %mul.i25.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i25.i)
  %cmp.inv.i.i27.i = icmp sgt i32 %mul.i25.i, -1
  %spec.select1.i.i28.i = select i1 %cmp.inv.i.i27.i, i32 1, i32 -1
  %sub4.i.i30.i = sub nsw i32 0, %spec.select1.i.i28.i
  %sign.1.i.i31.i = select i1 %cmp2.i.i.i, i32 %sub4.i.i30.i, i32 %spec.select1.i.i28.i
  %mul.i.i32.i = shl nsw i32 %141, 1
  %add.i.i33.i = add nsw i32 %mul.i.i32.i, %111
  %div.i.i35.i = sdiv i32 %add.i.i33.i, %mul7.i.i.i
  %mul8.i.i36.i = mul i32 %sign.1.i.i31.i, %div.i.i35.i
  %142 = trunc i32 %mul8.i.i36.i to i8
  %conv56.i = add i8 %140, %142
  %143 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv56.i, ptr %arrayidx39.i, align 1
  %pa_det.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 2, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 3
  %144 = ptrtoint ptr %pa_det.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %pa_det.i, align 1
  %conv58.i = sext i8 %145 to i32
  %pa_det59.i = getelementptr %struct.il_eeprom_calib_info, ptr %113, i32 0, i32 3, i32 %b.0.lcssa.i.ph.i, i32 3, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 3
  %146 = ptrtoint ptr %pa_det59.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %pa_det59.i, align 1
  %conv60.i = sext i8 %147 to i32
  %sub1.i43.i = sub nsw i32 %conv58.i, %conv60.i
  %mul.i44.i = mul nsw i32 %sub1.i43.i, %sub.i.i
  %148 = tail call i32 @llvm.abs.i32(i32 %mul.i44.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul.i44.i)
  %cmp.inv.i.i46.i = icmp sgt i32 %mul.i44.i, -1
  %spec.select1.i.i47.i = select i1 %cmp.inv.i.i46.i, i32 1, i32 -1
  %sub4.i.i49.i = sub nsw i32 0, %spec.select1.i.i47.i
  %sign.1.i.i50.i = select i1 %cmp2.i.i.i, i32 %sub4.i.i49.i, i32 %spec.select1.i.i47.i
  %mul.i.i51.i = shl nsw i32 %148, 1
  %add.i.i52.i = add nsw i32 %mul.i.i51.i, %111
  %div.i.i54.i = sdiv i32 %add.i.i52.i, %mul7.i.i.i
  %mul8.i.i55.i = mul i32 %sign.1.i.i50.i, %div.i.i54.i
  %add.i56.i = add i32 %mul8.i.i55.i, %conv60.i
  br label %il4965_interpolate_value.exit59.i

il4965_interpolate_value.exit59.i:                ; preds = %if.else.i57.i, %il4965_interpolate_value.exit40.thread.i
  %pa_det59120.i = phi ptr [ %pa_det59.i, %if.else.i57.i ], [ %pa_det59113.i, %il4965_interpolate_value.exit40.thread.i ]
  %pa_det119.i = phi ptr [ %pa_det.i, %if.else.i57.i ], [ %pa_det111.i, %il4965_interpolate_value.exit40.thread.i ]
  %gain_idx4792101118.i = phi ptr [ %gain_idx47.i, %if.else.i57.i ], [ %gain_idx4788.i, %il4965_interpolate_value.exit40.thread.i ]
  %gain_idx91102117.i = phi ptr [ %gain_idx.i, %if.else.i57.i ], [ %gain_idx86.i, %il4965_interpolate_value.exit40.thread.i ]
  %conv4490103116.i = phi i8 [ %conv44.i, %if.else.i57.i ], [ %115, %il4965_interpolate_value.exit40.thread.i ]
  %gain_idx51104115.i = phi ptr [ %gain_idx51.i, %if.else.i57.i ], [ %gain_idx5198.i, %il4965_interpolate_value.exit40.thread.i ]
  %retval.0.i58.i = phi i32 [ %add.i56.i, %if.else.i57.i ], [ %conv58112129.i, %il4965_interpolate_value.exit40.thread.i ]
  %conv62.i = trunc i32 %retval.0.i58.i to i8
  %pa_det63.i = getelementptr %struct.il_eeprom_calib_ch_info, ptr %ch_eeprom_info, i32 0, i32 1, i32 %c.0127.i, i32 %m.0121.i, i32 3
  %149 = ptrtoint ptr %pa_det63.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv62.i, ptr %pa_det63.i, align 1
  %150 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i61.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i61.i, label %if.else.i62.i, label %il4965_interpolate_value.exit59.i.il_get_debug_level.exit64.i_crit_edge

il4965_interpolate_value.exit59.i.il_get_debug_level.exit64.i_crit_edge: ; preds = %il4965_interpolate_value.exit59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit64.i

if.else.i62.i:                                    ; preds = %il4965_interpolate_value.exit59.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %152 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit64.i

il_get_debug_level.exit64.i:                      ; preds = %if.else.i62.i, %il4965_interpolate_value.exit59.i.il_get_debug_level.exit64.i_crit_edge
  %retval.0.i63.i = phi i32 [ %152, %if.else.i62.i ], [ %151, %il4965_interpolate_value.exit59.i.il_get_debug_level.exit64.i_crit_edge ]
  %and66.i = and i32 %retval.0.i63.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %il_get_debug_level.exit64.i.do.body84.i_crit_edge, label %do.end71.i

il_get_debug_level.exit64.i.do.body84.i_crit_edge: ; preds = %il_get_debug_level.exit64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body84.i

do.end71.i:                                       ; preds = %il_get_debug_level.exit64.i
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %il, align 8
  %wiphy73.i = getelementptr inbounds %struct.ieee80211_hw, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %wiphy73.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %wiphy73.i, align 8
  %dev74.i = getelementptr inbounds %struct.wiphy, ptr %156, i32 0, i32 56
  %157 = ptrtoint ptr %actual_pow.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %actual_pow.i, align 1
  %conv76.i = zext i8 %158 to i32
  %159 = ptrtoint ptr %actual_pow41.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %actual_pow41.i, align 1
  %conv78.i = zext i8 %160 to i32
  %conv80.i = zext i8 %conv4490103116.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.135, i32 noundef %c.0127.i, i32 noundef %m.0121.i, i32 noundef %conv76.i, i32 noundef %conv78.i, i32 noundef %conv80.i) #12
  br label %do.body84.i

do.body84.i:                                      ; preds = %do.end71.i, %il_get_debug_level.exit64.i.do.body84.i_crit_edge
  %161 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i66.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i66.i, label %if.else.i67.i, label %do.body84.i.il_get_debug_level.exit69.i_crit_edge

do.body84.i.il_get_debug_level.exit69.i_crit_edge: ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit69.i

if.else.i67.i:                                    ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %163 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit69.i

il_get_debug_level.exit69.i:                      ; preds = %if.else.i67.i, %do.body84.i.il_get_debug_level.exit69.i_crit_edge
  %retval.0.i68.i = phi i32 [ %163, %if.else.i67.i ], [ %162, %do.body84.i.il_get_debug_level.exit69.i_crit_edge ]
  %and86.i = and i32 %retval.0.i68.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %il_get_debug_level.exit69.i.do.body104.i_crit_edge, label %do.end91.i

il_get_debug_level.exit69.i.do.body104.i_crit_edge: ; preds = %il_get_debug_level.exit69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body104.i

do.end91.i:                                       ; preds = %il_get_debug_level.exit69.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %il, align 8
  %wiphy93.i = getelementptr inbounds %struct.ieee80211_hw, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %wiphy93.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wiphy93.i, align 8
  %dev94.i = getelementptr inbounds %struct.wiphy, ptr %167, i32 0, i32 56
  %168 = ptrtoint ptr %gain_idx91102117.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %gain_idx91102117.i, align 1
  %conv96.i = zext i8 %169 to i32
  %170 = ptrtoint ptr %gain_idx4792101118.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %gain_idx4792101118.i, align 1
  %conv98.i = zext i8 %171 to i32
  %172 = ptrtoint ptr %gain_idx51104115.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %gain_idx51104115.i, align 1
  %conv100.i = zext i8 %173 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94.i, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.135, i32 noundef %c.0127.i, i32 noundef %m.0121.i, i32 noundef %conv96.i, i32 noundef %conv98.i, i32 noundef %conv100.i) #12
  br label %do.body104.i

do.body104.i:                                     ; preds = %do.end91.i, %il_get_debug_level.exit69.i.do.body104.i_crit_edge
  %174 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i71.i = icmp eq i32 %175, 0
  br i1 %tobool.not.i71.i, label %if.else.i72.i, label %do.body104.i.il_get_debug_level.exit74.i_crit_edge

do.body104.i.il_get_debug_level.exit74.i_crit_edge: ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit74.i

if.else.i72.i:                                    ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %176 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit74.i

il_get_debug_level.exit74.i:                      ; preds = %if.else.i72.i, %do.body104.i.il_get_debug_level.exit74.i_crit_edge
  %retval.0.i73.i = phi i32 [ %176, %if.else.i72.i ], [ %175, %do.body104.i.il_get_debug_level.exit74.i_crit_edge ]
  %and106.i = and i32 %retval.0.i73.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %il_get_debug_level.exit74.i.do.body124.i_crit_edge, label %do.end111.i

il_get_debug_level.exit74.i.do.body124.i_crit_edge: ; preds = %il_get_debug_level.exit74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body124.i

do.end111.i:                                      ; preds = %il_get_debug_level.exit74.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %il, align 8
  %wiphy113.i = getelementptr inbounds %struct.ieee80211_hw, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %wiphy113.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %wiphy113.i, align 8
  %dev114.i = getelementptr inbounds %struct.wiphy, ptr %180, i32 0, i32 56
  %181 = ptrtoint ptr %pa_det119.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %pa_det119.i, align 1
  %conv116.i = sext i8 %182 to i32
  %183 = ptrtoint ptr %pa_det59120.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %pa_det59120.i, align 1
  %conv118.i = sext i8 %184 to i32
  %185 = ptrtoint ptr %pa_det63.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %pa_det63.i, align 1
  %conv120.i = sext i8 %186 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.135, i32 noundef %c.0127.i, i32 noundef %m.0121.i, i32 noundef %conv116.i, i32 noundef %conv118.i, i32 noundef %conv120.i) #12
  br label %do.body124.i

do.body124.i:                                     ; preds = %do.end111.i, %il_get_debug_level.exit74.i.do.body124.i_crit_edge
  %187 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i76.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i76.i, label %if.else.i77.i, label %do.body124.i.il_get_debug_level.exit79.i_crit_edge

do.body124.i.il_get_debug_level.exit79.i_crit_edge: ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit79.i

if.else.i77.i:                                    ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %189 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit79.i

il_get_debug_level.exit79.i:                      ; preds = %if.else.i77.i, %do.body124.i.il_get_debug_level.exit79.i_crit_edge
  %retval.0.i78.i = phi i32 [ %189, %if.else.i77.i ], [ %188, %do.body124.i.il_get_debug_level.exit79.i_crit_edge ]
  %and126.i = and i32 %retval.0.i78.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %il_get_debug_level.exit79.i.for.inc.i_crit_edge, label %do.end131.i

il_get_debug_level.exit79.i.for.inc.i_crit_edge:  ; preds = %il_get_debug_level.exit79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end131.i:                                      ; preds = %il_get_debug_level.exit79.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %il, align 8
  %wiphy133.i = getelementptr inbounds %struct.ieee80211_hw, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %wiphy133.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %wiphy133.i, align 8
  %dev134.i = getelementptr inbounds %struct.wiphy, ptr %193, i32 0, i32 56
  %194 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx29.i, align 1
  %conv136.i = zext i8 %195 to i32
  %196 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx36.i, align 1
  %conv138.i = zext i8 %197 to i32
  %198 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx39.i, align 1
  %conv140.i = zext i8 %199 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev134.i, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.135, i32 noundef %c.0127.i, i32 noundef %m.0121.i, i32 noundef %conv136.i, i32 noundef %conv138.i, i32 noundef %conv140.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end131.i, %il_get_debug_level.exit79.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %m.0121.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc144.i, label %for.inc.i.for.body23.i_crit_edge

for.inc.i.for.body23.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

for.inc144.i:                                     ; preds = %for.inc.i
  %inc145.i = add nuw nsw i32 %c.0127.i, 1
  %exitcond128.not.i = icmp eq i32 %inc145.i, 2
  br i1 %exitcond128.not.i, label %for.inc144.i.il4965_interpolate_chan.exit_crit_edge, label %for.inc144.i.for.cond20.preheader.i_crit_edge

for.inc144.i.for.cond20.preheader.i_crit_edge:    ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.preheader.i

for.inc144.i.il4965_interpolate_chan.exit_crit_edge: ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %il4965_interpolate_chan.exit

il4965_interpolate_chan.exit:                     ; preds = %for.inc144.i.il4965_interpolate_chan.exit_crit_edge, %do.end.i
  %200 = ptrtoint ptr %calib_info.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %calib_info.i.i, align 4
  %voltage86 = getelementptr inbounds %struct.il_eeprom_calib_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %voltage86 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 2)
  %203 = load i16, ptr %voltage86, align 1
  %204 = tail call i16 @llvm.bswap.i16(i16 %203)
  %voltage87 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 60, i32 11
  %205 = ptrtoint ptr %voltage87 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %voltage87, align 8
  %207 = tail call i32 @llvm.bswap.i32(i32 %206)
  %conv88 = sext i16 %204 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3880, i16 %203)
  %cmp.i454 = icmp eq i16 %203, -3880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254214145, i32 %206)
  %cmp1.i = icmp eq i32 %206, -254214145
  %or.cond.i = or i1 %cmp.i454, %cmp1.i
  br i1 %or.cond.i, label %il4965_interpolate_chan.exit.il4965_get_voltage_compensation.exit_crit_edge, label %if.end.i457

il4965_interpolate_chan.exit.il4965_get_voltage_compensation.exit_crit_edge: ; preds = %il4965_interpolate_chan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %il4965_get_voltage_compensation.exit

if.end.i457:                                      ; preds = %il4965_interpolate_chan.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %207, %conv88
  %208 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #9
  %mul.i.i455 = shl i32 %208, 1
  %add.i.i = add i32 %mul.i.i455, 7
  %div.i.i = sdiv i32 %add.i.i, 14
  %209 = sub nsw i32 0, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.inv.i18.i = icmp slt i32 %sub.i, 0
  %210 = select i1 %cmp.inv.i18.i, i32 %209, i32 %div.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %207, i32 %conv88)
  %cmp2.i = icmp sgt i32 %207, %conv88
  %mul.i = zext i1 %cmp2.i to i32
  %spec.select.i456 = shl nsw i32 %210, %mul.i
  %211 = add i32 %spec.select.i456, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %211)
  %212 = icmp ult i32 %211, -5
  %spec.select17.i = select i1 %212, i32 0, i32 %spec.select.i456
  br label %il4965_get_voltage_compensation.exit

il4965_get_voltage_compensation.exit:             ; preds = %if.end.i457, %il4965_interpolate_chan.exit.il4965_get_voltage_compensation.exit_crit_edge
  %retval.0.i458 = phi i32 [ 0, %il4965_interpolate_chan.exit.il4965_get_voltage_compensation.exit_crit_edge ], [ %spec.select17.i, %if.end.i457 ]
  %213 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool.not.i460 = icmp eq i32 %214, 0
  br i1 %tobool.not.i460, label %if.else.i461, label %il4965_get_voltage_compensation.exit.il_get_debug_level.exit463_crit_edge

il4965_get_voltage_compensation.exit.il_get_debug_level.exit463_crit_edge: ; preds = %il4965_get_voltage_compensation.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit463

if.else.i461:                                     ; preds = %il4965_get_voltage_compensation.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %215 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit463

il_get_debug_level.exit463:                       ; preds = %if.else.i461, %il4965_get_voltage_compensation.exit.il_get_debug_level.exit463_crit_edge
  %retval.0.i462 = phi i32 [ %215, %if.else.i461 ], [ %214, %il4965_get_voltage_compensation.exit.il_get_debug_level.exit463_crit_edge ]
  %and92 = and i32 %retval.0.i462, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %il_get_debug_level.exit463.do.end104_crit_edge, label %do.end97

il_get_debug_level.exit463.do.end104_crit_edge:   ; preds = %il_get_debug_level.exit463
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104

do.end97:                                         ; preds = %il_get_debug_level.exit463
  call void @__sanitizer_cov_trace_pc() #11
  %216 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %il, align 8
  %wiphy99 = getelementptr inbounds %struct.ieee80211_hw, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %wiphy99 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %wiphy99, align 8
  %dev100 = getelementptr inbounds %struct.wiphy, ptr %219, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.102, i32 noundef %207, i32 noundef %conv88, i32 noundef %retval.0.i458) #12
  br label %do.end104

do.end104:                                        ; preds = %do.end97, %il_get_debug_level.exit463.do.end104_crit_edge
  %temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %220 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %temperature, align 8
  %222 = tail call i32 @llvm.smin.i32(i32 %221, i32 410)
  %add8.i = add i32 %222, -273
  %arrayidx = getelementptr [5 x %struct.il4965_txpower_comp_entry], ptr @tx_power_cmp_tble, i32 0, i32 %retval.0.i446.ph
  %223 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx, align 4
  %degrees_per_05db_a_denom = getelementptr [5 x %struct.il4965_txpower_comp_entry], ptr @tx_power_cmp_tble, i32 0, i32 %retval.0.i446.ph, i32 1
  %225 = ptrtoint ptr %degrees_per_05db_a_denom to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %degrees_per_05db_a_denom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %cmp2.i464 = icmp slt i32 %224, 0
  %227 = tail call i32 @llvm.abs.i32(i32 %224, i1 false) #9
  %mul7.i = shl i32 %227, 1
  %228 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %0, align 1
  %conv122 = zext i8 %229 to i32
  %sub123 = sub i32 %add8.i, %conv122
  %mul124 = mul i32 %sub123, %226
  %230 = tail call i32 @llvm.abs.i32(i32 %mul124, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul124)
  %cmp.inv.i = icmp sgt i32 %mul124, -1
  %spec.select1.i = select i1 %cmp.inv.i, i32 1, i32 -1
  %sub4.i = sub nsw i32 0, %spec.select1.i
  %sign.1.i = select i1 %cmp2.i464, i32 %sub4.i, i32 %spec.select1.i
  %mul.i465 = shl i32 %230, 1
  %add.i = add i32 %mul.i465, %227
  %div.i = sdiv i32 %add.i, %mul7.i
  %mul8.i = mul i32 %sign.1.i, %div.i
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %1, align 1
  %conv127 = zext i8 %232 to i32
  %233 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %2, align 1
  %conv129 = zext i8 %234 to i32
  %235 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.i467 = icmp eq i32 %236, 0
  br i1 %tobool.not.i467, label %if.else.i468, label %do.end104.il_get_debug_level.exit470_crit_edge

do.end104.il_get_debug_level.exit470_crit_edge:   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit470

if.else.i468:                                     ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %237 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit470

il_get_debug_level.exit470:                       ; preds = %if.else.i468, %do.end104.il_get_debug_level.exit470_crit_edge
  %retval.0.i469 = phi i32 [ %237, %if.else.i468 ], [ %236, %do.end104.il_get_debug_level.exit470_crit_edge ]
  %and133 = and i32 %retval.0.i469, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %il_get_debug_level.exit470.do.body145_crit_edge, label %do.end138

il_get_debug_level.exit470.do.body145_crit_edge:  ; preds = %il_get_debug_level.exit470
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body145

do.end138:                                        ; preds = %il_get_debug_level.exit470
  call void @__sanitizer_cov_trace_pc() #11
  %238 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %il, align 8
  %wiphy140 = getelementptr inbounds %struct.ieee80211_hw, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %wiphy140 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %wiphy140, align 8
  %dev141 = getelementptr inbounds %struct.wiphy, ptr %241, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev141, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.102, i32 noundef 0) #12
  br label %do.body145

do.body145:                                       ; preds = %do.end138, %il_get_debug_level.exit470.do.body145_crit_edge
  %242 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.not.i472 = icmp eq i32 %243, 0
  br i1 %tobool.not.i472, label %if.else.i473, label %do.body145.il_get_debug_level.exit475_crit_edge

do.body145.il_get_debug_level.exit475_crit_edge:  ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit475

if.else.i473:                                     ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %244 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit475

il_get_debug_level.exit475:                       ; preds = %if.else.i473, %do.body145.il_get_debug_level.exit475_crit_edge
  %retval.0.i474 = phi i32 [ %244, %if.else.i473 ], [ %243, %do.body145.il_get_debug_level.exit475_crit_edge ]
  %and147 = and i32 %retval.0.i474, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %il_get_debug_level.exit475.do.body160_crit_edge, label %do.end152

il_get_debug_level.exit475.do.body160_crit_edge:  ; preds = %il_get_debug_level.exit475
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

do.end152:                                        ; preds = %il_get_debug_level.exit475
  call void @__sanitizer_cov_trace_pc() #11
  %245 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %il, align 8
  %wiphy154 = getelementptr inbounds %struct.ieee80211_hw, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %wiphy154 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %wiphy154, align 8
  %dev155 = getelementptr inbounds %struct.wiphy, ptr %248, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.102, i32 noundef %conv122, i32 noundef %add8.i, i32 noundef %mul8.i) #12
  br label %do.body160

do.body160:                                       ; preds = %do.end152, %il_get_debug_level.exit475.do.body160_crit_edge
  %249 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.not.i477 = icmp eq i32 %250, 0
  br i1 %tobool.not.i477, label %if.else.i478, label %do.body160.il_get_debug_level.exit480_crit_edge

do.body160.il_get_debug_level.exit480_crit_edge:  ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit480

if.else.i478:                                     ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %251 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit480

il_get_debug_level.exit480:                       ; preds = %if.else.i478, %do.body160.il_get_debug_level.exit480_crit_edge
  %retval.0.i479 = phi i32 [ %251, %if.else.i478 ], [ %250, %do.body160.il_get_debug_level.exit480_crit_edge ]
  %and162 = and i32 %retval.0.i479, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %il_get_debug_level.exit480.for.inc_crit_edge, label %do.end167

il_get_debug_level.exit480.for.inc_crit_edge:     ; preds = %il_get_debug_level.exit480
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end167:                                        ; preds = %il_get_debug_level.exit480
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %il, align 8
  %wiphy169 = getelementptr inbounds %struct.ieee80211_hw, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wiphy169 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wiphy169, align 8
  %dev170 = getelementptr inbounds %struct.wiphy, ptr %255, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev170, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.102, i32 noundef %conv127, i32 noundef %conv129) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end167, %il_get_debug_level.exit480.for.inc_crit_edge
  %256 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %3, align 1
  %conv122.1 = zext i8 %257 to i32
  %sub123.1 = sub i32 %add8.i, %conv122.1
  %mul124.1 = mul i32 %sub123.1, %226
  %258 = tail call i32 @llvm.abs.i32(i32 %mul124.1, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul124.1)
  %cmp.inv.i.1 = icmp sgt i32 %mul124.1, -1
  %spec.select1.i.1 = select i1 %cmp.inv.i.1, i32 1, i32 -1
  %sub4.i.1 = sub nsw i32 0, %spec.select1.i.1
  %sign.1.i.1 = select i1 %cmp2.i464, i32 %sub4.i.1, i32 %spec.select1.i.1
  %mul.i465.1 = shl i32 %258, 1
  %add.i.1 = add i32 %mul.i465.1, %227
  %div.i.1 = sdiv i32 %add.i.1, %mul7.i
  %mul8.i.1 = mul i32 %sign.1.i.1, %div.i.1
  %259 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %4, align 1
  %conv127.1 = zext i8 %260 to i32
  %261 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %5, align 1
  %conv129.1 = zext i8 %262 to i32
  %263 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool.not.i467.1 = icmp eq i32 %264, 0
  br i1 %tobool.not.i467.1, label %if.else.i468.1, label %for.inc.il_get_debug_level.exit470.1_crit_edge

for.inc.il_get_debug_level.exit470.1_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit470.1

if.else.i468.1:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %265 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit470.1

il_get_debug_level.exit470.1:                     ; preds = %if.else.i468.1, %for.inc.il_get_debug_level.exit470.1_crit_edge
  %retval.0.i469.1 = phi i32 [ %265, %if.else.i468.1 ], [ %264, %for.inc.il_get_debug_level.exit470.1_crit_edge ]
  %and133.1 = and i32 %retval.0.i469.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.1)
  %tobool134.not.1 = icmp eq i32 %and133.1, 0
  br i1 %tobool134.not.1, label %il_get_debug_level.exit470.1.do.body145.1_crit_edge, label %do.end138.1

il_get_debug_level.exit470.1.do.body145.1_crit_edge: ; preds = %il_get_debug_level.exit470.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body145.1

do.end138.1:                                      ; preds = %il_get_debug_level.exit470.1
  call void @__sanitizer_cov_trace_pc() #11
  %266 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %il, align 8
  %wiphy140.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %wiphy140.1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %wiphy140.1, align 8
  %dev141.1 = getelementptr inbounds %struct.wiphy, ptr %269, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev141.1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.102, i32 noundef 1) #12
  br label %do.body145.1

do.body145.1:                                     ; preds = %do.end138.1, %il_get_debug_level.exit470.1.do.body145.1_crit_edge
  %270 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.i472.1 = icmp eq i32 %271, 0
  br i1 %tobool.not.i472.1, label %if.else.i473.1, label %do.body145.1.il_get_debug_level.exit475.1_crit_edge

do.body145.1.il_get_debug_level.exit475.1_crit_edge: ; preds = %do.body145.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit475.1

if.else.i473.1:                                   ; preds = %do.body145.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %272 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit475.1

il_get_debug_level.exit475.1:                     ; preds = %if.else.i473.1, %do.body145.1.il_get_debug_level.exit475.1_crit_edge
  %retval.0.i474.1 = phi i32 [ %272, %if.else.i473.1 ], [ %271, %do.body145.1.il_get_debug_level.exit475.1_crit_edge ]
  %and147.1 = and i32 %retval.0.i474.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147.1)
  %tobool148.not.1 = icmp eq i32 %and147.1, 0
  br i1 %tobool148.not.1, label %il_get_debug_level.exit475.1.do.body160.1_crit_edge, label %do.end152.1

il_get_debug_level.exit475.1.do.body160.1_crit_edge: ; preds = %il_get_debug_level.exit475.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160.1

do.end152.1:                                      ; preds = %il_get_debug_level.exit475.1
  call void @__sanitizer_cov_trace_pc() #11
  %273 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %il, align 8
  %wiphy154.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %wiphy154.1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %wiphy154.1, align 8
  %dev155.1 = getelementptr inbounds %struct.wiphy, ptr %276, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155.1, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.102, i32 noundef %conv122.1, i32 noundef %add8.i, i32 noundef %mul8.i.1) #12
  br label %do.body160.1

do.body160.1:                                     ; preds = %do.end152.1, %il_get_debug_level.exit475.1.do.body160.1_crit_edge
  %277 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool.not.i477.1 = icmp eq i32 %278, 0
  br i1 %tobool.not.i477.1, label %if.else.i478.1, label %do.body160.1.il_get_debug_level.exit480.1_crit_edge

do.body160.1.il_get_debug_level.exit480.1_crit_edge: ; preds = %do.body160.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit480.1

if.else.i478.1:                                   ; preds = %do.body160.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %279 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit480.1

il_get_debug_level.exit480.1:                     ; preds = %if.else.i478.1, %do.body160.1.il_get_debug_level.exit480.1_crit_edge
  %retval.0.i479.1 = phi i32 [ %279, %if.else.i478.1 ], [ %278, %do.body160.1.il_get_debug_level.exit480.1_crit_edge ]
  %and162.1 = and i32 %retval.0.i479.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.1)
  %tobool163.not.1 = icmp eq i32 %and162.1, 0
  br i1 %tobool163.not.1, label %il_get_debug_level.exit480.1.for.inc.1_crit_edge, label %do.end167.1

il_get_debug_level.exit480.1.for.inc.1_crit_edge: ; preds = %il_get_debug_level.exit480.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end167.1:                                      ; preds = %il_get_debug_level.exit480.1
  call void @__sanitizer_cov_trace_pc() #11
  %280 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %il, align 8
  %wiphy169.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %wiphy169.1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wiphy169.1, align 8
  %dev170.1 = getelementptr inbounds %struct.wiphy, ptr %283, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev170.1, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.102, i32 noundef %conv127.1, i32 noundef %conv129.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end167.1, %il_get_debug_level.exit480.1.for.inc.1_crit_edge
  %sub183 = add nsw i32 %reg_limit.1, -6
  %conv186 = zext i8 %saturation_power.1 to i32
  %conv235 = zext i8 %band to i32
  %pci_dev258 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %arrayidx222 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 16, i32 %retval.0.i446.ph, i32 0
  %arrayidx222.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 60, i32 16, i32 %retval.0.i446.ph, i32 1
  br label %for.body179

for.body179:                                      ; preds = %do.end296.1.for.body179_crit_edge, %for.inc.1
  %i.0504 = phi i32 [ 0, %for.inc.1 ], [ %inc302, %do.end296.1.for.body179_crit_edge ]
  %and180 = and i32 %i.0504, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  %current_regulatory.0 = select i1 %tobool181.not, i32 %reg_limit.1, i32 %sub183
  %arrayidx187 = getelementptr [33 x i32], ptr @back_off_table, i32 0, i32 %i.0504
  %284 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx187, align 4
  %sub188 = sub i32 %conv186, %285
  %286 = tail call i32 @llvm.smin.i32(i32 %sub188, i32 %current_regulatory.0)
  %287 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %286)
  %288 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool.not.i482 = icmp eq i32 %289, 0
  br i1 %tobool.not.i482, label %if.else.i483, label %for.body179.il_get_debug_level.exit485_crit_edge

for.body179.il_get_debug_level.exit485_crit_edge: ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit485

if.else.i483:                                     ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %290 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit485

il_get_debug_level.exit485:                       ; preds = %if.else.i483, %for.body179.il_get_debug_level.exit485_crit_edge
  %retval.0.i484 = phi i32 [ %290, %if.else.i483 ], [ %289, %for.body179.il_get_debug_level.exit485_crit_edge ]
  %and199 = and i32 %retval.0.i484, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %il_get_debug_level.exit485.do.end213_crit_edge, label %do.end204

il_get_debug_level.exit485.do.end213_crit_edge:   ; preds = %il_get_debug_level.exit485
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end213

do.end204:                                        ; preds = %il_get_debug_level.exit485
  call void @__sanitizer_cov_trace_pc() #11
  %291 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %il, align 8
  %wiphy206 = getelementptr inbounds %struct.ieee80211_hw, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %wiphy206 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %wiphy206, align 8
  %dev207 = getelementptr inbounds %struct.wiphy, ptr %294, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev207, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.102, i32 noundef %i.0504, i32 noundef %sub188, i32 noundef %current_regulatory.0, i32 noundef %mul, i32 noundef %287) #12
  br label %do.end213

do.end213:                                        ; preds = %do.end204, %il_get_debug_level.exit485.do.end213_crit_edge
  %295 = add i32 %287, %retval.0.i458
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.0504)
  %cmp247 = icmp eq i32 %i.0504, 32
  br i1 %tobool181.not, label %do.end213.if.end224_crit_edge, label %if.then219

do.end213.if.end224_crit_edge:                    ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then219:                                       ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #11
  %296 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx222, align 4
  %298 = tail call i32 @llvm.bswap.i32(i32 %297)
  br label %if.end224

if.end224:                                        ; preds = %if.then219, %do.end213.if.end224_crit_edge
  %atten_value.0 = phi i32 [ %298, %if.then219 ], [ 0, %do.end213.if.end224_crit_edge ]
  %.neg498 = sub i32 %atten_value.0, %295
  %299 = add i32 %.neg498, %conv127
  %sub231 = add i32 %299, %conv129
  %add232 = sub i32 %sub231, %mul8.i
  %conv234 = and i32 %add232, 255
  %add245 = add nuw nsw i32 %conv234, 9
  %power_idx.1 = select i1 %tobool47.not, i32 %add245, i32 %conv234
  %add250 = add nuw nsw i32 %power_idx.1, 5
  %power_idx.2 = select i1 %cmp247, i32 %add250, i32 %power_idx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %power_idx.2)
  %cmp252 = icmp ugt i32 %power_idx.2, 107
  br i1 %cmp252, label %do.end257, label %if.end224.if.end269_crit_edge

if.end224.if.end269_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269

do.end257:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %pci_dev258 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %pci_dev258, align 8
  %dev259 = getelementptr inbounds %struct.pci_dev, ptr %301, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev259, ptr noundef nonnull @.str.125, i32 noundef %power_idx.2) #12
  br label %if.end269

if.end269:                                        ; preds = %do.end257, %if.end224.if.end269_crit_edge
  %power_idx.3 = phi i32 [ 107, %do.end257 ], [ %power_idx.2, %if.end224.if.end269_crit_edge ]
  %arrayidx271 = getelementptr [2 x [108 x %struct.gain_entry]], ptr @gain_table, i32 0, i32 %conv235, i32 %power_idx.3
  %radio = getelementptr [2 x [108 x %struct.gain_entry]], ptr @gain_table, i32 0, i32 %conv235, i32 %power_idx.3, i32 1
  %302 = ptrtoint ptr %radio to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %radio, align 1
  %304 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx271, align 1
  %306 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool.not.i487 = icmp eq i32 %307, 0
  br i1 %tobool.not.i487, label %if.else.i488, label %if.end269.il_get_debug_level.exit490_crit_edge

if.end269.il_get_debug_level.exit490_crit_edge:   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit490

if.else.i488:                                     ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %308 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit490

il_get_debug_level.exit490:                       ; preds = %if.else.i488, %if.end269.il_get_debug_level.exit490_crit_edge
  %retval.0.i489 = phi i32 [ %308, %if.else.i488 ], [ %307, %if.end269.il_get_debug_level.exit490_crit_edge ]
  %and279 = and i32 %retval.0.i489, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  br i1 %tobool280.not, label %il_get_debug_level.exit490.do.end296_crit_edge, label %do.end284

il_get_debug_level.exit490.do.end296_crit_edge:   ; preds = %il_get_debug_level.exit490
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end296

do.end284:                                        ; preds = %il_get_debug_level.exit490
  call void @__sanitizer_cov_trace_pc() #11
  %309 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %il, align 8
  %wiphy286 = getelementptr inbounds %struct.ieee80211_hw, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %wiphy286 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %wiphy286, align 8
  %dev287 = getelementptr inbounds %struct.wiphy, ptr %312, i32 0, i32 56
  %conv290 = zext i8 %303 to i32
  %conv293 = zext i8 %305 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev287, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.102, i32 noundef 0, i32 noundef %atten_value.0, i32 noundef %power_idx.3, i32 noundef %conv290, i32 noundef %conv293) #12
  br label %do.end296

do.end296:                                        ; preds = %do.end284, %il_get_debug_level.exit490.do.end296_crit_edge
  br i1 %tobool181.not, label %do.end296.if.end224.1_crit_edge, label %if.then219.1

do.end296.if.end224.1_crit_edge:                  ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224.1

if.then219.1:                                     ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #11
  %313 = ptrtoint ptr %arrayidx222.1 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx222.1, align 4
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  br label %if.end224.1

if.end224.1:                                      ; preds = %if.then219.1, %do.end296.if.end224.1_crit_edge
  %atten_value.0.1 = phi i32 [ %315, %if.then219.1 ], [ 0, %do.end296.if.end224.1_crit_edge ]
  %.neg498.1 = sub i32 %atten_value.0.1, %295
  %316 = add i32 %.neg498.1, %conv127.1
  %sub231.1 = add i32 %316, %conv129.1
  %add232.1 = sub i32 %sub231.1, %mul8.i.1
  %conv234.1 = and i32 %add232.1, 255
  %add245.1 = add nuw nsw i32 %conv234.1, 9
  %power_idx.1.1 = select i1 %tobool47.not, i32 %add245.1, i32 %conv234.1
  %add250.1 = add nuw nsw i32 %power_idx.1.1, 5
  %power_idx.2.1 = select i1 %cmp247, i32 %add250.1, i32 %power_idx.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %power_idx.2.1)
  %cmp252.1 = icmp ugt i32 %power_idx.2.1, 107
  br i1 %cmp252.1, label %do.end257.1, label %if.end224.1.if.end269.1_crit_edge

if.end224.1.if.end269.1_crit_edge:                ; preds = %if.end224.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end269.1

do.end257.1:                                      ; preds = %if.end224.1
  call void @__sanitizer_cov_trace_pc() #11
  %317 = ptrtoint ptr %pci_dev258 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %pci_dev258, align 8
  %dev259.1 = getelementptr inbounds %struct.pci_dev, ptr %318, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev259.1, ptr noundef nonnull @.str.125, i32 noundef %power_idx.2.1) #12
  br label %if.end269.1

if.end269.1:                                      ; preds = %do.end257.1, %if.end224.1.if.end269.1_crit_edge
  %power_idx.3.1 = phi i32 [ 107, %do.end257.1 ], [ %power_idx.2.1, %if.end224.1.if.end269.1_crit_edge ]
  %arrayidx271.1 = getelementptr [2 x [108 x %struct.gain_entry]], ptr @gain_table, i32 0, i32 %conv235, i32 %power_idx.3.1
  %radio.1 = getelementptr [2 x [108 x %struct.gain_entry]], ptr @gain_table, i32 0, i32 %conv235, i32 %power_idx.3.1, i32 1
  %319 = ptrtoint ptr %radio.1 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %radio.1, align 1
  %321 = ptrtoint ptr %arrayidx271.1 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx271.1, align 1
  %323 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool.not.i487.1 = icmp eq i32 %324, 0
  br i1 %tobool.not.i487.1, label %if.else.i488.1, label %if.end269.1.il_get_debug_level.exit490.1_crit_edge

if.end269.1.il_get_debug_level.exit490.1_crit_edge: ; preds = %if.end269.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %il_get_debug_level.exit490.1

if.else.i488.1:                                   ; preds = %if.end269.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %325 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit490.1

il_get_debug_level.exit490.1:                     ; preds = %if.else.i488.1, %if.end269.1.il_get_debug_level.exit490.1_crit_edge
  %retval.0.i489.1 = phi i32 [ %325, %if.else.i488.1 ], [ %324, %if.end269.1.il_get_debug_level.exit490.1_crit_edge ]
  %and279.1 = and i32 %retval.0.i489.1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279.1)
  %tobool280.not.1 = icmp eq i32 %and279.1, 0
  br i1 %tobool280.not.1, label %il_get_debug_level.exit490.1.do.end296.1_crit_edge, label %do.end284.1

il_get_debug_level.exit490.1.do.end296.1_crit_edge: ; preds = %il_get_debug_level.exit490.1
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i8 %322 to i32
  %.pre506 = zext i8 %320 to i32
  br label %do.end296.1

do.end284.1:                                      ; preds = %il_get_debug_level.exit490.1
  call void @__sanitizer_cov_trace_pc() #11
  %326 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %il, align 8
  %wiphy286.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %327, i32 0, i32 1
  %328 = ptrtoint ptr %wiphy286.1 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %wiphy286.1, align 8
  %dev287.1 = getelementptr inbounds %struct.wiphy, ptr %329, i32 0, i32 56
  %conv290.1 = zext i8 %320 to i32
  %conv293.1 = zext i8 %322 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev287.1, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.102, i32 noundef 1, i32 noundef %atten_value.0.1, i32 noundef %power_idx.3.1, i32 noundef %conv290.1, i32 noundef %conv293.1) #12
  br label %do.end296.1

do.end296.1:                                      ; preds = %do.end284.1, %il_get_debug_level.exit490.1.do.end296.1_crit_edge
  %tx_power.sroa.5.0.insert.ext.pre-phi = phi i32 [ %.pre506, %il_get_debug_level.exit490.1.do.end296.1_crit_edge ], [ %conv290.1, %do.end284.1 ]
  %tx_power.sroa.7.0.insert.ext.pre-phi = phi i32 [ %.pre, %il_get_debug_level.exit490.1.do.end296.1_crit_edge ], [ %conv293.1, %do.end284.1 ]
  %tx_power.sroa.6.0.insert.ext = zext i8 %305 to i32
  %tx_power.sroa.6.0.insert.shift = shl nuw nsw i32 %tx_power.sroa.6.0.insert.ext, 8
  %tx_power.sroa.6.0.insert.insert = or i32 %tx_power.sroa.7.0.insert.ext.pre-phi, %tx_power.sroa.6.0.insert.shift
  %tx_power.sroa.5.0.insert.shift = shl nuw nsw i32 %tx_power.sroa.5.0.insert.ext.pre-phi, 16
  %tx_power.sroa.5.0.insert.insert = or i32 %tx_power.sroa.6.0.insert.insert, %tx_power.sroa.5.0.insert.shift
  %tx_power.sroa.0.0.insert.ext = zext i8 %303 to i32
  %tx_power.sroa.0.0.insert.shift = shl nuw i32 %tx_power.sroa.0.0.insert.ext, 24
  %tx_power.sroa.0.0.insert.insert = or i32 %tx_power.sroa.5.0.insert.insert, %tx_power.sroa.0.0.insert.shift
  %330 = tail call i32 @llvm.bswap.i32(i32 %tx_power.sroa.0.0.insert.insert)
  %arrayidx300 = getelementptr [33 x %struct.tx_power_dual_stream], ptr %tx_power_tbl, i32 0, i32 %i.0504
  %331 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 %330, ptr %arrayidx300, align 1
  %inc302 = add nuw nsw i32 %i.0504, 1
  %exitcond.not = icmp eq i32 %inc302, 33
  br i1 %exitcond.not, label %do.end296.1.cleanup_crit_edge, label %do.end296.1.for.body179_crit_edge

do.end296.1.for.body179_crit_edge:                ; preds = %do.end296.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body179

do.end296.1.cleanup_crit_edge:                    ; preds = %do.end296.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end296.1.cleanup_crit_edge, %do.end18, %il_is_channel_valid.exit.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %il_is_channel_valid.exit.cleanup_crit_edge ], [ -22, %do.end6.cleanup_crit_edge ], [ 0, %do.end296.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %ch_eeprom_info) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd_pdu_async(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_check_rxon_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_chswitch_done(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_full_rxon_required(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_print_rx_config_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_set_tx_power(ptr noundef, i8 noundef signext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_clear_ucode_stations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_restore_stations(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_restore_default_wep_keys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_set_rxon_hwcrypto(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il4965_init_sensitivity(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_scan_cancel_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_rxon_timing(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_set_rxon_ht(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il4965_send_beacon_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !246, !248, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !300, !301, !303, !304, !305, !307, !308, !309, !310, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335}
!llvm.module.flags = !{!336, !337, !338, !339, !340, !341, !342, !343}
!llvm.ident = !{!344}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 115, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @il4965_verify_ucode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @il4965_verify_ucode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 124, i32 3}
!10 = !{ptr @il4965_verify_ucode._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @il4965_verify_ucode._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 133, i32 3}
!14 = !{ptr @il4965_verify_ucode._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @il4965_verify_ucode._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 137, i32 2}
!18 = !{ptr @il4965_verify_ucode._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @il4965_verify_ucode._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 206, i32 2}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @il4965_eeprom_check_version._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @il4965_eeprom_check_version._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 210, i32 2}
!28 = !{ptr @il4965_eeprom_check_version._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @il4965_eeprom_check_version._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1672, i32 4}
!32 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @il4965_temperature_calib._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @il4965_temperature_calib._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1676, i32 4}
!37 = !{ptr @il4965_temperature_calib._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @il4965_temperature_calib._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @il4965_ops, !40, !"il4965_ops", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1856, i32 21}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1891, i32 10}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1892, i32 17}
!45 = !{ptr @il4965_cfg, !46, !"il4965_cfg", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1890, i32 15}
!47 = !{ptr @__UNIQUE_ID_firmware354, !48, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1935, i32 1}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 41, i32 2}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @il4965_verify_inst_sparse._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @il4965_verify_inst_sparse._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 72, i32 2}
!56 = !{ptr @il4965_verify_inst_full._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @il4965_verify_inst_full._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 83, i32 4}
!60 = !{ptr @il4965_verify_inst_full._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @il4965_verify_inst_full._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 94, i32 3}
!64 = !{ptr @il4965_verify_inst_full._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @il4965_verify_inst_full._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1571, i32 3}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @il4965_hw_get_temperature._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @il4965_hw_get_temperature._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1577, i32 3}
!73 = !{ptr @il4965_hw_get_temperature._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @il4965_hw_get_temperature._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1598, i32 2}
!77 = !{ptr @il4965_hw_get_temperature._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @il4965_hw_get_temperature._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1601, i32 3}
!81 = !{ptr @il4965_hw_get_temperature._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @il4965_hw_get_temperature._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1612, i32 2}
!85 = !{ptr @il4965_hw_get_temperature._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @il4965_hw_get_temperature._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1636, i32 3}
!89 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @il4965_is_temp_calib_needed._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @il4965_is_temp_calib_needed._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1644, i32 3}
!94 = !{ptr @il4965_is_temp_calib_needed._entry.52, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @il4965_is_temp_calib_needed._entry_ptr.54, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1647, i32 3}
!98 = !{ptr @il4965_is_temp_calib_needed._entry.55, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @il4965_is_temp_calib_needed._entry_ptr.57, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1649, i32 3}
!102 = !{ptr @il4965_is_temp_calib_needed._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @il4965_is_temp_calib_needed._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1652, i32 3}
!106 = !{ptr @il4965_is_temp_calib_needed._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @il4965_is_temp_calib_needed._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1656, i32 2}
!110 = !{ptr @il4965_is_temp_calib_needed._entry.64, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @il4965_is_temp_calib_needed._entry_ptr.66, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 458, i32 3}
!114 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @il4965_init_alive_start._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @il4965_init_alive_start._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.70, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 468, i32 2}
!119 = !{ptr @il4965_init_alive_start._entry.69, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @il4965_init_alive_start._entry_ptr.71, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 472, i32 3}
!123 = !{ptr @il4965_init_alive_start._entry.72, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @il4965_init_alive_start._entry_ptr.74, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 433, i32 2}
!127 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @il4965_set_ucode_ptrs._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @il4965_set_ucode_ptrs._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.77, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 341, i32 2}
!132 = !{ptr @.str.78, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @il4965_load_bsm._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @il4965_load_bsm._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 392, i32 3}
!137 = !{ptr @il4965_load_bsm._entry.79, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @il4965_load_bsm._entry_ptr.81, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.83, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 394, i32 3}
!141 = !{ptr @il4965_load_bsm._entry.82, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @il4965_load_bsm._entry_ptr.84, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.85, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 274, i32 2}
!145 = !{ptr @.str.86, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @il4965_verify_bsm._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @il4965_verify_bsm._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.88, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 282, i32 4}
!150 = !{ptr @il4965_verify_bsm._entry.87, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @il4965_verify_bsm._entry_ptr.89, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 290, i32 2}
!154 = !{ptr @il4965_verify_bsm._entry.90, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @il4965_verify_bsm._entry_ptr.92, !153, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1471, i32 6}
!158 = !{ptr @.str.93, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1511, i32 2}
!160 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @il4965_hw_channel_switch._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @il4965_hw_channel_switch._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.96, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1516, i32 3}
!165 = !{ptr @il4965_hw_channel_switch._entry.95, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @il4965_hw_channel_switch._entry_ptr.97, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.99, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1524, i32 3}
!169 = !{ptr @il4965_hw_channel_switch._entry.98, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @il4965_hw_channel_switch._entry_ptr.100, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1036, i32 2}
!173 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @il4965_fill_txpower_tbl._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @il4965_fill_txpower_tbl._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.104, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1047, i32 3}
!178 = !{ptr @il4965_fill_txpower_tbl._entry.103, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.105, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.107, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1051, i32 2}
!182 = !{ptr @il4965_fill_txpower_tbl._entry.106, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.108, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.110, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1101, i32 2}
!186 = !{ptr @il4965_fill_txpower_tbl._entry.109, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.111, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1131, i32 3}
!190 = !{ptr @il4965_fill_txpower_tbl._entry.112, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.114, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.116, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1132, i32 3}
!194 = !{ptr @il4965_fill_txpower_tbl._entry.115, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.117, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.119, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1135, i32 3}
!198 = !{ptr @il4965_fill_txpower_tbl._entry.118, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.120, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.122, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1168, i32 3}
!202 = !{ptr @il4965_fill_txpower_tbl._entry.121, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.123, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.125, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1207, i32 5}
!206 = !{ptr @.str.126, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @il4965_fill_txpower_tbl._entry.124, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.127, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.129, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1211, i32 5}
!211 = !{ptr @il4965_fill_txpower_tbl._entry.128, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.130, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.132, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1221, i32 4}
!215 = !{ptr @il4965_fill_txpower_tbl._entry.131, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @il4965_fill_txpower_tbl._entry_ptr.133, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.134, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 680, i32 3}
!219 = !{ptr @.str.135, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @il4965_interpolate_chan._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @il4965_interpolate_chan._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.137, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 688, i32 2}
!224 = !{ptr @il4965_interpolate_chan._entry.136, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @il4965_interpolate_chan._entry_ptr.138, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.140, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 717, i32 4}
!228 = !{ptr @il4965_interpolate_chan._entry.139, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @il4965_interpolate_chan._entry_ptr.141, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.143, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 720, i32 4}
!232 = !{ptr @il4965_interpolate_chan._entry.142, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @il4965_interpolate_chan._entry_ptr.144, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.146, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 723, i32 4}
!236 = !{ptr @il4965_interpolate_chan._entry.145, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @il4965_interpolate_chan._entry_ptr.147, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.149, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 725, i32 4}
!240 = !{ptr @il4965_interpolate_chan._entry.148, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @il4965_interpolate_chan._entry_ptr.150, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @tx_power_cmp_tble, !243, !"tx_power_cmp_tble", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 749, i32 3}
!244 = !{ptr @back_off_table, !245, !"back_off_table", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 736, i32 12}
!246 = !{ptr @gain_table, !247, !"gain_table", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 777, i32 32}
!248 = distinct !{null, !249, !"__already_done", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1249, i32 6}
!250 = !{ptr @.str.151, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.152, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1295, i32 3}
!253 = !{ptr @.str.153, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @il4965_send_rxon_assoc._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @il4965_send_rxon_assoc._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.154, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1333, i32 3}
!258 = !{ptr @.str.155, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @il4965_commit_rxon._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @il4965_commit_rxon._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.157, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1343, i32 3}
!263 = !{ptr @il4965_commit_rxon._entry.156, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @il4965_commit_rxon._entry_ptr.158, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.160, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1354, i32 4}
!267 = !{ptr @il4965_commit_rxon._entry.159, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @il4965_commit_rxon._entry_ptr.161, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.163, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1373, i32 3}
!271 = !{ptr @il4965_commit_rxon._entry.162, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @il4965_commit_rxon._entry_ptr.164, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.166, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1384, i32 4}
!275 = !{ptr @il4965_commit_rxon._entry.165, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @il4965_commit_rxon._entry_ptr.167, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.169, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1391, i32 4}
!279 = !{ptr @il4965_commit_rxon._entry.168, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @il4965_commit_rxon._entry_ptr.170, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.172, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1396, i32 2}
!283 = !{ptr @il4965_commit_rxon._entry.171, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @il4965_commit_rxon._entry_ptr.173, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.174, !282, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.175, !282, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.177, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1411, i32 4}
!289 = !{ptr @il4965_commit_rxon._entry.176, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @il4965_commit_rxon._entry_ptr.178, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.180, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1414, i32 3}
!293 = !{ptr @il4965_commit_rxon._entry.179, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @il4965_commit_rxon._entry_ptr.181, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @il4965_commit_rxon._entry.182, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1420, i32 4}
!297 = !{ptr @il4965_commit_rxon._entry_ptr.183, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @il4965_commit_rxon._entry.184, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1433, i32 4}
!300 = !{ptr @il4965_commit_rxon._entry_ptr.185, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.187, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1446, i32 3}
!303 = !{ptr @il4965_commit_rxon._entry.186, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @il4965_commit_rxon._entry_ptr.188, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.189, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1750, i32 3}
!307 = !{ptr @.str.190, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @il4965_post_associate._entry, !306, !"_entry", i1 false, i1 false}
!309 = !{ptr @il4965_post_associate._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.192, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1761, i32 2}
!312 = !{ptr @il4965_post_associate._entry.191, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @il4965_post_associate._entry_ptr.193, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.195, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1778, i32 2}
!316 = !{ptr @il4965_post_associate._entry.194, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @il4965_post_associate._entry_ptr.196, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.198, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1788, i32 3}
!320 = !{ptr @il4965_post_associate._entry.197, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @il4965_post_associate._entry_ptr.199, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.200, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 546, i32 4}
!324 = !{ptr @.str.201, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @il4965_chain_noise_reset._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @il4965_chain_noise_reset._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.203, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 548, i32 3}
!329 = !{ptr @il4965_chain_noise_reset._entry.202, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @il4965_chain_noise_reset._entry_ptr.204, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.205, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/intel/iwlegacy/4965.c", i32 1825, i32 4}
!333 = !{ptr @.str.206, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @il4965_config_ap._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @il4965_config_ap._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{i32 1, !"wchar_size", i32 2}
!337 = !{i32 1, !"min_enum_size", i32 4}
!338 = !{i32 8, !"branch-target-enforcement", i32 0}
!339 = !{i32 8, !"sign-return-address", i32 0}
!340 = !{i32 8, !"sign-return-address-all", i32 0}
!341 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!342 = !{i32 7, !"uwtable", i32 1}
!343 = !{i32 7, !"frame-pointer", i32 2}
!344 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!345 = !{!"branch_weights", i32 2000, i32 1}
!346 = !{i64 2157971741}
!347 = !{i64 5029742}
!348 = !{i64 5030160}
!349 = !{i64 2157972571}
!350 = !{i8 0, i8 2}
!351 = !{!"branch_weights", i32 1, i32 2000}
