; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/ucode.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_calib_temperature_offset_cmd = type { %struct.iwl_calib_hdr, i16, i16 }
%struct.iwl_calib_hdr = type { i8, i8, i8, i8 }
%struct.iwl_calib_temperature_offset_v2_cmd = type { %struct.iwl_calib_hdr, i16, i16, i16, i16 }
%struct.iwl_calib_cfg_cmd = type { %struct.iwl_calib_cfg_status_s, %struct.iwl_calib_cfg_status_s, i32 }
%struct.iwl_calib_cfg_status_s = type { %struct.iwl_calib_cfg_elmnt_s, %struct.iwl_calib_cfg_elmnt_s, i32 }
%struct.iwl_calib_cfg_elmnt_s = type { i32, i32, i32, i32, i32 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_bt_coex_prot_env_cmd = type { i8, i8, [2 x i8] }
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
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_nvm_data = type { i32, [6 x i8], i8, i16, i16, i16, i16, [2 x i16], i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, [6 x %struct.ieee80211_supported_band], %struct.anon.137, [0 x %struct.ieee80211_channel] }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.137 = type { [2 x %struct.ieee80211_sband_iftype_data], [2 x %struct.ieee80211_sband_iftype_data] }
%struct.ieee80211_sband_iftype_data = type <{ i16, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, %struct.anon.101 }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.anon.101 = type { ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_bt_coex_prio_table_cmd = type { [16 x i8] }
%struct.iwl_calib_xtal_freq_cmd = type { %struct.iwl_calib_hdr, i8, i8, [2 x i8] }
%struct.iwl_wimax_coex_cmd = type { i8, [3 x i8], [16 x %struct.iwl_wimax_coex_event_entry] }
%struct.iwl_wimax_coex_event_entry = type { i8, i8, i8, i8 }
%struct.iwl_trans_txq_scd_cfg = type { i8, i8, i8, i8, i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.iwl_alive_data = type { i8, i8 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
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
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }

@iwl_bt_prio_tbl = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\06\07\02\03\04\05\06\08\0A\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to send BT prio tbl command\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to send BT env command\0A\00", [33 x i8] zeroinitializer }, align 32
@iwl_load_ucode_wait_alive.alive_cmd = internal constant { [1 x i16], [30 x i8] } { [1 x i16] [i16 1], [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/ucode.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Loaded ucode is not valid!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not complete ALIVE transition: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@iwl_run_init_ucode.calib_complete = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 102, i16 103], [28 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__func__.iwl_set_temperature_offset_calib_v2 = private unnamed_addr constant [36 x i8] c"iwl_set_temperature_offset_calib_v2\00", align 1
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no info in EEPROM, use default\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Radio sensor offset high: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Radio sensor offset low: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Voltage Ref: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_set_temperature_offset_calib = private unnamed_addr constant [33 x i8] c"iwl_set_temperature_offset_calib\00", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Radio sensor offset: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.iwl_alive_fn = private unnamed_addr constant [13 x i8] c"iwl_alive_fn\00", align 1
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Alive ucode status 0x%08X revision 0x%01X 0x%01X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", [42 x i8] zeroinitializer }, align 32
@iwl_trans_start_fw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwlagn_ipan_queue_to_tx_fifo = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\03\02\01\00\00\04\02\05\04\FF\05", [21 x i8] zeroinitializer }, align 32
@iwlagn_default_queue_to_tx_fifo = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\02\01\00", [28 x i8] zeroinitializer }, align 32
@iwl_trans_txq_enable_cfg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s bad state = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.iwl_trans_txq_enable_cfg = private unnamed_addr constant [25 x i8] c"iwl_trans_txq_enable_cfg\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to record calibration data %d\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"iwl_bt_prio_tbl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 148, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 179, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 193, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"alive_cmd\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 299, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 302, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 332, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 346, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"calib_complete\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 378, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 64, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 70, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 72, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 74, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 50, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 272, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1077, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"iwlagn_ipan_queue_to_tx_fifo\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 204, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant [32 x i8] c"iwlagn_default_queue_to_tx_fifo\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 197, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [57 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 1194, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 369, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @iwl_bt_prio_tbl, ptr @.str, ptr @.str.1, ptr @iwl_load_ucode_wait_alive.alive_cmd, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iwl_run_init_ucode.calib_complete, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @iwlagn_ipan_queue_to_tx_fifo, ptr @iwlagn_default_queue_to_tx_fifo, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_bt_prio_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_load_ucode_wait_alive.alive_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_run_init_ucode.calib_complete to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_ipan_queue_to_tx_fifo to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlagn_default_queue_to_tx_fifo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_init_alive_start(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i36 = alloca %struct.iwl_calib_temperature_offset_cmd, align 8
  %cmd.i31 = alloca %struct.iwl_calib_temperature_offset_v2_cmd, align 1
  %calib_cfg_cmd.i = alloca %struct.iwl_calib_cfg_cmd, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %env_cmd.i = alloca %struct.iwl_bt_coex_prot_env_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lib, align 8
  %bt_params = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bt_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %env_cmd.i) #4
  %6 = getelementptr inbounds %struct.iwl_bt_coex_prot_env_cmd, ptr %env_cmd.i, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %env_cmd.i, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -1, ptr %7, align 1
  %9 = ptrtoint ptr %env_cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %env_cmd.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %6, align 1
  %call.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -51, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %env_cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %iwl_send_bt_env.exit.thread, label %iwl_send_bt_env.exit

iwl_send_bt_env.exit.thread:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %env_cmd.i) #4
  br label %if.end6

iwl_send_bt_env.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %env_cmd.i) #4
  br label %cleanup

if.end6:                                          ; preds = %iwl_send_bt_env.exit.thread, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %calib_cfg_cmd.i) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #4
  %13 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65535, ptr %13, align 4, !annotation !56
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %calib_cfg_cmd.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %16 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 101, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 92, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %20 = getelementptr inbounds i8, ptr %calib_cfg_cmd.i, i32 12
  %21 = call ptr @memset(ptr %20, i32 0, i32 80)
  %22 = ptrtoint ptr %calib_cfg_cmd.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1593835520, ptr %calib_cfg_cmd.i, align 4
  %start.i = getelementptr inbounds %struct.iwl_calib_cfg_elmnt_s, ptr %calib_cfg_cmd.i, i32 0, i32 1
  %23 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1593835520, ptr %start.i, align 4
  %send_res.i = getelementptr inbounds %struct.iwl_calib_cfg_elmnt_s, ptr %calib_cfg_cmd.i, i32 0, i32 2
  %24 = ptrtoint ptr %send_res.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1593835520, ptr %send_res.i, align 4
  %flags15.i = getelementptr inbounds %struct.iwl_calib_cfg_status_s, ptr %calib_cfg_cmd.i, i32 0, i32 2
  %25 = ptrtoint ptr %flags15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %flags15.i, align 4
  %call.i30 = call i32 @iwl_dvm_send_cmd(ptr noundef %priv, ptr noundef nonnull %cmd.i) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #4
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %calib_cfg_cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool8.not = icmp eq i32 %call.i30, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %26 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lib, align 8
  %need_temp_offset_calib = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %need_temp_offset_calib to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %need_temp_offset_calib, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not = icmp eq i8 %29, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %temp_offset_v2 = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %27, i32 0, i32 13
  %30 = ptrtoint ptr %temp_offset_v2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %temp_offset_v2, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15.not = icmp eq i8 %31, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd.i31) #4
  %32 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i31, i32 0, i32 2
  %34 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i31, i32 0, i32 3
  %35 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, ptr %cmd.i31, i32 0, i32 1
  %36 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, ptr %cmd.i31, i32 0, i32 2
  %37 = getelementptr inbounds i8, ptr %cmd.i31, i32 10
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 0, ptr %37, align 1
  %39 = ptrtoint ptr %cmd.i31 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 18, ptr %cmd.i31, align 1
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %32, align 1
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %33, align 1
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %34, align 1
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %43 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nvm_data.i, align 8
  %kelvin_temperature.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %kelvin_temperature.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %kelvin_temperature.i, align 4
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %35, align 1
  %raw_temperature.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %44, i32 0, i32 4
  %48 = ptrtoint ptr %raw_temperature.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %raw_temperature.i, align 2
  %50 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 %49, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i32 = icmp eq i16 %49, 0
  br i1 %tobool.not.i32, label %do.end.i34, label %if.then16.iwl_set_temperature_offset_calib_v2.exit_crit_edge

if.then16.iwl_set_temperature_offset_calib_v2.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %iwl_set_temperature_offset_calib_v2.exit

do.end.i34:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i33 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %51 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i33, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %52, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_temperature_offset_calib_v2, ptr noundef nonnull @.str.5) #4
  %53 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 -29686, ptr %36, align 1
  %54 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 -29686, ptr %35, align 1
  br label %iwl_set_temperature_offset_calib_v2.exit

iwl_set_temperature_offset_calib_v2.exit:         ; preds = %do.end.i34, %if.then16.iwl_set_temperature_offset_calib_v2.exit_crit_edge
  %55 = getelementptr inbounds %struct.iwl_calib_temperature_offset_v2_cmd, ptr %cmd.i31, i32 0, i32 3
  %56 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %nvm_data.i, align 8
  %calib_voltage.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %calib_voltage.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %calib_voltage.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %55, align 1
  %dev13.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %61 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev13.i, align 4
  %63 = ptrtoint ptr %35 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %35, align 1
  %65 = call i16 @llvm.bswap.i16(i16 %64) #4
  %conv.i = zext i16 %65 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %62, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_temperature_offset_calib_v2, ptr noundef nonnull @.str.6, i32 noundef %conv.i) #4
  %66 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev13.i, align 4
  %68 = ptrtoint ptr %36 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %36, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69) #4
  %conv23.i = zext i16 %70 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %67, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_temperature_offset_calib_v2, ptr noundef nonnull @.str.7, i32 noundef %conv23.i) #4
  %71 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev13.i, align 4
  %73 = call i16 @llvm.bswap.i16(i16 %59) #4
  %conv32.i = zext i16 %73 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %72, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_temperature_offset_calib_v2, ptr noundef nonnull @.str.8, i32 noundef %conv32.i) #4
  %call.i35 = call i32 @iwl_calib_set(ptr noundef %priv, ptr noundef nonnull %cmd.i31, i32 noundef 12) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd.i31) #4
  br label %cleanup

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i36) #4
  %74 = getelementptr inbounds %struct.iwl_calib_temperature_offset_cmd, ptr %cmd.i36, i32 0, i32 1
  %75 = ptrtoint ptr %cmd.i36 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 1297037796489297920, ptr %cmd.i36, align 8
  %nvm_data.i37 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %76 = ptrtoint ptr %nvm_data.i37 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nvm_data.i37, align 8
  %raw_temperature.i38 = getelementptr inbounds %struct.iwl_nvm_data, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %raw_temperature.i38 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %raw_temperature.i38, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool.not.i39 = icmp eq i16 %79, 0
  %spec.select.i = select i1 %tobool.not.i39, i16 -29686, i16 %79
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %spec.select.i, ptr %74, align 4
  %dev.i40 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %81 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i40, align 4
  %83 = call i16 @llvm.bswap.i16(i16 %spec.select.i) #4
  %conv.i41 = zext i16 %83 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %82, i32 noundef 2097152, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_temperature_offset_calib, ptr noundef nonnull @.str.9, i32 noundef %conv.i41) #4
  %call.i42 = call i32 @iwl_calib_set(ptr noundef %priv, ptr noundef nonnull %cmd.i36, i32 noundef 8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i36) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %iwl_set_temperature_offset_calib_v2.exit, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %iwl_send_bt_env.exit
  %retval.0 = phi i32 [ %call.i35, %iwl_set_temperature_offset_calib_v2.exit ], [ %call.i42, %if.else ], [ %call.i, %iwl_send_bt_env.exit ], [ %call.i30, %if.end6.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_bt_env(ptr noundef %priv, i8 noundef zeroext %action, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %env_cmd = alloca %struct.iwl_bt_coex_prot_env_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %env_cmd) #4
  %0 = getelementptr inbounds %struct.iwl_bt_coex_prot_env_cmd, ptr %env_cmd, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %env_cmd, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %1, align 1
  %3 = ptrtoint ptr %env_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %action, ptr %env_cmd, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %0, align 1
  %call = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -51, i32 noundef 0, i16 noundef zeroext 4, ptr noundef nonnull %env_cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.1) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %env_cmd) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_send_prio_tbl(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %prio_tbl_cmd = alloca %struct.iwl_bt_coex_prio_table_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prio_tbl_cmd) #4
  %0 = call ptr @memcpy(ptr %prio_tbl_cmd, ptr @iwl_bt_prio_tbl, i32 16)
  %call = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext -52, i32 noundef 0, i16 noundef zeroext 16, ptr noundef nonnull %prio_tbl_cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prio_tbl_cmd) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_load_ucode_wait_alive(ptr noundef %priv, i32 noundef %ucode_type) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca %struct.iwl_calib_xtal_freq_cmd, align 1
  %coex_cmd.i.i = alloca %struct.iwl_wimax_coex_cmd, align 1
  %cfg.i.i = alloca %struct.iwl_trans_txq_scd_cfg, align 4
  %alive_wait = alloca %struct.iwl_notification_wait, align 4
  %alive_data = alloca %struct.iwl_alive_data, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %alive_wait) #4
  %0 = call ptr @memset(ptr %alive_wait, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %alive_data) #4
  %1 = ptrtoint ptr %alive_data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %alive_data, align 1, !annotation !56
  %2 = getelementptr inbounds %struct.iwl_alive_data, ptr %alive_data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !56
  %fw1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ucode_type)
  %cmp.i = icmp ugt i32 %ucode_type, 3
  %arrayidx.i = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 2, i32 %ucode_type
  %tobool.not102 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not102
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !57

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %entry
  %cur_ucode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 143
  %6 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_ucode, align 8
  store i32 %ucode_type, ptr %cur_ucode, align 8
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %8 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ucode_loaded, align 8
  %notif_wait = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 21
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait, ptr noundef nonnull @iwl_load_ucode_wait_alive.alive_cmd, i32 noundef 1, ptr noundef nonnull @iwl_alive_fn, ptr noundef nonnull %alive_data) #4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1077) #4
  %rx_mpdu_cmd.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %rx_mpdu_cmd.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_mpdu_cmd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end24.if.end36.i_crit_edge

