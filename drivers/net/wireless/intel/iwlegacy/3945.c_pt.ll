; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlegacy/3945.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlegacy/3945.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.il3945_rate_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.il_mod_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.il3945_tx_power = type { i8, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.il_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.il_cfg = type { ptr, ptr, i32, i32, i8, i8, i32, i16, i16, ptr, ptr, [6 x i8], i32, i32, i32, i32, i32, i8, i8, i16, i32, i32, i8, i8, i8, i8, [7 x i32] }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.il_rx_pkt = type { i32, %struct.il_cmd_header, %union.anon.132 }
%struct.il_cmd_header = type { i8, i8, i16, [0 x i8] }
%union.anon.132 = type { %struct.il_notif_stats }
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
%struct.il_tx_queue = type { %struct.il_queue, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.il_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.il3945_tfd = type { i32, [4 x %struct.il3945_tfd_tb], [28 x i8] }
%struct.il3945_tfd_tb = type { i32, i32 }
%struct.il_cmd_meta = type { ptr, ptr, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.147, [32 x i8] }
%struct.anon.147 = type { i64 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.il_device_cmd = type { %struct.il_cmd_header, %union.anon.129 }
%union.anon.129 = type { %struct.il_tx_cmd, [264 x i8] }
%struct.il_tx_cmd = type { i16, i16, i32, %struct.il_dram_scratch, i32, i8, i8, i8, i8, [16 x i8], i16, i16, %union.anon.130, i32, i8, i8, i8, i8, %union.anon.131, i16, [0 x i8], [0 x %struct.ieee80211_hdr] }
%struct.il_dram_scratch = type { i8, i8, i16 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { i16 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.il3945_tx_cmd = type { i16, i16, i32, i8, i8, i8, i8, [16 x i8], %union.anon.150, i32, %union.anon.151, [2 x i8], i8, i8, %union.anon.152, i16, %union.anon.153 }
%union.anon.150 = type { [2 x i32] }
%union.anon.151 = type { i32 }
%union.anon.152 = type { i16 }
%union.anon.153 = type { %struct.anon.156 }
%struct.anon.156 = type { %struct.anon.157, [0 x %struct.ieee80211_hdr] }
%struct.anon.157 = type {}
%struct.il3945_eeprom = type { [16 x i8], i16, [2 x i8], i16, [20 x i8], [6 x i8], [58 x i8], i16, [11 x i8], [9 x i8], [8 x i8], i16, i8, i8, i16, i16, i16, i8, i8, i8, i8, [42 x i8], [4 x i8], i16, [14 x %struct.il_eeprom_channel], i16, [13 x %struct.il_eeprom_channel], i16, [12 x %struct.il_eeprom_channel], i16, [11 x %struct.il_eeprom_channel], i16, [6 x %struct.il_eeprom_channel], [194 x i8], [5 x %struct.il3945_eeprom_txpower_group], %struct.il3945_eeprom_temperature_corr, [172 x i8] }
%struct.il_eeprom_channel = type { i8, i8 }
%struct.il3945_eeprom_txpower_group = type { [5 x %struct.il3945_eeprom_txpower_sample], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.il3945_eeprom_txpower_sample = type { i8, i8, i16 }
%struct.il3945_eeprom_temperature_corr = type { i32, i32, i32, i32, i32 }
%struct.il_channel_info = type { %struct.il4965_channel_tgd_info, %struct.il4965_channel_tgh_info, %struct.il_eeprom_channel, %struct.il_eeprom_channel, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, [33 x %struct.il3945_channel_power_info], [2 x %struct.il3945_scan_power_info] }
%struct.il4965_channel_tgd_info = type { i8, i8 }
%struct.il4965_channel_tgh_info = type { i64 }
%struct.il3945_channel_power_info = type { %struct.il3945_tx_power, i8, i8, i8 }
%struct.il3945_scan_power_info = type { %struct.il3945_tx_power, i8, i8 }
%struct.il3945_rate_scaling_cmd = type { i8, [3 x i8], [12 x %struct.il3945_rate_scaling_info] }
%struct.il3945_rate_scaling_info = type { i16, i8, i8 }
%struct.il3945_tx_beacon_cmd = type { %struct.il3945_tx_cmd, i16, i8, i8, [0 x %struct.ieee80211_hdr] }
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
%struct.il3945_tx_resp = type { i8, i8, i8, i8, i32, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.il3945_rx_frame_hdr = type { i16, i16, i8, i8, i16, [0 x i8] }
%struct.il3945_rx_frame_stats = type { i8, i8, i8, i8, i16, i16, [0 x i8] }
%struct.il3945_rx_frame_end = type <{ i32, i64, i32 }>
%struct.il3945_txpowertable_cmd = type { i8, i8, i16, [12 x %struct.il3945_power_per_rate] }
%struct.il3945_power_per_rate = type { i8, %struct.il3945_tx_power, i8 }
%struct.il3945_rxon_assoc_cmd = type { i32, i32, i8, i8, i16 }
%struct.il_host_cmd = type { ptr, i32, ptr, i32, i16, i8 }
%struct.il3945_addsta_cmd = type { i8, [3 x i8], %struct.sta_id_modify, %struct.il4965_keyinfo, i32, i32, i16, i16, i8, i8, i16 }
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

@il3945_rates = dso_local constant { [12 x %struct.il3945_rate_info], [40 x i8] } { [12 x %struct.il3945_rate_info] [%struct.il3945_rate_info { i8 10, i8 2, i8 13, i8 1, i8 13, i8 1, i8 13, i8 1, i8 8, i8 12 }, %struct.il3945_rate_info { i8 20, i8 4, i8 0, i8 2, i8 0, i8 2, i8 0, i8 2, i8 9, i8 8 }, %struct.il3945_rate_info { i8 55, i8 11, i8 1, i8 4, i8 1, i8 3, i8 1, i8 3, i8 10, i8 9 }, %struct.il3945_rate_info { i8 110, i8 22, i8 5, i8 6, i8 2, i8 6, i8 2, i8 7, i8 11, i8 1 }, %struct.il3945_rate_info { i8 13, i8 12, i8 2, i8 5, i8 2, i8 3, i8 2, i8 3, i8 0, i8 10 }, %struct.il3945_rate_info { i8 15, i8 18, i8 4, i8 3, i8 2, i8 3, i8 2, i8 3, i8 1, i8 0 }, %struct.il3945_rate_info { i8 5, i8 24, i8 3, i8 7, i8 3, i8 7, i8 3, i8 7, i8 2, i8 11 }, %struct.il3945_rate_info { i8 7, i8 36, i8 6, i8 8, i8 6, i8 8, i8 3, i8 8, i8 3, i8 2 }, %struct.il3945_rate_info { i8 9, i8 48, i8 7, i8 9, i8 7, i8 9, i8 7, i8 9, i8 4, i8 3 }, %struct.il3945_rate_info { i8 11, i8 72, i8 8, i8 10, i8 8, i8 10, i8 8, i8 10, i8 5, i8 4 }, %struct.il3945_rate_info { i8 1, i8 96, i8 9, i8 11, i8 9, i8 11, i8 9, i8 11, i8 6, i8 5 }, %struct.il3945_rate_info { i8 3, i8 108, i8 10, i8 13, i8 10, i8 13, i8 10, i8 13, i8 7, i8 6 }], [40 x i8] zeroinitializer }, align 32
@il3945_disable_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid event log pointer 0x%08X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"il3945_disable_events\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/intel/iwlegacy/3945.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@il3945_disable_events._entry_ptr = internal global ptr @il3945_disable_events._entry, section ".printk_index", align 4
@il3945_disable_events._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Selected uCode log events may be disabled\0A\00", [50 x i8] zeroinitializer }, align 32
@il3945_disable_events._entry_ptr.7 = internal global ptr @il3945_disable_events._entry.5, section ".printk_index", align 4
@il3945_disable_events._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s   by writing \221\22s into disable bitmap\0A\00", [54 x i8] zeroinitializer }, align 32
@il3945_disable_events._entry_ptr.10 = internal global ptr @il3945_disable_events._entry.8, section ".printk_index", align 4
@il3945_disable_events._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s   in SRAM at 0x%x, size %d u32s\0A\00", [60 x i8] zeroinitializer }, align 32
@il3945_disable_events._entry_ptr.13 = internal global ptr @il3945_disable_events._entry.11, section ".printk_index", align 4
@il3945_hdl_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 410, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s Statistics notification received (%d vs %d).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"il3945_hdl_stats\00", [47 x i8] zeroinitializer }, align 32
@il3945_hdl_stats._entry_ptr = internal global ptr @il3945_hdl_stats._entry, section ".printk_index", align 4
@il3945_hdl_c_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s Statistics have been cleared\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il3945_hdl_c_stats\00", [45 x i8] zeroinitializer }, align 32
@il3945_hdl_c_stats._entry_ptr = internal global ptr @il3945_hdl_c_stats._entry, section ".printk_index", align 4
@il3945_hw_txq_attach_buf_to_tfd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error can not send more than %d chunks\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"il3945_hw_txq_attach_buf_to_tfd\00", [32 x i8] zeroinitializer }, align 32
@il3945_hw_txq_attach_buf_to_tfd._entry_ptr = internal global ptr @il3945_hw_txq_attach_buf_to_tfd._entry, section ".printk_index", align 4
@il3945_hw_txq_free_tfd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 648, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Too many chunks: %i\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il3945_hw_txq_free_tfd\00", [41 x i8] zeroinitializer }, align 32
@il3945_hw_txq_free_tfd._entry_ptr = internal global ptr @il3945_hw_txq_free_tfd._entry, section ".printk_index", align 4
@il3945_hw_build_tx_cmd_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 726, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s Tx sta id: %d, rate: %d (plcp), flags: 0x%4X cck/ofdm mask: 0x%x/0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il3945_hw_build_tx_cmd_rate\00", [36 x i8] zeroinitializer }, align 32
@il3945_hw_build_tx_cmd_rate._entry_ptr = internal global ptr @il3945_hw_build_tx_cmd_rate._entry, section ".printk_index", align 4
@il3945_hw_nic_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 970, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to initialize Rx queue\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il3945_hw_nic_init\00", [45 x i8] zeroinitializer }, align 32
@il3945_hw_nic_init._entry_ptr = internal global ptr @il3945_hw_nic_init._entry, section ".printk_index", align 4
@il3945_hw_reg_set_txpower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 1626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s Requested Tx power same as current limit: %ddBm.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il3945_hw_reg_set_txpower\00", [38 x i8] zeroinitializer }, align 32
@il3945_hw_reg_set_txpower._entry_ptr = internal global ptr @il3945_hw_reg_set_txpower._entry, section ".printk_index", align 4
@il3945_hw_reg_set_txpower._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 1630, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s Setting upper limit clamp to %ddBm.\0A\00", [56 x i8] zeroinitializer }, align 32
@il3945_hw_reg_set_txpower._entry_ptr.30 = internal global ptr @il3945_hw_reg_set_txpower._entry.28, section ".printk_index", align 4
@il3945_commit_rxon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1734, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid RXON configuration.  Not committing.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il3945_commit_rxon\00", [45 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr = internal global ptr @il3945_commit_rxon._entry, section ".printk_index", align 4
@il3945_commit_rxon._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 1745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error setting RXON_ASSOC configuration (%d).\0A\00", [50 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.35 = internal global ptr @il3945_commit_rxon._entry.33, section ".printk_index", align 4
@il3945_commit_rxon._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 1763, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s Toggling associated bit on current RXON\0A\00", [52 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.38 = internal global ptr @il3945_commit_rxon._entry.36, section ".printk_index", align 4
@il3945_commit_rxon._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 1780, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Error clearing ASSOC_MSK on current configuration (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.41 = internal global ptr @il3945_commit_rxon._entry.39, section ".printk_index", align 4
@il3945_commit_rxon._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 1789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s Sending RXON\0A* with%s RXON_FILTER_ASSOC_MSK\0A* channel = %d\0A* bssid = %pM\0A\00", [51 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.44 = internal global ptr @il3945_commit_rxon._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@il3945_mod_params = external dso_local global %struct.il_mod_params, align 4
@il3945_commit_rxon._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.2, i32 1804, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error setting new configuration (%d).\0A\00", [57 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.49 = internal global ptr @il3945_commit_rxon._entry.47, section ".printk_index", align 4
@il3945_commit_rxon._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.32, ptr @.str.2, i32 1819, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error setting Tx power (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.52 = internal global ptr @il3945_commit_rxon._entry.50, section ".printk_index", align 4
@il3945_commit_rxon._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.32, ptr @.str.2, i32 1826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error setting HW rate table: %02X\0A\00", [61 x i8] zeroinitializer }, align 32
@il3945_commit_rxon._entry_ptr.55 = internal global ptr @il3945_commit_rxon._entry.53, section ".printk_index", align 4
@il3945_txpower_set_from_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 2099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s Delta idx for channel %d: %d [%d]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"il3945_txpower_set_from_eeprom\00", [33 x i8] zeroinitializer }, align 32
@il3945_txpower_set_from_eeprom._entry_ptr = internal global ptr @il3945_txpower_set_from_eeprom._entry, section ".printk_index", align 4
@il3945_txpower_set_from_eeprom._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 2120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid power idx\0A\00", [45 x i8] zeroinitializer }, align 32
@il3945_txpower_set_from_eeprom._entry_ptr.60 = internal global ptr @il3945_txpower_set_from_eeprom._entry.58, section ".printk_index", align 4
@power_gain_table = internal constant { [2 x [78 x %struct.il3945_tx_power]], [72 x i8] } { [2 x [78 x %struct.il3945_tx_power]] [[78 x %struct.il3945_tx_power] [%struct.il3945_tx_power { i8 -5, i8 127 }, %struct.il3945_tx_power { i8 -5, i8 127 }, %struct.il3945_tx_power { i8 -5, i8 127 }, %struct.il3945_tx_power { i8 -5, i8 127 }, %struct.il3945_tx_power { i8 -5, i8 125 }, %struct.il3945_tx_power { i8 -5, i8 110 }, %struct.il3945_tx_power { i8 -5, i8 105 }, %struct.il3945_tx_power { i8 -5, i8 98 }, %struct.il3945_tx_power { i8 -69, i8 125 }, %struct.il3945_tx_power { i8 -69, i8 115 }, %struct.il3945_tx_power { i8 -69, i8 108 }, %struct.il3945_tx_power { i8 -69, i8 99 }, %struct.il3945_tx_power { i8 -13, i8 119 }, %struct.il3945_tx_power { i8 -13, i8 111 }, %struct.il3945_tx_power { i8 -13, i8 105 }, %struct.il3945_tx_power { i8 -13, i8 97 }, %struct.il3945_tx_power { i8 -13, i8 92 }, %struct.il3945_tx_power { i8 -45, i8 106 }, %struct.il3945_tx_power { i8 -45, i8 100 }, %struct.il3945_tx_power { i8 -77, i8 120 }, %struct.il3945_tx_power { i8 -77, i8 113 }, %struct.il3945_tx_power { i8 -77, i8 107 }, %struct.il3945_tx_power { i8 -109, i8 125 }, %struct.il3945_tx_power { i8 -109, i8 119 }, %struct.il3945_tx_power { i8 -109, i8 112 }, %struct.il3945_tx_power { i8 -109, i8 106 }, %struct.il3945_tx_power { i8 -109, i8 101 }, %struct.il3945_tx_power { i8 -109, i8 97 }, %struct.il3945_tx_power { i8 -109, i8 91 }, %struct.il3945_tx_power { i8 115, i8 107 }, %struct.il3945_tx_power { i8 -21, i8 121 }, %struct.il3945_tx_power { i8 -21, i8 115 }, %struct.il3945_tx_power { i8 -21, i8 109 }, %struct.il3945_tx_power { i8 -53, i8 127 }, %struct.il3945_tx_power { i8 -53, i8 121 }, %struct.il3945_tx_power { i8 -53, i8 115 }, %struct.il3945_tx_power { i8 -53, i8 108 }, %struct.il3945_tx_power { i8 -53, i8 102 }, %struct.il3945_tx_power { i8 -53, i8 96 }, %struct.il3945_tx_power { i8 -53, i8 92 }, %struct.il3945_tx_power { i8 -85, i8 110 }, %struct.il3945_tx_power { i8 -85, i8 104 }, %struct.il3945_tx_power { i8 -85, i8 98 }, %struct.il3945_tx_power { i8 -117, i8 116 }, %struct.il3945_tx_power { i8 -29, i8 125 }, %struct.il3945_tx_power { i8 -29, i8 119 }, %struct.il3945_tx_power { i8 -29, i8 113 }, %struct.il3945_tx_power { i8 -29, i8 107 }, %struct.il3945_tx_power { i8 -29, i8 101 }, %struct.il3945_tx_power { i8 -29, i8 96 }, %struct.il3945_tx_power { i8 -61, i8 113 }, %struct.il3945_tx_power { i8 -61, i8 106 }, %struct.il3945_tx_power { i8 -61, i8 102 }, %struct.il3945_tx_power { i8 -61, i8 95 }, %struct.il3945_tx_power { i8 -93, i8 113 }, %struct.il3945_tx_power { i8 -93, i8 106 }, %struct.il3945_tx_power { i8 -93, i8 102 }, %struct.il3945_tx_power { i8 -93, i8 95 }, %struct.il3945_tx_power { i8 -125, i8 113 }, %struct.il3945_tx_power { i8 -125, i8 106 }, %struct.il3945_tx_power { i8 -125, i8 102 }, %struct.il3945_tx_power { i8 -125, i8 95 }, %struct.il3945_tx_power { i8 99, i8 113 }, %struct.il3945_tx_power { i8 99, i8 106 }, %struct.il3945_tx_power { i8 99, i8 102 }, %struct.il3945_tx_power { i8 99, i8 95 }, %struct.il3945_tx_power { i8 67, i8 113 }, %struct.il3945_tx_power { i8 67, i8 106 }, %struct.il3945_tx_power { i8 67, i8 102 }, %struct.il3945_tx_power { i8 67, i8 95 }, %struct.il3945_tx_power { i8 35, i8 113 }, %struct.il3945_tx_power { i8 35, i8 106 }, %struct.il3945_tx_power { i8 35, i8 102 }, %struct.il3945_tx_power { i8 35, i8 95 }, %struct.il3945_tx_power { i8 3, i8 113 }, %struct.il3945_tx_power { i8 3, i8 106 }, %struct.il3945_tx_power { i8 3, i8 102 }, %struct.il3945_tx_power { i8 3, i8 95 }], [78 x %struct.il3945_tx_power] [%struct.il3945_tx_power { i8 -5, i8 127 }, %struct.il3945_tx_power { i8 -5, i8 120 }, %struct.il3945_tx_power { i8 -5, i8 114 }, %struct.il3945_tx_power { i8 -37, i8 119 }, %struct.il3945_tx_power { i8 -37, i8 101 }, %struct.il3945_tx_power { i8 -69, i8 113 }, %struct.il3945_tx_power { i8 -69, i8 102 }, %struct.il3945_tx_power { i8 -101, i8 114 }, %struct.il3945_tx_power { i8 -101, i8 103 }, %struct.il3945_tx_power { i8 123, i8 117 }, %struct.il3945_tx_power { i8 123, i8 107 }, %struct.il3945_tx_power { i8 123, i8 99 }, %struct.il3945_tx_power { i8 123, i8 92 }, %struct.il3945_tx_power { i8 91, i8 108 }, %struct.il3945_tx_power { i8 59, i8 125 }, %struct.il3945_tx_power { i8 59, i8 118 }, %struct.il3945_tx_power { i8 59, i8 109 }, %struct.il3945_tx_power { i8 59, i8 102 }, %struct.il3945_tx_power { i8 59, i8 96 }, %struct.il3945_tx_power { i8 59, i8 90 }, %struct.il3945_tx_power { i8 27, i8 104 }, %struct.il3945_tx_power { i8 27, i8 98 }, %struct.il3945_tx_power { i8 27, i8 92 }, %struct.il3945_tx_power { i8 115, i8 118 }, %struct.il3945_tx_power { i8 115, i8 111 }, %struct.il3945_tx_power { i8 115, i8 104 }, %struct.il3945_tx_power { i8 83, i8 126 }, %struct.il3945_tx_power { i8 83, i8 121 }, %struct.il3945_tx_power { i8 83, i8 113 }, %struct.il3945_tx_power { i8 83, i8 105 }, %struct.il3945_tx_power { i8 83, i8 99 }, %struct.il3945_tx_power { i8 51, i8 118 }, %struct.il3945_tx_power { i8 51, i8 111 }, %struct.il3945_tx_power { i8 51, i8 104 }, %struct.il3945_tx_power { i8 51, i8 98 }, %struct.il3945_tx_power { i8 19, i8 116 }, %struct.il3945_tx_power { i8 19, i8 109 }, %struct.il3945_tx_power { i8 19, i8 102 }, %struct.il3945_tx_power { i8 19, i8 98 }, %struct.il3945_tx_power { i8 19, i8 93 }, %struct.il3945_tx_power { i8 -85, i8 113 }, %struct.il3945_tx_power { i8 -85, i8 107 }, %struct.il3945_tx_power { i8 -85, i8 99 }, %struct.il3945_tx_power { i8 -117, i8 120 }, %struct.il3945_tx_power { i8 -117, i8 113 }, %struct.il3945_tx_power { i8 -117, i8 107 }, %struct.il3945_tx_power { i8 -117, i8 99 }, %struct.il3945_tx_power { i8 107, i8 120 }, %struct.il3945_tx_power { i8 107, i8 113 }, %struct.il3945_tx_power { i8 107, i8 107 }, %struct.il3945_tx_power { i8 107, i8 99 }, %struct.il3945_tx_power { i8 75, i8 120 }, %struct.il3945_tx_power { i8 75, i8 113 }, %struct.il3945_tx_power { i8 75, i8 107 }, %struct.il3945_tx_power { i8 75, i8 99 }, %struct.il3945_tx_power { i8 43, i8 120 }, %struct.il3945_tx_power { i8 43, i8 113 }, %struct.il3945_tx_power { i8 43, i8 107 }, %struct.il3945_tx_power { i8 43, i8 99 }, %struct.il3945_tx_power { i8 11, i8 120 }, %struct.il3945_tx_power { i8 11, i8 113 }, %struct.il3945_tx_power { i8 11, i8 107 }, %struct.il3945_tx_power { i8 11, i8 99 }, %struct.il3945_tx_power { i8 -125, i8 107 }, %struct.il3945_tx_power { i8 -125, i8 99 }, %struct.il3945_tx_power { i8 99, i8 120 }, %struct.il3945_tx_power { i8 99, i8 113 }, %struct.il3945_tx_power { i8 99, i8 107 }, %struct.il3945_tx_power { i8 99, i8 99 }, %struct.il3945_tx_power { i8 67, i8 120 }, %struct.il3945_tx_power { i8 67, i8 113 }, %struct.il3945_tx_power { i8 67, i8 107 }, %struct.il3945_tx_power { i8 67, i8 99 }, %struct.il3945_tx_power { i8 35, i8 120 }, %struct.il3945_tx_power { i8 35, i8 113 }, %struct.il3945_tx_power { i8 35, i8 107 }, %struct.il3945_tx_power { i8 35, i8 99 }, %struct.il3945_tx_power { i8 3, i8 120 }]], [72 x i8] zeroinitializer }, align 32
@il3945_hw_rxq_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 2191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't stop Rx DMA.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"il3945_hw_rxq_stop\00", [45 x i8] zeroinitializer }, align 32
@il3945_hw_rxq_stop._entry_ptr = internal global ptr @il3945_hw_rxq_stop._entry, section ".printk_index", align 4
@il3945_init_hw_rate_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 2331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Select A mode rate scale\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"il3945_init_hw_rate_table\00", [38 x i8] zeroinitializer }, align 32
@il3945_init_hw_rate_table._entry_ptr = internal global ptr @il3945_init_hw_rate_table._entry, section ".printk_index", align 4
@il3945_init_hw_rate_table._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 2347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Select B/G mode rate scale\0A\00", [33 x i8] zeroinitializer }, align 32
@il3945_init_hw_rate_table._entry_ptr.67 = internal global ptr @il3945_init_hw_rate_table._entry.65, section ".printk_index", align 4
@il3945_hw_setup_deferred_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&il->_3945.thermal_periodic)->work)\00", [40 x i8] zeroinitializer }, align 32
@il3945_hw_setup_deferred_work.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&il->_3945.thermal_periodic)->timer\00", [58 x i8] zeroinitializer }, align 32
@il3945_ops = dso_local constant { %struct.il_ops, [52 x i8] } { %struct.il_ops { ptr null, ptr @il3945_hw_txq_attach_buf_to_tfd, ptr @il3945_hw_txq_free_tfd, ptr @il3945_hw_tx_queue_init, ptr null, ptr @il3945_hw_valid_rtc_data_addr, ptr @il3945_load_bsm, ptr @il3945_dump_nic_error_log, ptr null, ptr null, ptr @il3945_apm_init, ptr @il3945_send_tx_power, ptr null, ptr @il3945_eeprom_acquire_semaphore, ptr @il3945_eeprom_release_semaphore, ptr @il3945_send_rxon_assoc, ptr @il3945_commit_rxon, ptr null, ptr @il3945_get_hcmd_size, ptr @il3945_build_addsta_hcmd, ptr @il3945_request_scan, ptr @il3945_post_scan, ptr @il3945_post_associate, ptr @il3945_config_ap, ptr null, ptr @il3945_manage_ibss_station, ptr @il3945_send_led_cmd }, [52 x i8] zeroinitializer }, align 32
@il3945_bg_cfg = internal constant { %struct.il_cfg, [52 x i8] } { %struct.il_cfg { ptr @.str.225, ptr @.str.226, i32 2, i32 1, i8 0, i8 0, i32 1, i16 47, i16 0, ptr @il3945_mod_params, ptr null, [6 x i8] zeroinitializer, i32 2, i32 1024, i32 5, i32 0, i32 16777216, i8 0, i8 1, i16 64, i32 0, i32 2000, i8 0, i8 0, i8 0, i8 0, [7 x i32] [i32 198, i32 228, i32 256, i32 282, i32 306, i32 0, i32 0] }, [52 x i8] zeroinitializer }, align 32
@il3945_abg_cfg = internal constant { %struct.il_cfg, [52 x i8] } { %struct.il_cfg { ptr @.str.227, ptr @.str.226, i32 2, i32 1, i8 0, i8 0, i32 3, i16 47, i16 0, ptr @il3945_mod_params, ptr null, [6 x i8] zeroinitializer, i32 2, i32 1024, i32 5, i32 0, i32 16777216, i8 0, i8 1, i16 64, i32 0, i32 2000, i8 0, i8 0, i8 0, i8 0, [7 x i32] [i32 198, i32 228, i32 256, i32 282, i32 306, i32 0, i32 0] }, [52 x i8] zeroinitializer }, align 32
@il3945_hw_card_ids = dso_local constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 16930, i32 -1, i32 4101, i32 0, i32 0, i32 ptrtoint (ptr @il3945_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16930, i32 -1, i32 4148, i32 0, i32 0, i32 ptrtoint (ptr @il3945_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16930, i32 -1, i32 4164, i32 0, i32 0, i32 ptrtoint (ptr @il3945_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16935, i32 -1, i32 4116, i32 0, i32 0, i32 ptrtoint (ptr @il3945_bg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16930, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @il3945_abg_cfg to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 16935, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @il3945_abg_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@il_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@il3945_nic_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 901, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s HW Revision ID = 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"il3945_nic_config\00", [46 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr = internal global ptr @il3945_nic_config._entry, section ".printk_index", align 4
@il3945_nic_config._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.2, i32 904, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s RTP type\0A\00", [19 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.76 = internal global ptr @il3945_nic_config._entry.74, section ".printk_index", align 4
@il3945_nic_config._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.2, i32 906, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s 3945 RADIO-MB type\0A\00", [41 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.79 = internal global ptr @il3945_nic_config._entry.77, section ".printk_index", align 4
@il3945_nic_config._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.2, i32 910, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s 3945 RADIO-MM type\0A\00", [41 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.82 = internal global ptr @il3945_nic_config._entry.80, section ".printk_index", align 4
@il3945_nic_config._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.73, ptr @.str.2, i32 916, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s SKU OP mode is mrc\0A\00", [41 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.85 = internal global ptr @il3945_nic_config._entry.83, section ".printk_index", align 4
@il3945_nic_config._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.73, ptr @.str.2, i32 920, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s SKU OP mode is basic\0A\00", [39 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.88 = internal global ptr @il3945_nic_config._entry.86, section ".printk_index", align 4
@il3945_nic_config._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s 3945ABG revision is 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.91 = internal global ptr @il3945_nic_config._entry.89, section ".printk_index", align 4
@il3945_nic_config._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.73, ptr @.str.2, i32 927, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.93 = internal global ptr @il3945_nic_config._entry.92, section ".printk_index", align 4
@il3945_nic_config._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.73, ptr @.str.2, i32 936, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Card M type A version is 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.96 = internal global ptr @il3945_nic_config._entry.94, section ".printk_index", align 4
@il3945_nic_config._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.73, ptr @.str.2, i32 939, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s Card M type B version is 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.99 = internal global ptr @il3945_nic_config._entry.97, section ".printk_index", align 4
@il3945_nic_config._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.73, ptr @.str.2, i32 946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s SW RF KILL supported in EEPROM.\0A\00", [60 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.102 = internal global ptr @il3945_nic_config._entry.100, section ".printk_index", align 4
@il3945_nic_config._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.73, ptr @.str.2, i32 949, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s HW RF KILL supported in EEPROM.\0A\00", [60 x i8] zeroinitializer }, align 32
@il3945_nic_config._entry_ptr.105 = internal global ptr @il3945_nic_config._entry.103, section ".printk_index", align 4
@il3945_txq_ctx_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx %d queue init failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"il3945_txq_ctx_reset\00", [43 x i8] zeroinitializer }, align 32
@il3945_txq_ctx_reset._entry_ptr = internal global ptr @il3945_txq_ctx_reset._entry, section ".printk_index", align 4
@il3945_is_temp_calib_needed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.2, i32 1115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Getting cooler, delta %d,\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"il3945_is_temp_calib_needed\00", [36 x i8] zeroinitializer }, align 32
@il3945_is_temp_calib_needed._entry_ptr = internal global ptr @il3945_is_temp_calib_needed._entry, section ".printk_index", align 4
@il3945_is_temp_calib_needed._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s Same temp,\0A\00", [17 x i8] zeroinitializer }, align 32
@il3945_is_temp_calib_needed._entry_ptr.112 = internal global ptr @il3945_is_temp_calib_needed._entry.110, section ".printk_index", align 4
@il3945_is_temp_calib_needed._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 1120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s Getting warmer, delta %d,\0A\00", [34 x i8] zeroinitializer }, align 32
@il3945_is_temp_calib_needed._entry_ptr.115 = internal global ptr @il3945_is_temp_calib_needed._entry.113, section ".printk_index", align 4
@il3945_is_temp_calib_needed._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.2, i32 1124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s Timed thermal calib not needed\0A\00", [61 x i8] zeroinitializer }, align 32
@il3945_is_temp_calib_needed._entry_ptr.118 = internal global ptr @il3945_is_temp_calib_needed._entry.116, section ".printk_index", align 4
@il3945_is_temp_calib_needed._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.109, ptr @.str.2, i32 1128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Timed thermal calib needed\0A\00", [33 x i8] zeroinitializer }, align 32
@il3945_is_temp_calib_needed._entry_ptr.121 = internal global ptr @il3945_is_temp_calib_needed._entry.119, section ".printk_index", align 4
@il3945_hw_reg_txpower_get_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1077, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s Temperature: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"il3945_hw_reg_txpower_get_temperature\00", [58 x i8] zeroinitializer }, align 32
@il3945_hw_reg_txpower_get_temperature._entry_ptr = internal global ptr @il3945_hw_reg_txpower_get_temperature._entry, section ".printk_index", align 4
@il3945_hw_reg_txpower_get_temperature._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1081, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error bad temperature value  %d\0A\00", [63 x i8] zeroinitializer }, align 32
@il3945_hw_reg_txpower_get_temperature._entry_ptr.126 = internal global ptr @il3945_hw_reg_txpower_get_temperature._entry.124, section ".printk_index", align 4
@il3945_hw_reg_init_channel_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.2, i32 1979, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s Initializing factory calib info from EEPROM\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"il3945_hw_reg_init_channel_groups\00", [62 x i8] zeroinitializer }, align 32
@il3945_hw_reg_init_channel_groups._entry_ptr = internal global ptr @il3945_hw_reg_init_channel_groups._entry, section ".printk_index", align 4
@il3945_hw_reg_init_channel_groups._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.2, i32 1990, ptr @.str.131, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Error: saturation power is %d, less than minimum expected 40\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@il3945_hw_reg_init_channel_groups._entry_ptr.132 = internal global ptr @il3945_hw_reg_init_channel_groups._entry.129, section ".printk_index", align 4
@il3945_hw_reg_get_ch_grp_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1911, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Chnl %d mapped to grp %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"il3945_hw_reg_get_ch_grp_idx\00", [35 x i8] zeroinitializer }, align 32
@il3945_hw_reg_get_ch_grp_idx._entry_ptr = internal global ptr @il3945_hw_reg_get_ch_grp_idx._entry, section ".printk_index", align 4
@il3945_hdl_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Read idx for DMA queue txq_id (%d) idx %d is out of range [0-%d] %d %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"il3945_hdl_tx\00", [18 x i8] zeroinitializer }, align 32
@il3945_hdl_tx._entry_ptr = internal global ptr @il3945_hdl_tx._entry, section ".printk_index", align 4
@il3945_hdl_tx._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s Stopped queues - RX waiting on passive channel\0A\00", [45 x i8] zeroinitializer }, align 32
@il3945_hdl_tx._entry_ptr.139 = internal global ptr @il3945_hdl_tx._entry.137, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@il3945_hdl_tx._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s Tx queue %d Status %s (0x%08x) plcp rate %d retries %d\0A\00", [37 x i8] zeroinitializer }, align 32
@il3945_hdl_tx._entry_ptr.142 = internal global ptr @il3945_hdl_tx._entry.140, section ".printk_index", align 4
@il3945_hdl_tx._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.136, ptr @.str.2, i32 354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s Tx queue reclaim %d\0A\00", [40 x i8] zeroinitializer }, align 32
@il3945_hdl_tx._entry_ptr.145 = internal global ptr @il3945_hdl_tx._entry.143, section ".printk_index", align 4
@il3945_hdl_tx._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.136, ptr @.str.2, i32 358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TODO:  Implement Tx ABORT REQUIRED!!!\0A\00", [57 x i8] zeroinitializer }, align 32
@il3945_hdl_tx._entry_ptr.148 = internal global ptr @il3945_hdl_tx._entry.146, section ".printk_index", align 4
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SHORT_LIMIT\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LONG_LIMIT\00", [21 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FIFO_UNDERRUN\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MGMNT_ABORT\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NEXT_FRAG\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIFE_EXPIRE\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEST_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ABORTED\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_RETRY\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STA_INVALID\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FRAG_DROPPED\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TID_DISABLE\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FRAME_FLUSHED\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"INSUFFICIENT_CF_POLL\00", [43 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TX_LOCKED\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NO_BEACON_ON_RADAR\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@il3945_hdl_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 562, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s dsp size out of range [0,20]: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"il3945_hdl_rx\00", [18 x i8] zeroinitializer }, align 32
@il3945_hdl_rx._entry_ptr = internal global ptr @il3945_hdl_rx._entry, section ".printk_index", align 4
@il3945_hdl_rx._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s Bad CRC or FIFO: 0x%08X.\0A\00", [35 x i8] zeroinitializer }, align 32
@il3945_hdl_rx._entry_ptr.171 = internal global ptr @il3945_hdl_rx._entry.169, section ".printk_index", align 4
@il3945_hdl_rx._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s Rssi %d sig_avg %d noise_diff %d\0A\00", [59 x i8] zeroinitializer }, align 32
@il3945_hdl_rx._entry_ptr.174 = internal global ptr @il3945_hdl_rx._entry.172, section ".printk_index", align 4
@il3945_hdl_rx._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.168, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s [%c] %d RSSI:%d Signal:%u, Rate:%u\0A\00", [57 x i8] zeroinitializer }, align 32
@il3945_hdl_rx._entry_ptr.177 = internal global ptr @il3945_hdl_rx._entry.175, section ".printk_index", align 4
@il3945_pass_packet_to_mac80211._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Corruption detected!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"il3945_pass_packet_to_mac80211\00", [33 x i8] zeroinitializer }, align 32
@il3945_pass_packet_to_mac80211._entry_ptr = internal global ptr @il3945_pass_packet_to_mac80211._entry, section ".printk_index", align 4
@il3945_pass_packet_to_mac80211._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s Dropping packet while interface is not open.\0A\00", [47 x i8] zeroinitializer }, align 32
@il3945_pass_packet_to_mac80211._entry_ptr.182 = internal global ptr @il3945_pass_packet_to_mac80211._entry.180, section ".printk_index", align 4
@il3945_pass_packet_to_mac80211._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.179, ptr @.str.2, i32 491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s Woke queues - frame received on passive channel\0A\00", [44 x i8] zeroinitializer }, align 32
@il3945_pass_packet_to_mac80211._entry_ptr.185 = internal global ptr @il3945_pass_packet_to_mac80211._entry.183, section ".printk_index", align 4
@il3945_pass_packet_to_mac80211._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.179, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dev_alloc_skb failed\0A\00", [42 x i8] zeroinitializer }, align 32
@il3945_pass_packet_to_mac80211._entry_ptr.188 = internal global ptr @il3945_pass_packet_to_mac80211._entry.186, section ".printk_index", align 4
@il3945_load_bsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.2, i32 2569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Begin load bsm\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"il3945_load_bsm\00", [16 x i8] zeroinitializer }, align 32
@il3945_load_bsm._entry_ptr = internal global ptr @il3945_load_bsm._entry, section ".printk_index", align 4
@il3945_load_bsm._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.2, i32 2617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s BSM write complete, poll %d iterations\0A\00", [53 x i8] zeroinitializer }, align 32
@il3945_load_bsm._entry_ptr.193 = internal global ptr @il3945_load_bsm._entry.191, section ".printk_index", align 4
@il3945_load_bsm._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.2, i32 2619, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BSM write did not complete!\0A\00", [35 x i8] zeroinitializer }, align 32
@il3945_load_bsm._entry_ptr.196 = internal global ptr @il3945_load_bsm._entry.194, section ".printk_index", align 4
@il3945_verify_bsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s Begin verify bsm\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"il3945_verify_bsm\00", [46 x i8] zeroinitializer }, align 32
@il3945_verify_bsm._entry_ptr = internal global ptr @il3945_verify_bsm._entry, section ".printk_index", align 4
@il3945_verify_bsm._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.198, ptr @.str.2, i32 2486, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"BSM uCode verification failed at addr 0x%08X+%u (of %u), is 0x%x, s/b 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@il3945_verify_bsm._entry_ptr.201 = internal global ptr @il3945_verify_bsm._entry.199, section ".printk_index", align 4
@il3945_verify_bsm._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.198, ptr @.str.2, i32 2491, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s BSM bootstrap uCode image OK\0A\00", [63 x i8] zeroinitializer }, align 32
@il3945_verify_bsm._entry_ptr.204 = internal global ptr @il3945_verify_bsm._entry.202, section ".printk_index", align 4
@il3945_send_tx_power.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.205 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TX Power requested while scanning!\0A\00", [60 x i8] zeroinitializer }, align 32
@il3945_send_tx_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.2, i32 1402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to get channel info for channel %d [%d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"il3945_send_tx_power\00", [43 x i8] zeroinitializer }, align 32
@il3945_send_tx_power._entry_ptr = internal global ptr @il3945_send_tx_power._entry, section ".printk_index", align 4
@il3945_send_tx_power._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.2, i32 1407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s Not calling TX_PWR_TBL_CMD on non-Tx channel.\0A\00", [46 x i8] zeroinitializer }, align 32
@il3945_send_tx_power._entry_ptr.210 = internal global ptr @il3945_send_tx_power._entry.208, section ".printk_index", align 4
@il3945_send_tx_power._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.207, ptr @.str.2, i32 1422, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s ch %d:%d rf %d dsp %3d rate code 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@il3945_send_tx_power._entry_ptr.213 = internal global ptr @il3945_send_tx_power._entry.211, section ".printk_index", align 4
@il3945_send_tx_power._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.207, ptr @.str.2, i32 1433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@il3945_send_tx_power._entry_ptr.215 = internal global ptr @il3945_send_tx_power._entry.214, section ".printk_index", align 4
@il3945_send_rxon_assoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.2, i32 1677, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s Using current RXON_ASSOC.  Not resending.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"il3945_send_rxon_assoc\00", [41 x i8] zeroinitializer }, align 32
@il3945_send_rxon_assoc._entry_ptr = internal global ptr @il3945_send_rxon_assoc._entry, section ".printk_index", align 4
@il3945_send_rxon_assoc._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.217, ptr @.str.2, i32 1693, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bad return from C_RXON_ASSOC command\0A\00", [58 x i8] zeroinitializer }, align 32
@il3945_send_rxon_assoc._entry_ptr.220 = internal global ptr @il3945_send_rxon_assoc._entry.218, section ".printk_index", align 4
@il3945_add_bssid_station._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 2267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to add station %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"il3945_add_bssid_station\00", [39 x i8] zeroinitializer }, align 32
@il3945_add_bssid_station._entry_ptr = internal global ptr @il3945_add_bssid_station._entry, section ".printk_index", align 4
@il3945_sync_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.224, ptr @.str.2, i32 747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s SCALE sync station %d to rate %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"il3945_sync_sta\00", [16 x i8] zeroinitializer }, align 32
@il3945_sync_sta._entry_ptr = internal global ptr @il3945_sync_sta._entry, section ".printk_index", align 4
@.str.225 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3945BG\00", [25 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iwlwifi-3945-\00", [18 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3945ABG\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.228 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.229 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.230 = internal global [19 x i64] [i64 17, i64 8, i64 1, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 145]
@__sancov_gen_cov_switch_values.231 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.232 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 119]
@__sancov_gen_cov_switch_values.233 = internal global [14 x i64] [i64 12, i64 8, i64 1, i64 3, i64 5, i64 7, i64 9, i64 10, i64 11, i64 13, i64 15, i64 20, i64 55, i64 110]
@___asan_gen_.234 = private unnamed_addr constant [13 x i8] c"il3945_rates\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 64, i32 31 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 161, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 176, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 177, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 178, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 408, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 433, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 614, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 648, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 723, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 970, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1625, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1630, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1734, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1744, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1763, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1779, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1787, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1804, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1819, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1826, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2098, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2120, i32 5 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"power_gain_table\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1142, i32 31 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2191, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2331, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2347, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2456, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [11 x i8] c"il3945_ops\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2630, i32 21 }
@___asan_gen_.456 = private unnamed_addr constant [14 x i8] c"il3945_bg_cfg\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2657, i32 28 }
@___asan_gen_.459 = private unnamed_addr constant [15 x i8] c"il3945_abg_cfg\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2686, i32 28 }
@___asan_gen_.462 = private unnamed_addr constant [19 x i8] c"il3945_hw_card_ids\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2715, i32 28 }
@___asan_gen_.466 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 2737, i32 6 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 901, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 904, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 906, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 910, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 916, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 920, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 923, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 927, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 935, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 938, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 946, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 949, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 857, i32 4 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1115, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1118, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1120, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1124, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1128, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1077, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1081, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1979, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1988, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1911, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 312, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 328, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 350, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 354, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 358, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 203, i32 10 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 204, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 205, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 206, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 207, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 208, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 209, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 210, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 211, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 212, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 213, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 214, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 215, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 216, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 217, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 218, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 219, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 222, i32 9 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 561, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 568, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 575, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 582, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 479, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 485, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 491, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 496, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2569, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2617, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2619, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2475, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2483, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2491, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1391, i32 6 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1401, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1407, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1419, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1430, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1677, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 1693, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2267, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 747, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2658, i32 10 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2659, i32 17 }
@___asan_gen_.873 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.874 = private constant [46 x i8] c"../drivers/net/wireless/intel/iwlegacy/3945.c\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.874, i32 2687, i32 10 }
@llvm.compiler.used = appending global [289 x ptr] [ptr @il3945_add_bssid_station._entry, ptr @il3945_add_bssid_station._entry_ptr, ptr @il3945_commit_rxon._entry, ptr @il3945_commit_rxon._entry.33, ptr @il3945_commit_rxon._entry.36, ptr @il3945_commit_rxon._entry.39, ptr @il3945_commit_rxon._entry.42, ptr @il3945_commit_rxon._entry.47, ptr @il3945_commit_rxon._entry.50, ptr @il3945_commit_rxon._entry.53, ptr @il3945_commit_rxon._entry_ptr, ptr @il3945_commit_rxon._entry_ptr.35, ptr @il3945_commit_rxon._entry_ptr.38, ptr @il3945_commit_rxon._entry_ptr.41, ptr @il3945_commit_rxon._entry_ptr.44, ptr @il3945_commit_rxon._entry_ptr.49, ptr @il3945_commit_rxon._entry_ptr.52, ptr @il3945_commit_rxon._entry_ptr.55, ptr @il3945_disable_events._entry, ptr @il3945_disable_events._entry.11, ptr @il3945_disable_events._entry.5, ptr @il3945_disable_events._entry.8, ptr @il3945_disable_events._entry_ptr, ptr @il3945_disable_events._entry_ptr.10, ptr @il3945_disable_events._entry_ptr.13, ptr @il3945_disable_events._entry_ptr.7, ptr @il3945_hdl_c_stats._entry, ptr @il3945_hdl_c_stats._entry_ptr, ptr @il3945_hdl_rx._entry, ptr @il3945_hdl_rx._entry.169, ptr @il3945_hdl_rx._entry.172, ptr @il3945_hdl_rx._entry.175, ptr @il3945_hdl_rx._entry_ptr, ptr @il3945_hdl_rx._entry_ptr.171, ptr @il3945_hdl_rx._entry_ptr.174, ptr @il3945_hdl_rx._entry_ptr.177, ptr @il3945_hdl_stats._entry, ptr @il3945_hdl_stats._entry_ptr, ptr @il3945_hdl_tx._entry, ptr @il3945_hdl_tx._entry.137, ptr @il3945_hdl_tx._entry.140, ptr @il3945_hdl_tx._entry.143, ptr @il3945_hdl_tx._entry.146, ptr @il3945_hdl_tx._entry_ptr, ptr @il3945_hdl_tx._entry_ptr.139, ptr @il3945_hdl_tx._entry_ptr.142, ptr @il3945_hdl_tx._entry_ptr.145, ptr @il3945_hdl_tx._entry_ptr.148, ptr @il3945_hw_build_tx_cmd_rate._entry, ptr @il3945_hw_build_tx_cmd_rate._entry_ptr, ptr @il3945_hw_nic_init._entry, ptr @il3945_hw_nic_init._entry_ptr, ptr @il3945_hw_reg_get_ch_grp_idx._entry, ptr @il3945_hw_reg_get_ch_grp_idx._entry_ptr, ptr @il3945_hw_reg_init_channel_groups._entry, ptr @il3945_hw_reg_init_channel_groups._entry.129, ptr @il3945_hw_reg_init_channel_groups._entry_ptr, ptr @il3945_hw_reg_init_channel_groups._entry_ptr.132, ptr @il3945_hw_reg_set_txpower._entry, ptr @il3945_hw_reg_set_txpower._entry.28, ptr @il3945_hw_reg_set_txpower._entry_ptr, ptr @il3945_hw_reg_set_txpower._entry_ptr.30, ptr @il3945_hw_reg_txpower_get_temperature._entry, ptr @il3945_hw_reg_txpower_get_temperature._entry.124, ptr @il3945_hw_reg_txpower_get_temperature._entry_ptr, ptr @il3945_hw_reg_txpower_get_temperature._entry_ptr.126, ptr @il3945_hw_rxq_stop._entry, ptr @il3945_hw_rxq_stop._entry_ptr, ptr @il3945_hw_txq_attach_buf_to_tfd._entry, ptr @il3945_hw_txq_attach_buf_to_tfd._entry_ptr, ptr @il3945_hw_txq_free_tfd._entry, ptr @il3945_hw_txq_free_tfd._entry_ptr, ptr @il3945_init_hw_rate_table._entry, ptr @il3945_init_hw_rate_table._entry.65, ptr @il3945_init_hw_rate_table._entry_ptr, ptr @il3945_init_hw_rate_table._entry_ptr.67, ptr @il3945_is_temp_calib_needed._entry, ptr @il3945_is_temp_calib_needed._entry.110, ptr @il3945_is_temp_calib_needed._entry.113, ptr @il3945_is_temp_calib_needed._entry.116, ptr @il3945_is_temp_calib_needed._entry.119, ptr @il3945_is_temp_calib_needed._entry_ptr, ptr @il3945_is_temp_calib_needed._entry_ptr.112, ptr @il3945_is_temp_calib_needed._entry_ptr.115, ptr @il3945_is_temp_calib_needed._entry_ptr.118, ptr @il3945_is_temp_calib_needed._entry_ptr.121, ptr @il3945_load_bsm._entry, ptr @il3945_load_bsm._entry.191, ptr @il3945_load_bsm._entry.194, ptr @il3945_load_bsm._entry_ptr, ptr @il3945_load_bsm._entry_ptr.193, ptr @il3945_load_bsm._entry_ptr.196, ptr @il3945_nic_config._entry, ptr @il3945_nic_config._entry.100, ptr @il3945_nic_config._entry.103, ptr @il3945_nic_config._entry.74, ptr @il3945_nic_config._entry.77, ptr @il3945_nic_config._entry.80, ptr @il3945_nic_config._entry.83, ptr @il3945_nic_config._entry.86, ptr @il3945_nic_config._entry.89, ptr @il3945_nic_config._entry.92, ptr @il3945_nic_config._entry.94, ptr @il3945_nic_config._entry.97, ptr @il3945_nic_config._entry_ptr, ptr @il3945_nic_config._entry_ptr.102, ptr @il3945_nic_config._entry_ptr.105, ptr @il3945_nic_config._entry_ptr.76, ptr @il3945_nic_config._entry_ptr.79, ptr @il3945_nic_config._entry_ptr.82, ptr @il3945_nic_config._entry_ptr.85, ptr @il3945_nic_config._entry_ptr.88, ptr @il3945_nic_config._entry_ptr.91, ptr @il3945_nic_config._entry_ptr.93, ptr @il3945_nic_config._entry_ptr.96, ptr @il3945_nic_config._entry_ptr.99, ptr @il3945_pass_packet_to_mac80211._entry, ptr @il3945_pass_packet_to_mac80211._entry.180, ptr @il3945_pass_packet_to_mac80211._entry.183, ptr @il3945_pass_packet_to_mac80211._entry.186, ptr @il3945_pass_packet_to_mac80211._entry_ptr, ptr @il3945_pass_packet_to_mac80211._entry_ptr.182, ptr @il3945_pass_packet_to_mac80211._entry_ptr.185, ptr @il3945_pass_packet_to_mac80211._entry_ptr.188, ptr @il3945_send_rxon_assoc._entry, ptr @il3945_send_rxon_assoc._entry.218, ptr @il3945_send_rxon_assoc._entry_ptr, ptr @il3945_send_rxon_assoc._entry_ptr.220, ptr @il3945_send_tx_power._entry, ptr @il3945_send_tx_power._entry.208, ptr @il3945_send_tx_power._entry.211, ptr @il3945_send_tx_power._entry.214, ptr @il3945_send_tx_power._entry_ptr, ptr @il3945_send_tx_power._entry_ptr.210, ptr @il3945_send_tx_power._entry_ptr.213, ptr @il3945_send_tx_power._entry_ptr.215, ptr @il3945_sync_sta._entry, ptr @il3945_sync_sta._entry_ptr, ptr @il3945_txpower_set_from_eeprom._entry, ptr @il3945_txpower_set_from_eeprom._entry.58, ptr @il3945_txpower_set_from_eeprom._entry_ptr, ptr @il3945_txpower_set_from_eeprom._entry_ptr.60, ptr @il3945_txq_ctx_reset._entry, ptr @il3945_txq_ctx_reset._entry_ptr, ptr @il3945_verify_bsm._entry, ptr @il3945_verify_bsm._entry.199, ptr @il3945_verify_bsm._entry.202, ptr @il3945_verify_bsm._entry_ptr, ptr @il3945_verify_bsm._entry_ptr.201, ptr @il3945_verify_bsm._entry_ptr.204, ptr @il3945_rates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @power_gain_table, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @il3945_hw_setup_deferred_work.__key, ptr @.str.68, ptr @il3945_hw_setup_deferred_work.__key.69, ptr @.str.70, ptr @il3945_ops, ptr @il3945_bg_cfg, ptr @il3945_abg_cfg, ptr @il3945_hw_card_ids, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @.str.195, ptr @.str.197, ptr @.str.198, ptr @.str.200, ptr @.str.203, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.212, ptr @.str.216, ptr @.str.217, ptr @.str.219, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227], section "llvm.metadata"
@0 = internal global [214 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_rates to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_disable_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_disable_events._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_disable_events._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_disable_events._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_c_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_txq_attach_buf_to_tfd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_txq_free_tfd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_build_tx_cmd_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_nic_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_set_txpower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_set_txpower._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_commit_rxon._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_txpower_set_from_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_txpower_set_from_eeprom._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_gain_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_rxq_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_init_hw_rate_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_init_hw_rate_table._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_setup_deferred_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_setup_deferred_work.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_bg_cfg to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_abg_cfg to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_card_ids to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_nic_config._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_txq_ctx_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_is_temp_calib_needed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_is_temp_calib_needed._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_is_temp_calib_needed._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_is_temp_calib_needed._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_is_temp_calib_needed._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_txpower_get_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_txpower_get_temperature._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_init_channel_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_init_channel_groups._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hw_reg_get_ch_grp_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_tx._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_tx._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_tx._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_tx._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_rx._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_rx._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_hdl_rx._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_pass_packet_to_mac80211._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_pass_packet_to_mac80211._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_pass_packet_to_mac80211._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_pass_packet_to_mac80211._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_load_bsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_load_bsm._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_load_bsm._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_verify_bsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_verify_bsm._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_verify_bsm._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_tx_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_tx_power._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_tx_power._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_tx_power._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_rxon_assoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_send_rxon_assoc._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_add_bssid_station._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @il3945_sync_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_disable_events(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %log_event_table_ptr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 61, i32 7
  %0 = ptrtoint ptr %log_event_table_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_event_table_ptr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = and i32 %2, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %3)
  %.not = icmp eq i32 %3, 8388608
  br i1 %.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %2) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw nsw i32 %2, 16
  %call1 = tail call i32 @il_read_targ_mem(ptr noundef %il, i32 noundef %add) #13
  %add2 = add nuw nsw i32 %2, 20
  %call3 = tail call i32 @il_read_targ_mem(ptr noundef %il, i32 noundef %add2) #13
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %6 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.il_get_debug_level.exit_crit_edge

