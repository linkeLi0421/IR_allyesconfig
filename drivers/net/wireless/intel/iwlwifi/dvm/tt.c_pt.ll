; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/dvm/tt.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/dvm/tt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_tt_trans = type { i32, i32, i32 }
%struct.iwl_tt_restriction = type { i32, i32, i8 }
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
%struct.iwl_event_log = type { i8, i32, i32, i32, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.138 = type { i32, i32 }
%struct.iwl_dvm_cfg = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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

@__func__.iwl_tt_enter_ct_kill = private unnamed_addr constant [21 x i8] c"iwl_tt_enter_ct_kill\00", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Queueing critical temperature enter.\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwl_tt_exit_ct_kill = private unnamed_addr constant [20 x i8] c"iwl_tt_exit_ct_kill\00", align 1
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Queueing critical temperature exit.\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_tt_handler = private unnamed_addr constant [15 x i8] c"iwl_tt_handler\00", align 1
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Queueing thermal throttling work.\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_tt_initialize = private unnamed_addr constant [18 x i8] c"iwl_tt_initialize\00", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Initialize Thermal Throttling\0A\00", [33 x i8] zeroinitializer }, align 32
@iwl_tt_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(&priv->thermal_throttle.ct_kill_exit_tm)\00", [54 x i8] zeroinitializer }, align 32
@iwl_tt_initialize.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(&priv->thermal_throttle.ct_kill_waiting_tm)\00", [51 x i8] zeroinitializer }, align 32
@iwl_tt_initialize.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tt_work)\00", [62 x i8] zeroinitializer }, align 32
@iwl_tt_initialize.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->ct_enter)\00", [61 x i8] zeroinitializer }, align 32
@iwl_tt_initialize.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->ct_exit)\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Advanced Thermal Throttling\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Fallback to Legacy Throttling\0A\00", [33 x i8] zeroinitializer }, align 32
@tt_range_0 = internal constant { [3 x %struct.iwl_tt_trans], [60 x i8] } { [3 x %struct.iwl_tt_trans] [%struct.iwl_tt_trans { i32 0, i32 0, i32 104 }, %struct.iwl_tt_trans { i32 1, i32 105, i32 113 }, %struct.iwl_tt_trans { i32 3, i32 114, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@tt_range_1 = internal constant { [3 x %struct.iwl_tt_trans], [60 x i8] } { [3 x %struct.iwl_tt_trans] [%struct.iwl_tt_trans { i32 0, i32 0, i32 95 }, %struct.iwl_tt_trans { i32 2, i32 110, i32 113 }, %struct.iwl_tt_trans { i32 3, i32 114, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@tt_range_2 = internal constant { [3 x %struct.iwl_tt_trans], [60 x i8] } { [3 x %struct.iwl_tt_trans] [%struct.iwl_tt_trans { i32 1, i32 0, i32 100 }, %struct.iwl_tt_trans { i32 3, i32 114, i32 -1 }, %struct.iwl_tt_trans { i32 3, i32 114, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@tt_range_3 = internal constant { [3 x %struct.iwl_tt_trans], [60 x i8] } { [3 x %struct.iwl_tt_trans] [%struct.iwl_tt_trans { i32 0, i32 0, i32 95 }, %struct.iwl_tt_trans { i32 3, i32 96, i32 -1 }, %struct.iwl_tt_trans { i32 3, i32 96, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@restriction_range = internal constant { [4 x %struct.iwl_tt_restriction], [48 x i8] } { [4 x %struct.iwl_tt_restriction] [%struct.iwl_tt_restriction { i32 2, i32 2, i8 1 }, %struct.iwl_tt_restriction { i32 1, i32 2, i8 1 }, %struct.iwl_tt_restriction { i32 1, i32 1, i8 0 }, %struct.iwl_tt_restriction zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Legacy Thermal Throttling\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_tt_check_exit_ct_kill = private unnamed_addr constant [26 x i8] c"iwl_tt_check_exit_ct_kill\00", align 1
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"schedule ct_kill exit timer\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__func__.iwl_tt_ready_for_ct_kill = private unnamed_addr constant [25 x i8] c"iwl_tt_ready_for_ct_kill\00", align 1
@.str.17 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"entering CT_KILL state when temperature timer expired\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.iwl_perform_ct_kill_task = private unnamed_addr constant [25 x i8] c"iwl_perform_ct_kill_task\00", align 1
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stop all queues\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Schedule 5 seconds CT_KILL Timer\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wake all queues\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.iwl_legacy_tt_handler = private unnamed_addr constant [22 x i8] c"iwl_legacy_tt_handler\00", align 1
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Temperature increase %d degree Celsius\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot update power mode, TT state not updated\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Temperature state changed %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power Index change to %u\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.iwl_prepare_ct_kill_task = private unnamed_addr constant [25 x i8] c"iwl_prepare_ct_kill_task\00", align 1
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prepare to enter IWL_TI_CT_KILL\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.iwl_advance_tt_handler = private unnamed_addr constant [23 x i8] c"iwl_advance_tt_handler\00", align 1
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Thermal Throttling to new state: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enter IWL_TI_CT_KILL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Exit IWL_TI_CT_KILL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Device reached critical temperature - ucode going to sleep!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Device temperature below critical- ucode awake!\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 546, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 555, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 578, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 593, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 598, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 600, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 603, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 604, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 605, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 608, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 617, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"tt_range_0\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 35, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"tt_range_1\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 40, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [11 x i8] c"tt_range_2\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 45, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"tt_range_3\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 50, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"restriction_range\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 57, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 643, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 175, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 210, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 185, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 188, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 193, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 251, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 302, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 316, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 318, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 220, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 445, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 451, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 461, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 491, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 523, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @iwl_tt_initialize.__key, ptr @.str.4, ptr @iwl_tt_initialize.__key.5, ptr @.str.6, ptr @iwl_tt_initialize.__key.7, ptr @.str.8, ptr @iwl_tt_initialize.__key.9, ptr @.str.10, ptr @iwl_tt_initialize.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @tt_range_0, ptr @tt_range_1, ptr @tt_range_2, ptr @tt_range_3, ptr @restriction_range, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_tt_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_tt_initialize.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_tt_initialize.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_tt_initialize.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_tt_initialize.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_range_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_range_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_range_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_range_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restriction_range to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_tt_is_low_power_state(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  ret i1 %cmp.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @iwl_tt_current_power_mode(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tt_power_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 2
  %0 = ptrtoint ptr %tt_power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tt_power_mode, align 1
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @iwl_ht_enabled(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %restriction2 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %2 = ptrtoint ptr %restriction2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restriction2, align 4
  %4 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thermal_throttle, align 4
  %is_ht = getelementptr %struct.iwl_tt_restriction, ptr %3, i32 %5, i32 2
  %6 = ptrtoint ptr %is_ht to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ht, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3 = icmp ne i8 %7, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool3, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_check_for_ct_kill(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %temperature.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 34
  %0 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temperature.i, align 4
  %advanced_tt.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %2 = ptrtoint ptr %advanced_tt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %advanced_tt.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %add2.i = add i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %add2.i)
  %cmp3.i = icmp sgt i32 %add2.i, 113
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %add2.i)
  %cmp.i = icmp sgt i32 %add2.i, 109
  %within_margin.0.in.i = select i1 %tobool.not.i, i1 %cmp.i, i1 %cmp3.i
  br i1 %within_margin.0.in.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %status.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i2 = icmp eq i32 %6, 0
  br i1 %tobool.not.i2, label %do.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %8, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_enter_ct_kill, ptr noundef nonnull @.str) #5
  %workqueue.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %9 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue.i, align 4
  %ct_enter.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %ct_enter.i) #5
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i1 %within_margin.0.in.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_tt_enter_ct_kill(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_enter_ct_kill, ptr noundef nonnull @.str) #5
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %ct_enter = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ct_enter) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_tx_ant_restriction(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %restriction2 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %2 = ptrtoint ptr %restriction2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restriction2, align 4
  %4 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thermal_throttle, align 4
  %add.ptr = getelementptr %struct.iwl_tt_restriction, ptr %3, i32 %5
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iwl_rx_ant_restriction(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %restriction2 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %2 = ptrtoint ptr %restriction2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restriction2, align 4
  %4 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thermal_throttle, align 4
  %rx_stream = getelementptr %struct.iwl_tt_restriction, ptr %3, i32 %5, i32 1
  %6 = ptrtoint ptr %rx_stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_stream, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_tt_exit_ct_kill(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_exit_ct_kill, ptr noundef nonnull @.str.1) #5
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %ct_exit = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %ct_exit) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_tt_handler(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %4, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_handler, ptr noundef nonnull @.str.2) #5
  %workqueue = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 16
  %5 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %workqueue, align 4
  %tt_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %tt_work) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_tt_initialize(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_initialize, ptr noundef nonnull @.str.3) #5
  %ct_kill_exit_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 7
  %2 = call ptr @memset(ptr %thermal_throttle, i32 0, i32 116)
  tail call void @init_timer_key(ptr noundef %ct_kill_exit_tm, ptr noundef nonnull @iwl_tt_check_exit_ct_kill, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @iwl_tt_initialize.__key) #5
  %ct_kill_waiting_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  tail call void @init_timer_key(ptr noundef %ct_kill_waiting_tm, ptr noundef nonnull @iwl_tt_ready_for_ct_kill, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @iwl_tt_initialize.__key.5) #5
  %tt_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108
  tail call void @__init_work(ptr noundef %tt_work, i32 noundef 0) #5
  %3 = ptrtoint ptr %tt_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %tt_work, align 8
  %lockdep_map = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @iwl_tt_initialize.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry16 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108, i32 1
  %4 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @iwl_bg_tt_work, ptr %func, align 4
  %ct_enter = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109
  tail call void @__init_work(ptr noundef %ct_enter, i32 noundef 0) #5
  %7 = ptrtoint ptr %ct_enter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %ct_enter, align 4
  %lockdep_map26 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map26, ptr noundef nonnull @.str.10, ptr noundef nonnull @iwl_tt_initialize.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry28 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109, i32 1
  %8 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i139 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i139 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry28, ptr %prev.i139, align 4
  %func30 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109, i32 2
  %10 = ptrtoint ptr %func30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @iwl_bg_ct_enter, ptr %func30, align 4
  %ct_exit = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110
  tail call void @__init_work(ptr noundef %ct_exit, i32 noundef 0) #5
  %11 = ptrtoint ptr %ct_exit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %ct_exit, align 8
  %lockdep_map39 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.12, ptr noundef nonnull @iwl_tt_initialize.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry41 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110, i32 1
  %12 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry41, ptr %entry41, align 4
  %prev.i140 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i140 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry41, ptr %prev.i140, align 4
  %func43 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110, i32 2
  %14 = ptrtoint ptr %func43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @iwl_bg_ct_exit, ptr %func43, align 4
  %lib = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 4
  %15 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lib, align 8
  %adv_thermal_throttle = getelementptr inbounds %struct.iwl_dvm_cfg, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %adv_thermal_throttle to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adv_thermal_throttle, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br i1 %tobool.not, label %do.end86, label %do.end49

do.end49:                                         ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_initialize, ptr noundef nonnull @.str.13) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 48) #8
  %restriction = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %22 = ptrtoint ptr %restriction to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %restriction, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 144) #8
  %transaction54 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 6
  %24 = ptrtoint ptr %transaction54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i141, ptr %transaction54, align 4
  %25 = ptrtoint ptr %restriction to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %restriction, align 4
  %tobool56.not = icmp eq ptr %26, null
  %tobool58.not = icmp eq ptr %call7.i.i.i141, null
  %or.cond = select i1 %tobool56.not, i1 true, i1 %tobool58.not
  br i1 %or.cond, label %do.end63, label %if.else

do.end63:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.14) #5
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %29 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %advanced_tt, align 4
  %30 = ptrtoint ptr %restriction to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %restriction, align 4
  tail call void @kfree(ptr noundef %31) #5
  %32 = ptrtoint ptr %restriction to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %restriction, align 4
  %33 = ptrtoint ptr %transaction54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transaction54, align 4
  tail call void @kfree(ptr noundef %34) #5
  %35 = ptrtoint ptr %transaction54 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %transaction54, align 4
  br label %if.end92

if.else:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #7
  %36 = call ptr @memcpy(ptr %call7.i.i.i141, ptr @tt_range_0, i32 36)
  %add.ptr74 = getelementptr %struct.iwl_tt_trans, ptr %call7.i.i.i141, i32 3
  %37 = call ptr @memcpy(ptr %add.ptr74, ptr @tt_range_1, i32 36)
  %add.ptr76 = getelementptr %struct.iwl_tt_trans, ptr %call7.i.i.i141, i32 6
  %38 = call ptr @memcpy(ptr %add.ptr76, ptr @tt_range_2, i32 36)
  %add.ptr78 = getelementptr %struct.iwl_tt_trans, ptr %call7.i.i.i141, i32 9
  %39 = call ptr @memcpy(ptr %add.ptr78, ptr @tt_range_3, i32 36)
  %40 = call ptr @memcpy(ptr %26, ptr @restriction_range, i32 48)
  %advanced_tt81 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %41 = ptrtoint ptr %advanced_tt81 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %advanced_tt81, align 4
  br label %if.end92

do.end86:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %20, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_initialize, ptr noundef nonnull @.str.15) #5
  %advanced_tt91 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %42 = ptrtoint ptr %advanced_tt91 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %advanced_tt91, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.else, %do.end63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_tt_check_exit_ct_kill(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -3708
  %status = getelementptr i8, ptr %t, i32 -3688
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %thermal_throttle = getelementptr i8, ptr %t, i32 -20
  %3 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %ct_kill_toggle = getelementptr i8, ptr %t, i32 -14
  %5 = ptrtoint ptr %ct_kill_toggle to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ct_kill_toggle, align 2, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %. = select i1 %tobool3.not, i32 88, i32 92
  %9 = xor i8 %6, 1
  tail call void @iwl_write32(ptr noundef %8, i32 noundef %., i32 noundef 8) #5
  %10 = ptrtoint ptr %ct_kill_toggle to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %ct_kill_toggle, align 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %call12 = tail call i32 @iwl_read32(ptr noundef %12, i32 noundef 84) #5
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %grab_nic_access = getelementptr inbounds %struct.iwl_trans_ops, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %grab_nic_access to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %grab_nic_access, align 4
  %call15 = tail call zeroext i1 %18(ptr noundef %14) #5
  br i1 %call15, label %if.then18, label %if.then1.do.end_crit_edge, !prof !90

if.then1.do.end_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then18:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.iwl_trans, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %release_nic_access.i = getelementptr inbounds %struct.iwl_trans_ops, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %release_nic_access.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %release_nic_access.i, align 4
  tail call void %24(ptr noundef %20) #5
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.then1.do.end_crit_edge
  %dev = getelementptr i8, ptr %t, i32 -3704
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %26, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_check_exit_ct_kill, ptr noundef nonnull @.str.16) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %27, 500
  %call25 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_tt_ready_for_ct_kill(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr i8, ptr %t, i32 -68
  %status = getelementptr i8, ptr %t, i32 -3736
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  %dev = getelementptr i8, ptr %t, i32 -3752
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %6, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_tt_ready_for_ct_kill, ptr noundef nonnull @.str.17) #5
  %7 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %thermal_throttle, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #5
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %9, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.18) #5
  %mac80211_registered.i = getelementptr i8, ptr %t, i32 4220
  %10 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mac80211_registered.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %do.end.iwl_perform_ct_kill_task.exit_crit_edge, label %if.then4.i

do.end.iwl_perform_ct_kill_task.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_perform_ct_kill_task.exit

if.then4.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw.i = getelementptr i8, ptr %t, i32 -3424
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %13) #5
  br label %iwl_perform_ct_kill_task.exit

iwl_perform_ct_kill_task.exit:                    ; preds = %if.then4.i, %do.end.iwl_perform_ct_kill_task.exit_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.19) #5
  %ct_kill_exit_tm.i = getelementptr i8, ptr %t, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %16, 500
  %call.i = tail call i32 @mod_timer(ptr noundef %ct_kill_exit_tm.i, i32 noundef %add.i) #5
  br label %cleanup

cleanup:                                          ; preds = %iwl_perform_ct_kill_task.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_tt_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10536
  %temperature = getelementptr i8, ptr %work, i32 -7868
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temperature, align 4
  %status = getelementptr i8, ptr %work, i32 -10516
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %advanced_tt = getelementptr i8, ptr %work, i32 -6844
  %5 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_legacy_tt_handler(ptr noundef %add.ptr, i32 noundef %1, i1 noundef zeroext false)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_advance_tt_handler(ptr noundef %add.ptr, i32 noundef %1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_ct_enter(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10580
  %thermal_throttle = getelementptr i8, ptr %work, i32 -6892
  %status = getelementptr i8, ptr %work, i32 -10560
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %iwl_is_ready.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iwl_is_ready.exit:                                ; preds = %if.end
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.not = icmp eq i32 %8, 0
  br i1 %tobool2.not.not, label %if.end4, label %iwl_is_ready.exit.cleanup_crit_edge

iwl_is_ready.exit.cleanup_crit_edge:              ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %iwl_is_ready.exit
  %9 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not = icmp eq i32 %10, 3
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %do.end

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end4
  %dev = getelementptr i8, ptr %work, i32 -10576
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.29) #5
  %advanced_tt = getelementptr i8, ptr %work, i32 -6888
  %13 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool10.not = icmp eq i8 %14, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_legacy_tt_handler(ptr noundef %add.ptr, i32 noundef 110, i1 noundef zeroext true)
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_advance_tt_handler(ptr noundef %add.ptr, i32 noundef 115, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end4.cleanup_crit_edge, %iwl_is_ready.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_bg_ct_exit(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -10624
  %thermal_throttle = getelementptr i8, ptr %work, i32 -6936
  %status = getelementptr i8, ptr %work, i32 -10604
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status, align 4
  %2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %iwl_is_ready.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iwl_is_ready.exit:                                ; preds = %if.end
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status, align 4
  %8 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.not = icmp eq i32 %8, 0
  br i1 %tobool2.not.not, label %if.end4, label %iwl_is_ready.exit.cleanup_crit_edge

iwl_is_ready.exit.cleanup_crit_edge:              ; preds = %iwl_is_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %iwl_is_ready.exit
  %ct_kill_exit_tm = getelementptr i8, ptr %work, i32 -6916
  %call6 = tail call i32 @del_timer_sync(ptr noundef %ct_kill_exit_tm) #5
  %9 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp eq i32 %10, 3
  br i1 %cmp, label %do.end, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end4
  %dev = getelementptr i8, ptr %work, i32 -10620
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.30) #5
  %temperature = getelementptr i8, ptr %work, i32 -7956
  %13 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %temperature, align 4
  %advanced_tt = getelementptr i8, ptr %work, i32 -6932
  %14 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_legacy_tt_handler(ptr noundef %add.ptr, i32 noundef 100, i1 noundef zeroext true)
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @iwl_advance_tt_handler(ptr noundef %add.ptr, i32 noundef 95, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %if.end4.cleanup_crit_edge, %iwl_is_ready.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_tt_exit(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_kill_exit_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %ct_kill_exit_tm) #5
  %ct_kill_waiting_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  %call3 = tail call i32 @del_timer_sync(ptr noundef %ct_kill_waiting_tm) #5
  %tt_work = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 108
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tt_work) #5
  %ct_enter = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 109
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ct_enter) #5
  %ct_exit = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 110
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ct_exit) #5
  %advanced_tt = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %0 = ptrtoint ptr %advanced_tt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %advanced_tt, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %restriction = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %2 = ptrtoint ptr %restriction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %restriction, align 4
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %restriction to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %restriction, align 4
  %transaction = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 6
  %5 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transaction, align 4
  tail call void @kfree(ptr noundef %6) #5
  %7 = ptrtoint ptr %transaction to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %transaction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_read32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_perform_ct_kill_task(ptr noundef %priv, i1 noundef zeroext %stop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  br i1 %stop, label %do.end, label %do.end12

do.end:                                           ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.18) #5
  %mac80211_registered = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %2 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac80211_registered, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %do.end.do.end7_crit_edge, label %if.then4

do.end.do.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %5) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.end.do.end7_crit_edge
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.19) #5
  %ct_kill_exit_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 500
  %call = tail call i32 @mod_timer(ptr noundef %ct_kill_exit_tm, i32 noundef %add) #5
  br label %if.end20

do.end12:                                         ; preds = %entry
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.20) #5
  %mac80211_registered15 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %9 = ptrtoint ptr %mac80211_registered15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mac80211_registered15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  br i1 %tobool16.not, label %do.end12.if.end20_crit_edge, label %if.then17

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  %hw18 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %11 = ptrtoint ptr %hw18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw18, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %12) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.end12.if.end20_crit_edge, %do.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_legacy_tt_handler(ptr noundef %priv, i32 noundef %temp, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %tt_previous_temp = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 4
  %0 = ptrtoint ptr %tt_previous_temp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tt_previous_temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %temp)
  %cmp = icmp slt i32 %1, %temp
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %land.lhs.true2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %sub = sub i32 %temp, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp4 = icmp sgt i32 %sub, 5
  br i1 %cmp4, label %do.end, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_legacy_tt_handler, ptr noundef nonnull @.str.21, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 109, i32 %temp)
  %cmp10 = icmp sgt i32 %temp, 109
  br i1 %cmp10, label %if.end.if.end24_crit_edge, label %if.else

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %temp)
  %cmp13 = icmp sgt i32 %temp, 99
  br i1 %cmp13, label %if.else.if.end24_crit_edge, label %if.else16

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 89, i32 %temp)
  %cmp17 = icmp sgt i32 %temp, 89
  %. = zext i1 %cmp17 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.else16, %if.else.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %.sink = phi i32 [ 3, %if.end.if.end24_crit_edge ], [ 2, %if.else.if.end24_crit_edge ], [ %., %if.else16 ]
  %6 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %thermal_throttle, align 4
  %7 = ptrtoint ptr %tt_previous_temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %temp, ptr %tt_previous_temp, align 4
  %ct_kill_waiting_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %ct_kill_waiting_tm) #5
  %8 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp28.not = icmp eq i32 %9, %5
  br i1 %cmp28.not, label %if.end24.if.end88_crit_edge, label %if.then29