if.end24.if.end36.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

land.rhs.i:                                       ; preds = %if.end24
  %.b1.i = load i1, ptr @iwl_trans_start_fw.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.end36.i_crit_edge, label %if.then.i, !prof !58

land.rhs.i.if.end36.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_trans_start_fw.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1079, i32 noundef 9, ptr noundef null) #4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end36.i_crit_edge, %if.end24.if.end36.i_crit_edge
  %status.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 7
  call void @_clear_bit(i32 noundef 6, ptr noundef %status.i) #4
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %start_fw.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %start_fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %start_fw.i, align 4
  %call.i = call i32 %16(ptr noundef %10, ptr noundef nonnull %arrayidx.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i95 = icmp eq i32 %call.i, 0
  br i1 %cmp.i95, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %cur_ucode, align 8
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end36.i
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %10, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state.i, align 8
  %call33 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %alive_wait, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %7, ptr %cur_ucode, align 8
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %alive_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alive_data, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38.not = icmp eq i8 %21, 0
  br i1 %tobool38.not, label %do.end43, label %if.end47

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %23, i32 noundef 0, ptr noundef nonnull @.str.3) #4
  %24 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %7, ptr %cur_ucode, align 8
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %25 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ucode_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ucode_type)
  %cmp.not = icmp eq i32 %ucode_type, 2
  br i1 %cmp.not, label %if.end47.if.end50_crit_edge, label %if.then49