if.end.il_get_debug_level.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.end.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.else.i ], [ %7, %if.end.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %il_get_debug_level.exit.do.body15_crit_edge, label %do.end10

il_get_debug_level.exit.do.body15_crit_edge:      ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body15

do.end10:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev11 = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #16
  br label %do.body15

do.body15:                                        ; preds = %do.end10, %il_get_debug_level.exit.do.body15_crit_edge
  %13 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i59 = icmp eq i32 %14, 0
  br i1 %tobool.not.i59, label %if.else.i60, label %do.body15.il_get_debug_level.exit62_crit_edge

do.body15.il_get_debug_level.exit62_crit_edge:    ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit62

if.else.i60:                                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %15 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit62

il_get_debug_level.exit62:                        ; preds = %if.else.i60, %do.body15.il_get_debug_level.exit62_crit_edge
  %retval.0.i61 = phi i32 [ %15, %if.else.i60 ], [ %14, %do.body15.il_get_debug_level.exit62_crit_edge ]
  %and17 = and i32 %retval.0.i61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %il_get_debug_level.exit62.do.body29_crit_edge, label %do.end22

il_get_debug_level.exit62.do.body29_crit_edge:    ; preds = %il_get_debug_level.exit62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body29

do.end22:                                         ; preds = %il_get_debug_level.exit62
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %il, align 8
  %wiphy24 = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy24, align 8
  %dev25 = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #16
  br label %do.body29

do.body29:                                        ; preds = %do.end22, %il_get_debug_level.exit62.do.body29_crit_edge
  %20 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i64 = icmp eq i32 %21, 0
  br i1 %tobool.not.i64, label %if.else.i65, label %do.body29.il_get_debug_level.exit67_crit_edge

do.body29.il_get_debug_level.exit67_crit_edge:    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit67

if.else.i65:                                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %22 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit67

il_get_debug_level.exit67:                        ; preds = %if.else.i65, %do.body29.il_get_debug_level.exit67_crit_edge
  %retval.0.i66 = phi i32 [ %22, %if.else.i65 ], [ %21, %do.body29.il_get_debug_level.exit67_crit_edge ]
  %and31 = and i32 %retval.0.i66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %il_get_debug_level.exit67.cleanup_crit_edge, label %do.end36

il_get_debug_level.exit67.cleanup_crit_edge:      ; preds = %il_get_debug_level.exit67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end36:                                         ; preds = %il_get_debug_level.exit67
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %il, align 8
  %wiphy38 = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy38, align 8
  %dev39 = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef %call1, i32 noundef %call3) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %il_get_debug_level.exit67.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @il3945_hw_valid_rtc_data_addr(i32 noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = and i32 %addr, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %0)
  %1 = icmp eq i32 %0, 8388608
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_read_targ_mem(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @il3945_rs_next_rate(ptr nocapture noundef readonly %il, i32 noundef %rate) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rate to i8
  %idxprom.i = and i32 %rate, 255
  %prev_ieee.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %idxprom.i, i32 2
  %0 = ptrtoint ptr %prev_ieee.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prev_ieee.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 0
  %spec.select.i = select i1 %cmp.i, i8 0, i8 %1
  %band = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %rate, label %sw.epilog.fold.split [
    i32 6, label %sw.bb.sw.epilog_crit_edge
    i32 4, label %if.then5
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %sta_supp_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 8
  %6 = ptrtoint ptr %sta_supp_rates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_supp_rates, align 8
  %and = and i32 %7, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #15
  %filter_flags.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %8 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %filter_flags.i, align 1
  %10 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rate)
  %cmp11 = icmp eq i32 %rate, 3
  %or.cond = and i1 %cmp11, %tobool9.not
  %spec.select = select i1 %or.cond, i8 2, i8 %spec.select.i
  br label %sw.epilog

sw.epilog.fold.split:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.fold.split, %land.lhs.true, %sw.bb7.sw.epilog_crit_edge, %if.then5, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %next_rate.0.shrunk = phi i8 [ %spec.select.i, %entry.sw.epilog_crit_edge ], [ %spec.select.i, %sw.bb7.sw.epilog_crit_edge ], [ 4, %if.then5 ], [ 5, %sw.bb.sw.epilog_crit_edge ], [ %spec.select.i, %sw.epilog.fold.split ], [ %spec.select, %land.lhs.true ]
  %next_rate.0 = zext i8 %next_rate.0.shrunk to i32
  ret i32 %next_rate.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hdl_stats(ptr nocapture noundef %il, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.il_rx_buf, ptr %rxb, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %1) #13
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
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
  %and = and i32 %retval.0.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end5_crit_edge, label %do.end

il_get_debug_level.exit.do.end5_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  %9 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %call, align 1
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 240, i32 noundef %12) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end5_crit_edge
  %u = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2
  %stats1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 4
  %accum_stats2.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 5
  %delta_stats.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 6
  %max_delta3.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end5
  %max_delta.048.i = phi ptr [ %max_delta3.i, %do.end5 ], [ %incdec.ptr11.i, %for.inc.i.for.body.i_crit_edge ]
  %delta.047.i = phi ptr [ %delta_stats.i, %do.end5 ], [ %incdec.ptr10.i, %for.inc.i.for.body.i_crit_edge ]
  %accum_stats.046.i = phi ptr [ %accum_stats2.i, %do.end5 ], [ %incdec.ptr12.i, %for.inc.i.for.body.i_crit_edge ]
  %prev_stats.045.i = phi ptr [ %stats1.i, %do.end5 ], [ %incdec.ptr9.i, %for.inc.i.for.body.i_crit_edge ]
  %i.044.i = phi i32 [ 4, %do.end5 ], [ %add8.i, %for.inc.i.for.body.i_crit_edge ]
  %stats.addr.043.i = phi ptr [ %u, %do.end5 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %stats.addr.043.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stats.addr.043.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #13
  %16 = ptrtoint ptr %prev_stats.045.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev_stats.045.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp4.i = icmp ugt i32 %15, %18
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %sub.i = sub i32 %15, %18
  %19 = ptrtoint ptr %delta.047.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %delta.047.i, align 4
  %20 = ptrtoint ptr %accum_stats.046.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %accum_stats.046.i, align 4
  %add.i = add i32 %21, %sub.i
  store i32 %add.i, ptr %accum_stats.046.i, align 4
  %22 = ptrtoint ptr %max_delta.048.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_delta.048.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp5.i = icmp ugt i32 %sub.i, %23
  br i1 %cmp5.i, label %if.then6.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %max_delta.048.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %max_delta.048.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add8.i = add nuw nsw i32 %i.044.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %stats.addr.043.i, i32 1
  %incdec.ptr9.i = getelementptr i32, ptr %prev_stats.045.i, i32 1
  %incdec.ptr10.i = getelementptr i32, ptr %delta.047.i, i32 1
  %incdec.ptr11.i = getelementptr i32, ptr %max_delta.048.i, i32 1
  %incdec.ptr12.i = getelementptr i32, ptr %accum_stats.046.i, i32 1
  %cmp.i = icmp ult i32 %i.044.i, 236
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %il3945_accumulative_stats.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

il3945_accumulative_stats.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %general.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %general.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %general.i, align 4
  %general15.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %general15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %general15.i, align 4
  %ttl_timestamp.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 4, i32 3, i32 5
  %28 = ptrtoint ptr %ttl_timestamp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ttl_timestamp.i, align 4
  %ttl_timestamp21.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 5, i32 3, i32 5
  %30 = ptrtoint ptr %ttl_timestamp21.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ttl_timestamp21.i, align 4
  %31 = call ptr @memcpy(ptr %stats1.i, ptr %u, i32 240)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hdl_c_stats(ptr nocapture noundef %il, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.il_rx_buf, ptr %rxb, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %1) #13
  %u = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then:                                          ; preds = %entry
  %accum_stats = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 5
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %5 = call ptr @memset(ptr %accum_stats, i32 0, i32 720)
  %6 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.il_get_debug_level.exit_crit_edge

if.then.il_get_debug_level.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.then.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.else.i ], [ %7, %if.then.il_get_debug_level.exit_crit_edge ]
  %and2 = and i32 %retval.0.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %il_get_debug_level.exit.if.end8_crit_edge, label %do.end

il_get_debug_level.exit.if.end8_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #16
  br label %if.end8

if.end8:                                          ; preds = %do.end, %il_get_debug_level.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @il3945_hdl_stats(ptr noundef %il, ptr noundef %rxb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_txq_attach_buf_to_tfd(ptr nocapture noundef readonly %il, ptr nocapture noundef readonly %txq, i32 noundef %addr, i16 noundef zeroext %len, i8 noundef zeroext %reset, i8 noundef zeroext %pad) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tfds = getelementptr inbounds %struct.il_tx_queue, ptr %txq, i32 0, i32 1
  %0 = ptrtoint ptr %tfds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfds, align 4
  %write_ptr = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 1
  %2 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_ptr, align 4
  %arrayidx = getelementptr %struct.il3945_tfd, ptr %1, i32 %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reset)
  %tobool.not = icmp eq i8 %reset, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp ugt i32 %and, 3
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 4) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %arrayidx5 = getelementptr %struct.il3945_tfd, ptr %1, i32 %3, i32 1, i32 %and
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %arrayidx5, align 1
  %conv = zext i16 %len to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %len9 = getelementptr %struct.il3945_tfd, ptr %1, i32 %3, i32 1, i32 %and, i32 1
  %12 = ptrtoint ptr %len9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %len9, align 1
  %inc = shl nuw nsw i32 %and, 24
  %shl = add nuw nsw i32 %inc, 16777216
  %conv10 = zext i8 %pad to i32
  %shl11 = shl i32 %conv10, 28
  %or = or i32 %shl, %shl11
  %13 = lshr exact i32 %or, 24
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_txq_free_tfd(ptr nocapture noundef readonly %il, ptr nocapture noundef readonly %txq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tfds = getelementptr inbounds %struct.il_tx_queue, ptr %txq, i32 0, i32 1
  %0 = ptrtoint ptr %tfds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfds, align 4
  %read_ptr = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 2
  %2 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_ptr, align 4
  %arrayidx = getelementptr %struct.il3945_tfd, ptr %1, i32 %3
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx, align 1
  %and = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp ugt i32 %and, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.20, i32 noundef %and) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end8

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end8:                                          ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %meta = getelementptr inbounds %struct.il_tx_queue, ptr %txq, i32 0, i32 3
  %8 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %meta, align 4
  %mapping = getelementptr %struct.il_cmd_meta, ptr %9, i32 %3, i32 3
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapping, align 4
  %len = getelementptr %struct.il_cmd_meta, ptr %9, i32 %3, i32 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev4, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp956.not = icmp eq i32 %and, 1
  br i1 %cmp956.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.il3945_tfd, ptr %1, i32 %3, i32 1, i32 %i.057
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx11, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %len14 = getelementptr %struct.il3945_tfd, ptr %1, i32 %3, i32 1, i32 %i.057, i32 1
  %17 = ptrtoint ptr %len14 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %len14, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev10, i32 noundef %16, i32 noundef %19, i32 noundef 1, i32 noundef 0) #13
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge, %if.end.for.end_crit_edge
  %skbs = getelementptr inbounds %struct.il_tx_queue, ptr %txq, i32 0, i32 4
  %20 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skbs, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %if.then16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %for.end
  %22 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_ptr, align 4
  %arrayidx20 = getelementptr ptr, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %25, null
  br i1 %tobool21.not, label %if.then16.cleanup_crit_edge, label %if.then22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %25, i32 noundef 1) #13
  %26 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skbs, align 4
  %28 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %read_ptr, align 4
  %arrayidx26 = getelementptr ptr, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.then16.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_build_tx_cmd_rate(ptr nocapture noundef readonly %il, ptr nocapture noundef %cmd, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %hdr, i32 noundef %sta_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp slt i8 %2, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i, !prof !407

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ieee80211_get_tx_rate.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 2737, i32 noundef 9, ptr noundef null) #13
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.ieee80211_tx_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %6, i32 0, i32 53, i32 %bf.lshr.i
  %8 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %2 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %11, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value1 = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %hw_value1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value1, align 2
  %14 = tail call i16 @llvm.umin.i16(i16 %13, i16 11)
  %cond = zext i16 %14 to i32
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdr, align 2
  %cmd4 = getelementptr inbounds %struct.il_device_cmd, ptr %cmd, i32 0, i32 1
  %arrayidx = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %cond
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %tx_flags6 = getelementptr inbounds %struct.il_device_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %tx_flags6 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %tx_flags6, align 1
  %21 = and i16 %16, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %21)
  %cmp.i68 = icmp eq i16 %21, 20480
  %data_retry_limit.0 = select i1 %cmp.i68, i8 3, i8 15
  %data_retry_limit8 = getelementptr inbounds %struct.il3945_tx_cmd, ptr %cmd4, i32 0, i32 13
  %22 = ptrtoint ptr %data_retry_limit8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %data_retry_limit.0, ptr %data_retry_limit8, align 1
  %cond17 = select i1 %cmp.i68, i8 3, i8 7
  %rts_retry_limit19 = getelementptr inbounds %struct.il3945_tx_cmd, ptr %cmd4, i32 0, i32 12
  %23 = ptrtoint ptr %rts_retry_limit19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond17, ptr %rts_retry_limit19, align 1
  %rate21 = getelementptr inbounds %struct.il_device_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %rate21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %18, ptr %rate21, align 1
  %supp_rates = getelementptr inbounds %struct.il_device_cmd, ptr %cmd, i32 0, i32 1, i32 0, i32 13
  %25 = ptrtoint ptr %supp_rates to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %supp_rates, align 1
  %arrayidx32 = getelementptr [2 x i8], ptr %supp_rates, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 15, ptr %arrayidx32, align 1
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %27 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.else.i, label %ieee80211_get_tx_rate.exit.il_get_debug_level.exit_crit_edge

ieee80211_get_tx_rate.exit.il_get_debug_level.exit_crit_edge: ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %29 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %ieee80211_get_tx_rate.exit.il_get_debug_level.exit_crit_edge
  %retval.0.i69 = phi i32 [ %29, %if.else.i ], [ %28, %ieee80211_get_tx_rate.exit.il_get_debug_level.exit_crit_edge ]
  %and34 = and i32 %retval.0.i69, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not = icmp eq i32 %and34, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end49_crit_edge, label %do.end

il_get_debug_level.exit.do.end49_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  %conv39 = zext i8 %18 to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %sta_id, i32 noundef %conv39, i32 noundef %34, i32 noundef 15, i32 noundef 255) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_nic_init(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rxq1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 71
  %lock = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 30
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %call6 = tail call i32 @il3945_apm_init(ptr noundef %il)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  %reg_lock.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 32
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i.i, label %if.then.i.i, label %entry.il3945_set_pwr_vmain.exit_crit_edge, !prof !407

entry.il3945_set_pwr_vmain.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_set_pwr_vmain.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %1, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 204472323) #13, !srcloc !409
  %2 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %3, i32 1104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %5 = and i32 %4, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i.i2.i.i = getelementptr i8, ptr %7, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i.i, i32 204472323) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i3.i.i.i = getelementptr i8, ptr %9, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i.i, i32 %5) #13, !srcloc !409
  %10 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %13 = and i32 %12, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %hw_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_base.i.i.i.i, align 4
  %add.ptr.i4.i.i.i.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i, i32 %13) #13, !srcloc !409
  br label %il3945_set_pwr_vmain.exit

il3945_set_pwr_vmain.exit:                        ; preds = %if.then.i.i, %entry.il3945_set_pwr_vmain.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #13
  %call.i = tail call i32 @_il_poll_bit(ptr noundef %il, i32 noundef 24, i32 noundef 512, i32 noundef 512, i32 noundef 5000) #13
  %eeprom1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 92
  %16 = ptrtoint ptr %eeprom1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eeprom1.i, align 8
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %18 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev.i, align 8
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision.i, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %22 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %il3945_set_pwr_vmain.exit.il_get_debug_level.exit.i_crit_edge

il3945_set_pwr_vmain.exit.il_get_debug_level.exit.i_crit_edge: ; preds = %il3945_set_pwr_vmain.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %il3945_set_pwr_vmain.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %24 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %il3945_set_pwr_vmain.exit.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %24, %if.else.i.i ], [ %23, %il3945_set_pwr_vmain.exit.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %il_get_debug_level.exit.do.end13_crit_edge.i, label %do.end10.i

il_get_debug_level.exit.do.end13_crit_edge.i:     ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = zext i8 %21 to i32
  br label %do.end13.i

do.end10.i:                                       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  %conv11.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef %conv11.i) #16
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end10.i, %il_get_debug_level.exit.do.end13_crit_edge.i
  %conv14.pre-phi.i = phi i32 [ %.pre.i, %il_get_debug_level.exit.do.end13_crit_edge.i ], [ %conv11.i, %do.end10.i ]
  %and15.i = and i32 %conv14.pre-phi.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.else.i, label %do.body18.i

do.body18.i:                                      ; preds = %do.end13.i
  %29 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i264.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i264.i, label %if.else.i265.i, label %do.body18.i.il_get_debug_level.exit267.i_crit_edge

do.body18.i.il_get_debug_level.exit267.i_crit_edge: ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit267.i

if.else.i265.i:                                   ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %31 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit267.i

il_get_debug_level.exit267.i:                     ; preds = %if.else.i265.i, %do.body18.i.il_get_debug_level.exit267.i_crit_edge
  %retval.0.i266.i = phi i32 [ %31, %if.else.i265.i ], [ %30, %do.body18.i.il_get_debug_level.exit267.i_crit_edge ]
  %and20.i = and i32 %retval.0.i266.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %il_get_debug_level.exit267.i.if.end66.i_crit_edge, label %do.end25.i

il_get_debug_level.exit267.i.if.end66.i_crit_edge: ; preds = %il_get_debug_level.exit267.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

do.end25.i:                                       ; preds = %il_get_debug_level.exit267.i
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %il, align 8
  %wiphy27.i = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy27.i, align 8
  %dev28.i = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.73) #16
  br label %if.end66.i

if.else.i:                                        ; preds = %do.end13.i
  %and33.i = and i32 %conv14.pre-phi.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %36 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i274.i = icmp eq i32 %37, 0
  br i1 %tobool34.not.i, label %do.body51.i, label %do.body36.i

do.body36.i:                                      ; preds = %if.else.i
  br i1 %tobool.not.i274.i, label %if.else.i270.i, label %do.body36.i.il_get_debug_level.exit272.i_crit_edge

do.body36.i.il_get_debug_level.exit272.i_crit_edge: ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit272.i

if.else.i270.i:                                   ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %38 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit272.i

il_get_debug_level.exit272.i:                     ; preds = %if.else.i270.i, %do.body36.i.il_get_debug_level.exit272.i_crit_edge
  %retval.0.i271.i = phi i32 [ %38, %if.else.i270.i ], [ %37, %do.body36.i.il_get_debug_level.exit272.i_crit_edge ]
  %and38.i = and i32 %retval.0.i271.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %il_get_debug_level.exit272.i.do.end49.i_crit_edge, label %do.end43.i

