; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/power.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwl_power_vec_entry = type <{ %struct.iwl_powertable_cmd, i8 }>
%struct.iwl_powertable_cmd = type { i16, i8, i8, i32, i32, [5 x i32], i32 }
%struct.iwl_priv = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i8, [32 x i8], [32 x %struct.atomic_t], [1 x i32], ptr, ptr, %struct.list_head, ptr, %struct.iwl_hw_params, i32, i8, [255 x ptr], %struct.iwl_notif_wait_data, %struct.iwl_spectrum_notification, i8, i32, i32, i32, i32, [255 x i32], %struct.iwl_rf_reset, i32, i32, i8, i8, i32, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, [6 x i8], i8, i8, i8, i8, [2 x %struct.mac_address], [2 x %struct.iwl_rxon_context], i16, i8, %struct.iwl_sensitivity_data, %struct.iwl_chain_noise_data, [11 x i16], [12 x i16], %struct.iwl_ht_config, i8, i32, %struct.iwl_power_mgr, %struct.iwl_tt_mgmt, i32, [16 x %struct.iwl_station_entry], i32, [16 x [8 x %struct.iwl_tid_data]], %struct.atomic_t, i8, i8, i32, i64, %struct.anon.139, %struct.anon.140, %struct.anon.140, %struct.anon.140, i8, %struct.iwl_rx_phy_res, i32, i8, i8, i8, %struct.reply_tx_error_statistics, %struct.reply_agg_tx_error_statistics, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i16, i16, i16, i8, %struct.work_struct, i8, ptr, i8, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, i8, i8, ptr, i32, i32, i8, ptr, ptr, ptr, i32, %struct.work_struct, i32, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.iwl_event_log, %struct.led_classdev, i32, i32, i8, [16 x i8], [16 x i8], i64, i16, i8, %struct.wiphy_wowlan_support, %struct.anon.142, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.iwl_rxon_context = type { ptr, i8, [4 x i8], [4 x i8], i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, %struct.iwl_rxon_cmd, %struct.iwl_rxon_cmd, %struct.iwl_rxon_time_cmd, %struct.iwl_qos_info, i8, i8, i8, i8, i8, i8, i8, [4 x %struct.iwl_wep_key], i8, i32, i32, %struct.anon.137 }
%struct.iwl_rxon_cmd = type <{ [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, i8, i8, i16, i8, i8, i16, i32, i32, i16, i8, i8, i8, i8, i16, i16 }>
%struct.iwl_rxon_time_cmd = type <{ i64, i16, i16, i32, i16, i8, i8 }>
%struct.iwl_qos_info = type { i32, %struct.iwl_qosparam_cmd }
%struct.iwl_qosparam_cmd = type { i32, [4 x %struct.iwl_ac_qos] }
%struct.iwl_ac_qos = type { i16, i16, i8, i8, i16 }
%struct.iwl_wep_key = type { i8, i8, [2 x i8], i8, [3 x i8], [16 x i8] }
%struct.anon.137 = type { i8, i8, i8, i8, i8 }
%struct.iwl_sensitivity_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [20 x i8], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.iwl_chain_noise_data = type { i32, i32, i32, i32, i32, i32, i32, i16, [3 x i8], [3 x i8], i8, i8 }
%struct.iwl_ht_config = type { i8, i32 }
%struct.iwl_power_mgr = type { %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd, i32, i8 }
%struct.iwl_tt_mgmt = type { i32, i8, i8, i8, i32, ptr, ptr, %struct.timer_list, %struct.timer_list }
%struct.iwl_station_entry = type { %struct.iwl_addsta_cmd, i8, i8, ptr }
%struct.iwl_addsta_cmd = type <{ i8, [3 x i8], %struct.sta_id_modify, %struct.iwl_keyinfo, i32, i32, i16, i16, i8, i8, i16, i16, i16 }>
%struct.sta_id_modify = type { [6 x i8], i16, i8, i8, i16 }
%struct.iwl_keyinfo = type { i16, i8, i8, [5 x i16], i8, i8, [16 x i8], i64, i64, i64 }
%struct.iwl_tid_data = type { i16, i16, %struct.iwl_ht_agg }
%struct.iwl_ht_agg = type { i32, i32, i16, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.anon.139 = type { i32, %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity, i32, i32, %struct.spinlock }
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
%struct.anon.140 = type { %struct.statistics_general_common, %struct.statistics_rx_non_phy, %struct.statistics_rx_phy, %struct.statistics_rx_ht_phy, %struct.statistics_rx_phy, %struct.statistics_tx, %struct.statistics_bt_activity }
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
%struct.anon.142 = type { i32, i32 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.131, %struct.anon.132, %struct.iwl_dma_ptr }
%struct.anon.131 = type { i8, i8, i32 }
%struct.anon.132 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }
%struct.iwl_dvm_bt_params = type { i8, i8, i32, i16, i8, i8 }

@__param_str_force_cam = internal constant [17 x i8] c"iwldvm.force_cam\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_cam = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_force_cam = internal constant %struct.kernel_param { ptr @__param_str_force_cam, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @force_cam } }, section "__param", align 4
@__UNIQUE_ID_force_camtype406 = internal constant [31 x i8] c"iwldvm.parmtype=force_cam:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_cam407 = internal constant [77 x i8] c"iwldvm.parm=force_cam:force continuously aware mode (no power saving at all)\00", section ".modinfo", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/dvm/power.c\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_power_set_mode = private unnamed_addr constant [19 x i8] c"iwl_power_set_mode\00", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Defer power set mode while scanning\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Cannot update the power, chain noise calibration running: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set power fail, ret = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_set_power = private unnamed_addr constant [14 x i8] c"iwl_set_power\00", align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sending power/sleep command\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flags value = 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tx timeout = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rx timeout = %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sleep interval vector = { %d , %d , %d , %d , %d }\0A\00", [44 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = external dso_local local_unnamed_addr global %struct.iwl_mod_params, align 4
@__func__.iwl_power_sleep_cam_cmd = private unnamed_addr constant [24 x i8] c"iwl_power_sleep_cam_cmd\00", align 1
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sleep command for CAM\0A\00", [41 x i8] zeroinitializer }, align 32
@apm_range_2 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 100663296, i32 134217728, i32 -16777216], i32 33554432 }, i8 2 }>], [39 x i8] zeroinitializer }, align 32
@apm_range_1 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 100663296, i32 134217728, i32 -16777216], i32 0 }, i8 2 }>], [39 x i8] zeroinitializer }, align 32
@apm_range_0 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 770, i8 0, i8 0, i32 838860800, i32 838860800, [5 x i32] [i32 16777216, i32 33554432, i32 100663296, i32 134217728, i32 -16777216], i32 33554432 }, i8 2 }>], [39 x i8] zeroinitializer }, align 32
@range_2 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 13633280, [5 x i32] [i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 11535360, [5 x i32] [i32 33554432, i32 67108864, i32 100663296, i32 117440512, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 9437440, [5 x i32] [i32 33554432, i32 117440512, i32 150994944, i32 150994944, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 6553600, [5 x i32] [i32 33554432, i32 117440512, i32 150994944, i32 150994944, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 6553600, i32 6553600, [5 x i32] [i32 67108864, i32 117440512, i32 167772160, i32 167772160, i32 -16777216], i32 0 }, i8 0 }>], [39 x i8] zeroinitializer }, align 32
@range_1 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 13633280, [5 x i32] [i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 67108864], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 11535360, [5 x i32] [i32 16777216, i32 33554432, i32 50331648, i32 67108864, i32 117440512], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 9437440, [5 x i32] [i32 33554432, i32 67108864, i32 100663296, i32 117440512, i32 150994944], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 6553600, [5 x i32] [i32 33554432, i32 67108864, i32 100663296, i32 150994944, i32 167772160], i32 0 }, i8 1 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 6553600, i32 6553600, [5 x i32] [i32 33554432, i32 67108864, i32 100663296, i32 167772160, i32 167772160], i32 0 }, i8 2 }>], [39 x i8] zeroinitializer }, align 32
@range_0 = internal constant { [5 x %struct.iwl_power_vec_entry], [39 x i8] } { [5 x %struct.iwl_power_vec_entry] [%struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 13633280, [5 x i32] [i32 16777216, i32 16777216, i32 33554432, i32 33554432, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 2097920, i32 11535360, [5 x i32] [i32 16777216, i32 33554432, i32 33554432, i32 33554432, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 9437440, [5 x i32] [i32 33554432, i32 33554432, i32 33554432, i32 33554432, i32 -16777216], i32 0 }, i8 0 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 13107200, i32 6553600, [5 x i32] [i32 33554432, i32 33554432, i32 67108864, i32 67108864, i32 -16777216], i32 0 }, i8 1 }>, %struct.iwl_power_vec_entry <{ %struct.iwl_powertable_cmd { i16 256, i8 0, i8 0, i32 6553600, i32 6553600, [5 x i32] [i32 33554432, i32 33554432, i32 67108864, i32 100663296, i32 -16777216], i32 0 }, i8 2 }>], [39 x i8] zeroinitializer }, align 32
@__func__.iwl_static_sleep_cmd = private unnamed_addr constant [21 x i8] c"iwl_static_sleep_cmd\00", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"numSkipDtim = %u, dtimPeriod = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Sleep command for index %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"force_cam\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 25, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 318, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 333, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 348, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 355, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 256, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 257, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 258, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 259, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 260, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 251, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"apm_range_2\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 128, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"apm_range_1\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 113, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"apm_range_0\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 97, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"range_2\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"range_1\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 77, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"range_0\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 66, i32 41 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 236, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/power.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 240, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_force_cam407, ptr @__UNIQUE_ID_force_camtype406, ptr @__param_force_cam, ptr @force_cam, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @apm_range_2, ptr @apm_range_1, ptr @apm_range_0, ptr @range_2, ptr @range_1, ptr @range_0, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_cam to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_range_2 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_range_1 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_range_0 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_2 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_1 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_0 to i32), i32 185, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_power_set_mode(ptr noundef %priv, ptr noundef %cmd, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !57

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 54, i32 11
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 1
  %power_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(36) %power_data, ptr noundef dereferenceable(36) %cmd, i32 36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool33.not = icmp ne i32 %bcmp, 0
  %brmerge = or i1 %tobool33.not, %force
  br i1 %brmerge, label %if.end36, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end36
  %5 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %iwl_is_ready_rf.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

iwl_is_ready_rf.exit:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool38.not.not = icmp eq i32 %10, 0
  br i1 %tobool38.not.not, label %if.end40, label %iwl_is_ready_rf.exit.cleanup_crit_edge

iwl_is_ready_rf.exit.cleanup_crit_edge:           ; preds = %iwl_is_ready_rf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %iwl_is_ready_rf.exit
  %sleep_cmd_next = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 1
  %11 = call ptr @memcpy(ptr %sleep_cmd_next, ptr %cmd, i32 36)
  %12 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i.i, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool43.not = icmp eq i32 %14, 0
  %brmerge116 = or i1 %tobool43.not, %force
  br i1 %brmerge116, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_power_set_mode, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end53:                                         ; preds = %if.end40
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %cmd, align 1
  %19 = and i16 %18, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool55.not = icmp eq i16 %19, 0
  br i1 %tobool55.not, label %if.end53.if.end57_crit_edge, label %if.then56

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  tail call void @_set_bit(i32 noundef 13, ptr noundef %status.i.i) #6
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %ops.i.i = getelementptr inbounds %struct.iwl_trans, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %set_pmi.i.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %23, i32 0, i32 30
  %24 = ptrtoint ptr %set_pmi.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_pmi.i.i, align 4
  %tobool.not.i.i117 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i117, label %if.then56.if.end57_crit_edge, label %if.then.i.i

if.then56.if.end57_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then.i.i:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %25(ptr noundef %21, i1 noundef zeroext true) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then.i.i, %if.then56.if.end57_crit_edge, %if.end53.if.end57_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_power, ptr noundef nonnull @.str.4) #6
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %cmd, align 1
  %conv.i = zext i16 %31 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_power, ptr noundef nonnull @.str.5, i32 noundef %conv.i) #6
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %tx_data_timeout.i = getelementptr inbounds %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 4
  %34 = ptrtoint ptr %tx_data_timeout.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %tx_data_timeout.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %33, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_power, ptr noundef nonnull @.str.6, i32 noundef %36) #6
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %rx_data_timeout.i = getelementptr inbounds %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 3
  %39 = ptrtoint ptr %rx_data_timeout.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %rx_data_timeout.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_power, ptr noundef nonnull @.str.7, i32 noundef %41) #6
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %sleep_interval.i = getelementptr inbounds %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5
  %44 = ptrtoint ptr %sleep_interval.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %sleep_interval.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  %arrayidx23.i = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %arrayidx23.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %arrayidx25.i = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %arrayidx25.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %arrayidx27.i = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %arrayidx27.i, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #6
  %arrayidx29.i = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 4
  %56 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx29.i, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #6
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %43, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_set_power, ptr noundef nonnull @.str.8, i32 noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55, i32 noundef %58) #6
  %call.i119 = tail call i32 @iwl_dvm_send_cmd_pdu(ptr noundef %priv, i8 noundef zeroext 119, i32 noundef 0, i16 noundef zeroext 36, ptr noundef %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool59.not = icmp eq i32 %call.i119, 0
  br i1 %tobool59.not, label %if.then60, label %do.end86

if.then60:                                        ; preds = %if.end57
  %59 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %cmd, align 1
  %61 = and i16 %60, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool64.not = icmp eq i16 %61, 0
  br i1 %tobool64.not, label %if.then65, label %if.then60.if.end66_crit_edge

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then65:                                        ; preds = %if.then60
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %status.i.i) #6
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %ops.i.i121 = getelementptr inbounds %struct.iwl_trans, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %ops.i.i121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i.i121, align 4
  %set_pmi.i.i122 = getelementptr inbounds %struct.iwl_trans_ops, ptr %65, i32 0, i32 30
  %66 = ptrtoint ptr %set_pmi.i.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_pmi.i.i122, align 4
  %tobool.not.i.i123 = icmp eq ptr %67, null
  br i1 %tobool.not.i.i123, label %if.then65.if.end66_crit_edge, label %if.then.i.i125