if.end47.if.end50_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  call void @msleep(i32 noundef 5) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end47.if.end50_crit_edge
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1064) #4
  %state.i.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %fw_alive.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %fw_alive.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_alive.i.i, align 4
  call void %32(ptr noundef %27, i32 noundef 0) #4
  %33 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fw1, align 4
  %flags.i = getelementptr inbounds %struct.iwl_fw, ptr %34, i32 0, i32 5, i32 3
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i96 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i96, label %if.end50.if.else.i_crit_edge, label %land.lhs.true.i

if.end50.if.else.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end50
  %nvm_data.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %37 = ptrtoint ptr %nvm_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nvm_data.i, align 8
  %sku_cap_ipan_enable.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %sku_cap_ipan_enable.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sku_cap_ipan_enable.i, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i = icmp eq i8 %40, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end50.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %queue_to_txf.0.i = phi ptr [ @iwlagn_default_queue_to_tx_fifo, %if.else.i ], [ @iwlagn_ipan_queue_to_tx_fifo, %land.lhs.true.i.if.end.i_crit_edge ]
  %n_queues.0.i = phi i32 [ 4, %if.else.i ], [ 11, %land.lhs.true.i.if.end.i_crit_edge ]
  %41 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i.i, i32 0, i32 1
  %42 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i.i, i32 0, i32 2
  %43 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i.i, i32 0, i32 3
  %44 = getelementptr inbounds %struct.iwl_trans_txq_scd_cfg, ptr %cfg.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.043.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i97 = getelementptr i8, ptr %queue_to_txf.0.i, i32 %i.043.i
  %45 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %cmp4.not.i = icmp eq i8 %46, -1
  br i1 %cmp4.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then6.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfg.i.i) #4
  %49 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %cfg.i.i, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %41, align 1
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %42, align 2
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %43, align 1
  %53 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 64, ptr %44, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1191) #4
  %state.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 6
  %54 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.not.i.i.i = icmp eq i32 %55, 2
  br i1 %cmp.not.i.i.i, label %if.end48.i.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then6.i
  %.b1.i.i.i = load i1, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.do.end44.i.i.i_crit_edge, label %if.then.i.i.i, !prof !58