il_get_debug_level.exit272.i.do.end49.i_crit_edge: ; preds = %il_get_debug_level.exit272.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

do.end43.i:                                       ; preds = %il_get_debug_level.exit272.i
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %il, align 8
  %wiphy45.i = getelementptr inbounds %struct.ieee80211_hw, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %wiphy45.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wiphy45.i, align 8
  %dev46.i = getelementptr inbounds %struct.wiphy, ptr %42, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.73) #16
  br label %do.end49.i

do.end49.i:                                       ; preds = %do.end43.i, %il_get_debug_level.exit272.i.do.end49.i_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 256) #13
  br label %if.end66.i

do.body51.i:                                      ; preds = %if.else.i
  br i1 %tobool.not.i274.i, label %if.else.i275.i, label %do.body51.i.il_get_debug_level.exit277.i_crit_edge

do.body51.i.il_get_debug_level.exit277.i_crit_edge: ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit277.i

if.else.i275.i:                                   ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %43 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit277.i

il_get_debug_level.exit277.i:                     ; preds = %if.else.i275.i, %do.body51.i.il_get_debug_level.exit277.i_crit_edge
  %retval.0.i276.i = phi i32 [ %43, %if.else.i275.i ], [ %37, %do.body51.i.il_get_debug_level.exit277.i_crit_edge ]
  %and53.i = and i32 %retval.0.i276.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %il_get_debug_level.exit277.i.do.end64.i_crit_edge, label %do.end58.i

il_get_debug_level.exit277.i.do.end64.i_crit_edge: ; preds = %il_get_debug_level.exit277.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end64.i

do.end58.i:                                       ; preds = %il_get_debug_level.exit277.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %il, align 8
  %wiphy60.i = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy60.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy60.i, align 8
  %dev61.i = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.73) #16
  br label %do.end64.i

do.end64.i:                                       ; preds = %do.end58.i, %il_get_debug_level.exit277.i.do.end64.i_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 512) #13
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end64.i, %do.end49.i, %do.end25.i, %il_get_debug_level.exit267.i.if.end66.i_crit_edge
  %sku_cap.i = getelementptr inbounds %struct.il3945_eeprom, ptr %17, i32 0, i32 12
  %48 = ptrtoint ptr %sku_cap.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sku_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %49)
  %cmp68.i = icmp eq i8 %49, -128
  %50 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i279.i = icmp eq i32 %51, 0
  br i1 %cmp68.i, label %do.body71.i, label %do.body86.i

do.body71.i:                                      ; preds = %if.end66.i
  br i1 %tobool.not.i279.i, label %if.else.i280.i, label %do.body71.i.il_get_debug_level.exit282.i_crit_edge

do.body71.i.il_get_debug_level.exit282.i_crit_edge: ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit282.i

if.else.i280.i:                                   ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %52 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit282.i

il_get_debug_level.exit282.i:                     ; preds = %if.else.i280.i, %do.body71.i.il_get_debug_level.exit282.i_crit_edge
  %retval.0.i281.i = phi i32 [ %52, %if.else.i280.i ], [ %51, %do.body71.i.il_get_debug_level.exit282.i_crit_edge ]
  %and73.i = and i32 %retval.0.i281.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %il_get_debug_level.exit282.i.do.end84.i_crit_edge, label %do.end78.i

il_get_debug_level.exit282.i.do.end84.i_crit_edge: ; preds = %il_get_debug_level.exit282.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end84.i

do.end78.i:                                       ; preds = %il_get_debug_level.exit282.i
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %il, align 8
  %wiphy80.i = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy80.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy80.i, align 8
  %dev81.i = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.73) #16
  br label %do.end84.i

do.end84.i:                                       ; preds = %do.end78.i, %il_get_debug_level.exit282.i.do.end84.i_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 1024) #13
  br label %if.end100.i

do.body86.i:                                      ; preds = %if.end66.i
  br i1 %tobool.not.i279.i, label %if.else.i285.i, label %do.body86.i.il_get_debug_level.exit287.i_crit_edge

do.body86.i.il_get_debug_level.exit287.i_crit_edge: ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit287.i

if.else.i285.i:                                   ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %57 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit287.i

il_get_debug_level.exit287.i:                     ; preds = %if.else.i285.i, %do.body86.i.il_get_debug_level.exit287.i_crit_edge
  %retval.0.i286.i = phi i32 [ %57, %if.else.i285.i ], [ %51, %do.body86.i.il_get_debug_level.exit287.i_crit_edge ]
  %and88.i = and i32 %retval.0.i286.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %il_get_debug_level.exit287.i.if.end100.i_crit_edge, label %do.end93.i

il_get_debug_level.exit287.i.if.end100.i_crit_edge: ; preds = %il_get_debug_level.exit287.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100.i

do.end93.i:                                       ; preds = %il_get_debug_level.exit287.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %il, align 8
  %wiphy95.i = getelementptr inbounds %struct.ieee80211_hw, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %wiphy95.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %wiphy95.i, align 8
  %dev96.i = getelementptr inbounds %struct.wiphy, ptr %61, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.73) #16
  br label %if.end100.i

if.end100.i:                                      ; preds = %do.end93.i, %il_get_debug_level.exit287.i.if.end100.i_crit_edge, %do.end84.i
  %board_revision.i = getelementptr inbounds %struct.il3945_eeprom, ptr %17, i32 0, i32 7
  %62 = ptrtoint ptr %board_revision.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %board_revision.i, align 1
  %64 = and i16 %63, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 208, i16 %64)
  %cmp103.i = icmp eq i16 %64, 208
  %65 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i289.i = icmp eq i32 %66, 0
  br i1 %cmp103.i, label %do.body106.i, label %do.body123.i

do.body106.i:                                     ; preds = %if.end100.i
  br i1 %tobool.not.i289.i, label %if.else.i290.i, label %do.body106.i.il_get_debug_level.exit292.i_crit_edge

do.body106.i.il_get_debug_level.exit292.i_crit_edge: ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit292.i

if.else.i290.i:                                   ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %67 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit292.i

il_get_debug_level.exit292.i:                     ; preds = %if.else.i290.i, %do.body106.i.il_get_debug_level.exit292.i_crit_edge
  %retval.0.i291.i = phi i32 [ %67, %if.else.i290.i ], [ %66, %do.body106.i.il_get_debug_level.exit292.i_crit_edge ]
  %and108.i = and i32 %retval.0.i291.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.i)
  %tobool109.not.i = icmp eq i32 %and108.i, 0
  br i1 %tobool109.not.i, label %il_get_debug_level.exit292.i.do.end121.i_crit_edge, label %do.end113.i

il_get_debug_level.exit292.i.do.end121.i_crit_edge: ; preds = %il_get_debug_level.exit292.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end121.i

do.end113.i:                                      ; preds = %il_get_debug_level.exit292.i
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %il, align 8
  %wiphy115.i = getelementptr inbounds %struct.ieee80211_hw, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %wiphy115.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wiphy115.i, align 8
  %dev116.i = getelementptr inbounds %struct.wiphy, ptr %71, i32 0, i32 56
  %conv118.i = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.73, i32 noundef %conv118.i) #16
  br label %do.end121.i

do.end121.i:                                      ; preds = %do.end113.i, %il_get_debug_level.exit292.i.do.end121.i_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 2048) #13
  br label %if.end139.i

do.body123.i:                                     ; preds = %if.end100.i
  br i1 %tobool.not.i289.i, label %if.else.i295.i, label %do.body123.i.il_get_debug_level.exit297.i_crit_edge

do.body123.i.il_get_debug_level.exit297.i_crit_edge: ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit297.i

if.else.i295.i:                                   ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %72 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit297.i

il_get_debug_level.exit297.i:                     ; preds = %if.else.i295.i, %do.body123.i.il_get_debug_level.exit297.i_crit_edge
  %retval.0.i296.i = phi i32 [ %72, %if.else.i295.i ], [ %66, %do.body123.i.il_get_debug_level.exit297.i_crit_edge ]
  %and125.i = and i32 %retval.0.i296.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %il_get_debug_level.exit297.i.do.end138.i_crit_edge, label %do.end130.i

il_get_debug_level.exit297.i.do.end138.i_crit_edge: ; preds = %il_get_debug_level.exit297.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end138.i

do.end130.i:                                      ; preds = %il_get_debug_level.exit297.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %il, align 8
  %wiphy132.i = getelementptr inbounds %struct.ieee80211_hw, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %wiphy132.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wiphy132.i, align 8
  %dev133.i = getelementptr inbounds %struct.wiphy, ptr %76, i32 0, i32 56
  %conv135.i = zext i16 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev133.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.73, i32 noundef %conv135.i) #16
  br label %do.end138.i

do.end138.i:                                      ; preds = %do.end130.i, %il_get_debug_level.exit297.i.do.end138.i_crit_edge
  tail call void @il_clear_bit(ptr noundef %il, i32 noundef 0, i32 noundef 2048) #13
  br label %if.end139.i

if.end139.i:                                      ; preds = %do.end138.i, %do.end121.i
  %almgor_m_version.i = getelementptr inbounds %struct.il3945_eeprom, ptr %17, i32 0, i32 19
  %77 = ptrtoint ptr %almgor_m_version.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %almgor_m_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %cmp141.i = icmp ult i8 %78, 2
  br i1 %cmp141.i, label %if.then143.i, label %do.body161.i

if.then143.i:                                     ; preds = %if.end139.i
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 0) #13
  %79 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i299.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i299.i, label %if.else.i300.i, label %if.then143.i.il_get_debug_level.exit302.i_crit_edge

if.then143.i.il_get_debug_level.exit302.i_crit_edge: ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit302.i

if.else.i300.i:                                   ; preds = %if.then143.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %81 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit302.i

il_get_debug_level.exit302.i:                     ; preds = %if.else.i300.i, %if.then143.i.il_get_debug_level.exit302.i_crit_edge
  %retval.0.i301.i = phi i32 [ %81, %if.else.i300.i ], [ %80, %if.then143.i.il_get_debug_level.exit302.i_crit_edge ]
  %and146.i = and i32 %retval.0.i301.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %il_get_debug_level.exit302.i.if.end177.i_crit_edge, label %do.end151.i

il_get_debug_level.exit302.i.if.end177.i_crit_edge: ; preds = %il_get_debug_level.exit302.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end177.i

do.end151.i:                                      ; preds = %il_get_debug_level.exit302.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %il, align 8
  %wiphy153.i = getelementptr inbounds %struct.ieee80211_hw, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wiphy153.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wiphy153.i, align 8
  %dev154.i = getelementptr inbounds %struct.wiphy, ptr %85, i32 0, i32 56
  %86 = ptrtoint ptr %almgor_m_version.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %almgor_m_version.i, align 1
  %conv156.i = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.73, i32 noundef %conv156.i) #16
  br label %if.end177.i

do.body161.i:                                     ; preds = %if.end139.i
  %88 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i304.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i304.i, label %if.else.i305.i, label %do.body161.i.il_get_debug_level.exit307.i_crit_edge

do.body161.i.il_get_debug_level.exit307.i_crit_edge: ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit307.i

if.else.i305.i:                                   ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %90 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit307.i

il_get_debug_level.exit307.i:                     ; preds = %if.else.i305.i, %do.body161.i.il_get_debug_level.exit307.i_crit_edge
  %retval.0.i306.i = phi i32 [ %90, %if.else.i305.i ], [ %89, %do.body161.i.il_get_debug_level.exit307.i_crit_edge ]
  %and163.i = and i32 %retval.0.i306.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %il_get_debug_level.exit307.i.do.end176.i_crit_edge, label %do.end168.i

il_get_debug_level.exit307.i.do.end176.i_crit_edge: ; preds = %il_get_debug_level.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end176.i

do.end168.i:                                      ; preds = %il_get_debug_level.exit307.i
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %il, align 8
  %wiphy170.i = getelementptr inbounds %struct.ieee80211_hw, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %wiphy170.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wiphy170.i, align 8
  %dev171.i = getelementptr inbounds %struct.wiphy, ptr %94, i32 0, i32 56
  %conv173.i = zext i8 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev171.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.73, i32 noundef %conv173.i) #16
  br label %do.end176.i

do.end176.i:                                      ; preds = %do.end168.i, %il_get_debug_level.exit307.i.do.end176.i_crit_edge
  tail call void @il_set_bit(ptr noundef %il, i32 noundef 0, i32 noundef 4096) #13
  br label %if.end177.i

if.end177.i:                                      ; preds = %do.end176.i, %do.end151.i, %il_get_debug_level.exit302.i.if.end177.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.i) #13
  %95 = ptrtoint ptr %sku_cap.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %sku_cap.i, align 1
  %97 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool182.not.i = icmp eq i8 %97, 0
  br i1 %tobool182.not.i, label %if.end177.i.if.end198.i_crit_edge, label %do.body184.i

if.end177.i.if.end198.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198.i

do.body184.i:                                     ; preds = %if.end177.i
  %98 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i309.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i309.i, label %if.else.i310.i, label %do.body184.i.il_get_debug_level.exit312.i_crit_edge

do.body184.i.il_get_debug_level.exit312.i_crit_edge: ; preds = %do.body184.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit312.i

if.else.i310.i:                                   ; preds = %do.body184.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %100 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit312.i

il_get_debug_level.exit312.i:                     ; preds = %if.else.i310.i, %do.body184.i.il_get_debug_level.exit312.i_crit_edge
  %retval.0.i311.i = phi i32 [ %100, %if.else.i310.i ], [ %99, %do.body184.i.il_get_debug_level.exit312.i_crit_edge ]
  %and186.i = and i32 %retval.0.i311.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186.i)
  %tobool187.not.i = icmp eq i32 %and186.i, 0
  br i1 %tobool187.not.i, label %il_get_debug_level.exit312.i.if.end198.i_crit_edge, label %do.end191.i

il_get_debug_level.exit312.i.if.end198.i_crit_edge: ; preds = %il_get_debug_level.exit312.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198.i

do.end191.i:                                      ; preds = %il_get_debug_level.exit312.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %il, align 8
  %wiphy193.i = getelementptr inbounds %struct.ieee80211_hw, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %wiphy193.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %wiphy193.i, align 8
  %dev194.i = getelementptr inbounds %struct.wiphy, ptr %104, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev194.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.73) #16
  br label %if.end198.i

if.end198.i:                                      ; preds = %do.end191.i, %il_get_debug_level.exit312.i.if.end198.i_crit_edge, %if.end177.i.if.end198.i_crit_edge
  %105 = ptrtoint ptr %sku_cap.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %sku_cap.i, align 1
  %107 = and i8 %106, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool202.not.i = icmp eq i8 %107, 0
  br i1 %tobool202.not.i, label %if.end198.i.il3945_nic_config.exit_crit_edge, label %do.body204.i

if.end198.i.il3945_nic_config.exit_crit_edge:     ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_nic_config.exit

do.body204.i:                                     ; preds = %if.end198.i
  %108 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i314.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i314.i, label %if.else.i315.i, label %do.body204.i.il_get_debug_level.exit317.i_crit_edge

do.body204.i.il_get_debug_level.exit317.i_crit_edge: ; preds = %do.body204.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit317.i

if.else.i315.i:                                   ; preds = %do.body204.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %110 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit317.i

il_get_debug_level.exit317.i:                     ; preds = %if.else.i315.i, %do.body204.i.il_get_debug_level.exit317.i_crit_edge
  %retval.0.i316.i = phi i32 [ %110, %if.else.i315.i ], [ %109, %do.body204.i.il_get_debug_level.exit317.i_crit_edge ]
  %and206.i = and i32 %retval.0.i316.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206.i)
  %tobool207.not.i = icmp eq i32 %and206.i, 0
  br i1 %tobool207.not.i, label %il_get_debug_level.exit317.i.il3945_nic_config.exit_crit_edge, label %do.end211.i

il_get_debug_level.exit317.i.il3945_nic_config.exit_crit_edge: ; preds = %il_get_debug_level.exit317.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_nic_config.exit

do.end211.i:                                      ; preds = %il_get_debug_level.exit317.i
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %il, align 8
  %wiphy213.i = getelementptr inbounds %struct.ieee80211_hw, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %wiphy213.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %wiphy213.i, align 8
  %dev214.i = getelementptr inbounds %struct.wiphy, ptr %114, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev214.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.73) #16
  br label %il3945_nic_config.exit

il3945_nic_config.exit:                           ; preds = %do.end211.i, %il_get_debug_level.exit317.i.il3945_nic_config.exit_crit_edge, %if.end198.i.il3945_nic_config.exit_crit_edge
  %115 = ptrtoint ptr %rxq1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rxq1, align 4
  %tobool.not = icmp eq ptr %116, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %il3945_nic_config.exit
  %call8 = tail call i32 @il_rx_queue_alloc(ptr noundef %il) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %do.end13

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pci_dev.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #16
  br label %cleanup

if.else:                                          ; preds = %il3945_nic_config.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @il3945_rx_queue_reset(ptr noundef %il, ptr noundef %rxq1) #13
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then.if.end14_crit_edge
  tail call void @il3945_rx_replenish(ptr noundef %il) #13
  %bd_dma.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 71, i32 1
  %119 = ptrtoint ptr %bd_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bd_dma.i, align 4
  %call2.i.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i.i42 = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i.i42, label %if.then.i.i45, label %if.end14.il_wr.exit.i_crit_edge, !prof !407

if.end14.il_wr.exit.i_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit.i

if.then.i.i45:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #13
  %hw_base.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %122 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %123, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %121) #13, !srcloc !409
  %124 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i.i.i43 = getelementptr i8, ptr %125, i32 36
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i43) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %127 = and i32 %126, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %128 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i4.i.i.i.i44 = getelementptr i8, ptr %129, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i44, i32 %127) #13, !srcloc !409
  br label %il_wr.exit.i

il_wr.exit.i:                                     ; preds = %if.then.i.i45, %if.end14.il_wr.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i41) #13
  %rb_stts_dma.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 71, i32 12
  %130 = ptrtoint ptr %rb_stts_dma.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rb_stts_dma.i, align 4
  %call2.i2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i3.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i3.i, label %if.then.i8.i, label %il_wr.exit.i.il_wr.exit9.i_crit_edge, !prof !407

il_wr.exit.i.il_wr.exit9.i_crit_edge:             ; preds = %il_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit9.i

if.then.i8.i:                                     ; preds = %il_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #13
  %hw_base.i.i4.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %133 = ptrtoint ptr %hw_base.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw_base.i.i4.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %134, i32 3108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i, i32 %132) #13, !srcloc !409
  %135 = ptrtoint ptr %hw_base.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw_base.i.i4.i, align 4
  %add.ptr.i.i.i.i6.i = getelementptr i8, ptr %136, i32 36
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i6.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %138 = and i32 %137, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %139 = ptrtoint ptr %hw_base.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw_base.i.i4.i, align 4
  %add.ptr.i4.i.i.i7.i = getelementptr i8, ptr %140, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i7.i, i32 %138) #13, !srcloc !409
  br label %il_wr.exit9.i

il_wr.exit9.i:                                    ; preds = %if.then.i8.i, %il_wr.exit.i.il_wr.exit9.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i2.i) #13
  %call2.i11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i12.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i12.i, label %if.then.i17.i, label %il_wr.exit9.i.il_wr.exit18.i_crit_edge, !prof !407

il_wr.exit9.i.il_wr.exit18.i_crit_edge:           ; preds = %il_wr.exit9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit18.i

if.then.i17.i:                                    ; preds = %il_wr.exit9.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i13.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %141 = ptrtoint ptr %hw_base.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hw_base.i.i13.i, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %142, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 0) #13, !srcloc !409
  %143 = ptrtoint ptr %hw_base.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw_base.i.i13.i, align 4
  %add.ptr.i.i.i.i15.i = getelementptr i8, ptr %144, i32 36
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i15.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %146 = and i32 %145, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %147 = ptrtoint ptr %hw_base.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hw_base.i.i13.i, align 4
  %add.ptr.i4.i.i.i16.i = getelementptr i8, ptr %148, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i16.i, i32 %146) #13, !srcloc !409
  br label %il_wr.exit18.i

il_wr.exit18.i:                                   ; preds = %if.then.i17.i, %il_wr.exit9.i.il_wr.exit18.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i11.i) #13
  %call2.i20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i21.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i21.i, label %if.then.i26.i, label %il_wr.exit18.i.il3945_rx_init.exit_crit_edge, !prof !407

il_wr.exit18.i.il3945_rx_init.exit_crit_edge:     ; preds = %il_wr.exit18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_rx_init.exit

if.then.i26.i:                                    ; preds = %il_wr.exit18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i22.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %149 = ptrtoint ptr %hw_base.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_base.i.i22.i, align 4
  %add.ptr.i.i23.i = getelementptr i8, ptr %150, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i23.i, i32 269516969) #13, !srcloc !409
  %151 = ptrtoint ptr %hw_base.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw_base.i.i22.i, align 4
  %add.ptr.i.i.i.i24.i = getelementptr i8, ptr %152, i32 36
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i24.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %154 = and i32 %153, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %155 = ptrtoint ptr %hw_base.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hw_base.i.i22.i, align 4
  %add.ptr.i4.i.i.i25.i = getelementptr i8, ptr %156, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i25.i, i32 %154) #13, !srcloc !409
  br label %il3945_rx_init.exit

il3945_rx_init.exit:                              ; preds = %if.then.i26.i, %il_wr.exit18.i.il3945_rx_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i20.i) #13
  %call2.i29.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i30.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  %hw_base.i.i31.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %157 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %158, i32 3264
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %160 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i.i.i33.i = getelementptr i8, ptr %161, i32 36
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i33.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %163 = and i32 %162, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %164 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i4.i.i.i34.i = getelementptr i8, ptr %165, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i34.i, i32 %163) #13, !srcloc !409
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i29.i) #13
  %write = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 71, i32 5
  %166 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %write, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i, label %if.then.i, label %il3945_rx_init.exit.il_wr.exit_crit_edge, !prof !407

il3945_rx_init.exit.il_wr.exit_crit_edge:         ; preds = %il3945_rx_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit

if.then.i:                                        ; preds = %il3945_rx_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %167, -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %168 = tail call i32 @llvm.bswap.i32(i32 %and) #13
  %169 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %170, i32 3104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %168) #13, !srcloc !409
  %171 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i.i.i46 = getelementptr i8, ptr %172, i32 36
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i46) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %174 = and i32 %173, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %175 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %176, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %174) #13, !srcloc !409
  br label %il_wr.exit

il_wr.exit:                                       ; preds = %if.then.i, %il3945_rx_init.exit.il_wr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i) #13
  tail call void @il3945_hw_txq_ctx_free(ptr noundef %il) #13
  %call.i47 = tail call i32 @il_alloc_txq_mem(ptr noundef %il) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i, label %il_wr.exit.cleanup_crit_edge

il_wr.exit.cleanup_crit_edge:                     ; preds = %il_wr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %il_wr.exit
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11776, i32 noundef 2) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11780, i32 noundef 1) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11792, i32 noundef 63) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11820, i32 noundef 65536) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11824, i32 noundef 196610) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11796, i32 noundef 4) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 11808, i32 noundef 5) #13
  %shared_phys.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 1
  %177 = ptrtoint ptr %shared_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %shared_phys.i.i, align 4
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i.i.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i.i.i, label %if.then.i.i.i, label %if.end.i.il_wr.exit.i.i_crit_edge, !prof !407

if.end.i.il_wr.exit.i.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #13
  %180 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i.i.i50 = getelementptr i8, ptr %181, i32 3712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i50, i32 %179) #13, !srcloc !409
  %182 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %183, i32 36
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %185 = and i32 %184, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %186 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i4.i.i.i.i.i = getelementptr i8, ptr %187, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i.i.i, i32 %185) #13, !srcloc !409
  br label %il_wr.exit.i.i

il_wr.exit.i.i:                                   ; preds = %if.then.i.i.i, %if.end.i.il_wr.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i.i) #13
  %call2.i2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #13
  %call5.i3.i.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i3.i.i, label %if.then.i8.i.i, label %il_wr.exit.i.i.il3945_tx_reset.exit.i_crit_edge, !prof !407

il_wr.exit.i.i.il3945_tx_reset.exit.i_crit_edge:  ; preds = %il_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_tx_reset.exit.i

if.then.i8.i.i:                                   ; preds = %il_wr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %188 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i5.i.i = getelementptr i8, ptr %189, i32 3720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5.i.i, i32 -1526333441) #13, !srcloc !409
  %190 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i.i.i.i6.i.i = getelementptr i8, ptr %191, i32 36
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i6.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %193 = and i32 %192, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %194 = ptrtoint ptr %hw_base.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw_base.i.i31.i, align 4
  %add.ptr.i4.i.i.i7.i.i = getelementptr i8, ptr %195, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i7.i.i, i32 %193) #13, !srcloc !409
  br label %il3945_tx_reset.exit.i

il3945_tx_reset.exit.i:                           ; preds = %if.then.i8.i.i, %il_wr.exit.i.i.il3945_tx_reset.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i2.i.i) #13
  %max_txq_num.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 1
  %196 = ptrtoint ptr %max_txq_num.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %max_txq_num.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %cmp27.not.i = icmp eq i8 %197, 0
  br i1 %cmp27.not.i, label %il3945_tx_reset.exit.i.if.end19_crit_edge, label %il3945_tx_reset.exit.i.for.body.i_crit_edge

il3945_tx_reset.exit.i.for.body.i_crit_edge:      ; preds = %il3945_tx_reset.exit.i
  br label %for.body.i

il3945_tx_reset.exit.i.if.end19_crit_edge:        ; preds = %il3945_tx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %il3945_tx_reset.exit.i.for.body.i_crit_edge
  %txq_id.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %il3945_tx_reset.exit.i.for.body.i_crit_edge ]
  %call6.i = tail call i32 @il_tx_queue_init(ptr noundef %il, i32 noundef %txq_id.028.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %198 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pci_dev.i, align 8
  %dev.i52 = getelementptr inbounds %struct.pci_dev, ptr %199, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i52, ptr noundef nonnull @.str.106, i32 noundef %txq_id.028.i) #16
  tail call void @il3945_hw_txq_ctx_free(ptr noundef %il) #13
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %txq_id.028.i, 1
  %200 = ptrtoint ptr %max_txq_num.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %max_txq_num.i, align 1
  %conv.i = zext i8 %201 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end19_crit_edge

for.inc.i.if.end19_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end19:                                         ; preds = %for.inc.i.if.end19_crit_edge, %il3945_tx_reset.exit.i.if.end19_crit_edge
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  tail call void @_set_bit(i32 noundef 5, ptr noundef %status) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end.i, %il_wr.exit.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -12, %do.end13 ], [ %call6.i, %do.end.i ], [ %call.i47, %il_wr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_apm_init(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @il_apm_init(ptr noundef %il) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 12320, i32 noundef 0) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 12316, i32 noundef -1) #13
  %reg_lock.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %call5.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i, label %if.then.i, label %entry.il_set_bits_prph.exit_crit_edge, !prof !407

entry.il_set_bits_prph.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_set_bits_prph.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 204472323) #13, !srcloc !409
  %2 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %3, i32 1104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %5 = or i32 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %7, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 204472323) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %8 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %9, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %5) #13, !srcloc !409
  %10 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %13 = and i32 %12, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %13) #13, !srcloc !409
  br label %il_set_bits_prph.exit

il_set_bits_prph.exit:                            ; preds = %if.then.i, %entry.il_set_bits_prph.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #13
  %call2.i6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %call5.i7 = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i7, label %if.then.i15, label %il_set_bits_prph.exit.il_clear_bits_prph.exit_crit_edge, !prof !407

il_set_bits_prph.exit.il_clear_bits_prph.exit_crit_edge: ; preds = %il_set_bits_prph.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_clear_bits_prph.exit

if.then.i15:                                      ; preds = %il_set_bits_prph.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i.i8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %17 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i.i.i9 = getelementptr i8, ptr %18, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i9, i32 204472323) #13, !srcloc !409
  %19 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i2.i.i10 = getelementptr i8, ptr %20, i32 1104
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i10) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %22 = and i32 %21, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i.i2.i11 = getelementptr i8, ptr %24, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i11, i32 204472323) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %25 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i3.i.i12 = getelementptr i8, ptr %26, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i12, i32 %22) #13, !srcloc !409
  %27 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i.i.i.i13 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i13) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %30 = and i32 %29, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %hw_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_base.i.i.i8, align 4
  %add.ptr.i4.i.i.i14 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i14, i32 %30) #13, !srcloc !409
  br label %il_clear_bits_prph.exit

il_clear_bits_prph.exit:                          ; preds = %if.then.i15, %il_set_bits_prph.exit.il_clear_bits_prph.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i6) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_rx_queue_alloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_rx_queue_reset(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_rx_replenish(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_txq_ctx_free(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %txq = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 72
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %for.cond.preheader

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.cond.preheader:                               ; preds = %entry
  %max_txq_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 1
  %2 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp14.not = icmp eq i8 %3, 0
  br i1 %cmp14.not, label %for.cond.preheader.if.end5_crit_edge, label %for.inc.peel

for.cond.preheader.if.end5_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel:                                     ; preds = %for.cond.preheader
  tail call void @il_tx_queue_free(ptr noundef %il, i32 noundef 0) #13
  %4 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.peel = icmp ugt i8 %5, 1
  br i1 %cmp.peel, label %for.inc.peel22, label %for.inc.peel.if.end5_crit_edge

for.inc.peel.if.end5_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel22:                                   ; preds = %for.inc.peel
  tail call void @il_tx_queue_free(ptr noundef %il, i32 noundef 1) #13
  %6 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.peel25 = icmp ugt i8 %7, 2
  br i1 %cmp.peel25, label %for.inc.peel31, label %for.inc.peel22.if.end5_crit_edge

for.inc.peel22.if.end5_crit_edge:                 ; preds = %for.inc.peel22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel31:                                   ; preds = %for.inc.peel22
  tail call void @il_tx_queue_free(ptr noundef %il, i32 noundef 2) #13
  %8 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp.peel34 = icmp ugt i8 %9, 3
  br i1 %cmp.peel34, label %for.inc.peel40, label %for.inc.peel31.if.end5_crit_edge

for.inc.peel31.if.end5_crit_edge:                 ; preds = %for.inc.peel31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel40:                                   ; preds = %for.inc.peel31
  tail call void @il_tx_queue_free(ptr noundef %il, i32 noundef 3) #13
  %10 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp.peel43 = icmp ugt i8 %11, 4
  br i1 %cmp.peel43, label %for.inc.peel49, label %for.inc.peel40.if.end5_crit_edge

for.inc.peel40.if.end5_crit_edge:                 ; preds = %for.inc.peel40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel49:                                   ; preds = %for.inc.peel40
  tail call void @il_cmd_queue_free(ptr noundef %il) #13
  %12 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp.peel52 = icmp ugt i8 %13, 5
  br i1 %cmp.peel52, label %for.inc.peel49.for.inc_crit_edge, label %for.inc.peel49.if.end5_crit_edge

for.inc.peel49.if.end5_crit_edge:                 ; preds = %for.inc.peel49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.peel49.for.inc_crit_edge:                 ; preds = %for.inc.peel49
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel49.for.inc_crit_edge
  %txq_id.015 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 5, %for.inc.peel49.for.inc_crit_edge ]
  tail call void @il_tx_queue_free(ptr noundef %il, i32 noundef %txq_id.015) #13
  %inc = add nuw nsw i32 %txq_id.015, 1
  %14 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_txq_num, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.if.end5_crit_edge, !llvm.loop !412

for.inc.if.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end5:                                          ; preds = %for.inc.if.end5_crit_edge, %for.inc.peel49.if.end5_crit_edge, %for.inc.peel40.if.end5_crit_edge, %for.inc.peel31.if.end5_crit_edge, %for.inc.peel22.if.end5_crit_edge, %for.inc.peel.if.end5_crit_edge, %for.cond.preheader.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @il_free_txq_mem(ptr noundef %il) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_cmd_queue_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_tx_queue_free(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_free_txq_mem(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_txq_ctx_stop(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 3014659) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %3, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %5, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 271450115) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i3.i23 = getelementptr i8, ptr %7, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i23, i32 0) #13, !srcloc !409
  %max_txq_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 1
  %8 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_txq_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25.not = icmp eq i8 %9, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %txq_id.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %txq_id.026, 5
  %add = add nuw nsw i32 %mul, 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !409
  %shl = shl nuw i32 1, %txq_id.026
  %shl3 = shl i32 %shl, 24
  %shl5 = shl i32 %shl, 16
  %or = or i32 %shl3, %shl5
  %call = tail call i32 @_il_poll_bit(ptr noundef %il, i32 noundef 3728, i32 noundef %or, i32 noundef %or, i32 noundef 1000) #13
  %inc = add nuw nsw i32 %txq_id.026, 1
  %12 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_txq_num, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_il_poll_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_get_temperature(ptr nocapture noundef readonly %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !410
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_reg_set_txpower(ptr noundef %il, i8 noundef signext %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_power_user_lmt = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 111
  %0 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_power_user_lmt, align 8
  %conv1 = sext i8 %power to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %power)
  %cmp = icmp eq i8 %1, %power
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %2 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %4 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.else.i ], [ %3, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %conv1) #16
  br label %cleanup

do.body9:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i75, label %do.body9.il_get_debug_level.exit77_crit_edge

do.body9.il_get_debug_level.exit77_crit_edge:     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit77

if.else.i75:                                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %9 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit77

il_get_debug_level.exit77:                        ; preds = %if.else.i75, %do.body9.il_get_debug_level.exit77_crit_edge
  %retval.0.i76 = phi i32 [ %9, %if.else.i75 ], [ %3, %do.body9.il_get_debug_level.exit77_crit_edge ]
  %and11 = and i32 %retval.0.i76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %il_get_debug_level.exit77.do.end23_crit_edge, label %do.end16

il_get_debug_level.exit77.do.end23_crit_edge:     ; preds = %il_get_debug_level.exit77
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end23

do.end16:                                         ; preds = %il_get_debug_level.exit77
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il, align 8
  %wiphy18 = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy18, align 8
  %dev19 = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv1) #16
  br label %do.end23

do.end23:                                         ; preds = %do.end16, %il_get_debug_level.exit77.do.end23_crit_edge
  %14 = ptrtoint ptr %tx_power_user_lmt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %power, ptr %tx_power_user_lmt, align 8
  %channel_count = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 19
  %15 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp2779.not = icmp eq i8 %16, 0
  br i1 %cmp2779.not, label %do.end23.for.end_crit_edge, label %for.body.lr.ph

do.end23.for.end_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end23
  %channel_info = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %channel_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_info, align 8
  %max_power_avg.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 2, i32 1
  %19 = ptrtoint ptr %max_power_avg.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_power_avg.i, align 1
  %max_power_avg1.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 6
  %21 = ptrtoint ptr %max_power_avg1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_power_avg1.i, align 2
  %23 = tail call i8 @llvm.smin.i8(i8 %20, i8 %22) #13
  %24 = tail call i8 @llvm.smin.i8(i8 %23, i8 %power)
  %curr_txpow = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 7
  %25 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %curr_txpow, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp40.not = icmp eq i8 %24, %26
  br i1 %cmp40.not, label %for.body.for.inc_crit_edge, label %if.then42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then42:                                        ; preds = %for.body
  %27 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %curr_txpow, align 1
  %group_idx.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 10
  %28 = ptrtoint ptr %group_idx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %group_idx.i, align 2
  %idxprom.i = zext i8 %29 to i32
  %arrayidx.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 %idxprom.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %32 = tail call i8 @llvm.smin.i8(i8 %24, i8 %31) #13
  %requested_power.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 0, i32 3
  %33 = ptrtoint ptr %requested_power.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %requested_power.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %32)
  %cmp10.i = icmp eq i8 %34, %32
  br i1 %cmp10.i, label %if.then42.cleanup.i_crit_edge, label %if.end.i