if.end24.if.end88_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then29:                                        ; preds = %if.end24
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 0, label %if.then29.sw.epilog_crit_edge
    i32 1, label %if.then29.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb31
  ]

if.then29.sw.epilog.sink.split_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then29.sw.epilog_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %sw.bb31, %if.then29.sw.epilog.sink.split_crit_edge
  %.sink142 = phi i8 [ 4, %sw.default ], [ 3, %sw.bb31 ], [ 2, %if.then29.sw.epilog.sink.split_crit_edge ]
  %tt_power_mode33 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 2
  %11 = ptrtoint ptr %tt_power_mode33 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink142, ptr %tt_power_mode33, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then29.sw.epilog_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp34 = icmp eq i32 %5, 3
  br i1 %cmp34, label %if.then35, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %sw.epilog.if.end36_crit_edge
  %12 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp38.not = icmp eq i32 %13, 3
  br i1 %cmp38.not, label %if.end36.if.then58_crit_edge, label %land.lhs.true39

if.end36.if.then58_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

land.lhs.true39:                                  ; preds = %if.end36
  %call40 = tail call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else55, label %if.then42

if.then42:                                        ; preds = %land.lhs.true39
  br i1 %cmp34, label %if.then44, label %if.then42.if.end46_crit_edge

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %status45 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status45) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then42.if.end46_crit_edge
  %14 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %thermal_throttle, align 4
  %dev52 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev52, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.22) #5
  br label %if.end86

