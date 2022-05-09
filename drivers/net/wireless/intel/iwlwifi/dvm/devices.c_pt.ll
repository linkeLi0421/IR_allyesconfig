; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/devices.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/devices.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_dvm_bt_params = type { i8, i8, i32, i16, i8, i8 }
%struct.iwl_sensitivity_ranges = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
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
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl5000_channel_switch_cmd = type { i8, i8, i16, i32, i32, i32, [2 x [26 x i32]] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.ieee80211_channel_switch = type { i64, i32, i8, %struct.cfg80211_chan_def, i8, i32 }
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
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.iwl6000_channel_switch_cmd = type { i8, i8, i16, i32, i32, i32, [3 x [26 x i32]] }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }

@iwl_dvm_1000_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl1000_hw_set_hw_params, ptr null, ptr @iwl1000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1000, i8 -56, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_2000_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl2000_hw_set_hw_params, ptr null, ptr @iwl2000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1000, i8 50, i8 1, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_105_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl2000_hw_set_hw_params, ptr null, ptr @iwl2000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1000, i8 50, i8 1, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@iwl2030_bt_params = internal constant { %struct.iwl_dvm_bt_params, [20 x i8] } { %struct.iwl_dvm_bt_params { i8 1, i8 0, i32 -252645136, i16 1200, i8 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@iwl_dvm_2030_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl2000_hw_set_hw_params, ptr null, ptr @iwl2000_nic_config, ptr @iwlagn_temperature, ptr @iwl2030_bt_params, i32 1000, i8 50, i8 1, i8 1, i8 1, i8 0, i8 1, i8 0, i8 1, i8 1 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_5000_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl5000_hw_set_hw_params, ptr @iwl5000_hw_channel_switch, ptr null, ptr @iwlagn_temperature, ptr null, i32 1000, i8 100, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_5150_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl5150_hw_set_hw_params, ptr @iwl5000_hw_channel_switch, ptr null, ptr @iwl5150_temperature, ptr null, i32 1000, i8 100, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_6000_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl6000_hw_set_hw_params, ptr @iwl6000_hw_channel_switch, ptr @iwl6000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1000, i8 50, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_6005_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl6000_hw_set_hw_params, ptr @iwl6000_hw_channel_switch, ptr @iwl6000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1000, i8 50, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl_dvm_6050_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl6000_hw_set_hw_params, ptr @iwl6000_hw_channel_switch, ptr @iwl6000_nic_config, ptr @iwlagn_temperature, ptr null, i32 1500, i8 50, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@iwl6000_bt_params = internal constant { %struct.iwl_dvm_bt_params, [20 x i8] } { %struct.iwl_dvm_bt_params { i8 1, i8 0, i32 240, i16 1200, i8 1, i8 0 }, [20 x i8] zeroinitializer }, align 32
@iwl_dvm_6030_cfg = dso_local constant { %struct.iwl_dvm_cfg, [60 x i8] } { %struct.iwl_dvm_cfg { ptr @iwl6000_hw_set_hw_params, ptr @iwl6000_hw_channel_switch, ptr @iwl6000_nic_config, ptr @iwlagn_temperature, ptr @iwl6000_bt_params, i32 1000, i8 50, i8 1, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@iwl1000_sensitivity = internal constant { %struct.iwl_sensitivity_ranges, [60 x i8] } { %struct.iwl_sensitivity_ranges { i16 95, i16 95, i16 95, i16 90, i16 170, i16 120, i16 240, i16 120, i16 210, i16 155, i16 290, i16 200, i16 400, i16 125, i16 170, i16 190, i16 390, i16 62 }, [60 x i8] zeroinitializer }, align 32
@iwl2000_sensitivity = internal constant { %struct.iwl_sensitivity_ranges, [60 x i8] } { %struct.iwl_sensitivity_ranges { i16 97, i16 97, i16 100, i16 80, i16 128, i16 105, i16 192, i16 145, i16 232, i16 110, i16 232, i16 175, i16 310, i16 125, i16 160, i16 190, i16 390, i16 62 }, [60 x i8] zeroinitializer }, align 32
@iwl5000_sensitivity = internal constant { %struct.iwl_sensitivity_ranges, [60 x i8] } { %struct.iwl_sensitivity_ranges { i16 100, i16 100, i16 100, i16 90, i16 170, i16 105, i16 220, i16 120, i16 210, i16 120, i16 240, i16 200, i16 400, i16 125, i16 200, i16 190, i16 390, i16 62 }, [60 x i8] zeroinitializer }, align 32
@__func__.iwl5000_hw_channel_switch = private unnamed_addr constant [26 x i8] c"iwl5000_hw_channel_switch\00", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"channel switch from %d to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"uCode time for the switch is 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@iwl5150_sensitivity = internal constant { %struct.iwl_sensitivity_ranges, [60 x i8] } { %struct.iwl_sensitivity_ranges { i16 95, i16 95, i16 95, i16 90, i16 170, i16 105, i16 220, i16 120, i16 210, i16 105, i16 220, i16 200, i16 400, i16 125, i16 170, i16 190, i16 390, i16 62 }, [60 x i8] zeroinitializer }, align 32
@iwl6000_sensitivity = internal constant { %struct.iwl_sensitivity_ranges, [60 x i8] } { %struct.iwl_sensitivity_ranges { i16 110, i16 110, i16 110, i16 80, i16 128, i16 105, i16 192, i16 145, i16 232, i16 110, i16 232, i16 175, i16 310, i16 125, i16 160, i16 190, i16 336, i16 62 }, [60 x i8] zeroinitializer }, align 32
@__func__.iwl6000_hw_channel_switch = private unnamed_addr constant [26 x i8] c"iwl6000_hw_channel_switch\00", align 1
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"channel switch from %u to %u\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/devices.c\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"iwl_dvm_1000_cfg\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 160, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"iwl_dvm_2000_cfg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 221, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"iwl_dvm_105_cfg\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 234, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"iwl2030_bt_params\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 248, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"iwl_dvm_2030_cfg\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 258, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"iwl_dvm_5000_cfg\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 448, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"iwl_dvm_5150_cfg\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 457, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"iwl_dvm_6000_cfg\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 618, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"iwl_dvm_6005_cfg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 629, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"iwl_dvm_6050_cfg\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 641, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"iwl6000_bt_params\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 652, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"iwl_dvm_6030_cfg\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 661, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"iwl1000_sensitivity\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 128, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"iwl2000_sensitivity\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 189, i32 44 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"iwl5000_sensitivity\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 279, i32 44 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 408, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 440, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"iwl5150_sensitivity\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 303, i32 44 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"iwl6000_sensitivity\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 513, i32 44 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 576, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 509, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @iwl_dvm_1000_cfg, ptr @iwl_dvm_2000_cfg, ptr @iwl_dvm_105_cfg, ptr @iwl2030_bt_params, ptr @iwl_dvm_2030_cfg, ptr @iwl_dvm_5000_cfg, ptr @iwl_dvm_5150_cfg, ptr @iwl_dvm_6000_cfg, ptr @iwl_dvm_6005_cfg, ptr @iwl_dvm_6050_cfg, ptr @iwl6000_bt_params, ptr @iwl_dvm_6030_cfg, ptr @iwl1000_sensitivity, ptr @iwl2000_sensitivity, ptr @iwl5000_sensitivity, ptr @.str, ptr @.str.1, ptr @iwl5150_sensitivity, ptr @iwl6000_sensitivity, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_1000_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_2000_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_105_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2030_bt_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_2030_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_5000_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_5150_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_6000_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_6005_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_6050_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl6000_bt_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dvm_6030_cfg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl1000_sensitivity to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl2000_sensitivity to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5000_sensitivity to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl5150_sensitivity to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl6000_sensitivity to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iwl1000_hw_set_hw_params(ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_kill_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ct_kill_threshold.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 110, ptr %ct_kill_threshold.i, align 4
  %ct_kill_exit_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 4
  %1 = ptrtoint ptr %ct_kill_exit_threshold.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 95, ptr %ct_kill_exit_threshold.i, align 8
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iwl1000_sensitivity, ptr %sens, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl1000_nic_config(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @iwl_set_bits_mask_prph(ptr noundef %1, i32 noundef 12376, i32 noundef 96, i32 noundef -481) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwlagn_temperature(ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iwl2000_hw_set_hw_params(ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_kill_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ct_kill_threshold.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 114, ptr %ct_kill_threshold.i, align 4
  %ct_kill_exit_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 4
  %1 = ptrtoint ptr %ct_kill_exit_threshold.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 95, ptr %ct_kill_exit_threshold.i, align 8
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iwl2000_sensitivity, ptr %sens, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl2000_nic_config(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 80, i32 noundef 128, i32 noundef 128) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iwl5000_hw_set_hw_params(ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_kill_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ct_kill_threshold.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 110, ptr %ct_kill_threshold.i, align 4
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %1 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @iwl5000_sensitivity, ptr %sens, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl5000_hw_channel_switch(ptr noundef %priv, ptr nocapture noundef readonly %ch_switch) #1 align 64 {
entry:
  %cmd = alloca %struct.iwl5000_channel_switch_cmd, align 1
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds i8, ptr %cmd, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 223)
  %beacon_interval1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %beacon_interval1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %beacon_interval1, align 4
  %4 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %contexts, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #7
  %6 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !53
  %8 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %9 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 114, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 224, ptr %len, align 4
  %arrayinit.start5 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayinit.start5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayinit.start5, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %3)
  %arrayinit.end6 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %14 = ptrtoint ptr %arrayinit.end6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %arrayinit.end6, align 4
  %band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %15 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %band, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %conv12 = zext i1 %cmp to i8
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %cmd, align 1
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %18 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chandef, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 14
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %channel, align 4
  %conv15 = zext i16 %25 to i32
  %conv16 = zext i16 %21 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl5000_hw_channel_switch, ptr noundef nonnull @.str, i32 noundef %conv15, i32 noundef %conv16) #7
  %26 = call i16 @llvm.bswap.i16(i16 %21)
  %channel19 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %channel19 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %channel19, align 1
  %flags20 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 12
  %28 = ptrtoint ptr %flags20 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %flags20, align 2
  %rxon_flags = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, ptr %cmd, i32 0, i32 3
  %30 = ptrtoint ptr %rxon_flags to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %29, ptr %rxon_flags, align 1
  %filter_flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 13
  %31 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %filter_flags, align 2
  %rxon_filter_flags = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, ptr %cmd, i32 0, i32 4
  %33 = ptrtoint ptr %rxon_filter_flags to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %rxon_filter_flags, align 1
  %count = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %count, align 4
  %36 = ptrtoint ptr %ch_switch to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ch_switch, align 8
  %conv22 = trunc i64 %37 to i32
  %ucode_beacon_time = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 24
  %38 = ptrtoint ptr %ucode_beacon_time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucode_beacon_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv22)
  %cmp23 = icmp ule i32 %39, %conv22
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.if.end39_crit_edge, label %if.then

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %entry
  %conv25 = zext i16 %13 to i32
  %conv26 = zext i8 %35 to i32
  %sub = sub i32 %39, %conv22
  %div = udiv i32 %sub, %conv25
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv26)
  %cmp29 = icmp ult i32 %div, %conv26
  br i1 %cmp29, label %if.then31, label %if.then.if.then43_crit_edge

if.then.if.then43_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %40 = trunc i32 %div to i8
  %conv38 = sub i8 %35, %40
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %entry.if.end39_crit_edge
  %switch_count.0 = phi i8 [ %conv38, %if.then31 ], [ %35, %entry.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %switch_count.0)
  %cmp41 = icmp ult i8 %switch_count.0, 2
  br i1 %cmp41, label %if.end39.if.then43_crit_edge, label %if.else45

if.end39.if.then43_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then43:                                        ; preds = %if.end39.if.then43_crit_edge, %if.then.if.then43_crit_edge
  %41 = call i32 @llvm.bswap.i32(i32 %39)
  br label %do.end58

if.else45:                                        ; preds = %if.end39
  %conv40 = zext i8 %switch_count.0 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 19
  %42 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %beacon_int, align 2
  %conv46 = zext i16 %43 to i32
  %mul = shl nuw nsw i32 %conv40, 10
  %mul48 = mul i32 %mul, %conv46
  %conv49 = zext i16 %13 to i32
  %mul.i = shl nuw nsw i32 %conv49, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul48)
  %tobool1.not.i = icmp eq i32 %mul48, 0
  %or.cond.i = or i1 %tobool.not, %tobool1.not.i
  br i1 %or.cond.i, label %if.else45.iwl_usecs_to_beacons.exit_crit_edge, label %if.end.i

if.else45.iwl_usecs_to_beacons.exit_crit_edge:    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_usecs_to_beacons.exit

if.end.i:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  %mul48.frozen = freeze i32 %mul48
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = udiv i32 %mul48.frozen, %mul.i.frozen
  %44 = mul i32 %div.i, %mul.i.frozen
  %rem2.i.decomposed = sub i32 %mul48.frozen, %44
  %and4.i = and i32 %rem2.i.decomposed, 4194303
  %shl.i = shl i32 %div.i, 22
  %add.i = or i32 %and4.i, %shl.i
  br label %iwl_usecs_to_beacons.exit

iwl_usecs_to_beacons.exit:                        ; preds = %if.end.i, %if.else45.iwl_usecs_to_beacons.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ 0, %if.else45.iwl_usecs_to_beacons.exit_crit_edge ]
  %and.i = and i32 %39, 4194303
  %and2.i = and i32 %retval.0.i, 4194303
  %and4.i98 = and i32 %39, -4194304
  %and6.i = and i32 %retval.0.i, -4194304
  %add.i99 = add i32 %and6.i, %and4.i98
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and2.i)
  %cmp.i = icmp ugt i32 %and.i, %and2.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %iwl_usecs_to_beacons.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 %and.i, %and2.i
  %add7.i = add i32 %sub.i, %add.i99
  br label %iwl_add_beacon_time.exit

if.else.i:                                        ; preds = %iwl_usecs_to_beacons.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and2.i)
  %cmp8.i = icmp ult i32 %and.i, %and2.i
  %add10.i = add i32 %add.i99, 4194304
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.iwl_add_beacon_time.exit_crit_edge