if.then65.if.end66_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then.i.i125:                                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %67(ptr noundef %63, i1 noundef zeroext false) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then.i.i125, %if.then65.if.end66_crit_edge, %if.then60.if.end66_crit_edge
  %68 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %do.end72 [
    i8 3, label %if.end66.if.then68_crit_edge
    i8 0, label %if.end66.if.then68_crit_edge129
  ]

if.end66.if.then68_crit_edge129:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

if.end66.if.then68_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

if.then68:                                        ; preds = %if.end66.if.then68_crit_edge, %if.end66.if.then68_crit_edge129
  tail call void @iwl_update_chain_flags(ptr noundef %priv) #6
  br label %if.end79

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %state, align 1
  %conv76 = zext i8 %72 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %70, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_power_set_mode, ptr noundef nonnull @.str.2, i32 noundef %conv76) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end72, %if.then68
  %73 = call ptr @memcpy(ptr %power_data, ptr %cmd, i32 36)
  br label %cleanup

do.end86:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %75, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %call.i119) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end79, %do.end50, %iwl_is_ready_rf.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end50 ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %iwl_is_ready_rf.exit.cleanup_crit_edge ], [ %call.i119, %do.end86 ], [ 0, %if.end79 ], [ -5, %if.end36.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_update_chain_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_powertable_cmd, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #6
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 36)
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %5 = load i8, ptr @force_cam, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %6 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %bus_pm.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 3
  %7 = ptrtoint ptr %bus_pm.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bus_pm.i.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.iwl_power_sleep_cam_cmd.exit.i_crit_edge, label %if.then.i.i