if.else55:                                        ; preds = %land.lhs.true39
  %17 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp57 = icmp eq i32 %.pr, 3
  br i1 %cmp57, label %if.else55.if.then58_crit_edge, label %if.else65

if.else55.if.then58_crit_edge:                    ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

if.then58:                                        ; preds = %if.else55.if.then58_crit_edge, %if.end36.if.then58_crit_edge
  br i1 %force, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.then58
  %status61 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status61) #5
  %dev.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.18) #5
  %mac80211_registered.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %20 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mac80211_registered.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i, label %if.then60.iwl_perform_ct_kill_task.exit_crit_edge, label %if.then4.i

if.then60.iwl_perform_ct_kill_task.exit_crit_edge: ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %iwl_perform_ct_kill_task.exit

if.then4.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %hw.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %23) #5
  br label %iwl_perform_ct_kill_task.exit

iwl_perform_ct_kill_task.exit:                    ; preds = %if.then4.i, %if.then60.iwl_perform_ct_kill_task.exit_crit_edge
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %25, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.19) #5
  %ct_kill_exit_tm.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %26, 500
  %call.i = tail call i32 @mod_timer(ptr noundef %ct_kill_exit_tm.i, i32 noundef %add.i) #5
  br label %do.end73

if.else62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i136 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i136, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %28, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_ct_kill_task, ptr noundef nonnull @.str.25) #5
  %call.i137 = tail call i32 @iwl_send_statistics_request(ptr noundef %priv, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i138 = add i32 %29, 30
  %call4.i = tail call i32 @mod_timer(ptr noundef %ct_kill_waiting_tm, i32 noundef %add.i138) #5
  %30 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %5, ptr %thermal_throttle, align 4
  br label %do.end73

if.else65:                                        ; preds = %if.else55
  br i1 %cmp34, label %if.then67, label %if.else65.do.end73_crit_edge

if.else65.do.end73_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end73

if.then67:                                        ; preds = %if.else65
  %dev.i139 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i139, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.20) #5
  %mac80211_registered15.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %33 = ptrtoint ptr %mac80211_registered15.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mac80211_registered15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not.i = icmp eq i8 %34, 0
  br i1 %tobool16.not.i, label %if.then67.do.end73_crit_edge, label %if.then17.i