if.else.i.iwl_add_beacon_time.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_add_beacon_time.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub11.i = add nuw nsw i32 %and.i, %mul.i
  %add12.i = sub nsw i32 %sub11.i, %and2.i
  %add13.i = add i32 %add12.i, %add10.i
  br label %iwl_add_beacon_time.exit

iwl_add_beacon_time.exit:                         ; preds = %if.then9.i, %if.else.i.iwl_add_beacon_time.exit_crit_edge, %if.then.i
  %res.0.i = phi i32 [ %add7.i, %if.then.i ], [ %add13.i, %if.then9.i ], [ %add10.i, %if.else.i.iwl_add_beacon_time.exit_crit_edge ]
  %45 = call i32 @llvm.bswap.i32(i32 %res.0.i) #7
  br label %do.end58

do.end58:                                         ; preds = %iwl_add_beacon_time.exit, %if.then43
  %.sink = phi i32 [ %45, %iwl_add_beacon_time.exit ], [ %41, %if.then43 ]
  %switch_time53 = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, ptr %cmd, i32 0, i32 5
  %46 = ptrtoint ptr %switch_time53 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %.sink, ptr %switch_time53, align 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl5000_hw_channel_switch, ptr noundef nonnull @.str.1, i32 noundef %.sink) #7
  %49 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chandef, align 8
  %flags65 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags65, align 4
  %53 = trunc i32 %52 to i8
  %conv67 = and i8 %53, 8
  %expect_beacon = getelementptr inbounds %struct.iwl5000_channel_switch_cmd, ptr %cmd, i32 0, i32 1
  %54 = ptrtoint ptr %expect_beacon to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv67, ptr %expect_beacon, align 1
  %call68 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %hcmd) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #7
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %cmd) #7
  ret i32 %call68
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl5150_hw_set_hw_params(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %0 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_data.i.i, align 8
  %kelvin_temperature.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kelvin_temperature.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %kelvin_temperature.i.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #7
  %kelvin_voltage.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %kelvin_voltage.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %kelvin_voltage.i.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  %conv.i.i = zext i16 %4 to i32
  %8 = udiv i16 %7, 5
  %div.neg.i.i = zext i16 %8 to i32
  %9 = add nuw nsw i32 %conv.i.i, %div.neg.i.i
  %sub.i = sub nsw i32 383, %9
  %mul.i = mul nsw i32 %sub.i, -5
  %ct_kill_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %10 = ptrtoint ptr %ct_kill_threshold.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %ct_kill_threshold.i, align 4
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %11 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @iwl5150_sensitivity, ptr %sens, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl5150_temperature(ptr noundef %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %0 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvm_data.i, align 8
  %kelvin_temperature.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %kelvin_temperature.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %kelvin_temperature.i, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #7
  %kelvin_voltage.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %kelvin_voltage.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %kelvin_voltage.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  %conv.i = zext i16 %4 to i32
  %8 = udiv i16 %7, 5
  %div.neg.i = zext i16 %8 to i32
  %common = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 71, i32 1
  %9 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %common, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %11)
  %12 = icmp ugt i32 %11, -6
  %div = zext i1 %12 to i32
  %sub.i = add nsw i32 %conv.i, -273
  %add = add nsw i32 %sub.i, %div.neg.i
  %add8.i = add nsw i32 %add, %div
  %temperature2 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 34
  %13 = ptrtoint ptr %temperature2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add8.i, ptr %temperature2, align 4
  tail call void @iwl_tt_handler(ptr noundef %priv) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @iwl6000_hw_set_hw_params(ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_kill_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 3
  %0 = ptrtoint ptr %ct_kill_threshold.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 114, ptr %ct_kill_threshold.i, align 4
  %ct_kill_exit_threshold.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 4
  %1 = ptrtoint ptr %ct_kill_exit_threshold.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 95, ptr %ct_kill_exit_threshold.i, align 8
  %sens = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %sens to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @iwl6000_sensitivity, ptr %sens, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl6000_hw_channel_switch(ptr noundef %priv, ptr nocapture noundef readonly %ch_switch) #1 align 64 {
entry:
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %beacon_interval1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %beacon_interval1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %beacon_interval1, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %contexts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %contexts, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #7
  %5 = getelementptr inbounds i8, ptr %hcmd, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %7 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 114, ptr %7, align 4
  %9 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 328, ptr %9, align 4
  %11 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %hcmd, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 328) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %hcmd, align 4
  %band = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 18
  %15 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %band, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %conv4 = zext i1 %cmp to i8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4, ptr %call7.i.i, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 3
  %18 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chandef, align 8
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hw_value, align 2
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %channel = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 14, i32 14
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %channel, align 4
  %conv7 = zext i16 %25 to i32
  %conv8 = zext i16 %21 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl6000_hw_channel_switch, ptr noundef nonnull @.str.2, i32 noundef %conv7, i32 noundef %conv8) #7
  %26 = tail call i16 @llvm.bswap.i16(i16 %21)
  %channel11 = getelementptr inbounds %struct.iwl6000_channel_switch_cmd, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %channel11 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %channel11, align 2
  %flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 12
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %flags, align 2
  %rxon_flags = getelementptr inbounds %struct.iwl6000_channel_switch_cmd, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %rxon_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rxon_flags, align 4
  %filter_flags = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50, i32 0, i32 15, i32 13
  %31 = ptrtoint ptr %filter_flags to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %filter_flags, align 2
  %rxon_filter_flags = getelementptr inbounds %struct.iwl6000_channel_switch_cmd, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %rxon_filter_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rxon_filter_flags, align 8
  %count = getelementptr inbounds %struct.ieee80211_channel_switch, ptr %ch_switch, i32 0, i32 4
  %34 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %count, align 4
  %36 = ptrtoint ptr %ch_switch to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ch_switch, align 8
  %conv13 = trunc i64 %37 to i32
  %ucode_beacon_time = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 24
  %38 = ptrtoint ptr %ucode_beacon_time to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ucode_beacon_time, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv13)
  %cmp14 = icmp ule i32 %39, %conv13
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool17.not = icmp eq i16 %1, 0
  %or.cond = select i1 %cmp14, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end.if.end33_crit_edge, label %if.then18

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then18:                                        ; preds = %if.end
  %conv16 = zext i16 %2 to i32
  %conv19 = zext i8 %35 to i32
  %sub = sub i32 %39, %conv13
  %div = udiv i32 %sub, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv19)
  %cmp22 = icmp ult i32 %div, %conv19
  br i1 %cmp22, label %if.then24, label %if.then18.if.then37_crit_edge