if.then.i.iwl_power_sleep_cam_cmd.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_power_sleep_cam_cmd.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cmd, align 2
  %11 = or i16 %10, 2048
  store i16 %11, ptr %cmd, align 2
  br label %iwl_power_sleep_cam_cmd.exit.i

iwl_power_sleep_cam_cmd.exit.i:                   ; preds = %if.then.i.i, %if.then.i.iwl_power_sleep_cam_cmd.exit.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_power_sleep_cam_cmd, ptr noundef nonnull @.str.9) #6
  br label %iwl_power_build_cmd.exit

if.end.i:                                         ; preds = %entry
  %ps_dtim_period.i = getelementptr inbounds %struct.ieee80211_conf, ptr %2, i32 0, i32 4
  %14 = ptrtoint ptr %ps_dtim_period.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ps_dtim_period.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  %narrow.i = select i1 %tobool4.not.i, i8 1, i8 %15
  %conv..i = zext i8 %narrow.i to i32
  %wowlan.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 48
  %16 = ptrtoint ptr %wowlan.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wowlan.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef 4, i32 noundef %conv..i) #6
  br label %iwl_power_build_cmd.exit

if.else.i:                                        ; preds = %if.end.i
  %lib.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %18 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lib.i, align 8
  %no_idle_support.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %no_idle_support.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %no_idle_support.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp ne i8 %21, 0
  %and11.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %tobool12.not.i
  br i1 %or.cond.i, label %if.else14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef 4, i32 noundef 20) #6
  br label %iwl_power_build_cmd.exit