if.then67.do.end73_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end73

if.then17.i:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  %hw18.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %35 = ptrtoint ptr %hw18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw18.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %36) #5
  br label %do.end73

do.end73:                                         ; preds = %if.then17.i, %if.then67.do.end73_crit_edge, %if.else65.do.end73_crit_edge, %if.else62, %iwl_perform_ct_kill_task.exit
  %dev74 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev74, align 4
  %39 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %thermal_throttle, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %38, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_legacy_tt_handler, ptr noundef nonnull @.str.23, i32 noundef %40) #5
  %41 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev74, align 4
  %tt_power_mode83 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 2
  %43 = ptrtoint ptr %tt_power_mode83 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tt_power_mode83, align 1
  %conv = zext i8 %44 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %42, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_legacy_tt_handler, ptr noundef nonnull @.str.24, i32 noundef %conv) #5
  br label %if.end86

if.end86:                                         ; preds = %do.end73, %if.end46
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %if.end88

if.end88:                                         ; preds = %if.end86, %if.end24.if.end88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_advance_tt_handler(ptr noundef %priv, i32 noundef %temp, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61
  %0 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %thermal_throttle, align 4
  %transaction1 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 6
  %2 = ptrtoint ptr %transaction1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transaction1, align 4
  %mul = mul i32 %1, 3
  %tt_low = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %mul, i32 1
  %4 = ptrtoint ptr %tt_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tt_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %temp)
  %cmp2.not = icmp ugt i32 %5, %temp
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %tt_high = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %mul, i32 2
  %6 = ptrtoint ptr %tt_high to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tt_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %temp)
  %cmp3.not = icmp ult i32 %7, %temp
  br i1 %cmp3.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true.2.if.then_crit_edge, %land.lhs.true.1.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %add.lcssa = phi i32 [ %mul, %land.lhs.true.if.then_crit_edge ], [ %add.1, %land.lhs.true.1.if.then_crit_edge ], [ %add.2, %land.lhs.true.2.if.then_crit_edge ]
  %add.ptr.le = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %add.lcssa
  %tt_previous_temp = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 4
  %8 = ptrtoint ptr %tt_previous_temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tt_previous_temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %temp)
  %cmp6 = icmp slt i32 %9, %temp
  %or.cond = and i1 %tobool.not, %cmp6
  br i1 %or.cond, label %land.lhs.true7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true7:                                   ; preds = %if.then
  %sub = sub i32 %temp, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, 5
  br i1 %cmp9, label %do.end, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_advance_tt_handler, ptr noundef nonnull @.str.21, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true7.if.end_crit_edge, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %tt_previous_temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %temp, ptr %tt_previous_temp, align 4
  %13 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %14)
  %cmp17.not = icmp eq i32 %1, %14
  br i1 %cmp17.not, label %if.end.for.end_crit_edge, label %if.then18

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then18:                                        ; preds = %if.end
  %15 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %thermal_throttle, align 4
  %ct_kill_waiting_tm.c = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  %call.c = tail call i32 @del_timer_sync(ptr noundef %ct_kill_waiting_tm.c) #5
  %16 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27.not = icmp eq i32 %17, 0
  br i1 %cmp27.not, label %if.then18.if.end45.sink.split_crit_edge, label %if.then28