if.then18.if.then37_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %40 = trunc i32 %div to i8
  %conv31 = sub i8 %35, %40
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.end.if.end33_crit_edge
  %switch_count.0 = phi i8 [ %conv31, %if.then24 ], [ %35, %if.end.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %switch_count.0)
  %cmp35 = icmp ult i8 %switch_count.0, 2
  br i1 %cmp35, label %if.end33.if.then37_crit_edge, label %if.else39

if.end33.if.then37_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

if.then37:                                        ; preds = %if.end33.if.then37_crit_edge, %if.then18.if.then37_crit_edge
  %41 = tail call i32 @llvm.bswap.i32(i32 %39)
  br label %do.end53

if.else39:                                        ; preds = %if.end33
  %conv34 = zext i8 %switch_count.0 to i32
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 1, i32 19
  %42 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %beacon_int, align 2
  %conv40 = zext i16 %43 to i32
  %mul = shl nuw nsw i32 %conv34, 10
  %mul42 = mul i32 %mul, %conv40
  %conv43 = zext i16 %2 to i32
  %mul.i = shl nuw nsw i32 %conv43, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul42)
  %tobool1.not.i = icmp eq i32 %mul42, 0
  %or.cond.i = or i1 %tobool17.not, %tobool1.not.i
  br i1 %or.cond.i, label %if.else39.iwl_usecs_to_beacons.exit_crit_edge, label %if.end.i