land.rhs.i.i.i.do.end44.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_trans_txq_enable_cfg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1193, i32 noundef 9, ptr noundef null) #4
  br label %do.end44.i.i.i

do.end44.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.do.end44.i.i.i_crit_edge
  %dev.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 8
  %56 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i.i, align 8
  %58 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i.i.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.iwl_trans_txq_enable_cfg, i32 noundef %59) #4
  br label %iwl_trans_ac_txq_enable.exit.i

if.end48.i.i.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #6
  %ops.i.i.i = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 1
  %60 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i.i, align 4
  %txq_enable.i.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %txq_enable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %txq_enable.i.i.i, align 4
  %call.i.i.i = call zeroext i1 %63(ptr noundef %48, i32 noundef %i.043.i, i16 noundef zeroext 0, ptr noundef nonnull %cfg.i.i, i32 noundef 0) #4
  br label %iwl_trans_ac_txq_enable.exit.i

iwl_trans_ac_txq_enable.exit.i:                   ; preds = %if.end48.i.i.i, %do.end44.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfg.i.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %iwl_trans_ac_txq_enable.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n_queues.0.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %passive_no_rx.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 9
  %64 = ptrtoint ptr %passive_no_rx.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %passive_no_rx.i, align 4
  %transport_queue_stop.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 8
  %65 = ptrtoint ptr %transport_queue_stop.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %transport_queue_stop.i, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %coex_cmd.i.i) #4
  %66 = call ptr @memset(ptr %coex_cmd.i.i, i32 0, i32 68)
  %call.i.i = call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext 90, i32 noundef 0, i16 noundef zeroext 68, ptr noundef nonnull %coex_cmd.i.i) #4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %coex_cmd.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %for.end.i.do.end57_crit_edge