if.then18.if.end45.sink.split_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %add.1 = add i32 %mul, 1
  %tt_low.1 = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %add.1, i32 1
  %18 = ptrtoint ptr %tt_low.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tt_low.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %temp)
  %cmp2.not.1 = icmp ugt i32 %19, %temp
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %tt_high.1 = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %add.1, i32 2
  %20 = ptrtoint ptr %tt_high.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tt_high.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %temp)
  %cmp3.not.1 = icmp ult i32 %21, %temp
  br i1 %cmp3.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true.1.if.then_crit_edge

land.lhs.true.1.if.then_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %add.2 = add i32 %mul, 2
  %tt_low.2 = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %add.2, i32 1
  %22 = ptrtoint ptr %tt_low.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tt_low.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %temp)
  %cmp2.not.2 = icmp ugt i32 %23, %temp
  br i1 %cmp2.not.2, label %for.inc.1.for.end_crit_edge, label %land.lhs.true.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true.2:                                  ; preds = %for.inc.1
  %tt_high.2 = getelementptr %struct.iwl_tt_trans, ptr %3, i32 %add.2, i32 2
  %24 = ptrtoint ptr %tt_high.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tt_high.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %temp)
  %cmp3.not.2 = icmp ult i32 %25, %temp
  br i1 %cmp3.not.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.if.then_crit_edge