if.else39.iwl_usecs_to_beacons.exit_crit_edge:    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_usecs_to_beacons.exit

if.end.i:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  %mul42.frozen = freeze i32 %mul42
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = udiv i32 %mul42.frozen, %mul.i.frozen
  %44 = mul i32 %div.i, %mul.i.frozen
  %rem2.i.decomposed = sub i32 %mul42.frozen, %44
  %and4.i = and i32 %rem2.i.decomposed, 4194303
  %shl.i = shl i32 %div.i, 22
  %add.i = or i32 %and4.i, %shl.i
  br label %iwl_usecs_to_beacons.exit

iwl_usecs_to_beacons.exit:                        ; preds = %if.end.i, %if.else39.iwl_usecs_to_beacons.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ 0, %if.else39.iwl_usecs_to_beacons.exit_crit_edge ]
  %and.i = and i32 %39, 4194303
  %and2.i = and i32 %retval.0.i, 4194303
  %and4.i113 = and i32 %39, -4194304
  %and6.i = and i32 %retval.0.i, -4194304
  %add.i114 = add i32 %and6.i, %and4.i113
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and2.i)
  %cmp.i = icmp ugt i32 %and.i, %and2.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %iwl_usecs_to_beacons.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nsw i32 %and.i, %and2.i
  %add7.i = add i32 %sub.i, %add.i114
  br label %iwl_add_beacon_time.exit