for.end.i.do.end57_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

if.end13.i:                                       ; preds = %for.end.i
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %67 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lib.i, align 8
  %no_xtal_calib.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %no_xtal_calib.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %no_xtal_calib.i, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool14.not.i = icmp eq i8 %70, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end13.i.iwl_alive_notify.exit_crit_edge

if.end13.i.iwl_alive_notify.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iwl_alive_notify.exit

if.then15.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i.i) #4
  %71 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i.i, i32 0, i32 1
  %72 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i.i, i32 0, i32 2
  %73 = getelementptr inbounds %struct.iwl_calib_hdr, ptr %cmd.i.i, i32 0, i32 3
  %74 = getelementptr inbounds %struct.iwl_calib_xtal_freq_cmd, ptr %cmd.i.i, i32 0, i32 1
  %75 = getelementptr inbounds %struct.iwl_calib_xtal_freq_cmd, ptr %cmd.i.i, i32 0, i32 2
  %nvm_data.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 123
  %76 = getelementptr inbounds i8, ptr %cmd.i.i, i32 6
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 -1, ptr %76, align 1
  %78 = ptrtoint ptr %nvm_data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nvm_data.i.i, align 8
  %xtal_calib1.i.i = getelementptr inbounds %struct.iwl_nvm_data, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 15, ptr %cmd.i.i, align 1
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %71, align 1
  %82 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %72, align 1
  %83 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %73, align 1
  %84 = ptrtoint ptr %xtal_calib1.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %xtal_calib1.i.i, align 2
  %86 = lshr i16 %85, 8
  %conv.i.i = trunc i16 %86 to i8
  %87 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.i.i, ptr %74, align 1
  %arrayidx2.i.i = getelementptr %struct.iwl_nvm_data, ptr %79, i32 0, i32 7, i32 1
  %88 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx2.i.i, align 2
  %90 = lshr i16 %89, 8
  %conv3.i.i = trunc i16 %90 to i8
  %91 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv3.i.i, ptr %75, align 1
  %call.i42.i = call i32 @iwl_calib_set(ptr noundef %priv, ptr noundef nonnull %cmd.i.i, i32 noundef 8) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool17.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.iwl_alive_notify.exit_crit_edge, label %if.then15.i.do.end57_crit_edge