if.else14.i:                                      ; preds = %if.else.i
  %call.i = tail call zeroext i1 @iwl_tt_is_low_power_state(ptr noundef %priv) #6
  br i1 %call.i, label %if.then15.i, label %if.else18.i

if.then15.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = tail call zeroext i8 @iwl_tt_current_power_mode(ptr noundef %priv) #6
  %conv17.i = zext i8 %call16.i to i32
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef %conv17.i, i32 noundef %conv..i) #6
  br label %iwl_power_build_cmd.exit

if.else18.i:                                      ; preds = %if.else14.i
  br i1 %tobool.not.i, label %if.then20.i, label %if.else21.i

if.then20.i:                                      ; preds = %if.else18.i
  %22 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  %bus_pm.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 3
  %23 = ptrtoint ptr %bus_pm.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bus_pm.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i2 = icmp eq i8 %24, 0
  br i1 %tobool.not.i2, label %if.then20.i.iwl_power_sleep_cam_cmd.exit_crit_edge, label %if.then.i3

if.then20.i.iwl_power_sleep_cam_cmd.exit_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_power_sleep_cam_cmd.exit

if.then.i3:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd, align 2
  %27 = or i16 %26, 2048
  store i16 %27, ptr %cmd, align 2
  br label %iwl_power_sleep_cam_cmd.exit