if.else.i:                                        ; preds = %iwl_usecs_to_beacons.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and2.i)
  %cmp8.i = icmp ult i32 %and.i, %and2.i
  %add10.i = add i32 %add.i114, 4194304
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i.iwl_add_beacon_time.exit_crit_edge

if.else.i.iwl_add_beacon_time.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_add_beacon_time.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub11.i = add nuw nsw i32 %and.i, %mul.i
  %add12.i = sub nsw i32 %sub11.i, %and2.i
  %add13.i = add i32 %add12.i, %add10.i
  br label %iwl_add_beacon_time.exit

iwl_add_beacon_time.exit:                         ; preds = %if.then9.i, %if.else.i.iwl_add_beacon_time.exit_crit_edge, %if.then.i
  %res.0.i = phi i32 [ %add7.i, %if.then.i ], [ %add13.i, %if.then9.i ], [ %add10.i, %if.else.i.iwl_add_beacon_time.exit_crit_edge ]
  %45 = tail call i32 @llvm.bswap.i32(i32 %res.0.i) #7
  br label %do.end53

do.end53:                                         ; preds = %iwl_add_beacon_time.exit, %if.then37
  %.sink = phi i32 [ %45, %iwl_add_beacon_time.exit ], [ %41, %if.then37 ]
  %switch_time48 = getelementptr inbounds %struct.iwl6000_channel_switch_cmd, ptr %call7.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %switch_time48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %.sink, ptr %switch_time48, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %48, i32 noundef 268435456, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl6000_hw_channel_switch, ptr noundef nonnull @.str.1, i32 noundef %.sink) #7
  %49 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chandef, align 8
  %flags60 = getelementptr inbounds %struct.ieee80211_channel, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %flags60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags60, align 4
  %53 = trunc i32 %52 to i8
  %conv62 = and i8 %53, 8
  %expect_beacon = getelementptr inbounds %struct.iwl6000_channel_switch_cmd, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %expect_beacon to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv62, ptr %expect_beacon, align 1
  %call63 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %hcmd) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call63, %do.end53 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl6000_nic_config(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_family, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 11, label %entry.sw.epilog_crit_edge
    i32 12, label %entry.sw.epilog_crit_edge43
    i32 9, label %entry.sw.epilog_crit_edge44
    i32 10, label %sw.bb1
    i32 13, label %sw.bb3
    i32 14, label %sw.bb6
  ]