if.then15.i.do.end57_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

if.then15.i.iwl_alive_notify.exit_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iwl_alive_notify.exit

iwl_alive_notify.exit:                            ; preds = %if.then15.i.iwl_alive_notify.exit_crit_edge, %if.end13.i.iwl_alive_notify.exit_crit_edge
  %call21.i = call i32 @iwl_send_calib_results(ptr noundef %priv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool52.not = icmp eq i32 %call21.i, 0
  br i1 %tobool52.not, label %iwl_alive_notify.exit.cleanup_crit_edge, label %iwl_alive_notify.exit.do.end57_crit_edge

iwl_alive_notify.exit.do.end57_crit_edge:         ; preds = %iwl_alive_notify.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

iwl_alive_notify.exit.cleanup_crit_edge:          ; preds = %iwl_alive_notify.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end57:                                         ; preds = %iwl_alive_notify.exit.do.end57_crit_edge, %if.then15.i.do.end57_crit_edge, %for.end.i.do.end57_crit_edge
  %retval.0.i98101 = phi i32 [ %call21.i, %iwl_alive_notify.exit.do.end57_crit_edge ], [ %call.i42.i, %if.then15.i.do.end57_crit_edge ], [ %call.i.i, %for.end.i.do.end57_crit_edge ]
  %dev58 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %92 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev58, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %93, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i98101) #4
  %94 = ptrtoint ptr %cur_ucode to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %7, ptr %cur_ucode, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %iwl_alive_notify.exit.cleanup_crit_edge, %do.end43, %if.then35, %if.then28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then28 ], [ %call33, %if.then35 ], [ %retval.0.i98101, %do.end57 ], [ -5, %do.end43 ], [ 0, %iwl_alive_notify.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %alive_data) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %alive_wait) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_alive_fn(ptr nocapture noundef %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %notif_wait, i32 -1392
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %is_valid = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 4, i32 1
  %2 = ptrtoint ptr %is_valid to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %is_valid, align 1
  %ver_type = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1
  %4 = ptrtoint ptr %ver_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ver_type, align 1
  %conv = zext i8 %5 to i32
  %ver_subtype = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %ver_subtype to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ver_subtype, align 1
  %conv3 = zext i8 %7 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alive_fn, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %conv, i32 noundef %conv3) #4
  %error_event_table_ptr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 3, i32 1
  %8 = ptrtoint ptr %error_event_table_ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %error_event_table_ptr, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %device_pointers = getelementptr i8, ptr %notif_wait, i32 10284
  %11 = ptrtoint ptr %device_pointers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %device_pointers, align 8
  %log_event_table_ptr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 3
  %12 = ptrtoint ptr %log_event_table_ptr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %log_event_table_ptr, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %log_event_table = getelementptr i8, ptr %notif_wait, i32 10288
  %15 = ptrtoint ptr %log_event_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %log_event_table, align 4
  %16 = ptrtoint ptr %ver_subtype to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ver_subtype, align 1
  %subtype = getelementptr inbounds %struct.iwl_alive_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %subtype to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %subtype, align 1
  %19 = ptrtoint ptr %is_valid to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %is_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp = icmp eq i32 %20, 16777216
  %frombool = zext i1 %cmp to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %data, align 1
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_run_init_ucode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %calib_wait = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %calib_wait) #4
  %0 = call ptr @memset(ptr %calib_wait, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !57

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 384, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %num_sec = getelementptr %struct.iwl_fw, ptr %3, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %num_sec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool24.not = icmp eq i32 %5, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %notif_wait = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 21
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait, ptr noundef nonnull @iwl_run_init_ucode.calib_complete, i32 noundef 2, ptr noundef nonnull @iwlagn_wait_calib, ptr noundef %priv) #4
  %call27 = call i32 @iwl_load_ucode_wait_alive(ptr noundef %priv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.error_crit_edge

if.end26.error_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @iwl_init_alive_start(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.error_crit_edge

if.end30.error_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait, i32 noundef 200) #4
  br label %out

error:                                            ; preds = %if.end30.error_crit_edge, %if.end26.error_crit_edge
  %ret.0 = phi i32 [ %call27, %if.end26.error_crit_edge ], [ %call31, %if.end30.error_crit_edge ]
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %calib_wait) #4
  br label %out