if.then42.cleanup.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.i = sub i8 %34, %32
  %mul.neg.i = shl i8 %sub.neg.i, 1
  %base_power_idx.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 0, i32 2
  %35 = ptrtoint ptr %base_power_idx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %base_power_idx.i, align 1
  %sub15.i = add i8 %36, %mul.neg.i
  store i8 %sub15.i, ptr %base_power_idx.i, align 1
  %37 = ptrtoint ptr %requested_power.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %32, ptr %requested_power.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then42.cleanup.i_crit_edge
  %power_changed.1.i = phi i32 [ 1, %if.end.i ], [ 0, %if.then42.cleanup.i_crit_edge ]
  %38 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.1.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %40 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx3.1.i, align 1
  %42 = tail call i8 @llvm.smin.i8(i8 %39, i8 %41) #13
  %requested_power.1.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 1, i32 3
  %43 = ptrtoint ptr %requested_power.1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %requested_power.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %42)
  %cmp10.1.i = icmp eq i8 %44, %42
  br i1 %cmp10.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.1.i = sub i8 %44, %42
  %mul.neg.1.i = shl i8 %sub.neg.1.i, 1
  %base_power_idx.1.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 1, i32 2
  %45 = ptrtoint ptr %base_power_idx.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %base_power_idx.1.i, align 1
  %sub15.1.i = add i8 %46, %mul.neg.1.i
  store i8 %sub15.1.i, ptr %base_power_idx.1.i, align 1
  %47 = ptrtoint ptr %requested_power.1.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %42, ptr %requested_power.1.i, align 1
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %power_changed.1.1.i = phi i32 [ 1, %if.end.1.i ], [ %power_changed.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %48 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.2.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %50 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx3.2.i, align 1
  %52 = tail call i8 @llvm.smin.i8(i8 %49, i8 %51) #13
  %requested_power.2.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 2, i32 3
  %53 = ptrtoint ptr %requested_power.2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %requested_power.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %52)
  %cmp10.2.i = icmp eq i8 %54, %52
  br i1 %cmp10.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.2.i = sub i8 %54, %52
  %mul.neg.2.i = shl i8 %sub.neg.2.i, 1
  %base_power_idx.2.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 2, i32 2
  %55 = ptrtoint ptr %base_power_idx.2.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %base_power_idx.2.i, align 1
  %sub15.2.i = add i8 %56, %mul.neg.2.i
  store i8 %sub15.2.i, ptr %base_power_idx.2.i, align 1
  %57 = ptrtoint ptr %requested_power.2.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %52, ptr %requested_power.2.i, align 1
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  %power_changed.1.2.i = phi i32 [ 1, %if.end.2.i ], [ %power_changed.1.1.i, %cleanup.1.i.cleanup.2.i_crit_edge ]
  %58 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.3.i = getelementptr i8, ptr %arrayidx.i, i32 3
  %60 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx3.3.i, align 1
  %62 = tail call i8 @llvm.smin.i8(i8 %59, i8 %61) #13
  %requested_power.3.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 3, i32 3
  %63 = ptrtoint ptr %requested_power.3.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %requested_power.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %62)
  %cmp10.3.i = icmp eq i8 %64, %62
  br i1 %cmp10.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %if.end.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.3.i

if.end.3.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.3.i = sub i8 %64, %62
  %mul.neg.3.i = shl i8 %sub.neg.3.i, 1
  %base_power_idx.3.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 3, i32 2
  %65 = ptrtoint ptr %base_power_idx.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %base_power_idx.3.i, align 1
  %sub15.3.i = add i8 %66, %mul.neg.3.i
  store i8 %sub15.3.i, ptr %base_power_idx.3.i, align 1
  %67 = ptrtoint ptr %requested_power.3.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %62, ptr %requested_power.3.i, align 1
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end.3.i, %cleanup.2.i.cleanup.3.i_crit_edge
  %power_changed.1.3.i = phi i32 [ 1, %if.end.3.i ], [ %power_changed.1.2.i, %cleanup.2.i.cleanup.3.i_crit_edge ]
  %68 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.4.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %70 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx3.4.i, align 1
  %72 = tail call i8 @llvm.smin.i8(i8 %69, i8 %71) #13
  %requested_power.4.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 4, i32 3
  %73 = ptrtoint ptr %requested_power.4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %requested_power.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %72)
  %cmp10.4.i = icmp eq i8 %74, %72
  br i1 %cmp10.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %if.end.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.4.i

if.end.4.i:                                       ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.4.i = sub i8 %74, %72
  %mul.neg.4.i = shl i8 %sub.neg.4.i, 1
  %base_power_idx.4.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 4, i32 2
  %75 = ptrtoint ptr %base_power_idx.4.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %base_power_idx.4.i, align 1
  %sub15.4.i = add i8 %76, %mul.neg.4.i
  store i8 %sub15.4.i, ptr %base_power_idx.4.i, align 1
  %77 = ptrtoint ptr %requested_power.4.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %72, ptr %requested_power.4.i, align 1
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.end.4.i, %cleanup.3.i.cleanup.4.i_crit_edge
  %power_changed.1.4.i = phi i32 [ 1, %if.end.4.i ], [ %power_changed.1.3.i, %cleanup.3.i.cleanup.4.i_crit_edge ]
  %78 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.5.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %80 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx3.5.i, align 1
  %82 = tail call i8 @llvm.smin.i8(i8 %79, i8 %81) #13
  %requested_power.5.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 5, i32 3
  %83 = ptrtoint ptr %requested_power.5.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %requested_power.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %82)
  %cmp10.5.i = icmp eq i8 %84, %82
  br i1 %cmp10.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %if.end.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.5.i

if.end.5.i:                                       ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.5.i = sub i8 %84, %82
  %mul.neg.5.i = shl i8 %sub.neg.5.i, 1
  %base_power_idx.5.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 5, i32 2
  %85 = ptrtoint ptr %base_power_idx.5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %base_power_idx.5.i, align 1
  %sub15.5.i = add i8 %86, %mul.neg.5.i
  store i8 %sub15.5.i, ptr %base_power_idx.5.i, align 1
  %87 = ptrtoint ptr %requested_power.5.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %82, ptr %requested_power.5.i, align 1
  br label %cleanup.5.i

cleanup.5.i:                                      ; preds = %if.end.5.i, %cleanup.4.i.cleanup.5.i_crit_edge
  %power_changed.1.5.i = phi i32 [ 1, %if.end.5.i ], [ %power_changed.1.4.i, %cleanup.4.i.cleanup.5.i_crit_edge ]
  %88 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.6.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %90 = ptrtoint ptr %arrayidx3.6.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx3.6.i, align 1
  %92 = tail call i8 @llvm.smin.i8(i8 %89, i8 %91) #13
  %requested_power.6.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 6, i32 3
  %93 = ptrtoint ptr %requested_power.6.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %requested_power.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %92)
  %cmp10.6.i = icmp eq i8 %94, %92
  br i1 %cmp10.6.i, label %cleanup.5.i.cleanup.6.i_crit_edge, label %if.end.6.i

cleanup.5.i.cleanup.6.i_crit_edge:                ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.6.i

if.end.6.i:                                       ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.6.i = sub i8 %94, %92
  %mul.neg.6.i = shl i8 %sub.neg.6.i, 1
  %base_power_idx.6.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 6, i32 2
  %95 = ptrtoint ptr %base_power_idx.6.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %base_power_idx.6.i, align 1
  %sub15.6.i = add i8 %96, %mul.neg.6.i
  store i8 %sub15.6.i, ptr %base_power_idx.6.i, align 1
  %97 = ptrtoint ptr %requested_power.6.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %92, ptr %requested_power.6.i, align 1
  br label %cleanup.6.i

cleanup.6.i:                                      ; preds = %if.end.6.i, %cleanup.5.i.cleanup.6.i_crit_edge
  %power_changed.1.6.i = phi i32 [ 1, %if.end.6.i ], [ %power_changed.1.5.i, %cleanup.5.i.cleanup.6.i_crit_edge ]
  %98 = ptrtoint ptr %curr_txpow to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %curr_txpow, align 1
  %arrayidx3.7.i = getelementptr i8, ptr %arrayidx.i, i32 7
  %100 = ptrtoint ptr %arrayidx3.7.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx3.7.i, align 1
  %102 = tail call i8 @llvm.smin.i8(i8 %99, i8 %101) #13
  %requested_power.7.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 7, i32 3
  %103 = ptrtoint ptr %requested_power.7.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %requested_power.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %102)
  %cmp10.7.i = icmp eq i8 %104, %102
  br i1 %cmp10.7.i, label %cleanup.7.i, label %cleanup.7.thread.i

cleanup.7.thread.i:                               ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.neg.7.i = sub i8 %104, %102
  %mul.neg.7.i = shl i8 %sub.neg.7.i, 1
  %base_power_idx.7.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 7, i32 2
  %105 = ptrtoint ptr %base_power_idx.7.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %base_power_idx.7.i, align 1
  %sub15.7.i = add i8 %106, %mul.neg.7.i
  store i8 %sub15.7.i, ptr %base_power_idx.7.i, align 1
  %107 = ptrtoint ptr %requested_power.7.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %102, ptr %requested_power.7.i, align 1
  br label %if.then19.i

cleanup.7.i:                                      ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_changed.1.6.i)
  %tobool.not.i78 = icmp eq i32 %power_changed.1.6.i, 0
  br i1 %tobool.not.i78, label %cleanup.7.i.for.inc_crit_edge, label %cleanup.7.i.if.then19.i_crit_edge

cleanup.7.i.if.then19.i_crit_edge:                ; preds = %cleanup.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

cleanup.7.i.for.inc_crit_edge:                    ; preds = %cleanup.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then19.i:                                      ; preds = %cleanup.7.i.if.then19.i_crit_edge, %cleanup.7.thread.i
  %108 = ptrtoint ptr %requested_power.2.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %requested_power.2.i, align 1
  %add.i = add i8 %109, -5
  %base_power_idx32.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 2, i32 2
  %requested_power29.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 8, i32 3
  %110 = ptrtoint ptr %requested_power29.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %add.i, ptr %requested_power29.i, align 1
  %111 = ptrtoint ptr %base_power_idx32.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %base_power_idx32.i, align 1
  %add34.i = add i8 %112, 10
  %base_power_idx36.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 8, i32 2
  %113 = ptrtoint ptr %base_power_idx36.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %add34.i, ptr %base_power_idx36.i, align 1
  %requested_power29.1.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 9, i32 3
  %114 = ptrtoint ptr %requested_power29.1.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %add.i, ptr %requested_power29.1.i, align 1
  %base_power_idx36.1.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 9, i32 2
  %115 = ptrtoint ptr %base_power_idx36.1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %add34.i, ptr %base_power_idx36.1.i, align 1
  %requested_power29.2.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 10, i32 3
  %116 = ptrtoint ptr %requested_power29.2.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %add.i, ptr %requested_power29.2.i, align 1
  %base_power_idx36.2.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 10, i32 2
  %117 = ptrtoint ptr %base_power_idx36.2.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %add34.i, ptr %base_power_idx36.2.i, align 1
  %requested_power29.3.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 11, i32 3
  %118 = ptrtoint ptr %requested_power29.3.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %add.i, ptr %requested_power29.3.i, align 1
  %base_power_idx36.3.i = getelementptr %struct.il_channel_info, ptr %18, i32 %indvars.iv, i32 16, i32 11, i32 2
  %119 = ptrtoint ptr %base_power_idx36.3.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %add34.i, ptr %base_power_idx36.3.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then19.i, %cleanup.7.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %120 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %channel_count, align 4
  %122 = zext i8 %121 to i32
  %cmp27 = icmp ult i32 %indvars.iv.next, %122
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end23.for.end_crit_edge
  %call46 = tail call fastcc i32 @il3945_is_temp_calib_needed(ptr noundef %il)
  tail call fastcc void @il3945_hw_reg_comp_txpower_temp(ptr noundef %il)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il3945_is_temp_calib_needed(ptr nocapture noundef %il) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom1.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 92
  %0 = ptrtoint ptr %eeprom1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom1.i, align 8
  %hw_base.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %2 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !410
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %6 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.il_get_debug_level.exit.i_crit_edge

entry.il_get_debug_level.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %entry.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %8, %if.else.i.i ], [ %7, %entry.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %il_get_debug_level.exit.do.end5_crit_edge.i, label %do.end.i

il_get_debug_level.exit.do.end5_crit_edge.i:      ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = add i32 %5, 260
  br label %do.end5.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  %add.i = add i32 %5, 260
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %add.i) #16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.do.end5_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %il_get_debug_level.exit.do.end5_crit_edge.i ], [ %add.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 286, i32 %.pre-phi.i)
  %13 = icmp ult i32 %.pre-phi.i, 286
  br i1 %13, label %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge, label %do.end11.i

do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_hw_reg_txpower_get_temperature.exit

do.end11.i:                                       ; preds = %do.end5.i
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %14 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.125, i32 noundef %5) #16
  %last_temperature.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 21
  %16 = ptrtoint ptr %last_temperature.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_temperature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %cmp.i = icmp sgt i32 %17, 100
  br i1 %cmp.i, label %if.then13.i, label %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge

do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_hw_reg_txpower_get_temperature.exit

if.then13.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %temperature14.i = getelementptr %struct.il3945_eeprom, ptr %1, i32 0, i32 34, i32 2, i32 13
  %18 = ptrtoint ptr %temperature14.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %temperature14.i, align 1
  %conv.i = sext i16 %19 to i32
  br label %il3945_hw_reg_txpower_get_temperature.exit

il3945_hw_reg_txpower_get_temperature.exit:       ; preds = %if.then13.i, %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge, %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge
  %temperature.0.i = phi i32 [ %conv.i, %if.then13.i ], [ %5, %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge ], [ %17, %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge ]
  %temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %20 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %temperature.0.i, ptr %temperature, align 8
  %last_temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 21
  %21 = ptrtoint ptr %last_temperature to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_temperature, align 4
  %sub = sub i32 %temperature.0.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %il3945_hw_reg_txpower_get_temperature.exit
  %23 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i94 = icmp eq i32 %24, 0
  br i1 %tobool.not.i94, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %25 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %if.else.i ], [ %24, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end6_crit_edge, label %do.end

il_get_debug_level.exit.do.end6_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef %sub) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end6_crit_edge
  %sub7 = sub i32 0, %sub
  br label %if.end40

if.else:                                          ; preds = %il3945_hw_reg_txpower_get_temperature.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp eq i32 %sub, 0
  %30 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i96 = icmp eq i32 %31, 0
  br i1 %cmp8, label %do.body10, label %do.body25

do.body10:                                        ; preds = %if.else
  br i1 %tobool.not.i96, label %if.else.i97, label %do.body10.il_get_debug_level.exit99_crit_edge

do.body10.il_get_debug_level.exit99_crit_edge:    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit99

if.else.i97:                                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %32 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit99

il_get_debug_level.exit99:                        ; preds = %if.else.i97, %do.body10.il_get_debug_level.exit99_crit_edge
  %retval.0.i98 = phi i32 [ %32, %if.else.i97 ], [ %31, %do.body10.il_get_debug_level.exit99_crit_edge ]
  %and12 = and i32 %retval.0.i98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %il_get_debug_level.exit99.do.body43_crit_edge, label %do.end17

il_get_debug_level.exit99.do.body43_crit_edge:    ; preds = %il_get_debug_level.exit99
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.end17:                                         ; preds = %il_get_debug_level.exit99
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %il, align 8
  %wiphy19 = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wiphy19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy19, align 8
  %dev20 = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109) #16
  br label %do.body43

do.body25:                                        ; preds = %if.else
  br i1 %tobool.not.i96, label %if.else.i102, label %do.body25.il_get_debug_level.exit104_crit_edge

do.body25.il_get_debug_level.exit104_crit_edge:   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit104

if.else.i102:                                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %37 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit104

il_get_debug_level.exit104:                       ; preds = %if.else.i102, %do.body25.il_get_debug_level.exit104_crit_edge
  %retval.0.i103 = phi i32 [ %37, %if.else.i102 ], [ %31, %do.body25.il_get_debug_level.exit104_crit_edge ]
  %and27 = and i32 %retval.0.i103, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %il_get_debug_level.exit104.if.end40_crit_edge, label %do.end32

il_get_debug_level.exit104.if.end40_crit_edge:    ; preds = %il_get_debug_level.exit104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.end32:                                         ; preds = %il_get_debug_level.exit104
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %il, align 8
  %wiphy34 = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy34, align 8
  %dev35 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef %sub) #16
  br label %if.end40

if.end40:                                         ; preds = %do.end32, %il_get_debug_level.exit104.if.end40_crit_edge, %do.end6
  %temp_diff.0 = phi i32 [ %sub7, %do.end6 ], [ %sub, %do.end32 ], [ %sub, %il_get_debug_level.exit104.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %temp_diff.0)
  %cmp41 = icmp slt i32 %temp_diff.0, 6
  br i1 %cmp41, label %if.end40.do.body43_crit_edge, label %do.body58

if.end40.do.body43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body43

do.body43:                                        ; preds = %if.end40.do.body43_crit_edge, %do.end17, %il_get_debug_level.exit99.do.body43_crit_edge
  %42 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i106 = icmp eq i32 %43, 0
  br i1 %tobool.not.i106, label %if.else.i107, label %do.body43.il_get_debug_level.exit109_crit_edge

do.body43.il_get_debug_level.exit109_crit_edge:   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit109

if.else.i107:                                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %44 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit109

il_get_debug_level.exit109:                       ; preds = %if.else.i107, %do.body43.il_get_debug_level.exit109_crit_edge
  %retval.0.i108 = phi i32 [ %44, %if.else.i107 ], [ %43, %do.body43.il_get_debug_level.exit109_crit_edge ]
  %and45 = and i32 %retval.0.i108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %il_get_debug_level.exit109.cleanup_crit_edge, label %do.end50

il_get_debug_level.exit109.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end50:                                         ; preds = %il_get_debug_level.exit109
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %il, align 8
  %wiphy52 = getelementptr inbounds %struct.ieee80211_hw, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %wiphy52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wiphy52, align 8
  %dev53 = getelementptr inbounds %struct.wiphy, ptr %48, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.109) #16
  br label %cleanup

do.body58:                                        ; preds = %if.end40
  %49 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i111 = icmp eq i32 %50, 0
  br i1 %tobool.not.i111, label %if.else.i112, label %do.body58.il_get_debug_level.exit114_crit_edge

do.body58.il_get_debug_level.exit114_crit_edge:   ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit114

if.else.i112:                                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %51 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit114

il_get_debug_level.exit114:                       ; preds = %if.else.i112, %do.body58.il_get_debug_level.exit114_crit_edge
  %retval.0.i113 = phi i32 [ %51, %if.else.i112 ], [ %50, %do.body58.il_get_debug_level.exit114_crit_edge ]
  %and60 = and i32 %retval.0.i113, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %il_get_debug_level.exit114.do.end71_crit_edge, label %do.end65

il_get_debug_level.exit114.do.end71_crit_edge:    ; preds = %il_get_debug_level.exit114
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end71

do.end65:                                         ; preds = %il_get_debug_level.exit114
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %il, align 8
  %wiphy67 = getelementptr inbounds %struct.ieee80211_hw, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %wiphy67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wiphy67, align 8
  %dev68 = getelementptr inbounds %struct.wiphy, ptr %55, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.109) #16
  br label %do.end71

do.end71:                                         ; preds = %do.end65, %il_get_debug_level.exit114.do.end71_crit_edge
  %56 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %temperature, align 8
  %58 = ptrtoint ptr %last_temperature to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %last_temperature, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.end50, %il_get_debug_level.exit109.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end71 ], [ 0, %do.end50 ], [ 0, %il_get_debug_level.exit109.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il3945_hw_reg_comp_txpower_temp(ptr noundef %il) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 92
  %0 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom1, align 8
  %temperature2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 20
  %2 = ptrtoint ptr %temperature2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temperature2, align 8
  %disable_tx_power_cal = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 126
  %4 = ptrtoint ptr %disable_tx_power_cal to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disable_tx_power_cal, align 2, !range !414
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %channel_count = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 19
  %9 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp3.not = icmp eq i8 %10, 0
  br i1 %cmp3.not, label %for.cond.preheader.for.end50_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end50_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %channel_info = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 18
  %tx_power_user_lmt.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 111
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv7 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next8, %for.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %channel_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel_info, align 8
  %band.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 12
  %13 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp eq i32 %14, 1
  %group_idx = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 10
  %15 = ptrtoint ptr %group_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %group_idx, align 2
  %idxprom7 = zext i8 %16 to i32
  %temperature9 = getelementptr %struct.il3945_eeprom, ptr %1, i32 0, i32 34, i32 %idxprom7, i32 13
  %17 = ptrtoint ptr %temperature9 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %temperature9, align 1
  %conv10 = sext i16 %18 to i32
  %sub.i = sub i32 %3, %conv10
  %mul.i = mul i32 %sub.i, -11
  %div.i = sdiv i32 %mul.i, 100
  %idxprom29 = zext i1 %cmp.i to i32
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body
  %indvars.iv = phi i32 [ 0, %for.body ], [ %indvars.iv.next, %for.body16.for.body16_crit_edge ]
  %arrayidx18 = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 %indvars.iv
  %base_power_idx = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 %indvars.iv, i32 2
  %19 = ptrtoint ptr %base_power_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %base_power_idx, align 1
  %conv19 = sext i8 %20 to i32
  %add = add nsw i32 %div.i, %conv19
  %21 = tail call i32 @llvm.smin.i32(i32 %add, i32 77) #13
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #13
  %23 = trunc i32 %22 to i8
  %power_table_idx = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 %indvars.iv, i32 1
  %24 = ptrtoint ptr %power_table_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %power_table_idx, align 1
  %arrayidx31 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom29, i32 %22
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx31, align 1
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %arrayidx18, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 12
  br i1 %exitcond.not, label %for.end, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16

for.end:                                          ; preds = %for.body16
  %28 = ptrtoint ptr %group_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %group_idx, align 2
  %idxprom33 = zext i8 %29 to i32
  %arrayidx34 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 %idxprom33
  %scan_power.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 9
  %requested_power24.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 0, i32 3
  %30 = ptrtoint ptr %scan_power.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %scan_power.i, align 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %34 = tail call i8 @llvm.smin.i8(i8 %31, i8 %33) #13
  %35 = ptrtoint ptr %tx_power_user_lmt.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_power_user_lmt.i, align 8
  %37 = tail call i8 @llvm.smin.i8(i8 %34, i8 %36) #13
  %arrayidx.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 0
  %requested_power.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 0, i32 2
  %38 = ptrtoint ptr %requested_power.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %requested_power.i, align 1
  %power_table_idx.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 8, i32 1
  %39 = ptrtoint ptr %power_table_idx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %power_table_idx.i, align 1
  %41 = ptrtoint ptr %requested_power24.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %requested_power24.i, align 1
  %sub.neg.i = sub i8 %42, %37
  %mul.neg.i = shl i8 %sub.neg.i, 1
  %sub26.i = add i8 %mul.neg.i, %40
  %conv28.i = zext i8 %sub26.i to i32
  %43 = tail call i32 @llvm.smin.i32(i32 %conv28.i, i32 77) #13
  %44 = trunc i32 %43 to i8
  %power_table_idx29.i = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 0, i32 1
  %45 = ptrtoint ptr %power_table_idx29.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %power_table_idx29.i, align 1
  %arrayidx31.i = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom29, i32 %43
  %46 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx31.i, align 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx.i, align 1
  %dsp_atten.i = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom29, i32 %43, i32 1
  %49 = ptrtoint ptr %dsp_atten.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dsp_atten.i, align 1
  %dsp_atten37.i = getelementptr inbounds %struct.il3945_tx_power, ptr %arrayidx.i, i32 0, i32 1
  %51 = ptrtoint ptr %dsp_atten37.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %dsp_atten37.i, align 1
  %52 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx34, align 1
  %54 = tail call i8 @llvm.smin.i8(i8 %31, i8 %53) #13
  %55 = ptrtoint ptr %tx_power_user_lmt.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tx_power_user_lmt.i, align 8
  %57 = tail call i8 @llvm.smin.i8(i8 %54, i8 %56) #13
  %arrayidx.i.1 = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 1
  %requested_power.i.1 = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 1, i32 2
  %58 = ptrtoint ptr %requested_power.i.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %requested_power.i.1, align 1
  %power_table_idx.i.1 = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 16, i32 0, i32 1
  %59 = ptrtoint ptr %power_table_idx.i.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %power_table_idx.i.1, align 1
  %sub.neg.i.1 = sub i8 %42, %57
  %mul.neg.i.1 = shl i8 %sub.neg.i.1, 1
  %sub26.i.1 = add i8 %mul.neg.i.1, %60
  %conv28.i.1 = zext i8 %sub26.i.1 to i32
  %61 = tail call i32 @llvm.smin.i32(i32 %conv28.i.1, i32 77) #13
  %62 = trunc i32 %61 to i8
  %power_table_idx29.i.1 = getelementptr %struct.il_channel_info, ptr %12, i32 %indvars.iv7, i32 17, i32 1, i32 1
  %63 = ptrtoint ptr %power_table_idx29.i.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %power_table_idx29.i.1, align 1
  %arrayidx31.i.1 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom29, i32 %61
  %64 = ptrtoint ptr %arrayidx31.i.1 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx31.i.1, align 1
  %66 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx.i.1, align 1
  %dsp_atten.i.1 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom29, i32 %61, i32 1
  %67 = ptrtoint ptr %dsp_atten.i.1 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dsp_atten.i.1, align 1
  %dsp_atten37.i.1 = getelementptr inbounds %struct.il3945_tx_power, ptr %arrayidx.i.1, i32 0, i32 1
  %69 = ptrtoint ptr %dsp_atten37.i.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %dsp_atten37.i.1, align 1
  %indvars.iv.next8 = add nuw nsw i32 %indvars.iv7, 1
  %70 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %channel_count, align 4
  %72 = zext i8 %71 to i32
  %cmp = icmp ult i32 %indvars.iv.next8, %72
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end50_crit_edge

for.end.for.end50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end50:                                        ; preds = %for.end.for.end50_crit_edge, %for.cond.preheader.for.end50_crit_edge
  %ops = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %73 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops, align 8
  %send_tx_power = getelementptr inbounds %struct.il_ops, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %send_tx_power to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %send_tx_power, align 4
  %call51 = tail call i32 %76(ptr noundef %il) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_commit_rxon(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %flags, align 1
  %or = and i32 %9, 2138111999
  %and8 = or i32 %or, 8388608
  store i32 %and8, ptr %flags, align 1
  %call9 = tail call i32 @il3945_get_antenna_flags(ptr noundef %il) #13
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %flags, align 1
  %or11 = or i32 %11, %call9
  store i32 %or11, ptr %flags, align 1
  %call12 = tail call i32 @il_check_rxon_cmd(ptr noundef %il) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #16
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call16 = tail call i32 @il_full_rxon_required(ptr noundef %il) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end15
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %rxon_assoc.i = getelementptr inbounds %struct.il_ops, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %rxon_assoc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rxon_assoc.i, align 4
  %call.i = tail call i32 %17(ptr noundef %il) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev25 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %18 = ptrtoint ptr %pci_dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.34, i32 noundef %call.i) #16
  br label %cleanup

if.end27:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %20 = call ptr @memcpy(ptr %active, ptr %staging, i32 44)
  %tx_power_next = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 113
  %21 = ptrtoint ptr %tx_power_next to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_power_next, align 2
  %call28 = tail call i32 @il_set_tx_power(ptr noundef %il, i8 noundef signext %22, i1 noundef zeroext false) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %filter_flags.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %23 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %filter_flags.i, align 1
  %25 = and i32 %24, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  %brmerge = select i1 %tobool31.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end29.do.body61_crit_edge, label %do.body34

if.end29.do.body61_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body61

do.body34:                                        ; preds = %if.end29
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %26 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body34.il_get_debug_level.exit_crit_edge

do.body34.il_get_debug_level.exit_crit_edge:      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %28 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body34.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %28, %if.else.i ], [ %27, %do.body34.il_get_debug_level.exit_crit_edge ]
  %and36 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %il_get_debug_level.exit.do.end45_crit_edge, label %do.end41

il_get_debug_level.exit.do.end45_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

do.end41:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy, align 8
  %dev42 = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end41, %il_get_debug_level.exit.do.end45_crit_edge
  %33 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %filter_flags.i, align 1
  %and47 = and i32 %34, -536870913
  store i32 %and47, ptr %filter_flags.i, align 1
  %reserved4 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 8
  %35 = ptrtoint ptr %reserved4 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %reserved4, align 1
  %reserved5 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 15
  %36 = ptrtoint ptr %reserved5 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 0, ptr %reserved5, align 1
  %call49 = tail call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 16, i16 noundef zeroext 44, ptr noundef %active) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end59, label %if.then51

if.then51:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %filter_flags.i, align 1
  %or53 = or i32 %38, 536870912
  store i32 %or53, ptr %filter_flags.i, align 1
  %pci_dev57 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %39 = ptrtoint ptr %pci_dev57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev57, align 8
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.40, i32 noundef %call49) #16
  br label %cleanup

if.end59:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @il_clear_ucode_stations(ptr noundef %il) #13
  tail call void @il_restore_stations(ptr noundef %il) #13
  br label %do.body61

do.body61:                                        ; preds = %if.end59, %if.end29.do.body61_crit_edge
  %debug_level.i176 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %41 = ptrtoint ptr %debug_level.i176 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_level.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i177 = icmp eq i32 %42, 0
  br i1 %tobool.not.i177, label %if.else.i178, label %do.body61.il_get_debug_level.exit180_crit_edge

do.body61.il_get_debug_level.exit180_crit_edge:   ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit180

if.else.i178:                                     ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %43 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit180

il_get_debug_level.exit180:                       ; preds = %if.else.i178, %do.body61.il_get_debug_level.exit180_crit_edge
  %retval.0.i179 = phi i32 [ %43, %if.else.i178 ], [ %42, %do.body61.il_get_debug_level.exit180_crit_edge ]
  %and63 = and i32 %retval.0.i179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %il_get_debug_level.exit180.do.end75_crit_edge, label %do.end68

il_get_debug_level.exit180.do.end75_crit_edge:    ; preds = %il_get_debug_level.exit180
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end75

do.end68:                                         ; preds = %il_get_debug_level.exit180
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %il, align 8
  %wiphy70 = getelementptr inbounds %struct.ieee80211_hw, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %wiphy70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wiphy70, align 8
  %dev71 = getelementptr inbounds %struct.wiphy, ptr %47, i32 0, i32 56
  %cond = select i1 %tobool.not, ptr @.str.46, ptr @.str.45
  %channel = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 14
  %48 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %channel, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  %conv = zext i16 %50 to i32
  %bssid_addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, i32 noundef %conv, ptr noundef %bssid_addr) #16
  br label %do.end75

do.end75:                                         ; preds = %do.end68, %il_get_debug_level.exit180.do.end75_crit_edge
  %reserved476 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 8
  %51 = ptrtoint ptr %reserved476 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 0, ptr %reserved476, align 1
  %reserved577 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 15
  %52 = ptrtoint ptr %reserved577 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 0, ptr %reserved577, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il3945_mod_params to i32))
  %53 = load i32, ptr @il3945_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool78.not = icmp eq i32 %53, 0
  %lnot.ext = zext i1 %tobool78.not to i32
  tail call void @il_set_rxon_hwcrypto(ptr noundef %il, i32 noundef %lnot.ext) #13
  %call80 = tail call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 16, i16 noundef zeroext 44, ptr noundef %staging) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev86 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %54 = ptrtoint ptr %pci_dev86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci_dev86, align 8
  %dev87 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.48, i32 noundef %call80) #16
  br label %cleanup

if.end88:                                         ; preds = %do.end75
  %56 = call ptr @memcpy(ptr %active, ptr %staging, i32 44)
  br i1 %tobool.not, label %if.then90, label %if.end88.if.end91_crit_edge