entry.sw.epilog_crit_edge44:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iwl_write32(ptr noundef %1, i32 noundef 80, i32 noundef 2) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %nvm_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %7 = ptrtoint ptr %nvm_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nvm_data, align 8
  %calib_version = getelementptr inbounds %struct.iwl_nvm_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %calib_version to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %calib_version, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp = icmp ugt i8 %10, 5
  br i1 %cmp, label %if.then, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %set_bits_mask.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %set_bits_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_bits_mask.i.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 80, i32 noundef 4, i32 noundef 4) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %nvm_data7 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %15 = ptrtoint ptr %nvm_data7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nvm_data7, align 8
  %calib_version8 = getelementptr inbounds %struct.iwl_nvm_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %calib_version8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %calib_version8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp10 = icmp ugt i8 %18, 5
  br i1 %cmp10, label %if.then12, label %sw.bb6.if.end14_crit_edge

sw.bb6.if.end14_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %ops.i.i39 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i39, align 4
  %set_bits_mask.i.i40 = getelementptr inbounds %struct.iwl_trans_ops, ptr %20, i32 0, i32 34
  %21 = ptrtoint ptr %set_bits_mask.i.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bits_mask.i.i40, align 4
  tail call void %22(ptr noundef %1, i32 noundef 80, i32 noundef 4, i32 noundef 4) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb6.if.end14_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %ops.i.i41 = getelementptr inbounds %struct.iwl_trans, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i41, align 4
  %set_bits_mask.i.i42 = getelementptr inbounds %struct.iwl_trans_ops, ptr %26, i32 0, i32 34
  %27 = ptrtoint ptr %set_bits_mask.i.i42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_bits_mask.i.i42, align 4
  tail call void %28(ptr noundef %24, i32 noundef 80, i32 noundef 8, i32 noundef 8) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 509, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end14, %if.then, %sw.bb3.sw.epilog_crit_edge, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge43, %entry.sw.epilog_crit_edge44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_bits_mask_prph(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_tt_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @iwl_dvm_1000_cfg, !1, !"iwl_dvm_1000_cfg", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 160, i32 26}