out:                                              ; preds = %error, %if.end34
  %ret.1 = phi i32 [ %ret.0, %error ], [ %call36, %if.end34 ]
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1091) #4
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %stop_device.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %stop_device.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop_device.i, align 4
  call void %11(ptr noundef %7) #4
  %state.i = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state.i, align 8
  %ucode_loaded = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 32
  %13 = ptrtoint ptr %ucode_loaded to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ucode_loaded, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %calib_wait) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwlagn_wait_calib(ptr nocapture noundef readnone %notif_wait, ptr noundef %pkt, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %hdr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %1)
  %cmp.not = icmp eq i8 %1, 102
  br i1 %cmp.not, label %if.end27, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %1)
  %cmp6.not = icmp eq i8 %1, 103
  br i1 %cmp6.not, label %if.then.cleanup_crit_edge, label %do.end, !prof !58

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 362, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end27:                                         ; preds = %entry
  %data28 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %pkt, align 1
  %4 = and i32 %3, -12648448
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %sub.i = add nsw i32 %5, -4
  %call29 = tail call i32 @iwl_calib_set(ptr noundef %data, ptr noundef %data28, i32 noundef %sub.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %do.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %data28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data28, align 1
  %conv36 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %conv36) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end27.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %10 = xor i1 %cmp.not, true
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_calib_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_calib_results(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 179, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 193, i32 3}
!4 = !{ptr @iwl_load_ucode_wait_alive.alive_cmd, !5, !"alive_cmd", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 299, i32 19}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 302, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 332, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 346, i32 3}
!12 = !{ptr @iwl_run_init_ucode.calib_complete, !13, !"calib_complete", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 378, i32 19}
!14 = !{ptr @__func__.iwl_set_temperature_offset_calib_v2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 64, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 70, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 72, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 74, i32 2}
!23 = !{ptr @__func__.iwl_set_temperature_offset_calib, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 50, i32 2}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iwl_bt_prio_tbl, !27, !"iwl_bt_prio_tbl", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 148, i32 17}
!28 = !{ptr @__func__.iwl_alive_fn, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 272, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1077, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1079, i32 2}
!35 = !{ptr @iwlagn_ipan_queue_to_tx_fifo, !36, !"iwlagn_ipan_queue_to_tx_fifo", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 204, i32 17}
!37 = !{ptr @iwlagn_default_queue_to_tx_fifo, !38, !"iwlagn_default_queue_to_tx_fifo", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 197, i32 17}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1193, i32 6}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/../iwl-trans.h", i32 1194, i32 3}
!43 = !{ptr @__func__.iwl_trans_txq_enable_cfg, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/ucode.c", i32 369, i32 3}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"auto-init"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"branch_weights", i32 2000, i32 1}