iwl_power_sleep_cam_cmd.exit:                     ; preds = %if.then.i3, %if.then20.i.iwl_power_sleep_cam_cmd.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %29, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_power_sleep_cam_cmd, ptr noundef nonnull @.str.9) #6
  br label %iwl_power_build_cmd.exit

if.else21.i:                                      ; preds = %if.else18.i
  %debug_sleep_level_override.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 2
  %30 = ptrtoint ptr %debug_sleep_level_override.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_sleep_level_override.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i = icmp sgt i32 %31, -1
  br i1 %cmp.i, label %if.then23.i, label %if.else26.i

if.then23.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef %31, i32 noundef %conv..i) #6
  br label %iwl_power_build_cmd.exit

if.else26.i:                                      ; preds = %if.else21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 7) to i32))
  %32 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 7), align 4
  %33 = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %34 = icmp ult i32 %33, 5
  br i1 %34, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef %33, i32 noundef %conv..i) #6
  br label %iwl_power_build_cmd.exit

if.else33.i:                                      ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @iwl_static_sleep_cmd(ptr noundef %priv, ptr noundef nonnull %cmd, i32 noundef 0, i32 noundef %conv..i) #6
  br label %iwl_power_build_cmd.exit

iwl_power_build_cmd.exit:                         ; preds = %if.else33.i, %if.then32.i, %if.then23.i, %iwl_power_sleep_cam_cmd.exit, %if.then15.i, %if.then13.i, %if.then6.i, %iwl_power_sleep_cam_cmd.exit.i
  %call = call i32 @iwl_power_set_mode(ptr noundef %priv, ptr noundef nonnull %cmd, i1 noundef zeroext %force)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iwl_power_initialize(ptr nocapture noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pm_support = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pm_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pm_support, align 2, !range !58
  %power_data = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60
  %bus_pm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 3
  %4 = ptrtoint ptr %bus_pm to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %bus_pm, align 4
  %debug_sleep_level_override = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 2
  %5 = ptrtoint ptr %debug_sleep_level_override to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %debug_sleep_level_override, align 8
  %6 = call ptr @memset(ptr %power_data, i32 0, i32 36)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_dvm_send_cmd_pdu(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_static_sleep_cmd(ptr nocapture noundef readonly %priv, ptr nocapture noundef %cmd, i32 noundef %lvl, i32 noundef %period) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lib, align 8
  %adv_pm = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %adv_pm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %adv_pm, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %period)
  %cmp5 = icmp slt i32 %period, 11
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.store.select = select i1 %cmp5, ptr @apm_range_1, ptr @apm_range_2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %period)
  %cmp2 = icmp slt i32 %period, 3
  %spec.store.select183 = select i1 %cmp2, ptr @apm_range_0, ptr %spec.store.select
  br label %lor.rhs

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.store.select182 = select i1 %cmp5, ptr @range_1, ptr @range_2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %period)
  %cmp8 = icmp slt i32 %period, 3
  %spec.store.select184 = select i1 %cmp8, ptr @range_0, ptr %spec.store.select182
  br label %lor.rhs