if.end88.if.end91_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @il_clear_ucode_stations(ptr noundef %il) #13
  tail call void @il_restore_stations(ptr noundef %il) #13
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end88.if.end91_crit_edge
  %tx_power_next92 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 113
  %57 = ptrtoint ptr %tx_power_next92 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tx_power_next92, align 2
  %call93 = tail call i32 @il_set_tx_power(ptr noundef %il, i8 noundef signext %58, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end101, label %do.end98

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev99 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %59 = ptrtoint ptr %pci_dev99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_dev99, align 8
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev100, ptr noundef nonnull @.str.51, i32 noundef %call93) #16
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %call102 = tail call i32 @il3945_init_hw_rate_table(ptr noundef %il)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.cleanup_crit_edge, label %do.end107

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev108 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %61 = ptrtoint ptr %pci_dev108 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci_dev108, align 8
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev109, ptr noundef nonnull @.str.54, i32 noundef %call102) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.end101.cleanup_crit_edge, %do.end98, %do.end85, %if.then51, %if.end27, %do.end24, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call49, %if.then51 ], [ %call80, %do.end85 ], [ %call93, %do.end98 ], [ -5, %do.end107 ], [ %call.i, %do.end24 ], [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il3945_get_antenna_flags(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_check_rxon_cmd(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_full_rxon_required(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_set_tx_power(ptr noundef, i8 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_clear_ucode_stations(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_restore_stations(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_set_rxon_hwcrypto(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_init_hw_rate_table(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  %rate_cmd = alloca %struct.il3945_rate_scaling_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %rate_cmd) #13
  %0 = call ptr @memset(ptr %rate_cmd, i32 0, i32 52)
  %table1 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2
  %retry_rate = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 68
  %1 = ptrtoint ptr %retry_rate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %retry_rate, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0130 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %i.0130
  %table_rs_idx = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %i.0130, i32 8
  %3 = ptrtoint ptr %table_rs_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %table_rs_idx, align 1
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %6 to i16
  %7 = shl nuw i16 %conv3, 8
  %arrayidx4 = getelementptr %struct.il3945_rate_scaling_info, ptr %table1, i32 %conv
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %arrayidx4, align 1
  %try_cnt = getelementptr %struct.il3945_rate_scaling_info, ptr %table1, i32 %conv, i32 1
  %9 = ptrtoint ptr %try_cnt to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %2, ptr %try_cnt, align 1
  %prev_ieee.i = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %i.0130, i32 2
  %10 = ptrtoint ptr %prev_ieee.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %prev_ieee.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0130)
  %12 = icmp eq i32 %i.0130, 0
  %13 = zext i8 %11 to i32
  %conv7 = select i1 %12, i32 0, i32 %13
  %table_rs_idx9 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %conv7, i32 8
  %14 = ptrtoint ptr %table_rs_idx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %table_rs_idx9, align 1
  %next_rate_idx = getelementptr %struct.il3945_rate_scaling_info, ptr %table1, i32 %conv, i32 2
  %16 = ptrtoint ptr %next_rate_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %next_rate_idx, align 1
  %inc = add nuw nsw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %band = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %17 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %band, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %18, label %do.end69 [
    i32 1, label %do.body
    i32 0, label %do.body29
  ]

do.body:                                          ; preds = %for.end
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %20 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %22 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %22, %if.else.i ], [ %21, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.do.end14_crit_edge, label %do.end

il_get_debug_level.exit.do.end14_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %26, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #16
  br label %do.end14

do.end14:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end14_crit_edge
  %next_rate_idx20 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 8, i32 2
  %27 = ptrtoint ptr %next_rate_idx20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %next_rate_idx20, align 1
  %next_rate_idx20.1 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 9, i32 2
  %28 = ptrtoint ptr %next_rate_idx20.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %next_rate_idx20.1, align 1
  %next_rate_idx20.2 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 10, i32 2
  %29 = ptrtoint ptr %next_rate_idx20.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %next_rate_idx20.2, align 1
  %next_rate_idx20.3 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 11, i32 2
  %30 = ptrtoint ptr %next_rate_idx20.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %next_rate_idx20.3, align 1
  %next_rate_idx25 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 2, i32 2
  %31 = ptrtoint ptr %next_rate_idx25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %next_rate_idx25, align 1
  %next_rate_idx27 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %next_rate_idx27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %next_rate_idx27, align 1
  br label %sw.epilog

do.body29:                                        ; preds = %for.end
  %debug_level.i125 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %33 = ptrtoint ptr %debug_level.i125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_level.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i126 = icmp eq i32 %34, 0
  br i1 %tobool.not.i126, label %if.else.i127, label %do.body29.il_get_debug_level.exit129_crit_edge

do.body29.il_get_debug_level.exit129_crit_edge:   ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit129

if.else.i127:                                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %35 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit129

il_get_debug_level.exit129:                       ; preds = %if.else.i127, %do.body29.il_get_debug_level.exit129_crit_edge
  %retval.0.i128 = phi i32 [ %35, %if.else.i127 ], [ %34, %do.body29.il_get_debug_level.exit129_crit_edge ]
  %and31 = and i32 %retval.0.i128, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %il_get_debug_level.exit129.do.end42_crit_edge, label %do.end36

il_get_debug_level.exit129.do.end42_crit_edge:    ; preds = %il_get_debug_level.exit129
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end42

do.end36:                                         ; preds = %il_get_debug_level.exit129
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %il, align 8
  %wiphy38 = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy38, align 8
  %dev39 = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64) #16
  br label %do.end42

do.end42:                                         ; preds = %do.end36, %il_get_debug_level.exit129.do.end42_crit_edge
  %sta_supp_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 8
  %40 = ptrtoint ptr %sta_supp_rates to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sta_supp_rates, align 8
  %and43 = and i32 %41, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %land.lhs.true, label %do.end42.sw.epilog_crit_edge

do.end42.sw.epilog_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true:                                    ; preds = %do.end42
  %filter_flags.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %42 = ptrtoint ptr %filter_flags.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %filter_flags.i, align 1
  %44 = and i32 %43, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool46.not = icmp eq i32 %44, 0
  br i1 %tobool46.not, label %land.lhs.true.sw.epilog_crit_edge, label %for.body51.preheader

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

for.body51.preheader:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %next_rate_idx55 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 0, i32 2
  %45 = ptrtoint ptr %next_rate_idx55 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %next_rate_idx55, align 1
  %next_rate_idx55.1 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 1, i32 2
  %46 = ptrtoint ptr %next_rate_idx55.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %next_rate_idx55.1, align 1
  %next_rate_idx55.2 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 2, i32 2
  %47 = ptrtoint ptr %next_rate_idx55.2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 8, ptr %next_rate_idx55.2, align 1
  %next_rate_idx55.3 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 3, i32 2
  %48 = ptrtoint ptr %next_rate_idx55.3 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %next_rate_idx55.3, align 1
  %next_rate_idx55.4 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 4, i32 2
  %49 = ptrtoint ptr %next_rate_idx55.4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %next_rate_idx55.4, align 1
  %next_rate_idx55.5 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 5, i32 2
  %50 = ptrtoint ptr %next_rate_idx55.5 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %next_rate_idx55.5, align 1
  %next_rate_idx55.6 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 6, i32 2
  %51 = ptrtoint ptr %next_rate_idx55.6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %next_rate_idx55.6, align 1
  %next_rate_idx55.7 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 7, i32 2
  %52 = ptrtoint ptr %next_rate_idx55.7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %next_rate_idx55.7, align 1
  %next_rate_idx60 = getelementptr inbounds %struct.il3945_rate_scaling_cmd, ptr %rate_cmd, i32 0, i32 2, i32 11, i32 2
  %53 = ptrtoint ptr %next_rate_idx60 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %next_rate_idx60, align 1
  br label %sw.epilog

do.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2366, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end69, %for.body51.preheader, %land.lhs.true.sw.epilog_crit_edge, %do.end42.sw.epilog_crit_edge, %do.end14
  %54 = ptrtoint ptr %rate_cmd to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %rate_cmd, align 1
  %call82 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 71, i16 noundef zeroext 52, ptr noundef nonnull %rate_cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end85:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %rate_cmd to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %rate_cmd, align 1
  %call87 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext 71, i16 noundef zeroext 52, ptr noundef nonnull %rate_cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call87, %if.end85 ], [ %call82, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %rate_cmd) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_reg_txpower_periodic(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @il3945_is_temp_calib_needed(ptr noundef %il)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.reschedule_crit_edge, label %if.end

entry.reschedule_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %reschedule

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @il3945_hw_reg_comp_txpower_temp(ptr noundef %il)
  br label %reschedule

reschedule:                                       ; preds = %if.end, %entry.reschedule_crit_edge
  %workqueue = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 99
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %thermal_periodic = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %thermal_periodic, i32 noundef 6000) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_txpower_set_from_eeprom(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 92
  %0 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eeprom1, align 8
  %hw_base.i.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %2 = ptrtoint ptr %hw_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !410
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %6 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %entry.il_get_debug_level.exit.i_crit_edge

entry.il_get_debug_level.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %8 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %entry.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %8, %if.else.i.i ], [ %7, %entry.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %il_get_debug_level.exit.do.end5_crit_edge.i, label %do.end.i

il_get_debug_level.exit.do.end5_crit_edge.i:      ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %.pre.i = add i32 %5, 260
  br label %do.end5.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  %add.i = add i32 %5, 260
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %add.i) #16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.do.end5_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %il_get_debug_level.exit.do.end5_crit_edge.i ], [ %add.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 286, i32 %.pre-phi.i)
  %13 = icmp ult i32 %.pre-phi.i, 286
  br i1 %13, label %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge, label %do.end11.i

do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge: ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_hw_reg_txpower_get_temperature.exit

do.end11.i:                                       ; preds = %do.end5.i
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %14 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev.i, align 8
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.125, i32 noundef %5) #16
  %last_temperature.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 21
  %16 = ptrtoint ptr %last_temperature.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_temperature.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %17)
  %cmp.i = icmp sgt i32 %17, 100
  br i1 %cmp.i, label %if.then13.i, label %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge

do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_hw_reg_txpower_get_temperature.exit

if.then13.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %temperature14.i = getelementptr %struct.il3945_eeprom, ptr %1, i32 0, i32 34, i32 2, i32 13
  %18 = ptrtoint ptr %temperature14.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %temperature14.i, align 1
  %conv.i = sext i16 %19 to i32
  br label %il3945_hw_reg_txpower_get_temperature.exit

il3945_hw_reg_txpower_get_temperature.exit:       ; preds = %if.then13.i, %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge, %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge
  %temperature.0.i = phi i32 [ %conv.i, %if.then13.i ], [ %5, %do.end5.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge ], [ %17, %do.end11.i.il3945_hw_reg_txpower_get_temperature.exit_crit_edge ]
  %last_temperature = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 21
  %20 = ptrtoint ptr %last_temperature to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %temperature.0.i, ptr %last_temperature, align 4
  %21 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eeprom1, align 8
  %23 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i208 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i208, label %if.else.i.i209, label %il3945_hw_reg_txpower_get_temperature.exit.il_get_debug_level.exit.i213_crit_edge

il3945_hw_reg_txpower_get_temperature.exit.il_get_debug_level.exit.i213_crit_edge: ; preds = %il3945_hw_reg_txpower_get_temperature.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i213

if.else.i.i209:                                   ; preds = %il3945_hw_reg_txpower_get_temperature.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %25 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i213

il_get_debug_level.exit.i213:                     ; preds = %if.else.i.i209, %il3945_hw_reg_txpower_get_temperature.exit.il_get_debug_level.exit.i213_crit_edge
  %retval.0.i.i210 = phi i32 [ %25, %if.else.i.i209 ], [ %24, %il3945_hw_reg_txpower_get_temperature.exit.il_get_debug_level.exit.i213_crit_edge ]
  %and.i211 = and i32 %retval.0.i.i210, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %tobool.not.i212 = icmp eq i32 %and.i211, 0
  br i1 %tobool.not.i212, label %il_get_debug_level.exit.i213.do.end4.i_crit_edge, label %do.end.i216

il_get_debug_level.exit.i213.do.end4.i_crit_edge: ; preds = %il_get_debug_level.exit.i213
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4.i

do.end.i216:                                      ; preds = %il_get_debug_level.exit.i213
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %il, align 8
  %wiphy.i214 = getelementptr inbounds %struct.ieee80211_hw, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wiphy.i214 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wiphy.i214, align 8
  %dev.i215 = getelementptr inbounds %struct.wiphy, ptr %29, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i215, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128) #16
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i216, %il_get_debug_level.exit.i213.do.end4.i_crit_edge
  %saturation_power.i = getelementptr %struct.il3945_eeprom, ptr %22, i32 0, i32 34, i32 0, i32 11
  %30 = ptrtoint ptr %saturation_power.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %saturation_power.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %31)
  %cmp5.i = icmp slt i8 %31, 40
  br i1 %cmp5.i, label %do.end4.i.do.end10.i_crit_edge, label %for.inc.i.11

do.end4.i.do.end10.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

do.end10.i:                                       ; preds = %for.inc.i.11.3.do.end10.i_crit_edge, %for.inc.i.11.2.do.end10.i_crit_edge, %for.inc.i.11.1.do.end10.i_crit_edge, %for.inc.i.11.do.end10.i_crit_edge, %do.end4.i.do.end10.i_crit_edge
  %.lcssa = phi i8 [ %31, %do.end4.i.do.end10.i_crit_edge ], [ %41, %for.inc.i.11.do.end10.i_crit_edge ], [ %50, %for.inc.i.11.1.do.end10.i_crit_edge ], [ %59, %for.inc.i.11.2.do.end10.i_crit_edge ], [ %68, %for.inc.i.11.3.do.end10.i_crit_edge ]
  %conv.i217 = sext i8 %.lcssa to i32
  %pci_dev.i218 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %32 = ptrtoint ptr %pci_dev.i218 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci_dev.i218, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i, ptr noundef nonnull @.str.130, i32 noundef %conv.i217) #16
  br label %il3945_hw_reg_init_channel_groups.exit

for.inc.i.11:                                     ; preds = %do.end4.i
  %arrayidx15.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 0
  %shr90.i = lshr i8 %31, 1
  %sub46.sub50.i = add nsw i8 %shr90.i, -9
  %sub34.sub38.i = add nsw i8 %shr90.i, -7
  %incdec.ptr.i.5 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 6
  %34 = zext i8 %shr90.i to i32
  %35 = call ptr @memset(ptr %arrayidx15.i, i32 %34, i32 6)
  %36 = ptrtoint ptr %incdec.ptr.i.5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %sub34.sub38.i, ptr %incdec.ptr.i.5, align 1
  %incdec.ptr.i.6 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 7
  %37 = ptrtoint ptr %incdec.ptr.i.6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %sub46.sub50.i, ptr %incdec.ptr.i.6, align 1
  %incdec.ptr.i.7 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 0, i32 0, i32 8
  %saturation_power.i.1 = getelementptr %struct.il3945_eeprom, ptr %22, i32 0, i32 34, i32 1, i32 11
  %38 = zext i8 %shr90.i to i32
  %39 = call ptr @memset(ptr %incdec.ptr.i.7, i32 %38, i32 4)
  %40 = ptrtoint ptr %saturation_power.i.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %saturation_power.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %41)
  %cmp5.i.1 = icmp slt i8 %41, 40
  br i1 %cmp5.i.1, label %for.inc.i.11.do.end10.i_crit_edge, label %for.inc.i.11.1

for.inc.i.11.do.end10.i_crit_edge:                ; preds = %for.inc.i.11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

for.inc.i.11.1:                                   ; preds = %for.inc.i.11
  %arrayidx15.i.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 1
  %shr90.i.1 = lshr i8 %41, 1
  %sub.i.1 = add nsw i8 %shr90.i.1, -5
  %sub46.sub50.i.1 = add nsw i8 %shr90.i.1, -12
  %sub34.sub38.i.1 = add nsw i8 %shr90.i.1, -10
  %incdec.ptr.i.4.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 5
  %42 = zext i8 %shr90.i.1 to i32
  %43 = call ptr @memset(ptr %arrayidx15.i.1, i32 %42, i32 5)
  %44 = ptrtoint ptr %incdec.ptr.i.4.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %sub.i.1, ptr %incdec.ptr.i.4.1, align 1
  %incdec.ptr.i.5.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 6
  %45 = ptrtoint ptr %incdec.ptr.i.5.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %sub34.sub38.i.1, ptr %incdec.ptr.i.5.1, align 1
  %incdec.ptr.i.6.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 7
  %46 = ptrtoint ptr %incdec.ptr.i.6.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub46.sub50.i.1, ptr %incdec.ptr.i.6.1, align 1
  %incdec.ptr.i.7.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 1, i32 0, i32 8
  %saturation_power.i.2 = getelementptr %struct.il3945_eeprom, ptr %22, i32 0, i32 34, i32 2, i32 11
  %47 = zext i8 %shr90.i.1 to i32
  %48 = call ptr @memset(ptr %incdec.ptr.i.7.1, i32 %47, i32 4)
  %49 = ptrtoint ptr %saturation_power.i.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %saturation_power.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %50)
  %cmp5.i.2 = icmp slt i8 %50, 40
  br i1 %cmp5.i.2, label %for.inc.i.11.1.do.end10.i_crit_edge, label %for.inc.i.11.2

for.inc.i.11.1.do.end10.i_crit_edge:              ; preds = %for.inc.i.11.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

for.inc.i.11.2:                                   ; preds = %for.inc.i.11.1
  %arrayidx15.i.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 2
  %shr90.i.2 = lshr i8 %50, 1
  %sub.i.2 = add nsw i8 %shr90.i.2, -5
  %sub46.sub50.i.2 = add nsw i8 %shr90.i.2, -12
  %sub34.sub38.i.2 = add nsw i8 %shr90.i.2, -10
  %incdec.ptr.i.4.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 5
  %51 = zext i8 %shr90.i.2 to i32
  %52 = call ptr @memset(ptr %arrayidx15.i.2, i32 %51, i32 5)
  %53 = ptrtoint ptr %incdec.ptr.i.4.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %sub.i.2, ptr %incdec.ptr.i.4.2, align 1
  %incdec.ptr.i.5.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 6
  %54 = ptrtoint ptr %incdec.ptr.i.5.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %sub34.sub38.i.2, ptr %incdec.ptr.i.5.2, align 1
  %incdec.ptr.i.6.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 7
  %55 = ptrtoint ptr %incdec.ptr.i.6.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %sub46.sub50.i.2, ptr %incdec.ptr.i.6.2, align 1
  %incdec.ptr.i.7.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 2, i32 0, i32 8
  %saturation_power.i.3 = getelementptr %struct.il3945_eeprom, ptr %22, i32 0, i32 34, i32 3, i32 11
  %56 = zext i8 %shr90.i.2 to i32
  %57 = call ptr @memset(ptr %incdec.ptr.i.7.2, i32 %56, i32 4)
  %58 = ptrtoint ptr %saturation_power.i.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %saturation_power.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %59)
  %cmp5.i.3 = icmp slt i8 %59, 40
  br i1 %cmp5.i.3, label %for.inc.i.11.2.do.end10.i_crit_edge, label %for.inc.i.11.3

for.inc.i.11.2.do.end10.i_crit_edge:              ; preds = %for.inc.i.11.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

for.inc.i.11.3:                                   ; preds = %for.inc.i.11.2
  %arrayidx15.i.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 3
  %shr90.i.3 = lshr i8 %59, 1
  %sub.i.3 = add nsw i8 %shr90.i.3, -5
  %sub46.sub50.i.3 = add nsw i8 %shr90.i.3, -12
  %sub34.sub38.i.3 = add nsw i8 %shr90.i.3, -10
  %incdec.ptr.i.4.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 5
  %60 = zext i8 %shr90.i.3 to i32
  %61 = call ptr @memset(ptr %arrayidx15.i.3, i32 %60, i32 5)
  %62 = ptrtoint ptr %incdec.ptr.i.4.3 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %sub.i.3, ptr %incdec.ptr.i.4.3, align 1
  %incdec.ptr.i.5.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 6
  %63 = ptrtoint ptr %incdec.ptr.i.5.3 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %sub34.sub38.i.3, ptr %incdec.ptr.i.5.3, align 1
  %incdec.ptr.i.6.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 7
  %64 = ptrtoint ptr %incdec.ptr.i.6.3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %sub46.sub50.i.3, ptr %incdec.ptr.i.6.3, align 1
  %incdec.ptr.i.7.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 3, i32 0, i32 8
  %saturation_power.i.4 = getelementptr %struct.il3945_eeprom, ptr %22, i32 0, i32 34, i32 4, i32 11
  %65 = zext i8 %shr90.i.3 to i32
  %66 = call ptr @memset(ptr %incdec.ptr.i.7.3, i32 %65, i32 4)
  %67 = ptrtoint ptr %saturation_power.i.4 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %saturation_power.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %68)
  %cmp5.i.4 = icmp slt i8 %68, 40
  br i1 %cmp5.i.4, label %for.inc.i.11.3.do.end10.i_crit_edge, label %for.inc.i.11.4

for.inc.i.11.3.do.end10.i_crit_edge:              ; preds = %for.inc.i.11.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end10.i

for.inc.i.11.4:                                   ; preds = %for.inc.i.11.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15.i.4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 4
  %shr90.i.4 = lshr i8 %68, 1
  %sub.i.4 = add nsw i8 %shr90.i.4, -5
  %sub46.sub50.i.4 = add nsw i8 %shr90.i.4, -12
  %sub34.sub38.i.4 = add nsw i8 %shr90.i.4, -10
  %incdec.ptr.i.4.4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 5
  %69 = zext i8 %shr90.i.4 to i32
  %70 = call ptr @memset(ptr %arrayidx15.i.4, i32 %69, i32 5)
  %71 = ptrtoint ptr %incdec.ptr.i.4.4 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %sub.i.4, ptr %incdec.ptr.i.4.4, align 1
  %incdec.ptr.i.5.4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 6
  %72 = ptrtoint ptr %incdec.ptr.i.5.4 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %sub34.sub38.i.4, ptr %incdec.ptr.i.5.4, align 1
  %incdec.ptr.i.6.4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 7
  %73 = ptrtoint ptr %incdec.ptr.i.6.4 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %sub46.sub50.i.4, ptr %incdec.ptr.i.6.4, align 1
  %incdec.ptr.i.7.4 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 4, i32 0, i32 8
  %74 = zext i8 %shr90.i.4 to i32
  %75 = call ptr @memset(ptr %incdec.ptr.i.7.4, i32 %74, i32 4)
  br label %il3945_hw_reg_init_channel_groups.exit

il3945_hw_reg_init_channel_groups.exit:           ; preds = %for.inc.i.11.4, %do.end10.i
  %channel_count = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 19
  %76 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp267.not = icmp eq i8 %77, 0
  br i1 %cmp267.not, label %il3945_hw_reg_init_channel_groups.exit.cleanup128_crit_edge, label %for.body.lr.ph

il3945_hw_reg_init_channel_groups.exit.cleanup128_crit_edge: ; preds = %il3945_hw_reg_init_channel_groups.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup128

for.body.lr.ph:                                   ; preds = %il3945_hw_reg_init_channel_groups.exit
  %channel_info = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 18
  %78 = ptrtoint ptr %channel_info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %channel_info, align 8
  %add = add i32 %temperature.0.i, 260
  %tx_power_user_lmt.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 111
  br label %for.body

for.body:                                         ; preds = %for.inc125.for.body_crit_edge, %for.body.lr.ph
  %ch_info.0269 = phi ptr [ %79, %for.body.lr.ph ], [ %incdec.ptr, %for.inc125.for.body_crit_edge ]
  %i.0268 = phi i8 [ 0, %for.body.lr.ph ], [ %inc126, %for.inc125.for.body_crit_edge ]
  %band.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 12
  %80 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %band.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i219 = icmp eq i32 %81, 1
  %cmp.i220 = icmp eq ptr %ch_info.0269, null
  br i1 %cmp.i220, label %for.body.for.inc125_crit_edge, label %il_is_channel_valid.exit

for.body.for.inc125_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc125

il_is_channel_valid.exit:                         ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 5
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags.i, align 1
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not = icmp eq i8 %84, 0
  br i1 %tobool.not, label %il_is_channel_valid.exit.for.inc125_crit_edge, label %if.end

il_is_channel_valid.exit.for.inc125_crit_edge:    ; preds = %il_is_channel_valid.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc125

if.end:                                           ; preds = %il_is_channel_valid.exit
  %85 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %eeprom1, align 8
  br i1 %cmp.i219, label %for.cond.preheader.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end
  %channel.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 4
  %87 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %channel.i, align 4
  %group_channel.i = getelementptr %struct.il3945_eeprom, ptr %86, i32 0, i32 34, i32 1, i32 12
  %89 = ptrtoint ptr %group_channel.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %group_channel.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp6.not.i = icmp ugt i8 %88, %90
  br i1 %cmp6.not.i, label %for.inc.i222, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i222:                                     ; preds = %for.cond.preheader.i
  %group_channel.1.i = getelementptr %struct.il3945_eeprom, ptr %86, i32 0, i32 34, i32 2, i32 12
  %91 = ptrtoint ptr %group_channel.1.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %group_channel.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %92)
  %cmp6.not.1.i = icmp ugt i8 %88, %92
  br i1 %cmp6.not.1.i, label %for.inc.1.i, label %for.inc.i222.for.end.i_crit_edge

for.inc.i222.for.end.i_crit_edge:                 ; preds = %for.inc.i222
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i222
  %group_channel.2.i = getelementptr %struct.il3945_eeprom, ptr %86, i32 0, i32 34, i32 3, i32 12
  %93 = ptrtoint ptr %group_channel.2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %group_channel.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %94)
  %cmp6.not.2.i = icmp ugt i8 %88, %94
  br i1 %cmp6.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %group_channel.3.i = getelementptr %struct.il3945_eeprom, ptr %86, i32 0, i32 34, i32 4, i32 12
  %95 = ptrtoint ptr %group_channel.3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %group_channel.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %96)
  %cmp6.not.3.i = icmp ugt i8 %88, %96
  br i1 %cmp6.not.3.i, label %for.inc.2.i.do.body.i_crit_edge, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.2.i.do.body.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

for.end.i:                                        ; preds = %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i222.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %group.037.lcssa.wide.i = phi i8 [ 1, %for.cond.preheader.i.for.end.i_crit_edge ], [ 2, %for.inc.i222.for.end.i_crit_edge ], [ 3, %for.inc.1.i.for.end.i_crit_edge ], [ 4, %for.inc.2.i.for.end.i_crit_edge ]
  %conv9.i = zext i8 %group.037.lcssa.wide.i to i16
  br label %do.body.i

do.body.i:                                        ; preds = %for.end.i, %for.inc.2.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %group_idx.1.i = phi i16 [ 0, %if.end.do.body.i_crit_edge ], [ %conv9.i, %for.end.i ], [ 4, %for.inc.2.i.do.body.i_crit_edge ]
  %97 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i224 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i224, label %if.else.i.i225, label %do.body.i.il_get_debug_level.exit.i228_crit_edge

do.body.i.il_get_debug_level.exit.i228_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i228

if.else.i.i225:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %99 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i228

il_get_debug_level.exit.i228:                     ; preds = %if.else.i.i225, %do.body.i.il_get_debug_level.exit.i228_crit_edge
  %retval.0.i.i226 = phi i32 [ %99, %if.else.i.i225 ], [ %98, %do.body.i.il_get_debug_level.exit.i228_crit_edge ]
  %and.i227 = and i32 %retval.0.i.i226, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i227)
  %tobool17.not.i = icmp eq i32 %and.i227, 0
  br i1 %tobool17.not.i, label %il_get_debug_level.exit.i228.il3945_hw_reg_get_ch_grp_idx.exit_crit_edge, label %do.end.i231

il_get_debug_level.exit.i228.il3945_hw_reg_get_ch_grp_idx.exit_crit_edge: ; preds = %il_get_debug_level.exit.i228
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = zext i16 %group_idx.1.i to i32
  br label %il3945_hw_reg_get_ch_grp_idx.exit

do.end.i231:                                      ; preds = %il_get_debug_level.exit.i228
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %il, align 8
  %wiphy.i229 = getelementptr inbounds %struct.ieee80211_hw, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %wiphy.i229 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wiphy.i229, align 8
  %dev.i230 = getelementptr inbounds %struct.wiphy, ptr %103, i32 0, i32 56
  %channel20.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 4
  %104 = ptrtoint ptr %channel20.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %channel20.i, align 4
  %conv21.i = zext i8 %105 to i32
  %conv22.i = zext i16 %group_idx.1.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i230, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef %conv21.i, i32 noundef %conv22.i) #16
  br label %il3945_hw_reg_get_ch_grp_idx.exit

il3945_hw_reg_get_ch_grp_idx.exit:                ; preds = %do.end.i231, %il_get_debug_level.exit.i228.il3945_hw_reg_get_ch_grp_idx.exit_crit_edge
  %idxprom.pre-phi = phi i32 [ %.pre, %il_get_debug_level.exit.i228.il3945_hw_reg_get_ch_grp_idx.exit_crit_edge ], [ %conv22.i, %do.end.i231 ]
  %conv7 = trunc i16 %group_idx.1.i to i8
  %group_idx = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 10
  %106 = ptrtoint ptr %group_idx to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv7, ptr %group_idx, align 2
  %arrayidx = getelementptr %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 12, i32 %idxprom.pre-phi
  %temperature12 = getelementptr %struct.il3945_eeprom, ptr %1, i32 0, i32 34, i32 %idxprom.pre-phi, i32 13
  %107 = ptrtoint ptr %temperature12 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %temperature12, align 1
  %conv13 = sext i16 %108 to i32
  %sub.i232 = sub i32 %temperature.0.i, %conv13
  %mul.i = mul i32 %sub.i232, -11
  %div.i = sdiv i32 %mul.i, 100
  %109 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i233 = icmp eq i32 %110, 0
  br i1 %tobool.not.i233, label %if.else.i, label %il3945_hw_reg_get_ch_grp_idx.exit.il_get_debug_level.exit_crit_edge

il3945_hw_reg_get_ch_grp_idx.exit.il_get_debug_level.exit_crit_edge: ; preds = %il3945_hw_reg_get_ch_grp_idx.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %il3945_hw_reg_get_ch_grp_idx.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %111 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %il3945_hw_reg_get_ch_grp_idx.exit.il_get_debug_level.exit_crit_edge
  %retval.0.i234 = phi i32 [ %111, %if.else.i ], [ %110, %il3945_hw_reg_get_ch_grp_idx.exit.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i234, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %il_get_debug_level.exit.do.end22_crit_edge, label %do.end

il_get_debug_level.exit.do.end22_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  %channel = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 4
  %116 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %channel, align 4
  %conv19 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %conv19, i32 noundef %div.i, i32 noundef %add) #16
  br label %do.end22

do.end22:                                         ; preds = %do.end, %il_get_debug_level.exit.do.end22_crit_edge
  %max_power_avg = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 6
  %idxprom54 = zext i1 %cmp.i219 to i32
  br label %for.body27

for.body27:                                       ; preds = %for.inc.for.body27_crit_edge, %do.end22
  %indvars.iv = phi i32 [ 0, %do.end22 ], [ %indvars.iv.next, %for.inc.for.body27_crit_edge ]
  %118 = ptrtoint ptr %max_power_avg to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %max_power_avg, align 2
  %arrayidx29 = getelementptr i8, ptr %arrayidx, i32 %indvars.iv
  %120 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx29, align 1
  %122 = tail call i8 @llvm.smin.i8(i8 %119, i8 %121)
  %123 = ptrtoint ptr %group_idx to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %group_idx, align 2
  %conv40 = zext i8 %124 to i32
  %125 = ptrtoint ptr %eeprom1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %eeprom1, align 8
  %conv.i236 = sext i8 %122 to i32
  %mul.i237 = shl nsw i32 %conv.i236, 1
  %arrayidx.i = getelementptr %struct.il3945_eeprom, ptr %126, i32 0, i32 34, i32 %conv40
  %power5.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 0, i32 1
  %127 = ptrtoint ptr %power5.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %power5.i, align 1
  %conv6.i = sext i8 %128 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %mul.i237, %conv6.i
  br i1 %cmp7.i, label %for.body27.if.then.i_crit_edge, label %for.inc.i238

for.body27.if.then.i_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i240.if.then.i_crit_edge, %for.inc.1.i239.if.then.i_crit_edge, %for.inc.i238.if.then.i_crit_edge, %for.body27.if.then.i_crit_edge
  %i.093.lcssa.i = phi i32 [ 0, %for.body27.if.then.i_crit_edge ], [ 1, %for.inc.i238.if.then.i_crit_edge ], [ 2, %for.inc.1.i239.if.then.i_crit_edge ], [ 3, %for.inc.2.i240.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 %i.093.lcssa.i
  %129 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx4.i, align 1
  %conv10.i = zext i8 %130 to i32
  br label %for.inc

for.inc.i238:                                     ; preds = %for.body27
  %power5.1.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 1, i32 1
  %131 = ptrtoint ptr %power5.1.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %power5.1.i, align 1
  %conv6.1.i = sext i8 %132 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.1.i)
  %cmp7.1.i = icmp eq i32 %mul.i237, %conv6.1.i
  br i1 %cmp7.1.i, label %for.inc.i238.if.then.i_crit_edge, label %for.inc.1.i239

for.inc.i238.if.then.i_crit_edge:                 ; preds = %for.inc.i238
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.1.i239:                                   ; preds = %for.inc.i238
  %power5.2.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 2, i32 1
  %133 = ptrtoint ptr %power5.2.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %power5.2.i, align 1
  %conv6.2.i = sext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.2.i)
  %cmp7.2.i = icmp eq i32 %mul.i237, %conv6.2.i
  br i1 %cmp7.2.i, label %for.inc.1.i239.if.then.i_crit_edge, label %for.inc.2.i240

for.inc.1.i239.if.then.i_crit_edge:               ; preds = %for.inc.1.i239
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.2.i240:                                   ; preds = %for.inc.1.i239
  %power5.3.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 3, i32 1
  %135 = ptrtoint ptr %power5.3.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %power5.3.i, align 1
  %conv6.3.i = sext i8 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.3.i)
  %cmp7.3.i = icmp eq i32 %mul.i237, %conv6.3.i
  br i1 %cmp7.3.i, label %for.inc.2.i240.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i240.if.then.i_crit_edge:               ; preds = %for.inc.2.i240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i240
  %power5.4.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 4, i32 1
  %137 = ptrtoint ptr %power5.4.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %power5.4.i, align 1
  %conv6.4.i = sext i8 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.4.i)
  %cmp7.4.i = icmp eq i32 %mul.i237, %conv6.4.i
  br i1 %cmp7.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.1.i)
  %cmp14.i = icmp sgt i32 %mul.i237, %conv6.1.i
  br i1 %cmp14.i, label %for.inc.4.i.if.end33.i_crit_edge, label %if.else.i241

for.inc.4.i.if.end33.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else.i241:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.2.i)
  %cmp20.i = icmp sgt i32 %mul.i237, %conv6.2.i
  br i1 %cmp20.i, label %if.else.i241.if.end33.i_crit_edge, label %if.else23.i

if.else.i241.if.end33.i_crit_edge:                ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.i

if.else23.i:                                      ; preds = %if.else.i241
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i237, i32 %conv6.3.i)
  %cmp27.i = icmp sgt i32 %mul.i237, %conv6.3.i
  %..i = select i1 %cmp27.i, i32 2, i32 3
  %.91.i = select i1 %cmp27.i, i32 3, i32 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else23.i, %if.else.i241.if.end33.i_crit_edge, %for.inc.4.i.if.end33.i_crit_edge
  %idx0.0.i = phi i32 [ 0, %for.inc.4.i.if.end33.i_crit_edge ], [ 1, %if.else.i241.if.end33.i_crit_edge ], [ %..i, %if.else23.i ]
  %idx1.0.i = phi i32 [ 1, %for.inc.4.i.if.end33.i_crit_edge ], [ 2, %if.else.i241.if.end33.i_crit_edge ], [ %.91.i, %if.else23.i ]
  %power35.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 %idx1.0.i, i32 1
  %139 = ptrtoint ptr %power35.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %power35.i, align 1
  %power38.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 %idx0.0.i, i32 1
  %141 = ptrtoint ptr %power38.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %power38.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %142)
  %cmp40.i = icmp eq i8 %140, %142
  br i1 %cmp40.i, label %cleanup, label %if.end43.i

if.end43.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv39.i = sext i8 %142 to i32
  %conv36.i = sext i8 %140 to i32
  %sub.i242 = sub nsw i32 %conv36.i, %conv39.i
  %arrayidx37.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 %idx0.0.i
  %arrayidx34.i = getelementptr %struct.il3945_eeprom_txpower_sample, ptr %arrayidx.i, i32 %idx1.0.i
  %143 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx37.i, align 1
  %conv46.i = zext i8 %144 to i32
  %mul47.i = shl nuw nsw i32 %conv46.i, 19
  %145 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx34.i, align 1
  %conv50.i = zext i8 %146 to i32
  %147 = sub nsw i32 %conv50.i, %conv46.i
  %sub56.i = sub nsw i32 %mul.i237, %conv39.i
  %sub52.i = shl nsw i32 %sub56.i, 19
  %mul57.i = mul i32 %sub52.i, %147
  %div.i243 = sdiv i32 %mul57.i, %sub.i242
  %add.i244 = add i32 %div.i243, 262144
  %add58.i = add i32 %add.i244, %mul47.i
  %shr.i = ashr i32 %add58.i, 19
  br label %for.inc

cleanup:                                          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %148 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pci_dev, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.59) #16
  br label %cleanup128

for.inc:                                          ; preds = %if.end43.i, %if.then.i
  %power_idx.0.ph = phi i32 [ %conv10.i, %if.then.i ], [ %shr.i, %if.end43.i ]
  %arrayidx38 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 %indvars.iv
  %conv49 = trunc i32 %power_idx.0.ph to i8
  %base_power_idx = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 %indvars.iv, i32 2
  %150 = ptrtoint ptr %base_power_idx to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv49, ptr %base_power_idx, align 1
  %add50 = add nsw i32 %power_idx.0.ph, %div.i
  %151 = tail call i32 @llvm.smin.i32(i32 %add50, i32 77) #13
  %152 = tail call i32 @llvm.smax.i32(i32 %151, i32 0) #13
  %153 = trunc i32 %152 to i8
  %requested_power = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 %indvars.iv, i32 3
  %154 = ptrtoint ptr %requested_power to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %122, ptr %requested_power, align 1
  %power_table_idx = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 %indvars.iv, i32 1
  %155 = ptrtoint ptr %power_table_idx to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %153, ptr %power_table_idx, align 1
  %arrayidx56 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %152
  %156 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx56, align 1
  %158 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %arrayidx38, align 1
  %dsp_atten61 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %152, i32 1
  %159 = ptrtoint ptr %dsp_atten61 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %dsp_atten61, align 1
  %dsp_atten63 = getelementptr inbounds %struct.il3945_tx_power, ptr %arrayidx38, i32 0, i32 1
  %161 = ptrtoint ptr %dsp_atten63 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %dsp_atten63, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body27_crit_edge

for.inc.for.body27_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body27

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %requested_power68 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 2, i32 3
  %162 = ptrtoint ptr %requested_power68 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %requested_power68, align 1
  %add70 = add i8 %163, -5
  %power_table_idx72 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 2, i32 1
  %164 = ptrtoint ptr %power_table_idx72 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %power_table_idx72, align 1
  %add74 = add i8 %165, 10
  %base_power_idx76 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 2, i32 2
  %166 = ptrtoint ptr %base_power_idx76 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %base_power_idx76, align 1
  %add78 = add i8 %167, 10
  %conv80 = zext i8 %add74 to i32
  %168 = tail call i32 @llvm.smin.i32(i32 %conv80, i32 77) #13
  %169 = trunc i32 %168 to i8
  %arrayidx85 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %168
  %170 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx85, align 1
  %dsp_atten91 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %168, i32 1
  %172 = ptrtoint ptr %dsp_atten91 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %dsp_atten91, align 1
  %arrayidx100 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 8
  %requested_power101 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 8, i32 3
  %174 = ptrtoint ptr %requested_power101 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %add70, ptr %requested_power101, align 1
  %power_table_idx102 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 8, i32 1
  %175 = ptrtoint ptr %power_table_idx102 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %169, ptr %power_table_idx102, align 1
  %base_power_idx103 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 8, i32 2
  %176 = ptrtoint ptr %base_power_idx103 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %add78, ptr %base_power_idx103, align 1
  %177 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %171, ptr %arrayidx100, align 1
  %dsp_atten107 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 8, i32 0, i32 1
  %178 = ptrtoint ptr %dsp_atten107 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %173, ptr %dsp_atten107, align 1
  %arrayidx100.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 9
  %requested_power101.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 9, i32 3
  %179 = ptrtoint ptr %requested_power101.1 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %add70, ptr %requested_power101.1, align 1
  %power_table_idx102.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 9, i32 1
  %180 = ptrtoint ptr %power_table_idx102.1 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %169, ptr %power_table_idx102.1, align 1
  %base_power_idx103.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 9, i32 2
  %181 = ptrtoint ptr %base_power_idx103.1 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %add78, ptr %base_power_idx103.1, align 1
  %182 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %171, ptr %arrayidx100.1, align 1
  %dsp_atten107.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 9, i32 0, i32 1
  %183 = ptrtoint ptr %dsp_atten107.1 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %173, ptr %dsp_atten107.1, align 1
  %arrayidx100.2 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 10
  %requested_power101.2 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 10, i32 3
  %184 = ptrtoint ptr %requested_power101.2 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %add70, ptr %requested_power101.2, align 1
  %power_table_idx102.2 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 10, i32 1
  %185 = ptrtoint ptr %power_table_idx102.2 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %169, ptr %power_table_idx102.2, align 1
  %base_power_idx103.2 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 10, i32 2
  %186 = ptrtoint ptr %base_power_idx103.2 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %add78, ptr %base_power_idx103.2, align 1
  %187 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %171, ptr %arrayidx100.2, align 1
  %dsp_atten107.2 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 10, i32 0, i32 1
  %188 = ptrtoint ptr %dsp_atten107.2 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %173, ptr %dsp_atten107.2, align 1
  %arrayidx100.3 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 11
  %requested_power101.3 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 11, i32 3
  %189 = ptrtoint ptr %requested_power101.3 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %add70, ptr %requested_power101.3, align 1
  %power_table_idx102.3 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 11, i32 1
  %190 = ptrtoint ptr %power_table_idx102.3 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %169, ptr %power_table_idx102.3, align 1
  %base_power_idx103.3 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 11, i32 2
  %191 = ptrtoint ptr %base_power_idx103.3 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %add78, ptr %base_power_idx103.3, align 1
  %192 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %171, ptr %arrayidx100.3, align 1
  %dsp_atten107.3 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 11, i32 0, i32 1
  %193 = ptrtoint ptr %dsp_atten107.3 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %173, ptr %dsp_atten107.3, align 1
  %scan_power.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 9
  %requested_power24.i = getelementptr inbounds %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 0, i32 3
  %194 = ptrtoint ptr %scan_power.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %scan_power.i, align 1
  %196 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx, align 1
  %198 = tail call i8 @llvm.smin.i8(i8 %195, i8 %197) #13
  %199 = ptrtoint ptr %tx_power_user_lmt.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %tx_power_user_lmt.i, align 8
  %201 = tail call i8 @llvm.smin.i8(i8 %198, i8 %200) #13
  %arrayidx.i246 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 0
  %requested_power.i = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 0, i32 2
  %202 = ptrtoint ptr %requested_power.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %requested_power.i, align 1
  %203 = ptrtoint ptr %requested_power24.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %requested_power24.i, align 1
  %sub.neg.i = sub i8 %204, %201
  %mul.neg.i = shl i8 %sub.neg.i, 1
  %sub26.i = add i8 %mul.neg.i, %169
  %conv28.i = zext i8 %sub26.i to i32
  %205 = tail call i32 @llvm.smin.i32(i32 %conv28.i, i32 77) #13
  %206 = trunc i32 %205 to i8
  %power_table_idx29.i = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 0, i32 1
  %207 = ptrtoint ptr %power_table_idx29.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %power_table_idx29.i, align 1
  %arrayidx31.i = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %205
  %208 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx31.i, align 1
  %210 = ptrtoint ptr %arrayidx.i246 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx.i246, align 1
  %dsp_atten.i = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %205, i32 1
  %211 = ptrtoint ptr %dsp_atten.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %dsp_atten.i, align 1
  %dsp_atten37.i = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 0, i32 0, i32 1
  %213 = ptrtoint ptr %dsp_atten37.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %dsp_atten37.i, align 1
  %214 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx, align 1
  %216 = tail call i8 @llvm.smin.i8(i8 %195, i8 %215) #13
  %217 = ptrtoint ptr %tx_power_user_lmt.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %tx_power_user_lmt.i, align 8
  %219 = tail call i8 @llvm.smin.i8(i8 %216, i8 %218) #13
  %arrayidx.i246.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 1
  %requested_power.i.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 1, i32 2
  %220 = ptrtoint ptr %requested_power.i.1 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %requested_power.i.1, align 1
  %power_table_idx.i.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 16, i32 0, i32 1
  %221 = ptrtoint ptr %power_table_idx.i.1 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %power_table_idx.i.1, align 1
  %sub.neg.i.1 = sub i8 %204, %219
  %mul.neg.i.1 = shl i8 %sub.neg.i.1, 1
  %sub26.i.1 = add i8 %mul.neg.i.1, %222
  %conv28.i.1 = zext i8 %sub26.i.1 to i32
  %223 = tail call i32 @llvm.smin.i32(i32 %conv28.i.1, i32 77) #13
  %224 = trunc i32 %223 to i8
  %power_table_idx29.i.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 1, i32 1
  %225 = ptrtoint ptr %power_table_idx29.i.1 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %224, ptr %power_table_idx29.i.1, align 1
  %arrayidx31.i.1 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %223
  %226 = ptrtoint ptr %arrayidx31.i.1 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx31.i.1, align 1
  %228 = ptrtoint ptr %arrayidx.i246.1 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %227, ptr %arrayidx.i246.1, align 1
  %dsp_atten.i.1 = getelementptr [2 x [78 x %struct.il3945_tx_power]], ptr @power_gain_table, i32 0, i32 %idxprom54, i32 %223, i32 1
  %229 = ptrtoint ptr %dsp_atten.i.1 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %dsp_atten.i.1, align 1
  %dsp_atten37.i.1 = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 0, i32 17, i32 1, i32 0, i32 1
  %231 = ptrtoint ptr %dsp_atten37.i.1 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %230, ptr %dsp_atten37.i.1, align 1
  br label %for.inc125