!2 = !{ptr @iwl_dvm_2000_cfg, !3, !"iwl_dvm_2000_cfg", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 221, i32 26}
!4 = !{ptr @iwl_dvm_105_cfg, !5, !"iwl_dvm_105_cfg", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 234, i32 26}
!6 = !{ptr @iwl_dvm_2030_cfg, !7, !"iwl_dvm_2030_cfg", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 258, i32 26}
!8 = !{ptr @iwl_dvm_5000_cfg, !9, !"iwl_dvm_5000_cfg", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 448, i32 26}
!10 = !{ptr @iwl_dvm_5150_cfg, !11, !"iwl_dvm_5150_cfg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 457, i32 26}
!12 = !{ptr @iwl_dvm_6000_cfg, !13, !"iwl_dvm_6000_cfg", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 618, i32 26}
!14 = !{ptr @iwl_dvm_6005_cfg, !15, !"iwl_dvm_6005_cfg", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 629, i32 26}
!16 = !{ptr @iwl_dvm_6050_cfg, !17, !"iwl_dvm_6050_cfg", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 641, i32 26}
!18 = !{ptr @iwl_dvm_6030_cfg, !19, !"iwl_dvm_6030_cfg", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 661, i32 26}
!20 = !{ptr @iwl1000_sensitivity, !21, !"iwl1000_sensitivity", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 128, i32 44}
!22 = !{ptr @iwl2000_sensitivity, !23, !"iwl2000_sensitivity", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 189, i32 44}
!24 = !{ptr @iwl2030_bt_params, !25, !"iwl2030_bt_params", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 248, i32 39}
!26 = !{ptr @iwl5000_sensitivity, !27, !"iwl5000_sensitivity", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 279, i32 44}
!28 = !{ptr @__func__.iwl5000_hw_channel_switch, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 408, i32 2}
!30 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 440, i32 2}
!33 = !{ptr @iwl5150_sensitivity, !34, !"iwl5150_sensitivity", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 303, i32 44}
!35 = !{ptr @iwl6000_sensitivity, !36, !"iwl6000_sensitivity", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 513, i32 44}
!37 = !{ptr @__func__.iwl6000_hw_channel_switch, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 576, i32 2}
!39 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 509, i32 3}
!42 = !{ptr @iwl6000_bt_params, !43, !"iwl6000_bt_params", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/devices.c", i32 652, i32 39}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