lor.rhs:                                          ; preds = %if.else, %if.then
  %table.0 = phi ptr [ %spec.store.select183, %if.then ], [ %spec.store.select184, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %lvl)
  %cmp13 = icmp ugt i32 %lvl, 4
  br i1 %cmp13, label %do.end, label %if.else37, !prof !57

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #6
  %4 = call ptr @memset(ptr %cmd, i32 0, i32 36)
  br label %if.end39

if.else37:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.iwl_power_vec_entry, ptr %table.0, i32 %lvl
  %5 = call ptr @memcpy(ptr %cmd, ptr %arrayidx, i32 36)
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period)
  %cmp40 = icmp eq i32 %period, 0
  br i1 %cmp40, label %if.end39.if.end55_crit_edge, label %if.else44

if.end39.if.end55_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.else44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %no_dtim = getelementptr %struct.iwl_power_vec_entry, ptr %table.0, i32 %lvl, i32 1
  %6 = ptrtoint ptr %no_dtim to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_dtim, align 1
  %arrayidx49 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 0
  %8 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx49, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx49.1 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx49.1, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx49.2 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx49.2, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx49.3 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx49.3, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 1
  br label %if.end55

if.end55:                                         ; preds = %if.else44, %if.end39.if.end55_crit_edge
  %max_sleep.sroa.0.0 = phi i32 [ %10, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %max_sleep.sroa.6.0 = phi i32 [ %13, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %max_sleep.sroa.9.0 = phi i32 [ %16, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %max_sleep.sroa.12.0 = phi i32 [ %19, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %max_sleep.sroa.15.0 = phi i32 [ %add, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %skip.0 = phi i8 [ %7, %if.else44 ], [ 0, %if.end39.if.end55_crit_edge ]
  %period.addr.0 = phi i32 [ %period, %if.else44 ], [ 1, %if.end39.if.end55_crit_edge ]
  %arrayidx57 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %21)
  %cmp58 = icmp eq i32 %21, -16777216
  br i1 %cmp58, label %if.then60, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %conv61 = zext i8 %skip.0 to i32
  %add62 = add nuw nsw i32 %conv61, 1
  %mul = mul i32 %add62, %period.addr.0
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %23 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %arrayidx57, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end55.if.end65_crit_edge
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx57, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %period.addr.0)
  %cmp68 = icmp ugt i32 %26, %period.addr.0
  br i1 %cmp68, label %if.then70, label %if.end65.if.end74_crit_edge

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %27 = urem i32 %26, %period.addr.0
  %mul71 = sub i32 %26, %27
  %28 = tail call i32 @llvm.bswap.i32(i32 %mul71)
  %29 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx57, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65.if.end74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %skip.0)
  %tobool75.not = icmp eq i8 %skip.0, 0
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %cmd, align 1
  %32 = and i16 %31, -1025
  %masksel = select i1 %tobool75.not, i16 0, i16 1024
  %storemerge = or i16 %32, %masksel
  store i16 %storemerge, ptr %cmd, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans_cfg, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %shadow_reg_enable = getelementptr inbounds %struct.iwl_base_params, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %shadow_reg_enable to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %shadow_reg_enable, align 4
  %40 = and i8 %bf.load, 32
  %41 = and i16 %storemerge, -16385
  %42 = zext i8 %40 to i16
  %43 = shl nuw nsw i16 %42, 9
  %storemerge253 = or i16 %43, %41
  store i16 %storemerge253, ptr %cmd, align 1
  %44 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lib, align 8
  %bt_params.i = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %bt_params.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bt_params.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end74.if.end110_crit_edge, label %iwl_advanced_bt_coexist.exit

if.end74.if.end110_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

iwl_advanced_bt_coexist.exit:                     ; preds = %if.end74
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool3.i.not = icmp eq i8 %49, 0
  br i1 %tobool3.i.not, label %iwl_advanced_bt_coexist.exit.if.end110_crit_edge, label %if.then96

iwl_advanced_bt_coexist.exit.if.end110_crit_edge: ; preds = %iwl_advanced_bt_coexist.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then96:                                        ; preds = %iwl_advanced_bt_coexist.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bt_sco_disable = getelementptr inbounds %struct.iwl_dvm_bt_params, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %bt_sco_disable to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bt_sco_disable, align 2, !range !58
  %52 = and i16 %storemerge253, -2
  %53 = xor i8 %51, 1
  %54 = zext i8 %53 to i16
  %.sink = or i16 %52, %54
  %55 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %55, i32 2)
  store i16 %.sink, ptr %cmd, align 1
  br label %if.end110

if.end110:                                        ; preds = %if.then96, %iwl_advanced_bt_coexist.exit.if.end110_crit_edge, %if.end74.if.end110_crit_edge
  %56 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx57, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %58)
  %cmp113 = icmp ugt i32 %58, 10
  br i1 %cmp113, label %if.then115, label %if.end110.if.end118_crit_edge

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 167772160, ptr %arrayidx57, align 1
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end110.if.end118_crit_edge
  %60 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx57, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %mul126 = mul i32 %max_sleep.sroa.15.0, %period.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %mul126)
  %cmp127 = icmp ugt i32 %62, %mul126
  br i1 %cmp127, label %if.then129, label %if.end118.for.inc153_crit_edge