for.inc125:                                       ; preds = %for.end, %il_is_channel_valid.exit.for.inc125_crit_edge, %for.body.for.inc125_crit_edge
  %inc126 = add nuw i8 %i.0268, 1
  %incdec.ptr = getelementptr %struct.il_channel_info, ptr %ch_info.0269, i32 1
  %232 = ptrtoint ptr %channel_count to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %channel_count, align 4
  %cmp = icmp ult i8 %inc126, %233
  br i1 %cmp, label %for.inc125.for.body_crit_edge, label %for.inc125.cleanup128_crit_edge

for.inc125.cleanup128_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup128

for.inc125.for.body_crit_edge:                    ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup128:                                       ; preds = %for.inc125.cleanup128_crit_edge, %cleanup, %il3945_hw_reg_init_channel_groups.exit.cleanup128_crit_edge
  %retval.4 = phi i32 [ -22, %cleanup ], [ 0, %il3945_hw_reg_init_channel_groups.exit.cleanup128_crit_edge ], [ 0, %for.inc125.cleanup128_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_rxq_stop(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !409
  %call = tail call i32 @_il_poll_bit(ptr noundef %il, i32 noundef 3268, i32 noundef 16777216, i32 noundef 16777216, i32 noundef 1000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_tx_queue_init(ptr noundef %il, ptr nocapture noundef readonly %txq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dma_addr = getelementptr inbounds %struct.il_queue, ptr %txq, i32 0, i32 3
  %5 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_addr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %arrayidx = getelementptr [8 x i32], ptr %4, i32 0, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %arrayidx, align 1
  %mul = shl i32 %1, 3
  %reg_lock.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %call5.i = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i, label %if.then.i, label %entry.il_wr.exit_crit_edge, !prof !407

entry.il_wr.exit_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %mul, 2368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %9 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #13, !srcloc !409
  %11 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %14 = and i32 %13, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %14) #13, !srcloc !409
  br label %il_wr.exit

il_wr.exit:                                       ; preds = %if.then.i, %entry.il_wr.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #13
  %call2.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %call5.i19 = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i19, label %if.then.i24, label %il_wr.exit.il_wr.exit25_crit_edge, !prof !407

il_wr.exit.il_wr.exit25_crit_edge:                ; preds = %il_wr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit25

if.then.i24:                                      ; preds = %il_wr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %add5 = add i32 %mul, 2372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i20 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %17 = ptrtoint ptr %hw_base.i.i20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_base.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %18, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 0) #13, !srcloc !409
  %19 = ptrtoint ptr %hw_base.i.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw_base.i.i20, align 4
  %add.ptr.i.i.i.i22 = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i22) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %22 = and i32 %21, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %hw_base.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw_base.i.i20, align 4
  %add.ptr.i4.i.i.i23 = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i23, i32 %22) #13, !srcloc !409
  br label %il_wr.exit25

il_wr.exit25:                                     ; preds = %if.then.i24, %il_wr.exit.il_wr.exit25_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i18) #13
  %call2.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #13
  %call5.i28 = tail call zeroext i1 @_il_grab_nic_access(ptr noundef %il) #13
  br i1 %call5.i28, label %if.then.i33, label %il_wr.exit25.il_wr.exit34_crit_edge, !prof !407

il_wr.exit25.il_wr.exit34_crit_edge:              ; preds = %il_wr.exit25
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_wr.exit34

if.then.i33:                                      ; preds = %il_wr.exit25
  call void @__sanitizer_cov_trace_pc() #15
  %mul6 = shl i32 %1, 5
  %add7 = add i32 %mul6, 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %hw_base.i.i29 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %25 = ptrtoint ptr %hw_base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw_base.i.i29, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %26, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 134226048) #13, !srcloc !409
  %27 = ptrtoint ptr %hw_base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw_base.i.i29, align 4
  %add.ptr.i.i.i.i31 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i31) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %30 = and i32 %29, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %hw_base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_base.i.i29, align 4
  %add.ptr.i4.i.i.i32 = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i32, i32 %30) #13, !srcloc !409
  br label %il_wr.exit34

il_wr.exit34:                                     ; preds = %if.then.i33, %il_wr.exit25.il_wr.exit34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i27) #13
  %hw_base.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %33 = ptrtoint ptr %hw_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 3712
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_set_hw_params(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_params = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97
  %0 = call ptr @memset(ptr %hw_params, i32 0, i32 56)
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %3 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96
  %shared_phys = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 32, ptr noundef %shared_phys, i32 noundef 3264, i32 noundef 0) #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %3, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %hw_params to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %hw_params, align 8
  %cfg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 3
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %num_of_queues = getelementptr inbounds %struct.il_cfg, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %num_of_queues to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_of_queues, align 4
  %conv = trunc i32 %9 to i8
  %max_txq_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 1
  %10 = ptrtoint ptr %max_txq_num to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %max_txq_num, align 1
  %tfd_size = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 4
  %11 = ptrtoint ptr %tfd_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 64, ptr %tfd_size, align 8
  %rx_page_order = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 11
  %12 = ptrtoint ptr %rx_page_order to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rx_page_order, align 4
  %max_rxq_size = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 9
  %13 = ptrtoint ptr %max_rxq_size to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %max_rxq_size, align 8
  %max_rxq_log = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 10
  %14 = ptrtoint ptr %max_rxq_log to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 8, ptr %max_rxq_log, align 2
  %max_stations = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 13
  %15 = ptrtoint ptr %max_stations to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 25, ptr %max_stations, align 4
  %sta_key_max_num = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 40
  %16 = ptrtoint ptr %sta_key_max_num to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %sta_key_max_num, align 2
  %rx_wrt_ptr_reg = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 12
  %17 = ptrtoint ptr %rx_wrt_ptr_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3104, ptr %rx_wrt_ptr_reg, align 8
  %max_beacon_itrvl = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 15
  %18 = ptrtoint ptr %max_beacon_itrvl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %max_beacon_itrvl, align 2
  %beacon_time_tsf_bits = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 20
  %19 = ptrtoint ptr %beacon_time_tsf_bits to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 24, ptr %beacon_time_tsf_bits, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @il3945_hw_get_beacon_cmd(ptr noundef %il, ptr noundef %frame, i8 noundef zeroext %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %frame, i32 0, i32 56)
  %hw_params = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97
  %1 = ptrtoint ptr %hw_params to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hw_params, align 8
  %sta_id = getelementptr inbounds %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 4
  %3 = ptrtoint ptr %sta_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %sta_id, align 1
  %stop_time = getelementptr inbounds %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 10
  %4 = ptrtoint ptr %stop_time to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 -1, ptr %stop_time, align 1
  %frame2 = getelementptr inbounds %struct.il3945_tx_beacon_cmd, ptr %frame, i32 0, i32 4
  %call = tail call i32 @il3945_fill_beacon_frame(ptr noundef %il, ptr noundef %frame2, i32 noundef 2278) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2346, i32 %call)
  %cmp = icmp ugt i32 %call, 2346
  br i1 %cmp, label %do.body4, label %do.end9, !prof !415

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlegacy/3945.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2430, 0\0A.popsection", ""() #13, !srcloc !416
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = trunc i32 %call to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %6 = ptrtoint ptr %frame to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %frame, align 1
  %rate12 = getelementptr inbounds %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 3
  %7 = ptrtoint ptr %rate12 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rate, ptr %rate12, align 1
  %tx_flags = getelementptr inbounds %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 2
  %8 = ptrtoint ptr %tx_flags to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 2097408, ptr %tx_flags, align 1
  %supp_rates = getelementptr inbounds %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 11
  %9 = ptrtoint ptr %supp_rates to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 21, ptr %supp_rates, align 1
  %arrayidx17 = getelementptr %struct.il3945_tx_cmd, ptr %frame, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %arrayidx17, align 1
  %add = add nuw nsw i32 %call, 56
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il3945_fill_beacon_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @il3945_hw_handler_setup(ptr nocapture noundef writeonly %il) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.il_priv, ptr %il, i32 0, i32 10, i32 28
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @il3945_hdl_tx, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 10, i32 27
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @il3945_hdl_rx, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_hdl_tx(ptr noundef %il, ptr nocapture noundef readonly %rxb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.il_rx_buf, ptr %rxb, i32 0, i32 1
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %1) #13
  %sequence1 = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %sequence1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %sequence1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %5 = lshr i32 %conv, 8
  %and = and i32 %5, 31
  %and3 = and i32 %conv, 255
  %txq4 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 72
  %6 = ptrtoint ptr %txq4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq4, align 4
  %arrayidx = getelementptr %struct.il_tx_queue, ptr %7, i32 %and
  %u = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2
  %status6 = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %status6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %status6, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %12)
  %cmp.not = icmp slt i32 %and3, %12
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %write_ptr.i = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %write_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %write_ptr.i, align 4
  %read_ptr.i = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 2
  %15 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.not.i = icmp slt i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %and3)
  %cmp6.i = icmp sle i32 %16, %and3
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and3)
  %cmp9.i = icmp sgt i32 %14, %and3
  br i1 %cmp.not.i, label %il_queue_used.exit, label %cond.true.i

cond.true.i:                                      ; preds = %lor.lhs.false
  %narrow.i = select i1 %cmp6.i, i1 %cmp9.i, i1 false
  br i1 %narrow.i, label %cond.true.i.if.end_crit_edge, label %cond.true.i.do.end_crit_edge

cond.true.i.do.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

il_queue_used.exit:                               ; preds = %lor.lhs.false
  %narrow23.i = select i1 %cmp6.i, i1 true, i1 %cmp9.i
  br i1 %narrow23.i, label %il_queue_used.exit.if.end_crit_edge, label %il_queue_used.exit.do.end_crit_edge

il_queue_used.exit.do.end_crit_edge:              ; preds = %il_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

il_queue_used.exit.if.end_crit_edge:              ; preds = %il_queue_used.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %il_queue_used.exit.do.end_crit_edge, %cond.true.i.do.end_crit_edge, %entry.do.end_crit_edge
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %17 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %write_ptr = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %write_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %write_ptr, align 4
  %read_ptr = getelementptr inbounds %struct.il_queue, ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %read_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %and, i32 noundef %and3, i32 noundef %12, i32 noundef %20, i32 noundef %22) #16
  br label %cleanup

if.end:                                           ; preds = %il_queue_used.exit.if.end_crit_edge, %cond.true.i.if.end_crit_edge
  %and16 = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 144
  br i1 %cmp17, label %land.lhs.true, label %if.end.if.end35_crit_edge, !prof !415

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end
  %iw_mode = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 94
  %23 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp20 = icmp eq i32 %24, 2
  br i1 %cmp20, label %if.then22, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then22:                                        ; preds = %land.lhs.true
  tail call fastcc void @il_stop_queues_by_reason(ptr noundef %il)
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %25 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then22.il_get_debug_level.exit_crit_edge

if.then22.il_get_debug_level.exit_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %27 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %if.then22.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.else.i ], [ %26, %if.then22.il_get_debug_level.exit_crit_edge ]
  %and25 = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %il_get_debug_level.exit.if.end35_crit_edge, label %do.end30

il_get_debug_level.exit.if.end35_crit_edge:       ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end30:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wiphy, align 8
  %dev31 = getelementptr inbounds %struct.wiphy, ptr %31, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.136) #16
  br label %if.end35

if.end35:                                         ; preds = %do.end30, %il_get_debug_level.exit.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end.if.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %time_stamp = getelementptr %struct.il_tx_queue, ptr %7, i32 %and, i32 5
  %33 = ptrtoint ptr %time_stamp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %time_stamp, align 4
  %skbs = getelementptr %struct.il_tx_queue, ptr %7, i32 %and, i32 4
  %34 = ptrtoint ptr %skbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skbs, align 4
  %36 = ptrtoint ptr %read_ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %read_ptr.i, align 4
  %arrayidx38 = getelementptr ptr, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx38, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3
  %40 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 8
  %count.i = getelementptr %struct.sk_buff, ptr %39, i32 0, i32 3, i32 9
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.clear.i = and i16 %bf.load.i, 2047
  store i16 %bf.clear.i, ptr %count.i, align 1
  %count.1.i = getelementptr %struct.sk_buff, ptr %39, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %count.1.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load.1.i = load i16, ptr %count.1.i, align 1
  %bf.clear.1.i = and i16 %bf.load.1.i, 2047
  store i16 %bf.clear.1.i, ptr %count.1.i, align 1
  %count.2.i = getelementptr %struct.sk_buff, ptr %39, i32 0, i32 3, i32 15
  %43 = ptrtoint ptr %count.2.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %bf.load.2.i = load i16, ptr %count.2.i, align 1
  %bf.clear.2.i = and i16 %bf.load.2.i, 2047
  store i16 %bf.clear.2.i, ptr %count.2.i, align 1
  %count.3.i = getelementptr %struct.sk_buff, ptr %39, i32 0, i32 3, i32 18
  %44 = ptrtoint ptr %count.3.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load.3.i = load i16, ptr %count.3.i, align 1
  %bf.clear.3.i = and i16 %bf.load.3.i, 2047
  store i16 %bf.clear.3.i, ptr %count.3.i, align 1
  %add.ptr.i = getelementptr %struct.sk_buff, ptr %39, i32 0, i32 3, i32 20
  %45 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 28)
  %rate = getelementptr inbounds %struct.il3945_tx_resp, ptr %u, i32 0, i32 3
  %46 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %rate, align 1
  %call40 = tail call fastcc i32 @il3945_hwrate_to_plcp_idx(i8 noundef zeroext %47)
  %band = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load = load i32, ptr %band, align 4
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp41 = icmp eq i32 %bf.lshr.mask, 536870912
  %sub = add i32 %call40, 252
  %spec.select = select i1 %cmp41, i32 %sub, i32 %call40
  %failure_frame = getelementptr inbounds %struct.il3945_tx_resp, ptr %u, i32 0, i32 1
  %49 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %failure_frame, align 1
  %conv46 = trunc i32 %spec.select to i8
  %51 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv46, ptr %40, align 8
  %52 = add i8 %50, 1
  %bf.value = zext i8 %52 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.set = or i16 %bf.clear.i, %bf.shl
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %bf.set, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16)
  %cmp54 = icmp eq i32 %and16, 1
  %cond = select i1 %cmp54, i32 512, i32 0
  %54 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cb.i, align 8
  %or = or i32 %55, %cond
  store i32 %or, ptr %cb.i, align 8
  %debug_level.i147 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %56 = ptrtoint ptr %debug_level.i147 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug_level.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i148 = icmp eq i32 %57, 0
  br i1 %tobool.not.i148, label %if.else.i149, label %if.end35.il_get_debug_level.exit151_crit_edge

if.end35.il_get_debug_level.exit151_crit_edge:    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit151

if.else.i149:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %58 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit151

il_get_debug_level.exit151:                       ; preds = %if.else.i149, %if.end35.il_get_debug_level.exit151_crit_edge
  %retval.0.i150 = phi i32 [ %58, %if.else.i149 ], [ %57, %if.end35.il_get_debug_level.exit151_crit_edge ]
  %and58 = and i32 %retval.0.i150, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %il_get_debug_level.exit151.do.body75_crit_edge, label %do.end63

il_get_debug_level.exit151.do.body75_crit_edge:   ; preds = %il_get_debug_level.exit151
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body75

do.end63:                                         ; preds = %il_get_debug_level.exit151
  %59 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %il, align 8
  %wiphy65 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wiphy65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy65, align 8
  %dev66 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56
  %trunc.i = trunc i32 %10 to i8
  %63 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.230)
  switch i8 %trunc.i, label %sw.epilog.i [
    i8 1, label %do.end63.il3945_get_tx_fail_reason.exit_crit_edge
    i8 -126, label %sw.bb1.i
    i8 -125, label %sw.bb2.i
    i8 -124, label %sw.bb3.i
    i8 -123, label %sw.bb4.i
    i8 -122, label %sw.bb5.i
    i8 -121, label %sw.bb6.i
    i8 -120, label %sw.bb7.i
    i8 -119, label %sw.bb8.i
    i8 -118, label %sw.bb9.i
    i8 -117, label %sw.bb10.i
    i8 -116, label %sw.bb11.i
    i8 -115, label %sw.bb12.i
    i8 -114, label %sw.bb13.i
    i8 -113, label %sw.bb14.i
    i8 -112, label %sw.bb15.i
    i8 -111, label %sw.bb16.i
  ]

do.end63.il3945_get_tx_fail_reason.exit_crit_edge: ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb1.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb2.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb3.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb4.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb5.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb6.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb7.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb8.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb9.i:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb10.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb11.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb12.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb13.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb14.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb15.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.bb16.i:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

sw.epilog.i:                                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_get_tx_fail_reason.exit

il3945_get_tx_fail_reason.exit:                   ; preds = %sw.epilog.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end63.il3945_get_tx_fail_reason.exit_crit_edge
  %retval.0.i152 = phi ptr [ @.str.166, %sw.epilog.i ], [ @.str.165, %sw.bb16.i ], [ @.str.164, %sw.bb15.i ], [ @.str.163, %sw.bb14.i ], [ @.str.162, %sw.bb13.i ], [ @.str.161, %sw.bb12.i ], [ @.str.160, %sw.bb11.i ], [ @.str.159, %sw.bb10.i ], [ @.str.158, %sw.bb9.i ], [ @.str.157, %sw.bb8.i ], [ @.str.156, %sw.bb7.i ], [ @.str.155, %sw.bb6.i ], [ @.str.154, %sw.bb5.i ], [ @.str.153, %sw.bb4.i ], [ @.str.152, %sw.bb3.i ], [ @.str.151, %sw.bb2.i ], [ @.str.150, %sw.bb1.i ], [ @.str.149, %do.end63.il3945_get_tx_fail_reason.exit_crit_edge ]
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rate, align 1
  %conv69 = zext i8 %65 to i32
  %66 = ptrtoint ptr %failure_frame to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %failure_frame, align 1
  %conv71 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.136, i32 noundef %and, ptr noundef nonnull %retval.0.i152, i32 noundef %10, i32 noundef %conv69, i32 noundef %conv71) #16
  br label %do.body75

do.body75:                                        ; preds = %il3945_get_tx_fail_reason.exit, %il_get_debug_level.exit151.do.body75_crit_edge
  %68 = ptrtoint ptr %debug_level.i147 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %debug_level.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i154 = icmp eq i32 %69, 0
  br i1 %tobool.not.i154, label %if.else.i155, label %do.body75.il_get_debug_level.exit157_crit_edge

do.body75.il_get_debug_level.exit157_crit_edge:   ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit157

if.else.i155:                                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %70 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit157

il_get_debug_level.exit157:                       ; preds = %if.else.i155, %do.body75.il_get_debug_level.exit157_crit_edge
  %retval.0.i156 = phi i32 [ %70, %if.else.i155 ], [ %69, %do.body75.il_get_debug_level.exit157_crit_edge ]
  %and77 = and i32 %retval.0.i156, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %il_get_debug_level.exit157.do.end88_crit_edge, label %do.end82

il_get_debug_level.exit157.do.end88_crit_edge:    ; preds = %il_get_debug_level.exit157
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end88

do.end82:                                         ; preds = %il_get_debug_level.exit157
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %il, align 8
  %wiphy84 = getelementptr inbounds %struct.ieee80211_hw, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wiphy84 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wiphy84, align 8
  %dev85 = getelementptr inbounds %struct.wiphy, ptr %74, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.136, i32 noundef %and3) #16
  br label %do.end88

do.end88:                                         ; preds = %do.end82, %il_get_debug_level.exit157.do.end88_crit_edge
  %75 = ptrtoint ptr %txq4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %txq4, align 4
  %arrayidx.i = getelementptr %struct.il_tx_queue, ptr %76, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp.i = icmp eq i32 %and, 4
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !415

do.body4.i:                                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/intel/iwlegacy/3945.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 278, 0\0A.popsection", ""() #13, !srcloc !417
  unreachable

do.end9.i:                                        ; preds = %do.end88
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  %inc.i.i = add nuw nsw i32 %and3, 1
  %sub.i.i = add i32 %78, 511
  %and.i.i = and i32 %sub.i.i, %inc.i.i
  %read_ptr.i158 = getelementptr inbounds %struct.il_queue, ptr %arrayidx.i, i32 0, i32 2
  %79 = ptrtoint ptr %read_ptr.i158 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %read_ptr.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %and.i.i)
  %cmp10.not56.i = icmp eq i32 %80, %and.i.i
  br i1 %cmp10.not56.i, label %do.end9.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.end9.i.for.end.i_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.end9.i
  %skbs.i = getelementptr %struct.il_tx_queue, ptr %76, i32 %and, i32 4
  %ops.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %81 = phi i32 [ %80, %for.body.lr.ph.i ], [ %and.i54.i, %for.body.i.for.body.i_crit_edge ]
  %82 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skbs.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %83, i32 %81
  %84 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx13.i, align 4
  %86 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %il, align 8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %87, ptr noundef %85) #13
  %88 = ptrtoint ptr %skbs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %skbs.i, align 4
  %90 = ptrtoint ptr %read_ptr.i158 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %read_ptr.i158, align 4
  %arrayidx17.i = getelementptr ptr, ptr %89, i32 %91
  %92 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %arrayidx17.i, align 4
  %93 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops.i, align 8
  %txq_free_tfd.i = getelementptr inbounds %struct.il_ops, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %txq_free_tfd.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %txq_free_tfd.i, align 4
  tail call void %96(ptr noundef %il, ptr noundef %arrayidx.i) #13
  %97 = ptrtoint ptr %read_ptr.i158 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %read_ptr.i158, align 4
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %inc.i52.i = add i32 %98, 1
  %sub.i53.i = add i32 %100, -1
  %and.i54.i = and i32 %sub.i53.i, %inc.i52.i
  store i32 %and.i54.i, ptr %read_ptr.i158, align 4
  %cmp10.not.i = icmp eq i32 %and.i54.i, %and.i.i
  br i1 %cmp10.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.end9.i.for.end.i_crit_edge
  %call22.i = tail call i32 @il_queue_space(ptr noundef %arrayidx.i) #13
  %low_mark.i = getelementptr inbounds %struct.il_queue, ptr %arrayidx.i, i32 0, i32 6
  %101 = ptrtoint ptr %low_mark.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %low_mark.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call22.i, i32 %102)
  %cmp23.not.i = icmp sgt i32 %call22.i, %102
  br i1 %cmp23.not.i, label %land.lhs.true27.i, label %for.end.i.il3945_tx_queue_reclaim.exit_crit_edge

for.end.i.il3945_tx_queue_reclaim.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_tx_queue_reclaim.exit

land.lhs.true27.i:                                ; preds = %for.end.i
  %mac80211_registered.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 91
  %103 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mac80211_registered.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool28.not.i = icmp eq i8 %104, 0
  br i1 %tobool28.not.i, label %land.lhs.true27.i.il3945_tx_queue_reclaim.exit_crit_edge, label %if.then29.i

land.lhs.true27.i.il3945_tx_queue_reclaim.exit_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_tx_queue_reclaim.exit

if.then29.i:                                      ; preds = %land.lhs.true27.i
  %swq_id.i.i = getelementptr %struct.il_tx_queue, ptr %76, i32 %and, i32 9
  %105 = ptrtoint ptr %swq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %swq_id.i.i, align 1
  %107 = lshr i8 %106, 2
  %108 = and i8 %107, 31
  %conv5.i.i = zext i8 %108 to i32
  %queue_stopped.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 87
  %call.i.i = tail call i32 @_test_and_clear_bit(i32 noundef %conv5.i.i, ptr noundef %queue_stopped.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.il3945_tx_queue_reclaim.exit_crit_edge, label %if.then.i.i

if.then29.i.il3945_tx_queue_reclaim.exit_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_tx_queue_reclaim.exit

if.then.i.i:                                      ; preds = %if.then29.i
  %and.i55.i = and i8 %106, 3
  %idxprom.i.i.i = zext i8 %and.i55.i to i32
  %arrayidx.i.i.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 %idxprom.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #13
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i.i) #13, !srcloc !419
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %109, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.i.i.il3945_tx_queue_reclaim.exit_crit_edge

if.then.i.i.il3945_tx_queue_reclaim.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_tx_queue_reclaim.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %110 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %il, align 8
  tail call void @ieee80211_wake_queue(ptr noundef %111, i32 noundef %idxprom.i.i.i) #13
  br label %il3945_tx_queue_reclaim.exit

il3945_tx_queue_reclaim.exit:                     ; preds = %if.then.i.i.i, %if.then.i.i.il3945_tx_queue_reclaim.exit_crit_edge, %if.then29.i.il3945_tx_queue_reclaim.exit_crit_edge, %land.lhs.true27.i.il3945_tx_queue_reclaim.exit_crit_edge, %for.end.i.il3945_tx_queue_reclaim.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool90.not = icmp sgt i32 %10, -1
  br i1 %tobool90.not, label %il3945_tx_queue_reclaim.exit.cleanup_crit_edge, label %do.end94

il3945_tx_queue_reclaim.exit.cleanup_crit_edge:   ; preds = %il3945_tx_queue_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end94:                                         ; preds = %il3945_tx_queue_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev95 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %112 = ptrtoint ptr %pci_dev95 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci_dev95, align 8
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.147) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %il3945_tx_queue_reclaim.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_hdl_rx(ptr noundef %il, ptr nocapture noundef %rxb) #0 align 64 {
entry:
  %rx_status = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status) #13
  %0 = getelementptr inbounds i8, ptr %rx_status, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %page = getelementptr inbounds %struct.il_rx_buf, ptr %rxb, i32 0, i32 1
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %call = tail call ptr @page_address(ptr noundef %3) #13
  %u = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2
  %payload = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %u, align 1
  %conv = zext i8 %5 to i32
  %add.ptr = getelementptr i8, ptr %payload, i32 %conv
  %payload14 = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr, i32 0, i32 5
  %len = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %len, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv25 = zext i16 %8 to i32
  %add.ptr26 = getelementptr i8, ptr %payload14, i32 %conv25
  %sig_avg = getelementptr inbounds %struct.il_rx_pkt, ptr %call, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %sig_avg to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %sig_avg, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %noise_diff = getelementptr inbounds %struct.il3945_rx_frame_stats, ptr %u, i32 0, i32 5
  %12 = ptrtoint ptr %noise_diff to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %noise_diff, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flag, align 8
  %timestamp = getelementptr inbounds %struct.il3945_rx_frame_end, ptr %add.ptr26, i32 0, i32 1
  %16 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %timestamp, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %19 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rx_status, align 8
  %phy_flags = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %phy_flags, align 1
  %22 = lshr i16 %21, 8
  %23 = trunc i16 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %band = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %26 = ptrtoint ptr %band to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %band, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv29 = zext i16 %29 to i32
  %conv31 = zext i8 %25 to i32
  %call.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv29, i32 noundef %conv31) #13
  %div.i = udiv i32 %call.i, 1000
  %conv33 = trunc i32 %div.i to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %bf.shl = shl i16 %conv33, 3
  %30 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.shl, ptr %freq, align 4
  %rate = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr, i32 0, i32 3
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rate, align 1
  %call34 = tail call fastcc i32 @il3945_hwrate_to_plcp_idx(i8 noundef zeroext %32)
  %conv35 = trunc i32 %call34 to i8
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp = icmp eq i8 %24, 0
  %conv41 = add i8 %conv35, -4
  %spec.select = select i1 %cmp, i8 %conv41, i8 %conv35
  %33 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %spec.select, ptr %rate_idx, align 1
  %34 = ptrtoint ptr %phy_flags to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %phy_flags, align 1
  %36 = lshr i16 %35, 12
  %37 = trunc i16 %36 to i8
  %conv45 = and i8 %37, 7
  %antenna = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 12
  %38 = ptrtoint ptr %antenna to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv45, ptr %antenna, align 1
  %39 = load i16, ptr %phy_flags, align 1
  %40 = and i16 %39, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool49.not = icmp eq i16 %40, 0
  br i1 %tobool49.not, label %entry.if.end53_crit_edge, label %if.then50

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %enc_flags = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 6
  %41 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enc_flags, align 2
  %43 = or i8 %42, 1
  store i8 %43, ptr %enc_flags, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %entry.if.end53_crit_edge
  %44 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %45)
  %cmp56 = icmp ugt i8 %45, 20
  br i1 %cmp56, label %do.body, label %if.end71, !prof !415

do.body:                                          ; preds = %if.end53
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %46 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %48 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %48, %if.else.i ], [ %47, %do.body.il_get_debug_level.exit_crit_edge ]
  %and62 = and i32 %retval.0.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %52, i32 0, i32 56
  %conv67 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, i32 noundef %conv67) #16
  br label %cleanup

if.end71:                                         ; preds = %if.end53
  %53 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %add.ptr26, align 1
  %55 = and i32 %54, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %55)
  %.not = icmp eq i32 %55, 50331648
  br i1 %.not, label %if.end93, label %do.body78

do.body78:                                        ; preds = %if.end71
  %debug_level.i203 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %56 = ptrtoint ptr %debug_level.i203 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %debug_level.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i204 = icmp eq i32 %57, 0
  br i1 %tobool.not.i204, label %if.else.i205, label %do.body78.il_get_debug_level.exit207_crit_edge

do.body78.il_get_debug_level.exit207_crit_edge:   ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit207

if.else.i205:                                     ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %58 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit207

il_get_debug_level.exit207:                       ; preds = %if.else.i205, %do.body78.il_get_debug_level.exit207_crit_edge
  %retval.0.i206 = phi i32 [ %58, %if.else.i205 ], [ %57, %do.body78.il_get_debug_level.exit207_crit_edge ]
  %and80 = and i32 %retval.0.i206, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %il_get_debug_level.exit207.cleanup_crit_edge, label %do.end85

il_get_debug_level.exit207.cleanup_crit_edge:     ; preds = %il_get_debug_level.exit207
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end85:                                         ; preds = %il_get_debug_level.exit207
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %il, align 8
  %wiphy87 = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wiphy87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy87, align 8
  %dev88 = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.168, i32 noundef %54) #16
  br label %cleanup

if.end93:                                         ; preds = %if.end71
  %rssi = getelementptr inbounds %struct.il3945_rx_frame_stats, ptr %u, i32 0, i32 2
  %63 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rssi, align 1
  %sub95 = add i8 %64, -95
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %65 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %sub95, ptr %signal, align 2
  %debug_level.i208 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %66 = ptrtoint ptr %debug_level.i208 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_level.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i209 = icmp eq i32 %67, 0
  br i1 %tobool.not.i209, label %if.else.i210, label %if.end93.il_get_debug_level.exit212_crit_edge

if.end93.il_get_debug_level.exit212_crit_edge:    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit212

if.else.i210:                                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %68 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit212

il_get_debug_level.exit212:                       ; preds = %if.else.i210, %if.end93.il_get_debug_level.exit212_crit_edge
  %retval.0.i211 = phi i32 [ %68, %if.else.i210 ], [ %67, %if.end93.il_get_debug_level.exit212_crit_edge ]
  %and99 = and i32 %retval.0.i211, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %il_get_debug_level.exit212.do.end114_crit_edge, label %do.end104

il_get_debug_level.exit212.do.end114_crit_edge:   ; preds = %il_get_debug_level.exit212
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end114

do.end104:                                        ; preds = %il_get_debug_level.exit212
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %il, align 8
  %wiphy106 = getelementptr inbounds %struct.ieee80211_hw, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %wiphy106 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wiphy106, align 8
  %dev107 = getelementptr inbounds %struct.wiphy, ptr %72, i32 0, i32 56
  %conv109 = sext i8 %sub95 to i32
  %conv110 = zext i16 %11 to i32
  %conv111 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.168, i32 noundef %conv109, i32 noundef %conv110, i32 noundef %conv111) #16
  br label %do.end114

do.end114:                                        ; preds = %do.end104, %il_get_debug_level.exit212.do.end114_crit_edge
  %73 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %u, align 1
  %conv122 = zext i8 %74 to i32
  %add.ptr123 = getelementptr i8, ptr %payload, i32 %conv122
  %payload124 = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr123, i32 0, i32 5
  %iw_mode.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 94
  %75 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iw_mode.i, align 8
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %76, label %do.end114.il3945_is_network_packet.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

do.end114.il3945_is_network_packet.exit_crit_edge: ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_is_network_packet.exit

sw.bb.i:                                          ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #15
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %payload124, i32 0, i32 4
  %bssid.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 82
  %78 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr3.i, align 4
  %80 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bssid.i, align 4
  %xor.i.i.i = xor i32 %81, %79
  %add.ptr.i.i.i = getelementptr %struct.ieee80211_hdr, ptr %payload124, i32 0, i32 4, i32 4
  br label %return.sink.split.i