land.lhs.true.2.if.then_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %ct_kill_waiting_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  %call = tail call i32 @del_timer_sync(ptr noundef %ct_kill_waiting_tm) #5
  br label %if.end118

if.then28:                                        ; preds = %if.then18
  %tt_power_mode = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 2
  %26 = ptrtoint ptr %tt_power_mode to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %tt_power_mode, align 1
  %advanced_tt.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 1
  %27 = ptrtoint ptr %advanced_tt.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %advanced_tt.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then28.if.end45.sink.split_crit_edge, label %iwl_ht_enabled.exit

if.then28.if.end45.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.sink.split

iwl_ht_enabled.exit:                              ; preds = %if.then28
  %restriction2.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 5
  %29 = ptrtoint ptr %restriction2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %restriction2.i, align 4
  %is_ht.i = getelementptr %struct.iwl_tt_restriction, ptr %30, i32 %17, i32 2
  %31 = ptrtoint ptr %is_ht.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_ht.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.i.not = icmp eq i8 %32, 0
  br i1 %tobool3.i.not, label %if.then30, label %iwl_ht_enabled.exit.if.end45.sink.split_crit_edge

iwl_ht_enabled.exit.if.end45.sink.split_crit_edge: ; preds = %iwl_ht_enabled.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.sink.split