if.end118.for.inc153_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc153

if.then129:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %mul126)
  %64 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %arrayidx57, align 1
  br label %for.inc153

for.inc153:                                       ; preds = %if.then129, %if.end118.for.inc153_crit_edge
  %arrayidx124.1 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 3
  %65 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %arrayidx124.1, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %mul126.1 = mul i32 %max_sleep.sroa.12.0, %period.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %mul126.1)
  %cmp127.1 = icmp ugt i32 %67, %mul126.1
  br i1 %cmp127.1, label %if.then129.1, label %for.inc153.if.then137.1_crit_edge

for.inc153.if.then137.1_crit_edge:                ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137.1

if.then129.1:                                     ; preds = %for.inc153
  call void @__sanitizer_cov_trace_pc() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %mul126.1)
  %69 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %68, ptr %arrayidx124.1, align 1
  br label %if.then137.1

if.then137.1:                                     ; preds = %if.then129.1, %for.inc153.if.then137.1_crit_edge
  %70 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %arrayidx124.1, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx57, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %75)
  %cmp143.1 = icmp ugt i32 %72, %75
  br i1 %cmp143.1, label %if.then145.1, label %if.then137.1.for.inc153.1_crit_edge

if.then137.1.for.inc153.1_crit_edge:              ; preds = %if.then137.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc153.1

if.then145.1:                                     ; preds = %if.then137.1
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %74, ptr %arrayidx124.1, align 1
  br label %for.inc153.1

for.inc153.1:                                     ; preds = %if.then145.1, %if.then137.1.for.inc153.1_crit_edge
  %arrayidx124.2 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx124.2, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %mul126.2 = mul i32 %max_sleep.sroa.9.0, %period.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %mul126.2)
  %cmp127.2 = icmp ugt i32 %79, %mul126.2
  br i1 %cmp127.2, label %if.then129.2, label %for.inc153.1.if.then137.2_crit_edge

for.inc153.1.if.then137.2_crit_edge:              ; preds = %for.inc153.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137.2

if.then129.2:                                     ; preds = %for.inc153.1
  call void @__sanitizer_cov_trace_pc() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %mul126.2)
  %81 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %arrayidx124.2, align 1
  br label %if.then137.2

if.then137.2:                                     ; preds = %if.then129.2, %for.inc153.1.if.then137.2_crit_edge
  %82 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx124.2, align 1
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx124.1, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %87)
  %cmp143.2 = icmp ugt i32 %84, %87
  br i1 %cmp143.2, label %if.then145.2, label %if.then137.2.for.inc153.2_crit_edge

if.then137.2.for.inc153.2_crit_edge:              ; preds = %if.then137.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc153.2

if.then145.2:                                     ; preds = %if.then137.2
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %86, ptr %arrayidx124.2, align 1
  br label %for.inc153.2

for.inc153.2:                                     ; preds = %if.then145.2, %if.then137.2.for.inc153.2_crit_edge
  %arrayidx124.3 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arrayidx124.3, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %mul126.3 = mul i32 %max_sleep.sroa.6.0, %period.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %mul126.3)
  %cmp127.3 = icmp ugt i32 %91, %mul126.3
  br i1 %cmp127.3, label %if.then129.3, label %for.inc153.2.if.then137.3_crit_edge

for.inc153.2.if.then137.3_crit_edge:              ; preds = %for.inc153.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137.3

if.then129.3:                                     ; preds = %for.inc153.2
  call void @__sanitizer_cov_trace_pc() #8
  %92 = tail call i32 @llvm.bswap.i32(i32 %mul126.3)
  %93 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %arrayidx124.3, align 1
  br label %if.then137.3