sw.bb2.i:                                         ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #15
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %payload124, i32 0, i32 3
  %bssid4.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 82
  %82 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr2.i, align 4
  %84 = ptrtoint ptr %bssid4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bssid4.i, align 4
  %xor.i.i11.i = xor i32 %85, %83
  %add.ptr.i.i12.i = getelementptr %struct.ieee80211_hdr, ptr %payload124, i32 0, i32 3, i32 4
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb2.i, %sw.bb.i
  %add.ptr.i.i12.sink.i = phi ptr [ %add.ptr.i.i12.i, %sw.bb2.i ], [ %add.ptr.i.i.i, %sw.bb.i ]
  %xor.i.i11.sink.i = phi i32 [ %xor.i.i11.i, %sw.bb2.i ], [ %xor.i.i.i, %sw.bb.i ]
  %86 = ptrtoint ptr %add.ptr.i.i12.sink.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i12.sink.i, align 2
  %add.ptr1.i.i13.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 82, i32 4
  %88 = ptrtoint ptr %add.ptr1.i.i13.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr1.i.i13.i, align 2
  %xor37.i.i14.i = xor i16 %89, %87
  %xor3.i.i15.i = zext i16 %xor37.i.i14.i to i32
  %or.i.i16.i = or i32 %xor.i.i11.sink.i, %xor3.i.i15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i16.i)
  %cmp.i.i17.i = icmp eq i32 %or.i.i16.i, 0
  %phi.cast.i = zext i1 %cmp.i.i17.i to i32
  br label %il3945_is_network_packet.exit

il3945_is_network_packet.exit:                    ; preds = %return.sink.split.i, %do.end114.il3945_is_network_packet.exit_crit_edge
  %retval.0.shrunk.i = phi i32 [ 1, %do.end114.il3945_is_network_packet.exit_crit_edge ], [ %phi.cast.i, %return.sink.split.i ]
  %90 = ptrtoint ptr %debug_level.i208 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %debug_level.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i214 = icmp eq i32 %91, 0
  br i1 %tobool.not.i214, label %if.else.i215, label %il3945_is_network_packet.exit.il_get_debug_level.exit217_crit_edge

il3945_is_network_packet.exit.il_get_debug_level.exit217_crit_edge: ; preds = %il3945_is_network_packet.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit217

if.else.i215:                                     ; preds = %il3945_is_network_packet.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %92 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit217

il_get_debug_level.exit217:                       ; preds = %if.else.i215, %il3945_is_network_packet.exit.il_get_debug_level.exit217_crit_edge
  %retval.0.i216 = phi i32 [ %92, %if.else.i215 ], [ %91, %il3945_is_network_packet.exit.il_get_debug_level.exit217_crit_edge ]
  %and130 = and i32 %retval.0.i216, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %il_get_debug_level.exit217.do.end152_crit_edge, label %do.end135

il_get_debug_level.exit217.do.end152_crit_edge:   ; preds = %il_get_debug_level.exit217
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end152

do.end135:                                        ; preds = %il_get_debug_level.exit217
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %il, align 8
  %wiphy137 = getelementptr inbounds %struct.ieee80211_hw, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %wiphy137 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wiphy137, align 8
  %dev138 = getelementptr inbounds %struct.wiphy, ptr %96, i32 0, i32 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.shrunk.i)
  %tobool140.not = icmp eq i32 %retval.0.shrunk.i, 0
  %cond141 = select i1 %tobool140.not, i32 32, i32 42
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %add.ptr, align 1
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  %conv143 = zext i16 %99 to i32
  %100 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %signal, align 2
  %conv145 = sext i8 %101 to i32
  %102 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %rate_idx, align 1
  %conv149 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.168, i32 noundef %cond141, i32 noundef %conv143, i32 noundef %conv145, i32 noundef %conv145, i32 noundef %conv149) #16
  br label %do.end152

do.end152:                                        ; preds = %do.end135, %il_get_debug_level.exit217.do.end152_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.shrunk.i)
  %tobool153.not = icmp eq i32 %retval.0.shrunk.i, 0
  br i1 %tobool153.not, label %do.end152.if.end158_crit_edge, label %if.then154

do.end152.if.end158_crit_edge:                    ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then154:                                       ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #15
  %beacon_timestamp = getelementptr inbounds %struct.il3945_rx_frame_end, ptr %add.ptr26, i32 0, i32 2
  %104 = ptrtoint ptr %beacon_timestamp to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %beacon_timestamp, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %last_beacon_time = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 10
  %107 = ptrtoint ptr %last_beacon_time to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %last_beacon_time, align 8
  %108 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %timestamp, align 1
  %110 = tail call i64 @llvm.bswap.i64(i64 %109)
  %last_tsf = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 11
  %111 = ptrtoint ptr %last_tsf to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %last_tsf, align 8
  %112 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %signal, align 2
  %conv157 = sext i8 %113 to i32
  %last_rx_rssi = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 9
  %114 = ptrtoint ptr %last_rx_rssi to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv157, ptr %last_rx_rssi, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then154, %do.end152.if.end158_crit_edge
  %115 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %page, align 4
  %call.i218 = tail call ptr @page_address(ptr noundef %116) #13
  %u.i = getelementptr inbounds %struct.il_rx_pkt, ptr %call.i218, i32 0, i32 2
  %payload.i = getelementptr inbounds %struct.il_rx_pkt, ptr %call.i218, i32 0, i32 2, i32 0, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %u.i, align 1
  %conv.i = zext i8 %118 to i32
  %add.ptr.i = getelementptr i8, ptr %payload.i, i32 %conv.i
  %payload4.i = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr.i, i32 0, i32 5
  %len.i = getelementptr inbounds %struct.il3945_rx_frame_hdr, ptr %add.ptr.i, i32 0, i32 4
  %119 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %len.i, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #13
  %conv35.i = zext i16 %121 to i32
  %add.ptr36.i = getelementptr i8, ptr %payload4.i, i32 %conv35.i
  %122 = ptrtoint ptr %payload4.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %payload4.i, align 2
  %rx_page_order.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 11
  %124 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_page_order.i, align 4
  %shl.i = shl i32 4096, %125
  %add.i = add nuw nsw i32 %conv35.i, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shl.i)
  %cmp.i = icmp ugt i32 %add.i, %shl.i
  br i1 %cmp.i, label %do.body.i, label %if.end48.i, !prof !415

do.body.i:                                        ; preds = %if.end158
  %126 = ptrtoint ptr %debug_level.i208 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_level.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.il_get_debug_level.exit.i_crit_edge

do.body.i.il_get_debug_level.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %128 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %128, %if.else.i.i ], [ %127, %do.body.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool43.not.i, label %il_get_debug_level.exit.i.cleanup_crit_edge, label %do.end.i

il_get_debug_level.exit.i.cleanup_crit_edge:      ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %132, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179) #16
  br label %cleanup

if.end48.i:                                       ; preds = %if.end158
  %is_open.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 90
  %133 = ptrtoint ptr %is_open.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %is_open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool49.not.i = icmp eq i8 %134, 0
  br i1 %tobool49.not.i, label %do.body59.i, label %if.end73.i, !prof !415

do.body59.i:                                      ; preds = %if.end48.i
  %135 = ptrtoint ptr %debug_level.i208 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %debug_level.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i169.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i169.i, label %if.else.i170.i, label %do.body59.i.il_get_debug_level.exit172.i_crit_edge

do.body59.i.il_get_debug_level.exit172.i_crit_edge: ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit172.i

if.else.i170.i:                                   ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %137 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit172.i

il_get_debug_level.exit172.i:                     ; preds = %if.else.i170.i, %do.body59.i.il_get_debug_level.exit172.i_crit_edge
  %retval.0.i171.i = phi i32 [ %137, %if.else.i170.i ], [ %136, %do.body59.i.il_get_debug_level.exit172.i_crit_edge ]
  %and61.i = and i32 %retval.0.i171.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %il_get_debug_level.exit172.i.cleanup_crit_edge, label %do.end66.i

il_get_debug_level.exit172.i.cleanup_crit_edge:   ; preds = %il_get_debug_level.exit172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end66.i:                                       ; preds = %il_get_debug_level.exit172.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %il, align 8
  %wiphy68.i = getelementptr inbounds %struct.ieee80211_hw, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %wiphy68.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wiphy68.i, align 8
  %dev69.i = getelementptr inbounds %struct.wiphy, ptr %141, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69.i, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.179) #16
  br label %cleanup

if.end73.i:                                       ; preds = %if.end48.i
  %stop_reason.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 88
  %142 = ptrtoint ptr %stop_reason.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %stop_reason.i, align 4
  %and1.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool75.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end97.i_crit_edge, label %if.then82.i, !prof !407

if.end73.i.if.end97.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97.i

if.then82.i:                                      ; preds = %if.end73.i
  tail call fastcc void @il_wake_queues_by_reason(ptr noundef %il) #13
  %144 = ptrtoint ptr %debug_level.i208 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %debug_level.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i174.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i174.i, label %if.else.i175.i, label %if.then82.i.il_get_debug_level.exit177.i_crit_edge

if.then82.i.il_get_debug_level.exit177.i_crit_edge: ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit177.i

if.else.i175.i:                                   ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %146 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit177.i

il_get_debug_level.exit177.i:                     ; preds = %if.else.i175.i, %if.then82.i.il_get_debug_level.exit177.i_crit_edge
  %retval.0.i176.i = phi i32 [ %146, %if.else.i175.i ], [ %145, %if.then82.i.il_get_debug_level.exit177.i_crit_edge ]
  %and85.i = and i32 %retval.0.i176.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %il_get_debug_level.exit177.i.if.end97.i_crit_edge, label %do.end90.i

il_get_debug_level.exit177.i.if.end97.i_crit_edge: ; preds = %il_get_debug_level.exit177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end97.i

do.end90.i:                                       ; preds = %il_get_debug_level.exit177.i
  call void @__sanitizer_cov_trace_pc() #15
  %147 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %il, align 8
  %wiphy92.i = getelementptr inbounds %struct.ieee80211_hw, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %wiphy92.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %wiphy92.i, align 8
  %dev93.i = getelementptr inbounds %struct.wiphy, ptr %150, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.179) #16
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end90.i, %il_get_debug_level.exit177.i.if.end97.i_crit_edge, %if.end73.i.if.end97.i_crit_edge
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 256, i32 noundef 2592) #13
  %tobool99.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool99.not.i, label %do.end103.i, label %if.end105.i

do.end103.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %151 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pci_dev.i, align 8
  %dev104.i = getelementptr inbounds %struct.pci_dev, ptr %152, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104.i, ptr noundef nonnull @.str.187) #16
  br label %cleanup

if.end105.i:                                      ; preds = %if.end97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il3945_mod_params to i32))
  %153 = load i32, ptr @il3945_mod_params, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool106.not.i = icmp eq i32 %153, 0
  br i1 %tobool106.not.i, label %if.then107.i, label %if.end105.i.if.end109.i_crit_edge

if.end105.i.if.end109.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109.i

if.then107.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %add.ptr36.i, align 1
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #13
  %call108.i = call i32 @il_set_decrypted_flag(ptr noundef %il, ptr noundef %call.i218, i32 noundef %156, ptr noundef nonnull %rx_status) #13
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %if.end105.i.if.end109.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %121)
  %cmp110.i = icmp ult i16 %121, 257
  br i1 %cmp110.i, label %if.then112.i, label %if.else.i219

if.then112.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv35.i) #13
  %157 = call ptr @memcpy(ptr %call.i.i, ptr %payload4.i, i32 %conv35.i)
  br label %if.end120.i

if.else.i219:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %page, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %payload4.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i218 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_add_rx_frag(ptr noundef nonnull %call.i.i.i, i32 noundef 0, ptr noundef %159, i32 noundef %sub.ptr.sub.i, i32 noundef %conv35.i, i32 noundef %shl.i) #13
  %alloc_rxb_page.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 9
  %160 = ptrtoint ptr %alloc_rxb_page.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %alloc_rxb_page.i, align 8
  %dec.i = add i32 %161, -1
  store i32 %dec.i, ptr %alloc_rxb_page.i, align 8
  %162 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr null, ptr %page, align 4
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.else.i219, %if.then112.i
  call void @il_update_stats(ptr noundef %il, i1 noundef zeroext false, i16 noundef zeroext %123, i16 noundef zeroext %121) #13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %163 = call ptr @memcpy(ptr %cb.i.i, ptr %rx_status, i32 48)
  %164 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %il, align 8
  call void @ieee80211_rx_napi(ptr noundef %165, ptr noundef null, ptr noundef nonnull %call.i.i.i, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end120.i, %do.end103.i, %do.end66.i, %il_get_debug_level.exit172.i.cleanup_crit_edge, %do.end.i, %il_get_debug_level.exit.i.cleanup_crit_edge, %do.end85, %il_get_debug_level.exit207.cleanup_crit_edge, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_setup_deferred_work(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_periodic = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2
  tail call void @__init_work(ptr noundef %thermal_periodic, i32 noundef 0) #13
  %0 = ptrtoint ptr %thermal_periodic to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %thermal_periodic, align 8
  %lockdep_map = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.68, ptr noundef nonnull @il3945_hw_setup_deferred_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @il3945_bg_reg_txpower_periodic, ptr %func, align 4
  %timer = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.70, ptr noundef nonnull @il3945_hw_setup_deferred_work.__key.69) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @il3945_bg_reg_txpower_periodic(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -23800
  %mutex = getelementptr i8, ptr %work, i32 -21868
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #13
  %status = getelementptr i8, ptr %work, i32 -14776
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %txq = getelementptr i8, ptr %work, i32 -14812
  %3 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %txq, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call fastcc i32 @il3945_is_temp_calib_needed(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.il3945_reg_txpower_periodic.exit_crit_edge, label %if.end.i

if.end.il3945_reg_txpower_periodic.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_reg_txpower_periodic.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @il3945_hw_reg_comp_txpower_temp(ptr noundef %add.ptr) #13
  br label %il3945_reg_txpower_periodic.exit

il3945_reg_txpower_periodic.exit:                 ; preds = %if.end.i, %if.end.il3945_reg_txpower_periodic.exit_crit_edge
  %workqueue.i = getelementptr i8, ptr %work, i32 2164
  %5 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 6000) #13
  br label %out

out:                                              ; preds = %il3945_reg_txpower_periodic.exit, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @il3945_hw_cancel_deferred_work(ptr noundef %il) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_periodic = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 96, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %thermal_periodic) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_load_bsm(ptr noundef %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %10, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %il_get_debug_level.exit.do.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 81920, i32 %3)
  %cmp = icmp ugt i32 %3, 81920
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end7

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end5
  %p_addr = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47, i32 1
  %11 = ptrtoint ptr %p_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_addr, align 4
  %p_addr8 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 48, i32 1
  %13 = ptrtoint ptr %p_addr8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_addr8, align 4
  %len10 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 47, i32 2
  %15 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len10, align 8
  %len12 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 48, i32 2
  %17 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len12, align 4
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13456, i32 noundef %12) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13464, i32 noundef %14) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13460, i32 noundef %16) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13468, i32 noundef %18) #13
  %add = add nuw nsw i32 %3, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13105.not = icmp eq i32 %3, 0
  br i1 %cmp13105.not, label %if.end7.for.end_crit_edge, label %for.body.lr.ph

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %reg_offset.0107 = phi i32 [ 14336, %for.body.lr.ph ], [ %add14, %for.body.for.body_crit_edge ]
  %image.0106 = phi ptr [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %image.0106 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %image.0106, align 4
  %and.i = and i32 %reg_offset.0107, 65532
  %or.i = or i32 %and.i, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #13
  %22 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %21) #13, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %25, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %20) #13, !srcloc !409
  %add14 = add i32 %reg_offset.0107, 4
  %incdec.ptr = getelementptr i32, ptr %image.0106, i32 1
  %cmp13 = icmp ult i32 %add14, %add
  br i1 %cmp13, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %26 = ptrtoint ptr %ucode_boot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ucode_boot, align 8
  %28 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len2, align 8
  %30 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %for.end.il_get_debug_level.exit.i_crit_edge

for.end.il_get_debug_level.exit.i_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %32 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %for.end.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %32, %if.else.i.i ], [ %31, %for.end.il_get_debug_level.exit.i_crit_edge ]
  %and.i91 = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %il_get_debug_level.exit.i.do.end5.i_crit_edge, label %do.end.i

il_get_debug_level.exit.i.do.end5.i_crit_edge:    ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5.i

do.end.i:                                         ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %36, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.198) #16
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %il_get_debug_level.exit.i.do.end5.i_crit_edge
  %call6.i = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef 13324) #13
  %add.i = add i32 %29, 14336
  call void @__sanitizer_cov_trace_const_cmp4(i32 14336, i32 %add.i)
  %cmp54.i = icmp ugt i32 %add.i, 14336
  br i1 %cmp54.i, label %do.end5.i.for.body.i_crit_edge, label %do.end5.i.do.body16.i_crit_edge

do.end5.i.do.body16.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i

do.end5.i.for.body.i_crit_edge:                   ; preds = %do.end5.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end5.i.for.body.i_crit_edge
  %reg.056.i = phi i32 [ %add15.i, %for.inc.i.for.body.i_crit_edge ], [ 14336, %do.end5.i.for.body.i_crit_edge ]
  %image.055.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %27, %do.end5.i.for.body.i_crit_edge ]
  %call7.i = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef %reg.056.i) #13
  %37 = ptrtoint ptr %image.055.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %image.055.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %39)
  %cmp8.not.i = icmp eq i32 %call7.i, %39
  br i1 %cmp8.not.i, label %for.inc.i, label %il3945_verify_bsm.exit

for.inc.i:                                        ; preds = %for.body.i
  %add15.i = add i32 %reg.056.i, 4
  %incdec.ptr.i = getelementptr i32, ptr %image.055.i, i32 1
  %cmp.i = icmp ult i32 %add15.i, %add.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body16.i_crit_edge

for.inc.i.do.body16.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body16.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.body16.i:                                      ; preds = %for.inc.i.do.body16.i_crit_edge, %do.end5.i.do.body16.i_crit_edge
  %40 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i49.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i49.i, label %if.else.i50.i, label %do.body16.i.il_get_debug_level.exit52.i_crit_edge

do.body16.i.il_get_debug_level.exit52.i_crit_edge: ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit52.i

if.else.i50.i:                                    ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %42 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit52.i

il_get_debug_level.exit52.i:                      ; preds = %if.else.i50.i, %do.body16.i.il_get_debug_level.exit52.i_crit_edge
  %retval.0.i51.i = phi i32 [ %42, %if.else.i50.i ], [ %41, %do.body16.i.il_get_debug_level.exit52.i_crit_edge ]
  %and18.i = and i32 %retval.0.i51.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %il_get_debug_level.exit52.i.if.end18_crit_edge, label %do.end23.i

il_get_debug_level.exit52.i.if.end18_crit_edge:   ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

do.end23.i:                                       ; preds = %il_get_debug_level.exit52.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %il, align 8
  %wiphy25.i = getelementptr inbounds %struct.ieee80211_hw, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wiphy25.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wiphy25.i, align 8
  %dev26.i = getelementptr inbounds %struct.wiphy, ptr %46, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.198) #16
  br label %if.end18

il3945_verify_bsm.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %47 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci_dev.i, align 8
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %sub.i = add i32 %reg.056.i, -14336
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.200, i32 noundef 14336, i32 noundef %sub.i, i32 noundef %29, i32 noundef %call7.i, i32 noundef %39) #16
  br label %cleanup

if.end18:                                         ; preds = %do.end23.i, %il_get_debug_level.exit52.i.if.end18_crit_edge
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13316, i32 noundef 0) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13320, i32 noundef 0) #13
  %div90 = lshr i32 %3, 2
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13324, i32 noundef %div90) #13
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13312, i32 noundef -2147483648) #13
  br label %for.body21

for.body21:                                       ; preds = %if.end26.for.body21_crit_edge, %if.end18
  %i.0108 = phi i32 [ 0, %if.end18 ], [ %inc, %if.end26.for.body21_crit_edge ]
  %call22 = tail call i32 @il_rd_prph(ptr noundef %il, i32 noundef 13312) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call22)
  %tobool24.not = icmp sgt i32 %call22, -1
  br i1 %tobool24.not, label %do.body31.critedge, label %if.end26

if.end26:                                         ; preds = %for.body21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #13
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end47, label %if.end26.for.body21_crit_edge

if.end26.for.body21_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body21

do.body31.critedge:                               ; preds = %for.body21
  %50 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i95 = icmp eq i32 %51, 0
  br i1 %tobool.not.i95, label %if.else.i96, label %do.body31.critedge.il_get_debug_level.exit98_crit_edge

do.body31.critedge.il_get_debug_level.exit98_crit_edge: ; preds = %do.body31.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit98

if.else.i96:                                      ; preds = %do.body31.critedge
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %52 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit98

il_get_debug_level.exit98:                        ; preds = %if.else.i96, %do.body31.critedge.il_get_debug_level.exit98_crit_edge
  %retval.0.i97 = phi i32 [ %52, %if.else.i96 ], [ %51, %do.body31.critedge.il_get_debug_level.exit98_crit_edge ]
  %and33 = and i32 %retval.0.i97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %il_get_debug_level.exit98.if.end49_crit_edge, label %do.end38

il_get_debug_level.exit98.if.end49_crit_edge:     ; preds = %il_get_debug_level.exit98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.end38:                                         ; preds = %il_get_debug_level.exit98
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %il, align 8
  %wiphy40 = getelementptr inbounds %struct.ieee80211_hw, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy40, align 8
  %dev41 = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.190, i32 noundef %i.0108) #16
  br label %if.end49

do.end47:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %57 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_dev, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.195) #16
  br label %cleanup

if.end49:                                         ; preds = %do.end38, %il_get_debug_level.exit98.if.end49_crit_edge
  tail call void @il_wr_prph(ptr noundef %il, i32 noundef 13312, i32 noundef 1073741824) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end47, %il3945_verify_bsm.exit, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -5, %do.end47 ], [ -22, %do.end5.cleanup_crit_edge ], [ -5, %il3945_verify_bsm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_dump_nic_error_log(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_send_tx_power(ptr noundef %il) #0 align 64 {
entry:
  %txpower = alloca %struct.il3945_txpowertable_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %txpower) #13
  %0 = getelementptr inbounds i8, ptr %txpower, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 51)
  %channel = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 2
  %channel1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 14
  %2 = ptrtoint ptr %channel1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %channel1, align 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %channel, align 1
  %status = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 77
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b200 = load i1, ptr @il3945_send_tx_power.__already_done, align 1
  br i1 %.b200, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !407

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @il3945_send_tx_power.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1393, i32 noundef 9, ptr noundef nonnull @.str.205) #13
  br label %cleanup

if.end39:                                         ; preds = %entry
  %8 = tail call i16 @llvm.bswap.i16(i16 %3)
  %band = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %9 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ne i32 %10, 1
  %conv = zext i1 %cmp to i8
  %11 = ptrtoint ptr %txpower to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %txpower, align 1
  %call44 = tail call ptr @il_get_channel_info(ptr noundef %il, i32 noundef %10, i16 noundef zeroext %8) #13
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %il_is_channel_valid.exit

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv50 = zext i16 %8 to i32
  %14 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %band, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.206, i32 noundef %conv50, i32 noundef %15) #16
  br label %cleanup

il_is_channel_valid.exit:                         ; preds = %if.end39
  %flags.i = getelementptr inbounds %struct.il_channel_info, ptr %call44, i32 0, i32 5
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool54.not = icmp eq i8 %18, 0
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  br i1 %tobool54.not, label %do.body56, label %il_is_channel_valid.exit.for.body_crit_edge

il_is_channel_valid.exit.for.body_crit_edge:      ; preds = %il_is_channel_valid.exit
  br label %for.body

do.body56:                                        ; preds = %il_is_channel_valid.exit
  %19 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body56.il_get_debug_level.exit_crit_edge

do.body56.il_get_debug_level.exit_crit_edge:      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %21 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body56.il_get_debug_level.exit_crit_edge
  %retval.0.i202 = phi i32 [ %21, %if.else.i ], [ %20, %do.body56.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i202, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end62

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end62:                                         ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wiphy, align 8
  %dev63 = getelementptr inbounds %struct.wiphy, ptr %25, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.207) #16
  br label %cleanup

for.cond106.preheader:                            ; preds = %for.inc
  %arrayidx111 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 8
  %tpc112 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 8, i32 1
  %arrayidx114 = getelementptr %struct.il_channel_info, ptr %call44, i32 0, i32 16, i32 8
  %26 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx114, align 1
  %28 = ptrtoint ptr %tpc112 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %tpc112, align 1
  %29 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 10, ptr %arrayidx111, align 1
  %30 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i209 = icmp eq i32 %31, 0
  br i1 %tobool.not.i209, label %if.else.i210, label %for.cond106.preheader.il_get_debug_level.exit212_crit_edge

for.cond106.preheader.il_get_debug_level.exit212_crit_edge: ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit212

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %il_is_channel_valid.exit.for.body_crit_edge
  %rate_idx.0215 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 4, %il_is_channel_valid.exit.for.body_crit_edge ]
  %i.0213 = phi i32 [ %inc105, %for.inc.for.body_crit_edge ], [ 0, %il_is_channel_valid.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 %i.0213
  %tpc = getelementptr %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 %i.0213, i32 1
  %arrayidx70 = getelementptr %struct.il_channel_info, ptr %call44, i32 0, i32 16, i32 %i.0213
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx70, align 1
  %34 = ptrtoint ptr %tpc to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %tpc, align 1
  %arrayidx72 = getelementptr [12 x %struct.il3945_rate_info], ptr @il3945_rates, i32 0, i32 %rate_idx.0215
  %35 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx72, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx, align 1
  %38 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i204 = icmp eq i32 %39, 0
  br i1 %tobool.not.i204, label %if.else.i205, label %for.body.il_get_debug_level.exit207_crit_edge

for.body.il_get_debug_level.exit207_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit207

if.else.i205:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %40 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit207

il_get_debug_level.exit207:                       ; preds = %if.else.i205, %for.body.il_get_debug_level.exit207_crit_edge
  %retval.0.i206 = phi i32 [ %40, %if.else.i205 ], [ %39, %for.body.il_get_debug_level.exit207_crit_edge ]
  %and77 = and i32 %retval.0.i206, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %il_get_debug_level.exit207.for.inc_crit_edge, label %do.end82

il_get_debug_level.exit207.for.inc_crit_edge:     ; preds = %il_get_debug_level.exit207
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end82:                                         ; preds = %il_get_debug_level.exit207
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %il, align 8
  %wiphy84 = getelementptr inbounds %struct.ieee80211_hw, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %wiphy84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wiphy84, align 8
  %dev85 = getelementptr inbounds %struct.wiphy, ptr %44, i32 0, i32 56
  %45 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %channel, align 1
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %conv87 = zext i16 %47 to i32
  %48 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %txpower, align 1
  %conv89 = zext i8 %49 to i32
  %50 = ptrtoint ptr %tpc to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tpc, align 1
  %conv93 = zext i8 %51 to i32
  %dsp_atten = getelementptr %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 %i.0213, i32 1, i32 1
  %52 = ptrtoint ptr %dsp_atten to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dsp_atten, align 1
  %conv97 = zext i8 %53 to i32
  %conv101 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev85, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv93, i32 noundef %conv97, i32 noundef %conv101) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end82, %il_get_debug_level.exit207.for.inc_crit_edge
  %inc = add nuw nsw i32 %rate_idx.0215, 1
  %inc105 = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc105, 8
  br i1 %exitcond.not, label %for.cond106.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.else.i210:                                     ; preds = %for.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %54 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit212

il_get_debug_level.exit212:                       ; preds = %if.else.i210, %for.cond106.preheader.il_get_debug_level.exit212_crit_edge
  %retval.0.i211 = phi i32 [ %54, %if.else.i210 ], [ %31, %for.cond106.preheader.il_get_debug_level.exit212_crit_edge ]
  %and123 = and i32 %retval.0.i211, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %il_get_debug_level.exit212.for.inc153_crit_edge, label %do.end128

il_get_debug_level.exit212.for.inc153_crit_edge:  ; preds = %il_get_debug_level.exit212
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc153

do.end128:                                        ; preds = %il_get_debug_level.exit212
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %il, align 8
  %wiphy130 = getelementptr inbounds %struct.ieee80211_hw, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %wiphy130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wiphy130, align 8
  %dev131 = getelementptr inbounds %struct.wiphy, ptr %58, i32 0, i32 56
  %59 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %channel, align 1
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv133 = zext i16 %61 to i32
  %62 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %txpower, align 1
  %conv135 = zext i8 %63 to i32
  %64 = ptrtoint ptr %tpc112 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %tpc112, align 1
  %conv140 = zext i8 %65 to i32
  %dsp_atten144 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 8, i32 1, i32 1
  %66 = ptrtoint ptr %dsp_atten144 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dsp_atten144, align 1
  %conv145 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef %conv133, i32 noundef %conv135, i32 noundef %conv140, i32 noundef %conv145, i32 noundef 10) #16
  br label %for.inc153

for.inc153:                                       ; preds = %do.end128, %il_get_debug_level.exit212.for.inc153_crit_edge
  %arrayidx111.1 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 9
  %tpc112.1 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 9, i32 1
  %arrayidx114.1 = getelementptr %struct.il_channel_info, ptr %call44, i32 0, i32 16, i32 9
  %68 = ptrtoint ptr %arrayidx114.1 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %arrayidx114.1, align 1
  %70 = ptrtoint ptr %tpc112.1 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %tpc112.1, align 1
  %71 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 20, ptr %arrayidx111.1, align 1
  %72 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i209.1 = icmp eq i32 %73, 0
  br i1 %tobool.not.i209.1, label %if.else.i210.1, label %for.inc153.il_get_debug_level.exit212.1_crit_edge

for.inc153.il_get_debug_level.exit212.1_crit_edge: ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit212.1

if.else.i210.1:                                   ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %74 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit212.1

il_get_debug_level.exit212.1:                     ; preds = %if.else.i210.1, %for.inc153.il_get_debug_level.exit212.1_crit_edge
  %retval.0.i211.1 = phi i32 [ %74, %if.else.i210.1 ], [ %73, %for.inc153.il_get_debug_level.exit212.1_crit_edge ]
  %and123.1 = and i32 %retval.0.i211.1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.1)
  %tobool124.not.1 = icmp eq i32 %and123.1, 0
  br i1 %tobool124.not.1, label %il_get_debug_level.exit212.1.for.inc153.1_crit_edge, label %do.end128.1

il_get_debug_level.exit212.1.for.inc153.1_crit_edge: ; preds = %il_get_debug_level.exit212.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc153.1

do.end128.1:                                      ; preds = %il_get_debug_level.exit212.1
  call void @__sanitizer_cov_trace_pc() #15
  %75 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %il, align 8
  %wiphy130.1 = getelementptr inbounds %struct.ieee80211_hw, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %wiphy130.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wiphy130.1, align 8
  %dev131.1 = getelementptr inbounds %struct.wiphy, ptr %78, i32 0, i32 56
  %79 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %channel, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80)
  %conv133.1 = zext i16 %81 to i32
  %82 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %txpower, align 1
  %conv135.1 = zext i8 %83 to i32
  %84 = ptrtoint ptr %tpc112.1 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tpc112.1, align 1
  %conv140.1 = zext i8 %85 to i32
  %dsp_atten144.1 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 9, i32 1, i32 1
  %86 = ptrtoint ptr %dsp_atten144.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dsp_atten144.1, align 1
  %conv145.1 = zext i8 %87 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131.1, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef %conv133.1, i32 noundef %conv135.1, i32 noundef %conv140.1, i32 noundef %conv145.1, i32 noundef 20) #16
  br label %for.inc153.1

for.inc153.1:                                     ; preds = %do.end128.1, %il_get_debug_level.exit212.1.for.inc153.1_crit_edge
  %arrayidx111.2 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 10
  %tpc112.2 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 10, i32 1
  %arrayidx114.2 = getelementptr %struct.il_channel_info, ptr %call44, i32 0, i32 16, i32 10
  %88 = ptrtoint ptr %arrayidx114.2 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %arrayidx114.2, align 1
  %90 = ptrtoint ptr %tpc112.2 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %tpc112.2, align 1
  %91 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 55, ptr %arrayidx111.2, align 1
  %92 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i209.2 = icmp eq i32 %93, 0
  br i1 %tobool.not.i209.2, label %if.else.i210.2, label %for.inc153.1.il_get_debug_level.exit212.2_crit_edge

for.inc153.1.il_get_debug_level.exit212.2_crit_edge: ; preds = %for.inc153.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit212.2

if.else.i210.2:                                   ; preds = %for.inc153.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %94 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit212.2

il_get_debug_level.exit212.2:                     ; preds = %if.else.i210.2, %for.inc153.1.il_get_debug_level.exit212.2_crit_edge
  %retval.0.i211.2 = phi i32 [ %94, %if.else.i210.2 ], [ %93, %for.inc153.1.il_get_debug_level.exit212.2_crit_edge ]
  %and123.2 = and i32 %retval.0.i211.2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.2)
  %tobool124.not.2 = icmp eq i32 %and123.2, 0
  br i1 %tobool124.not.2, label %il_get_debug_level.exit212.2.for.inc153.2_crit_edge, label %do.end128.2

il_get_debug_level.exit212.2.for.inc153.2_crit_edge: ; preds = %il_get_debug_level.exit212.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc153.2

do.end128.2:                                      ; preds = %il_get_debug_level.exit212.2
  call void @__sanitizer_cov_trace_pc() #15
  %95 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %il, align 8
  %wiphy130.2 = getelementptr inbounds %struct.ieee80211_hw, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %wiphy130.2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wiphy130.2, align 8
  %dev131.2 = getelementptr inbounds %struct.wiphy, ptr %98, i32 0, i32 56
  %99 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %channel, align 1
  %101 = tail call i16 @llvm.bswap.i16(i16 %100)
  %conv133.2 = zext i16 %101 to i32
  %102 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %txpower, align 1
  %conv135.2 = zext i8 %103 to i32
  %104 = ptrtoint ptr %tpc112.2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %tpc112.2, align 1
  %conv140.2 = zext i8 %105 to i32
  %dsp_atten144.2 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 10, i32 1, i32 1
  %106 = ptrtoint ptr %dsp_atten144.2 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %dsp_atten144.2, align 1
  %conv145.2 = zext i8 %107 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131.2, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef %conv133.2, i32 noundef %conv135.2, i32 noundef %conv140.2, i32 noundef %conv145.2, i32 noundef 55) #16
  br label %for.inc153.2

for.inc153.2:                                     ; preds = %do.end128.2, %il_get_debug_level.exit212.2.for.inc153.2_crit_edge
  %arrayidx111.3 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 11
  %tpc112.3 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 11, i32 1
  %arrayidx114.3 = getelementptr %struct.il_channel_info, ptr %call44, i32 0, i32 16, i32 11
  %108 = ptrtoint ptr %arrayidx114.3 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %arrayidx114.3, align 1
  %110 = ptrtoint ptr %tpc112.3 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 2)
  store i16 %109, ptr %tpc112.3, align 1
  %111 = ptrtoint ptr %arrayidx111.3 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 110, ptr %arrayidx111.3, align 1
  %112 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i209.3 = icmp eq i32 %113, 0
  br i1 %tobool.not.i209.3, label %if.else.i210.3, label %for.inc153.2.il_get_debug_level.exit212.3_crit_edge

for.inc153.2.il_get_debug_level.exit212.3_crit_edge: ; preds = %for.inc153.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit212.3

if.else.i210.3:                                   ; preds = %for.inc153.2
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %114 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit212.3

il_get_debug_level.exit212.3:                     ; preds = %if.else.i210.3, %for.inc153.2.il_get_debug_level.exit212.3_crit_edge
  %retval.0.i211.3 = phi i32 [ %114, %if.else.i210.3 ], [ %113, %for.inc153.2.il_get_debug_level.exit212.3_crit_edge ]
  %and123.3 = and i32 %retval.0.i211.3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.3)
  %tobool124.not.3 = icmp eq i32 %and123.3, 0
  br i1 %tobool124.not.3, label %il_get_debug_level.exit212.3.for.inc153.3_crit_edge, label %do.end128.3

il_get_debug_level.exit212.3.for.inc153.3_crit_edge: ; preds = %il_get_debug_level.exit212.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc153.3

do.end128.3:                                      ; preds = %il_get_debug_level.exit212.3
  call void @__sanitizer_cov_trace_pc() #15
  %115 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %il, align 8
  %wiphy130.3 = getelementptr inbounds %struct.ieee80211_hw, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %wiphy130.3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wiphy130.3, align 8
  %dev131.3 = getelementptr inbounds %struct.wiphy, ptr %118, i32 0, i32 56
  %119 = ptrtoint ptr %channel to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %channel, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120)
  %conv133.3 = zext i16 %121 to i32
  %122 = ptrtoint ptr %txpower to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %txpower, align 1
  %conv135.3 = zext i8 %123 to i32
  %124 = ptrtoint ptr %tpc112.3 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tpc112.3, align 1
  %conv140.3 = zext i8 %125 to i32
  %dsp_atten144.3 = getelementptr inbounds %struct.il3945_txpowertable_cmd, ptr %txpower, i32 0, i32 3, i32 11, i32 1, i32 1
  %126 = ptrtoint ptr %dsp_atten144.3 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %dsp_atten144.3, align 1
  %conv145.3 = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131.3, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.207, i32 noundef %conv133.3, i32 noundef %conv135.3, i32 noundef %conv140.3, i32 noundef %conv145.3, i32 noundef 110) #16
  br label %for.inc153.3