if.then30:                                        ; preds = %iwl_ht_enabled.exit
  %contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 50
  %arrayidx33 = getelementptr %struct.iwl_priv, ptr %priv, i32 0, i32 51
  %cmp34181 = icmp ult ptr %contexts, %arrayidx33
  br i1 %cmp34181, label %for.body35.lr.ph, label %if.then30.if.end45_crit_edge

if.then30.if.end45_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body35.lr.ph:                                 ; preds = %if.then30
  %valid_contexts = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 19
  br label %for.body35

for.body35:                                       ; preds = %for.inc40.for.body35_crit_edge, %for.body35.lr.ph
  %ctx.0182 = phi ptr [ %contexts, %for.body35.lr.ph ], [ %incdec.ptr, %for.inc40.for.body35_crit_edge ]
  %33 = ptrtoint ptr %valid_contexts to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %valid_contexts, align 4
  %conv = zext i8 %34 to i32
  %ctxid = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0182, i32 0, i32 7
  %35 = ptrtoint ptr %ctxid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctxid, align 4
  %shl = shl nuw i32 1, %36
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %for.body35.for.inc40_crit_edge, label %if.then37

for.body35.for.inc40_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc40

if.then37:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.iwl_rxon_context, ptr %ctx.0182, i32 0, i32 15, i32 12
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %flags, align 1
  %and38 = and i32 %38, -49160
  store i32 %and38, ptr %flags, align 1
  br label %for.inc40

for.inc40:                                        ; preds = %if.then37, %for.body35.for.inc40_crit_edge
  %incdec.ptr = getelementptr %struct.iwl_rxon_context, ptr %ctx.0182, i32 1
  %cmp34 = icmp ult ptr %incdec.ptr, %arrayidx33
  br i1 %cmp34, label %for.inc40.for.body35_crit_edge, label %for.inc40.if.end45_crit_edge

for.inc40.if.end45_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.inc40.for.body35_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35

if.end45.sink.split:                              ; preds = %iwl_ht_enabled.exit.if.end45.sink.split_crit_edge, %if.then28.if.end45.sink.split_crit_edge, %if.then18.if.end45.sink.split_crit_edge
  %current_ht_config = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 57
  tail call void @iwl_set_rxon_ht(ptr noundef %priv, ptr noundef %current_ht_config) #5
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %for.inc40.if.end45_crit_edge, %if.then30.if.end45_crit_edge
  %mutex = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp46 = icmp eq i32 %1, 3
  br i1 %cmp46, label %if.then48, label %if.end45.if.end49_crit_edge

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end45.if.end49_crit_edge
  %39 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp51.not = icmp eq i32 %40, 3
  br i1 %cmp51.not, label %if.end49.do.end74_crit_edge, label %land.lhs.true53

if.end49.do.end74_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end74