if.then137.3:                                     ; preds = %if.then129.3, %for.inc153.2.if.then137.3_crit_edge
  %94 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx124.3, align 1
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %97 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx124.2, align 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %99)
  %cmp143.3 = icmp ugt i32 %96, %99
  br i1 %cmp143.3, label %if.then145.3, label %if.then137.3.for.inc153.3_crit_edge

if.then137.3.for.inc153.3_crit_edge:              ; preds = %if.then137.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc153.3

if.then145.3:                                     ; preds = %if.then137.3
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 4)
  store i32 %98, ptr %arrayidx124.3, align 1
  br label %for.inc153.3

for.inc153.3:                                     ; preds = %if.then145.3, %if.then137.3.for.inc153.3_crit_edge
  %arrayidx124.4 = getelementptr %struct.iwl_powertable_cmd, ptr %cmd, i32 0, i32 5, i32 0
  %101 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx124.4, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %mul126.4 = mul i32 %max_sleep.sroa.0.0, %period.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %mul126.4)
  %cmp127.4 = icmp ugt i32 %103, %mul126.4
  br i1 %cmp127.4, label %if.then129.4, label %for.inc153.3.if.then137.4_crit_edge

for.inc153.3.if.then137.4_crit_edge:              ; preds = %for.inc153.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137.4

if.then129.4:                                     ; preds = %for.inc153.3
  call void @__sanitizer_cov_trace_pc() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %mul126.4)
  %105 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 %104, ptr %arrayidx124.4, align 1
  br label %if.then137.4

if.then137.4:                                     ; preds = %if.then129.4, %for.inc153.3.if.then137.4_crit_edge
  %106 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %arrayidx124.4, align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  %109 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %arrayidx124.3, align 1
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %111)
  %cmp143.4 = icmp ugt i32 %108, %111
  br i1 %cmp143.4, label %if.then145.4, label %if.then137.4.for.inc153.4_crit_edge

if.then137.4.for.inc153.4_crit_edge:              ; preds = %if.then137.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc153.4

if.then145.4:                                     ; preds = %if.then137.4
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %110, ptr %arrayidx124.4, align 1
  br label %for.inc153.4

for.inc153.4:                                     ; preds = %if.then145.4, %if.then137.4.for.inc153.4_crit_edge
  %bus_pm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 60, i32 3
  %113 = ptrtoint ptr %bus_pm to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bus_pm, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool155.not = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %cmd, align 1
  %117 = and i16 %116, -2049
  %masksel260 = select i1 %tobool155.not, i16 0, i16 2048
  %storemerge254 = or i16 %117, %masksel260
  store i16 %storemerge254, ptr %cmd, align 1
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  %conv171 = zext i8 %skip.0 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %119, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_static_sleep_cmd, ptr noundef nonnull @.str.10, i32 noundef %conv171, i32 noundef %period.addr.0) #6
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  %add179 = add i32 %lvl, 1
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %121, i32 noundef 256, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_static_sleep_cmd, ptr noundef nonnull @.str.11, i32 noundef %add179) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iwl_tt_is_low_power_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_tt_current_power_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__param_force_cam, !1, !"__param_force_cam", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_camtype406, !1, !"__UNIQUE_ID_force_camtype406", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_cam407, !4, !"__UNIQUE_ID_force_cam407", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 27, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 318, i32 2}
!7 = !{ptr @__func__.iwl_power_set_mode, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 333, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 348, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 355, i32 3}
!14 = !{ptr @__param_str_force_cam, !1, !"__param_str_force_cam", i1 false, i1 false}
!15 = !{ptr @force_cam, !16, !"force_cam", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 25, i32 13}
!17 = !{ptr @__func__.iwl_set_power, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 256, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 257, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 258, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 259, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 260, i32 2}
!28 = !{ptr @__func__.iwl_power_sleep_cam_cmd, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 251, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.iwl_static_sleep_cmd, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 236, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 240, i32 2}
!36 = !{ptr @apm_range_2, !37, !"apm_range_2", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 128, i32 41}
!38 = !{ptr @apm_range_1, !39, !"apm_range_1", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 113, i32 41}
!40 = !{ptr @apm_range_0, !41, !"apm_range_0", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 97, i32 41}
!42 = !{ptr @range_2, !43, !"range_2", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 87, i32 41}
!44 = !{ptr @range_1, !45, !"range_1", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 77, i32 41}
!46 = !{ptr @range_0, !47, !"range_0", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/power.c", i32 66, i32 41}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i8 0, i8 2}