for.inc153.3:                                     ; preds = %do.end128.3, %il_get_debug_level.exit212.3.for.inc153.3_crit_edge
  %call157 = call i32 @il_send_cmd_pdu(ptr noundef %il, i8 noundef zeroext -105, i16 noundef zeroext 52, ptr noundef nonnull %txpower) #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc153.3, %do.end62, %il_get_debug_level.exit.cleanup_crit_edge, %do.end49, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call157, %for.inc153.3 ], [ -22, %do.end49 ], [ -11, %if.then ], [ 0, %do.end62 ], [ 0, %il_get_debug_level.exit.cleanup_crit_edge ], [ -11, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %txpower) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_eeprom_acquire_semaphore(ptr nocapture noundef readonly %il) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_base.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 35
  %0 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !410
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !411
  %3 = and i32 %2, 2147418111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !408
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %hw_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %3) #13, !srcloc !409
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @il3945_eeprom_release_semaphore(ptr nocapture noundef %il) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_send_rxon_assoc(ptr noundef %il) #0 align 64 {
entry:
  %rxon_assoc = alloca %struct.il3945_rxon_assoc_cmd, align 4
  %cmd = alloca %struct.il_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rxon_assoc) #13
  %0 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.il3945_rxon_assoc_cmd, ptr %rxon_assoc, i32 0, i32 4
  %4 = call ptr @memset(ptr %rxon_assoc, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #13
  %5 = getelementptr inbounds i8, ptr %cmd, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %rxon_assoc, ptr %cmd, align 4
  %reply_page = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %reply_page to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reply_page, align 4
  %callback = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %callback, align 4
  %flags = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %flags, align 4
  %len = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 12, ptr %len, align 4
  %id = getelementptr inbounds %struct.il_host_cmd, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %id, align 2
  %flags1 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 12
  %13 = ptrtoint ptr %flags1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %flags1, align 1
  %flags2 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 12
  %15 = ptrtoint ptr %flags2 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %flags2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br i1 %cmp, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %filter_flags = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %17 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %filter_flags, align 1
  %filter_flags3 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 13
  %19 = ptrtoint ptr %filter_flags3 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %filter_flags3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp4 = icmp eq i32 %18, %20
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true5:                                   ; preds = %land.lhs.true
  %cck_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 10
  %21 = ptrtoint ptr %cck_basic_rates to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cck_basic_rates, align 1
  %cck_basic_rates6 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 10
  %23 = ptrtoint ptr %cck_basic_rates6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cck_basic_rates6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp8 = icmp eq i8 %22, %24
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true5.if.end20_crit_edge

land.lhs.true5.if.end20_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

land.lhs.true10:                                  ; preds = %land.lhs.true5
  %ofdm_basic_rates = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 9
  %25 = ptrtoint ptr %ofdm_basic_rates to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ofdm_basic_rates, align 1
  %ofdm_basic_rates12 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 56, i32 9
  %27 = ptrtoint ptr %ofdm_basic_rates12 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ofdm_basic_rates12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp14 = icmp eq i8 %26, %28
  br i1 %cmp14, label %do.body, label %land.lhs.true10.if.end20_crit_edge

land.lhs.true10.if.end20_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.body:                                          ; preds = %land.lhs.true10
  %debug_level.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %29 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.il_get_debug_level.exit_crit_edge

do.body.il_get_debug_level.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %31 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit

il_get_debug_level.exit:                          ; preds = %if.else.i, %do.body.il_get_debug_level.exit_crit_edge
  %retval.0.i = phi i32 [ %31, %if.else.i ], [ %30, %do.body.il_get_debug_level.exit_crit_edge ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %il_get_debug_level.exit.cleanup_crit_edge, label %do.end

il_get_debug_level.exit.cleanup_crit_edge:        ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %il_get_debug_level.exit
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %il, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.217) #16
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true10.if.end20_crit_edge, %land.lhs.true5.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  %36 = ptrtoint ptr %rxon_assoc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %14, ptr %rxon_assoc, align 4
  %filter_flags25 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 13
  %37 = ptrtoint ptr %filter_flags25 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %filter_flags25, align 1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %0, align 4
  %ofdm_basic_rates28 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 9
  %40 = ptrtoint ptr %ofdm_basic_rates28 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ofdm_basic_rates28, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %1, align 4
  %cck_basic_rates31 = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 57, i32 10
  %43 = ptrtoint ptr %cck_basic_rates31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cck_basic_rates31, align 1
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %2, align 1
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %3, align 2
  %call33 = call i32 @il_send_cmd_sync(ptr noundef %il, ptr noundef nonnull %cmd) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end36:                                         ; preds = %if.end20
  %47 = ptrtoint ptr %reply_page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reply_page, align 4
  %49 = inttoptr i32 %48 to ptr
  %flags38 = getelementptr inbounds %struct.il_rx_pkt, ptr %49, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %flags38 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags38, align 1
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool41.not = icmp eq i8 %52, 0
  br i1 %tobool41.not, label %if.end36.if.end47_crit_edge, label %do.end45

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %pci_dev = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %53 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci_dev, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.219) #16
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %if.end36.if.end47_crit_edge
  %rc.0 = phi i32 [ -5, %do.end45 ], [ 0, %if.end36.if.end47_crit_edge ]
  %55 = ptrtoint ptr %reply_page to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reply_page, align 4
  %rx_page_order.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 97, i32 11
  %57 = ptrtoint ptr %rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_page_order.i, align 4
  call void @free_pages(i32 noundef %56, i32 noundef %58) #13
  %alloc_rxb_page.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 9
  %59 = ptrtoint ptr %alloc_rxb_page.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %alloc_rxb_page.i, align 8
  %dec.i = add i32 %60, -1
  store i32 %dec.i, ptr %alloc_rxb_page.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end20.cleanup_crit_edge, %do.end, %il_get_debug_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end47 ], [ 0, %do.end ], [ 0, %il_get_debug_level.exit.cleanup_crit_edge ], [ %call33, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rxon_assoc) #13
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @il3945_get_hcmd_size(i8 noundef zeroext %cmd_id, i16 noundef zeroext %len) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %cmd_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.232)
  switch i8 %cmd_id, label %sw.default [
    i8 16, label %entry.return_crit_edge
    i8 119, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ %len, %sw.default ], [ 32, %sw.bb1 ], [ 44, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @il3945_build_addsta_hcmd(ptr nocapture noundef readonly %cmd, ptr nocapture noundef writeonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd, align 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %data, align 1
  %sta = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 2
  %sta2 = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %sta, ptr %sta2, i32 12)
  %key = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 3
  %key3 = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %key, ptr %key3, i32 32)
  %station_flags = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 4
  %5 = ptrtoint ptr %station_flags to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %station_flags, align 1
  %station_flags4 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 4
  %7 = ptrtoint ptr %station_flags4 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %station_flags4, align 1
  %station_flags_msk = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %station_flags_msk to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %station_flags_msk, align 1
  %station_flags_msk5 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 5
  %10 = ptrtoint ptr %station_flags_msk5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %station_flags_msk5, align 1
  %tid_disable_tx = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %tid_disable_tx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %tid_disable_tx, align 1
  %rate_n_flags = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 7
  %12 = ptrtoint ptr %rate_n_flags to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %rate_n_flags, align 1
  %rate_n_flags6 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 7
  %14 = ptrtoint ptr %rate_n_flags6 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %rate_n_flags6, align 1
  %add_immediate_ba_tid = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 8
  %15 = ptrtoint ptr %add_immediate_ba_tid to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add_immediate_ba_tid, align 1
  %add_immediate_ba_tid7 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 8
  %17 = ptrtoint ptr %add_immediate_ba_tid7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %add_immediate_ba_tid7, align 1
  %remove_immediate_ba_tid = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 9
  %18 = ptrtoint ptr %remove_immediate_ba_tid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %remove_immediate_ba_tid, align 1
  %remove_immediate_ba_tid8 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 9
  %20 = ptrtoint ptr %remove_immediate_ba_tid8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %remove_immediate_ba_tid8, align 1
  %add_immediate_ba_ssn = getelementptr inbounds %struct.il_addsta_cmd, ptr %cmd, i32 0, i32 10
  %21 = ptrtoint ptr %add_immediate_ba_ssn to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add_immediate_ba_ssn, align 1
  %add_immediate_ba_ssn9 = getelementptr inbounds %struct.il3945_addsta_cmd, ptr %data, i32 0, i32 10
  %23 = ptrtoint ptr %add_immediate_ba_ssn9 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %add_immediate_ba_ssn9, align 1
  ret i16 64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il3945_request_scan(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_post_scan(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_post_associate(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_config_ap(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_manage_ibss_station(ptr noundef %il, ptr noundef %vif, i1 noundef zeroext %add) #0 align 64 {
entry:
  %sta_id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  br i1 %add, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bss_conf, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_id.i) #13
  %2 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %sta_id.i, align 1, !annotation !421
  %tobool.not.i = icmp eq ptr %drv_priv, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %if.then
  %call.i = call i32 @il_add_station_common(ptr noundef %il, ptr noundef %1, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %sta_id.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end.i.il3945_add_bssid_station.exit_crit_edge

if.end.i.il3945_add_bssid_station.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_add_bssid_station.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.thread.i:                                  ; preds = %if.then
  %3 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %drv_priv, align 1
  %call29.i = call i32 @il_add_station_common(ptr noundef %il, ptr noundef %1, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %sta_id.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool1.not30.i = icmp eq i32 %call29.i, 0
  br i1 %tobool1.not30.i, label %if.then5.i, label %if.end.thread.i.il3945_add_bssid_station.exit_crit_edge

if.end.thread.i.il3945_add_bssid_station.exit_crit_edge: ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_add_bssid_station.exit

if.then5.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sta_id.i, align 1
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %drv_priv, align 1
  br label %if.end

il3945_add_bssid_station.exit:                    ; preds = %if.end.thread.i.il3945_add_bssid_station.exit_crit_edge, %if.end.i.il3945_add_bssid_station.exit_crit_edge
  %call31.i = phi i32 [ %call29.i, %if.end.thread.i.il3945_add_bssid_station.exit_crit_edge ], [ %call.i, %if.end.i.il3945_add_bssid_station.exit_crit_edge ]
  %pci_dev.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 34
  %7 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.221, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_id.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.then5.i, %if.end.i.if.end_crit_edge
  %sta_lock.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 83
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_lock.i) #13
  %9 = ptrtoint ptr %sta_id.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sta_id.i, align 1
  %idxprom.i = zext i8 %10 to i32
  %used.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %idxprom.i, i32 2
  %11 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %used.i, align 8
  %13 = or i8 %12, 8
  store i8 %13, ptr %used.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_lock.i, i32 noundef %call10.i) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_id.i) #13
  %14 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_priv, align 1
  %conv = zext i8 %15 to i32
  %band = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 8
  %16 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  %conv5 = select i1 %cmp, i16 13, i16 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.i = icmp eq i8 %15, -1
  br i1 %cmp.i, label %if.end.il3945_sync_sta.exit_crit_edge, label %do.body1.i

if.end.il3945_sync_sta.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_sync_sta.exit

do.body1.i:                                       ; preds = %if.end
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sta_lock.i) #13
  %arrayidx.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 85, i32 %conv
  %modify_mask.i = getelementptr inbounds %struct.il_addsta_cmd, ptr %arrayidx.i, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %modify_mask.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %modify_mask.i, align 1
  %19 = shl nuw nsw i16 %conv5, 8
  %rate_n_flags.i = getelementptr inbounds %struct.il_addsta_cmd, ptr %arrayidx.i, i32 0, i32 7
  %20 = ptrtoint ptr %rate_n_flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %rate_n_flags.i, align 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx.i, align 8
  %call10.i26 = call i32 @il_send_add_sta(ptr noundef %il, ptr noundef %arrayidx.i, i8 noundef zeroext 2) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sta_lock.i, i32 noundef %call3.i) #13
  %debug_level.i.i = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 114
  %22 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_level.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body1.i.il_get_debug_level.exit.i_crit_edge

do.body1.i.il_get_debug_level.exit.i_crit_edge:   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il_get_debug_level.exit.i

if.else.i.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @il_debug_level to i32))
  %24 = load i32, ptr @il_debug_level, align 4
  br label %il_get_debug_level.exit.i

il_get_debug_level.exit.i:                        ; preds = %if.else.i.i, %do.body1.i.il_get_debug_level.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %24, %if.else.i.i ], [ %23, %do.body1.i.il_get_debug_level.exit.i_crit_edge ]
  %and.i = and i32 %retval.0.i.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %il_get_debug_level.exit.i.il3945_sync_sta.exit_crit_edge, label %do.end17.i

il_get_debug_level.exit.i.il3945_sync_sta.exit_crit_edge: ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %il3945_sync_sta.exit

do.end17.i:                                       ; preds = %il_get_debug_level.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %il, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy.i, align 8
  %dev.i28 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  %conv18.i = zext i16 %conv5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.224, i32 noundef %conv, i32 noundef %conv18.i) #16
  br label %il3945_sync_sta.exit

il3945_sync_sta.exit:                             ; preds = %do.end17.i, %il_get_debug_level.exit.i.il3945_sync_sta.exit_crit_edge, %if.end.il3945_sync_sta.exit_crit_edge
  %29 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %il, align 8
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %drv_priv, align 1
  %conv8 = zext i8 %32 to i32
  call void @il3945_rate_scale_init(ptr noundef %30, i32 noundef %conv8) #13
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %drv_priv, align 1
  %bss_conf11 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %35 = ptrtoint ptr %bss_conf11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bss_conf11, align 8
  %call13 = tail call i32 @il_remove_station(ptr noundef %il, i8 noundef zeroext %34, ptr noundef %36) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %il3945_sync_sta.exit, %il3945_add_bssid_station.exit
  %retval.0 = phi i32 [ 0, %il3945_sync_sta.exit ], [ %call13, %if.end9 ], [ %call31.i, %il3945_add_bssid_station.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @il3945_send_led_cmd(ptr noundef %il, ptr noundef %led_cmd) #0 align 64 {
entry:
  %cmd = alloca %struct.il_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #13
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
  %call = call i32 @il_send_cmd(ptr noundef %il, ptr noundef nonnull %cmd) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_apm_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_wr_prph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_il_grab_nic_access(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_clear_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_alloc_txq_mem(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_tx_queue_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il_stop_queues_by_reason(ptr noundef %il) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %stop_reason = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 88
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %stop_reason) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %arrayidx.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 0
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #13, !srcloc !423
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader._il_stop_queue.exit_crit_edge

for.body.preheader._il_stop_queue.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_stop_queue.exit

if.then.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %il, align 8
  tail call void @ieee80211_stop_queue(ptr noundef %2, i32 noundef 0) #13
  br label %_il_stop_queue.exit

_il_stop_queue.exit:                              ; preds = %if.then.i, %for.body.preheader._il_stop_queue.exit_crit_edge
  %arrayidx.i.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 1
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.1, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.1, ptr %arrayidx.i.1, i32 1, ptr elementtype(i32) %arrayidx.i.1) #13, !srcloc !423
  %asmresult.i.i.i.i.i.1 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.1)
  %cmp.i.1 = icmp sgt i32 %asmresult.i.i.i.i.i.1, 0
  br i1 %cmp.i.1, label %if.then.i.1, label %_il_stop_queue.exit._il_stop_queue.exit.1_crit_edge

_il_stop_queue.exit._il_stop_queue.exit.1_crit_edge: ; preds = %_il_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_stop_queue.exit.1

if.then.i.1:                                      ; preds = %_il_stop_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %il, align 8
  tail call void @ieee80211_stop_queue(ptr noundef %5, i32 noundef 1) #13
  br label %_il_stop_queue.exit.1

_il_stop_queue.exit.1:                            ; preds = %if.then.i.1, %_il_stop_queue.exit._il_stop_queue.exit.1_crit_edge
  %arrayidx.i.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 2
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.2, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.2, ptr %arrayidx.i.2, i32 1, ptr elementtype(i32) %arrayidx.i.2) #13, !srcloc !423
  %asmresult.i.i.i.i.i.2 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.2)
  %cmp.i.2 = icmp sgt i32 %asmresult.i.i.i.i.i.2, 0
  br i1 %cmp.i.2, label %if.then.i.2, label %_il_stop_queue.exit.1._il_stop_queue.exit.2_crit_edge

_il_stop_queue.exit.1._il_stop_queue.exit.2_crit_edge: ; preds = %_il_stop_queue.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_stop_queue.exit.2

if.then.i.2:                                      ; preds = %_il_stop_queue.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  tail call void @ieee80211_stop_queue(ptr noundef %8, i32 noundef 2) #13
  br label %_il_stop_queue.exit.2

_il_stop_queue.exit.2:                            ; preds = %if.then.i.2, %_il_stop_queue.exit.1._il_stop_queue.exit.2_crit_edge
  %arrayidx.i.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 3
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.3, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !422
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.3, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.3, ptr %arrayidx.i.3, i32 1, ptr elementtype(i32) %arrayidx.i.3) #13, !srcloc !423
  %asmresult.i.i.i.i.i.3 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.3)
  %cmp.i.3 = icmp sgt i32 %asmresult.i.i.i.i.i.3, 0
  br i1 %cmp.i.3, label %if.then.i.3, label %_il_stop_queue.exit.2.if.end_crit_edge

_il_stop_queue.exit.2.if.end_crit_edge:           ; preds = %_il_stop_queue.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i.3:                                      ; preds = %_il_stop_queue.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il, align 8
  tail call void @ieee80211_stop_queue(ptr noundef %11, i32 noundef 3) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i.3, %_il_stop_queue.exit.2.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @il3945_hwrate_to_plcp_idx(i8 noundef zeroext %plcp) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %plcp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.233)
  switch i8 %plcp, label %for.inc.11 [
    i8 10, label %entry.cleanup_crit_edge
    i8 20, label %cleanup.fold.split
    i8 55, label %cleanup.fold.split9
    i8 110, label %cleanup.fold.split10
    i8 13, label %cleanup.fold.split11
    i8 15, label %cleanup.fold.split12
    i8 5, label %cleanup.fold.split13
    i8 7, label %cleanup.fold.split14
    i8 9, label %cleanup.fold.split15
    i8 11, label %cleanup.fold.split16
    i8 1, label %cleanup.fold.split17
    i8 3, label %cleanup.fold.split18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.11:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split9, %cleanup.fold.split, %for.inc.11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %for.inc.11 ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split9 ], [ 3, %cleanup.fold.split10 ], [ 4, %cleanup.fold.split11 ], [ 5, %cleanup.fold.split12 ], [ 6, %cleanup.fold.split13 ], [ 7, %cleanup.fold.split14 ], [ 8, %cleanup.fold.split15 ], [ 9, %cleanup.fold.split16 ], [ 10, %cleanup.fold.split17 ], [ 11, %cleanup.fold.split18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_queue_space(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @il_wake_queues_by_reason(ptr noundef %il) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %stop_reason = getelementptr inbounds %struct.il_priv, ptr %il, i32 0, i32 88
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %stop_reason) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %arrayidx.i = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 0
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #13, !srcloc !419
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.preheader._il_wake_queue.exit_crit_edge

for.body.preheader._il_wake_queue.exit_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_wake_queue.exit

if.then.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %il, align 8
  tail call void @ieee80211_wake_queue(ptr noundef %2, i32 noundef 0) #13
  br label %_il_wake_queue.exit

_il_wake_queue.exit:                              ; preds = %if.then.i, %for.body.preheader._il_wake_queue.exit_crit_edge
  %arrayidx.i.1 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 1
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.1, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.1, ptr %arrayidx.i.1, i32 1, ptr elementtype(i32) %arrayidx.i.1) #13, !srcloc !419
  %asmresult.i.i.i.i.i.1 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.1)
  %cmp.i.1 = icmp slt i32 %asmresult.i.i.i.i.i.1, 1
  br i1 %cmp.i.1, label %if.then.i.1, label %_il_wake_queue.exit._il_wake_queue.exit.1_crit_edge

_il_wake_queue.exit._il_wake_queue.exit.1_crit_edge: ; preds = %_il_wake_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_wake_queue.exit.1

if.then.i.1:                                      ; preds = %_il_wake_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %il, align 8
  tail call void @ieee80211_wake_queue(ptr noundef %5, i32 noundef 1) #13
  br label %_il_wake_queue.exit.1

_il_wake_queue.exit.1:                            ; preds = %if.then.i.1, %_il_wake_queue.exit._il_wake_queue.exit.1_crit_edge
  %arrayidx.i.2 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 2
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.2, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.2, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.2, ptr %arrayidx.i.2, i32 1, ptr elementtype(i32) %arrayidx.i.2) #13, !srcloc !419
  %asmresult.i.i.i.i.i.2 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.2)
  %cmp.i.2 = icmp slt i32 %asmresult.i.i.i.i.i.2, 1
  br i1 %cmp.i.2, label %if.then.i.2, label %_il_wake_queue.exit.1._il_wake_queue.exit.2_crit_edge

_il_wake_queue.exit.1._il_wake_queue.exit.2_crit_edge: ; preds = %_il_wake_queue.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %_il_wake_queue.exit.2

if.then.i.2:                                      ; preds = %_il_wake_queue.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %il, align 8
  tail call void @ieee80211_wake_queue(ptr noundef %8, i32 noundef 2) #13
  br label %_il_wake_queue.exit.2

_il_wake_queue.exit.2:                            ; preds = %if.then.i.2, %_il_wake_queue.exit.1._il_wake_queue.exit.2_crit_edge
  %arrayidx.i.3 = getelementptr %struct.il_priv, ptr %il, i32 0, i32 89, i32 3
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.3, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.3, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.3, ptr %arrayidx.i.3, i32 1, ptr elementtype(i32) %arrayidx.i.3) #13, !srcloc !419
  %asmresult.i.i.i.i.i.3 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.3)
  %cmp.i.3 = icmp slt i32 %asmresult.i.i.i.i.i.3, 1
  br i1 %cmp.i.3, label %if.then.i.3, label %_il_wake_queue.exit.2.if.end_crit_edge

_il_wake_queue.exit.2.if.end_crit_edge:           ; preds = %_il_wake_queue.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i.3:                                      ; preds = %_il_wake_queue.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %il to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %il, align 8
  tail call void @ieee80211_wake_queue(ptr noundef %11, i32 noundef 3) #13
  br label %if.end

if.end:                                           ; preds = %if.then.i.3, %_il_wake_queue.exit.2.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_set_decrypted_flag(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il_update_stats(ptr noundef, i1 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_rd_prph(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @il_get_channel_info(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd_sync(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @il3945_rate_scale_init(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_remove_station(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_add_station_common(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_add_sta(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @il_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 214)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !355, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !369, !371, !372, !373, !374, !376, !377, !378, !380, !381, !382, !383, !385, !386, !387, !388, !390, !392, !394, !396}
!llvm.module.flags = !{!398, !399, !400, !401, !402, !403, !404, !405}
!llvm.ident = !{!406}

!0 = !{ptr @il3945_rates, !1, !"il3945_rates", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 64, i32 31}
!2 = distinct !{null, !3, !"evt_disable", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 109, i32 19}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 161, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @il3945_disable_events._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @il3945_disable_events._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 176, i32 3}
!14 = !{ptr @il3945_disable_events._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @il3945_disable_events._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 177, i32 3}
!18 = !{ptr @il3945_disable_events._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @il3945_disable_events._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 178, i32 3}
!22 = !{ptr @il3945_disable_events._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @il3945_disable_events._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 408, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @il3945_hdl_stats._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @il3945_hdl_stats._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 433, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @il3945_hdl_c_stats._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @il3945_hdl_c_stats._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 614, i32 3}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @il3945_hw_txq_attach_buf_to_tfd._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @il3945_hw_txq_attach_buf_to_tfd._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 648, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @il3945_hw_txq_free_tfd._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @il3945_hw_txq_free_tfd._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 723, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @il3945_hw_build_tx_cmd_rate._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @il3945_hw_build_tx_cmd_rate._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 970, i32 4}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @il3945_hw_nic_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @il3945_hw_nic_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1625, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @il3945_hw_reg_set_txpower._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @il3945_hw_reg_set_txpower._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1630, i32 2}
!61 = !{ptr @il3945_hw_reg_set_txpower._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @il3945_hw_reg_set_txpower._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1734, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @il3945_commit_rxon._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @il3945_commit_rxon._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1744, i32 4}
!70 = !{ptr @il3945_commit_rxon._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @il3945_commit_rxon._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1763, i32 3}
!74 = !{ptr @il3945_commit_rxon._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @il3945_commit_rxon._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1779, i32 4}
!78 = !{ptr @il3945_commit_rxon._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @il3945_commit_rxon._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1787, i32 2}
!82 = !{ptr @il3945_commit_rxon._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @il3945_commit_rxon._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1804, i32 3}
!88 = !{ptr @il3945_commit_rxon._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @il3945_commit_rxon._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1819, i32 3}
!92 = !{ptr @il3945_commit_rxon._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @il3945_commit_rxon._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1826, i32 3}
!96 = !{ptr @il3945_commit_rxon._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @il3945_commit_rxon._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2098, i32 3}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @il3945_txpower_set_from_eeprom._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @il3945_txpower_set_from_eeprom._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2120, i32 5}
!105 = !{ptr @il3945_txpower_set_from_eeprom._entry.58, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @il3945_txpower_set_from_eeprom._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2191, i32 3}
!109 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @il3945_hw_rxq_stop._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @il3945_hw_rxq_stop._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2331, i32 3}
!114 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @il3945_init_hw_rate_table._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @il3945_init_hw_rate_table._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2347, i32 3}
!119 = !{ptr @il3945_init_hw_rate_table._entry.65, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @il3945_init_hw_rate_table._entry_ptr.67, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @il3945_hw_setup_deferred_work.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2456, i32 2}
!123 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @il3945_hw_setup_deferred_work.__key.69, !122, !"__key", i1 false, i1 false}
!125 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @il3945_ops, !127, !"il3945_ops", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2630, i32 21}
!128 = !{ptr @il3945_hw_card_ids, !129, !"il3945_hw_card_ids", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2715, i32 28}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!132 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 901, i32 2}
!135 = !{ptr @.str.73, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @il3945_nic_config._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @il3945_nic_config._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 904, i32 3}
!140 = !{ptr @il3945_nic_config._entry.74, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @il3945_nic_config._entry_ptr.76, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 906, i32 3}
!144 = !{ptr @il3945_nic_config._entry.77, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @il3945_nic_config._entry_ptr.79, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 910, i32 3}
!148 = !{ptr @il3945_nic_config._entry.80, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @il3945_nic_config._entry_ptr.82, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.84, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 916, i32 3}
!152 = !{ptr @il3945_nic_config._entry.83, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @il3945_nic_config._entry_ptr.85, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.87, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 920, i32 3}
!156 = !{ptr @il3945_nic_config._entry.86, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @il3945_nic_config._entry_ptr.88, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 923, i32 3}
!160 = !{ptr @il3945_nic_config._entry.89, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @il3945_nic_config._entry_ptr.91, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @il3945_nic_config._entry.92, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 927, i32 3}
!164 = !{ptr @il3945_nic_config._entry_ptr.93, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.95, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 935, i32 3}
!167 = !{ptr @il3945_nic_config._entry.94, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @il3945_nic_config._entry_ptr.96, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.98, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 938, i32 3}
!171 = !{ptr @il3945_nic_config._entry.97, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @il3945_nic_config._entry_ptr.99, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.101, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 946, i32 3}
!175 = !{ptr @il3945_nic_config._entry.100, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @il3945_nic_config._entry_ptr.102, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.104, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 949, i32 3}
!179 = !{ptr @il3945_nic_config._entry.103, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @il3945_nic_config._entry_ptr.105, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 857, i32 4}
!183 = !{ptr @.str.107, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @il3945_txq_ctx_reset._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @il3945_txq_ctx_reset._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1115, i32 3}
!188 = !{ptr @.str.109, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @il3945_is_temp_calib_needed._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @il3945_is_temp_calib_needed._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.111, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1118, i32 3}
!193 = !{ptr @il3945_is_temp_calib_needed._entry.110, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @il3945_is_temp_calib_needed._entry_ptr.112, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.114, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1120, i32 3}
!197 = !{ptr @il3945_is_temp_calib_needed._entry.113, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @il3945_is_temp_calib_needed._entry_ptr.115, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.117, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1124, i32 3}
!201 = !{ptr @il3945_is_temp_calib_needed._entry.116, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @il3945_is_temp_calib_needed._entry_ptr.118, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.120, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1128, i32 2}
!205 = !{ptr @il3945_is_temp_calib_needed._entry.119, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @il3945_is_temp_calib_needed._entry_ptr.121, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.122, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1077, i32 2}
!209 = !{ptr @.str.123, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @il3945_hw_reg_txpower_get_temperature._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @il3945_hw_reg_txpower_get_temperature._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.125, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1081, i32 3}
!214 = !{ptr @il3945_hw_reg_txpower_get_temperature._entry.124, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @il3945_hw_reg_txpower_get_temperature._entry_ptr.126, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.127, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1979, i32 2}
!218 = !{ptr @.str.128, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @il3945_hw_reg_init_channel_groups._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @il3945_hw_reg_init_channel_groups._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.130, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1988, i32 4}
!223 = !{ptr @.str.131, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @il3945_hw_reg_init_channel_groups._entry.129, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @il3945_hw_reg_init_channel_groups._entry_ptr.132, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.133, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1911, i32 2}
!228 = !{ptr @.str.134, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @il3945_hw_reg_get_ch_grp_idx._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @il3945_hw_reg_get_ch_grp_idx._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @power_gain_table, !232, !"power_gain_table", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1142, i32 31}
!233 = !{ptr @.str.135, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 312, i32 3}
!235 = !{ptr @.str.136, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @il3945_hdl_tx._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @il3945_hdl_tx._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 328, i32 3}
!240 = !{ptr @il3945_hdl_tx._entry.137, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @il3945_hdl_tx._entry_ptr.139, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 350, i32 2}
!244 = !{ptr @il3945_hdl_tx._entry.140, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @il3945_hdl_tx._entry_ptr.142, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.144, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 354, i32 2}
!248 = !{ptr @il3945_hdl_tx._entry.143, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @il3945_hdl_tx._entry_ptr.145, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.147, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 358, i32 3}
!252 = !{ptr @il3945_hdl_tx._entry.146, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @il3945_hdl_tx._entry_ptr.148, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.149, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 203, i32 10}
!256 = !{ptr @.str.150, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 204, i32 3}
!258 = !{ptr @.str.151, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 205, i32 3}
!260 = !{ptr @.str.152, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 206, i32 3}
!262 = !{ptr @.str.153, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 207, i32 3}
!264 = !{ptr @.str.154, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 208, i32 3}
!266 = !{ptr @.str.155, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 209, i32 3}
!268 = !{ptr @.str.156, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 210, i32 3}
!270 = !{ptr @.str.157, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 211, i32 3}
!272 = !{ptr @.str.158, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 212, i32 3}
!274 = !{ptr @.str.159, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 213, i32 3}
!276 = !{ptr @.str.160, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 214, i32 3}
!278 = !{ptr @.str.161, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 215, i32 3}
!280 = !{ptr @.str.162, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 216, i32 3}
!282 = !{ptr @.str.163, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 217, i32 3}
!284 = !{ptr @.str.164, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 218, i32 3}
!286 = !{ptr @.str.165, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 219, i32 3}
!288 = !{ptr @.str.166, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 222, i32 9}
!290 = !{ptr @.str.167, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 561, i32 3}
!292 = !{ptr @.str.168, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @il3945_hdl_rx._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @il3945_hdl_rx._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.170, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 568, i32 3}
!297 = !{ptr @il3945_hdl_rx._entry.169, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @il3945_hdl_rx._entry_ptr.171, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.173, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 575, i32 2}
!301 = !{ptr @il3945_hdl_rx._entry.172, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @il3945_hdl_rx._entry_ptr.174, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.176, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 582, i32 2}
!305 = !{ptr @il3945_hdl_rx._entry.175, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @il3945_hdl_rx._entry_ptr.177, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.178, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 479, i32 3}
!309 = !{ptr @.str.179, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @il3945_pass_packet_to_mac80211._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @il3945_pass_packet_to_mac80211._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.181, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 485, i32 3}
!314 = !{ptr @il3945_pass_packet_to_mac80211._entry.180, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @il3945_pass_packet_to_mac80211._entry_ptr.182, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.184, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 491, i32 3}
!318 = !{ptr @il3945_pass_packet_to_mac80211._entry.183, !317, !"_entry", i1 false, i1 false}
!319 = !{ptr @il3945_pass_packet_to_mac80211._entry_ptr.185, !317, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.187, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 496, i32 3}
!322 = !{ptr @il3945_pass_packet_to_mac80211._entry.186, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @il3945_pass_packet_to_mac80211._entry_ptr.188, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.189, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2569, i32 2}
!326 = !{ptr @.str.190, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @il3945_load_bsm._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @il3945_load_bsm._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.192, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2617, i32 3}
!331 = !{ptr @il3945_load_bsm._entry.191, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @il3945_load_bsm._entry_ptr.193, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.195, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2619, i32 3}
!335 = !{ptr @il3945_load_bsm._entry.194, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @il3945_load_bsm._entry_ptr.196, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.197, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2475, i32 2}
!339 = !{ptr @.str.198, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @il3945_verify_bsm._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @il3945_verify_bsm._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.200, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2483, i32 4}
!344 = !{ptr @il3945_verify_bsm._entry.199, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @il3945_verify_bsm._entry_ptr.201, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.203, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2491, i32 2}
!348 = !{ptr @il3945_verify_bsm._entry.202, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @il3945_verify_bsm._entry_ptr.204, !347, !"_entry_ptr", i1 false, i1 false}
!350 = distinct !{null, !351, !"__already_done", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1391, i32 6}
!352 = !{ptr @.str.205, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @.str.206, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1401, i32 3}
!355 = !{ptr @.str.207, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @il3945_send_tx_power._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @il3945_send_tx_power._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.209, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1407, i32 3}
!360 = !{ptr @il3945_send_tx_power._entry.208, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @il3945_send_tx_power._entry_ptr.210, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.212, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1419, i32 3}
!364 = !{ptr @il3945_send_tx_power._entry.211, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @il3945_send_tx_power._entry_ptr.213, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @il3945_send_tx_power._entry.214, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1430, i32 3}
!368 = !{ptr @il3945_send_tx_power._entry_ptr.215, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.216, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1677, i32 3}
!371 = !{ptr @.str.217, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @il3945_send_rxon_assoc._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @il3945_send_rxon_assoc._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.219, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 1693, i32 3}
!376 = !{ptr @il3945_send_rxon_assoc._entry.218, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @il3945_send_rxon_assoc._entry_ptr.220, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.221, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2267, i32 3}
!380 = !{ptr @.str.222, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @il3945_add_bssid_station._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @il3945_add_bssid_station._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.223, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 747, i32 2}
!385 = !{ptr @.str.224, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @il3945_sync_sta._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @il3945_sync_sta._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.225, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2658, i32 10}
!390 = !{ptr @.str.226, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2659, i32 17}
!392 = !{ptr @il3945_bg_cfg, !393, !"il3945_bg_cfg", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2657, i32 28}
!394 = !{ptr @.str.227, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2687, i32 10}
!396 = !{ptr @il3945_abg_cfg, !397, !"il3945_abg_cfg", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/intel/iwlegacy/3945.c", i32 2686, i32 28}
!398 = !{i32 1, !"wchar_size", i32 2}
!399 = !{i32 1, !"min_enum_size", i32 4}
!400 = !{i32 8, !"branch-target-enforcement", i32 0}
!401 = !{i32 8, !"sign-return-address", i32 0}
!402 = !{i32 8, !"sign-return-address-all", i32 0}
!403 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!404 = !{i32 7, !"uwtable", i32 1}
!405 = !{i32 7, !"frame-pointer", i32 2}
!406 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!407 = !{!"branch_weights", i32 2000, i32 1}
!408 = !{i64 2157993462}
!409 = !{i64 5446926}
!410 = !{i64 5447344}
!411 = !{i64 2157994292}
!412 = distinct !{!412, !413}
!413 = !{!"llvm.loop.peeled.count", i32 5}
!414 = !{i8 0, i8 2}
!415 = !{!"branch_weights", i32 1, i32 2000}
!416 = !{i64 2158229086, i64 2158229594, i64 2158229123, i64 2158229179, i64 2158229213, i64 2158229237, i64 2158229278, i64 2158229299, i64 2158229327, i64 2158229361}
!417 = !{i64 2158055522, i64 2158056029, i64 2158055559, i64 2158055615, i64 2158055649, i64 2158055673, i64 2158055714, i64 2158055735, i64 2158055763, i64 2158055797}
!418 = !{i64 2148373055}
!419 = !{i64 2148287788, i64 2148287820, i64 2148287849, i64 2148287883, i64 2148287914, i64 2148287937}
!420 = !{i64 2148373284}
!421 = !{!"auto-init"}
!422 = !{i64 2148370014}
!423 = !{i64 2148285323, i64 2148285355, i64 2148285384, i64 2148285418, i64 2148285449, i64 2148285472}
!424 = !{i64 2148370243}