land.lhs.true53:                                  ; preds = %if.end49
  %call54 = tail call i32 @iwl_power_update_mode(ptr noundef %priv, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end74_crit_edge, label %do.end60

land.lhs.true53.do.end74_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end74

do.end60:                                         ; preds = %land.lhs.true53
  %dev61 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %41 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev61, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.22) #5
  br i1 %cmp46, label %if.then66, label %do.end60.if.end68_crit_edge

do.end60.if.end68_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then66:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #7
  %status67 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status67) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %do.end60.if.end68_crit_edge
  %43 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %1, ptr %thermal_throttle, align 4
  br label %if.end116

do.end74:                                         ; preds = %land.lhs.true53.do.end74_crit_edge, %if.end49.do.end74_crit_edge
  %dev75 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev75, align 4
  %46 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %thermal_throttle, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_advance_tt_handler, ptr noundef nonnull @.str.26, i32 noundef %47) #5
  %48 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %thermal_throttle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp104.not = icmp eq i32 %49, 3
  br i1 %cmp46, label %land.lhs.true102, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %do.end74
  br i1 %cmp104.not, label %if.then85, label %land.lhs.true81.if.end116_crit_edge

land.lhs.true81.if.end116_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then85:                                        ; preds = %land.lhs.true81
  br i1 %force, label %do.end91, label %if.else96

do.end91:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev75, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_advance_tt_handler, ptr noundef nonnull @.str.27) #5
  %status95 = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status95) #5
  tail call fastcc void @iwl_perform_ct_kill_task(ptr noundef %priv, i1 noundef zeroext true)
  br label %if.end116

if.else96:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %1, ptr %thermal_throttle, align 4
  tail call fastcc void @iwl_prepare_ct_kill_task(ptr noundef %priv)
  br label %if.end116

land.lhs.true102:                                 ; preds = %do.end74
  br i1 %cmp104.not, label %land.lhs.true102.if.end116_crit_edge, label %do.end110

land.lhs.true102.if.end116_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

do.end110:                                        ; preds = %land.lhs.true102
  %53 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev75, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %54, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_advance_tt_handler, ptr noundef nonnull @.str.28) #5
  %55 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev75, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_perform_ct_kill_task, ptr noundef nonnull @.str.20) #5
  %mac80211_registered15.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 67
  %57 = ptrtoint ptr %mac80211_registered15.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mac80211_registered15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool16.not.i = icmp eq i8 %58, 0
  br i1 %tobool16.not.i, label %do.end110.if.end116_crit_edge, label %if.then17.i

do.end110.if.end116_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then17.i:                                      ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #7
  %hw18.i = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 13
  %59 = ptrtoint ptr %hw18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw18.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %60) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then17.i, %do.end110.if.end116_crit_edge, %land.lhs.true102.if.end116_crit_edge, %if.else96, %do.end91, %land.lhs.true81.if.end116_crit_edge, %if.end68
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_power_update_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_prepare_ct_kill_task(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_prepare_ct_kill_task, ptr noundef nonnull @.str.25) #5
  %call = tail call i32 @iwl_send_statistics_request(ptr noundef %priv, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  %ct_kill_waiting_tm = getelementptr inbounds %struct.iwl_priv, ptr %priv, i32 0, i32 61, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 30
  %call4 = tail call i32 @mod_timer(ptr noundef %ct_kill_waiting_tm, i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_send_statistics_request(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_set_rxon_ht(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__func__.iwl_tt_enter_ct_kill, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 546, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.iwl_tt_exit_ct_kill, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 555, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.iwl_tt_handler, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 578, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.iwl_tt_initialize, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 593, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @iwl_tt_initialize.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 598, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iwl_tt_initialize.__key.5, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 600, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @iwl_tt_initialize.__key.7, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 603, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iwl_tt_initialize.__key.9, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 604, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iwl_tt_initialize.__key.11, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 605, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 608, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 617, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 643, i32 3}
!33 = !{ptr @__func__.iwl_tt_check_exit_ct_kill, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 175, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__func__.iwl_tt_ready_for_ct_kill, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 210, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__func__.iwl_perform_ct_kill_task, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 185, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 188, i32 3}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 193, i32 3}
!46 = !{ptr @__func__.iwl_legacy_tt_handler, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 251, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 302, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 316, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 318, i32 4}
!55 = !{ptr @__func__.iwl_prepare_ct_kill_task, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 220, i32 2}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__func__.iwl_advance_tt_handler, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 375, i32 5}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 445, i32 4}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 451, i32 6}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 461, i32 5}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 491, i32 3}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 523, i32 3}
!70 = !{ptr @tt_range_0, !71, !"tt_range_0", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 35, i32 34}
!72 = !{ptr @tt_range_1, !73, !"tt_range_1", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 40, i32 34}
!74 = !{ptr @tt_range_2, !75, !"tt_range_2", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 45, i32 34}
!76 = !{ptr @tt_range_3, !77, !"tt_range_3", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 50, i32 34}
!78 = !{ptr @restriction_range, !79, !"restriction_range", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/dvm/tt.c", i32 57, i32 40}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{!"branch_weights", i32 2000, i32 1}
