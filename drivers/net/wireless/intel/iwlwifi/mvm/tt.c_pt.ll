; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/tt.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/tt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_ext_dts_measurement_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.136 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.137 = type { i64, i64, i64, i64 }
%union.anon.138 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.141, %struct.anon.146, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.140], i32, i32, i32, [6 x i32] }
%struct.anon.140 = type { [15 x i32], i32 }
%struct.anon.141 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.145 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.145 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.146 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_bt_coex_profile_notif = type { [4 x i32], i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_bt_coex_ci_cmd = type <{ i64, i32, i64, i32 }>
%struct.iwl_mvm_tt_mgmt = type { %struct.delayed_work, i8, i32, i32, %struct.iwl_tt_params, i8 }
%struct.iwl_mvm_thermal_device = type { [8 x i16], [8 x i8], ptr }
%struct.iwl_mvm_cooling_device = type { i32, ptr }
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.150 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.147, %struct.anon.148, %struct.anon.149, i8 }
%struct.anon.147 = type { [4 x i32], i32 }
%struct.anon.148 = type { [4 x i32], i32, i32 }
%struct.anon.149 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.150 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.151 = type { %struct.delayed_work, i32, i8, %struct.anon.152 }
%struct.anon.152 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.153 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.154, %struct.list_head }
%struct.anon.154 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_dts_measurement_cmd = type { i32 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
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
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.160, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.160 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.iwl_mvm_ctdp_cmd = type { i32, i32, i32 }
%struct.temp_report_ths_cmd = type { i32, [8 x i16] }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
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
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Enter CT Kill\0A\00", [17 x i8] zeroinitializer }, align 32
@iwl_mvm_temp_notif.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/tt.c\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid DTS_MEASUREMENT_NOTIFICATION\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_temp_notif = private unnamed_addr constant [19 x i8] c"iwl_mvm_temp_notif\00", align 1
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Temp = %d Threshold crossed = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_ct_kill_notif = private unnamed_addr constant [22 x i8] c"iwl_mvm_ct_kill_notif\00", align 1
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CT Kill notification temperature = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iwl_mvm_get_temp.temp_notif = internal global { [1 x i16], [30 x i8] } { [1 x i16] [i16 1279], [30 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Getting the temperature timed out\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tt_tx_backoff = private unnamed_addr constant [22 x i8] c"iwl_mvm_tt_tx_backoff\00", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set Thermal Tx backoff to: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to change Thermal Tx backoff\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tt_handler = private unnamed_addr constant [19 x i8] c"iwl_mvm_tt_handler\00", align 1
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NIC temperature: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable dynamic SMPS\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disable dynamic SMPS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Due to high temperature thermal throttling initiated\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Temperature is back to normal thermal throttling stopped\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_cdev_budgets = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 2400, i32 2000, i32 1800, i32 1600, i32 1400, i32 1200, i32 1000, i32 900, i32 800, i32 700, i32 650, i32 600, i32 550, i32 500, i32 450, i32 400, i32 350, i32 300, i32 250, i32 200, i32 150], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cTDP command failed (err=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_ctdp_command = private unnamed_addr constant [21 x i8] c"iwl_mvm_ctdp_command\00", align 1
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cTDP avg energy in mWatt = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cTDP stopped successfully\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TEMP_REPORT_THS_CMD command failed (err=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_thermal_initialize = private unnamed_addr constant [27 x i8] c"iwl_mvm_thermal_initialize\00", align 1
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Initialize Thermal Throttling\0A\00", [33 x i8] zeroinitializer }, align 32
@iwl_mvm_default_tt_params = internal constant { %struct.iwl_tt_params, [48 x i8] } { %struct.iwl_tt_params { i32 118, i32 96, i32 5, i32 114, i32 110, i32 114, i32 108, [6 x %struct.iwl_tt_tx_backoff] [%struct.iwl_tt_tx_backoff { i32 112, i32 200 }, %struct.iwl_tt_tx_backoff { i32 113, i32 600 }, %struct.iwl_tt_tx_backoff { i32 114, i32 1200 }, %struct.iwl_tt_tx_backoff { i32 115, i32 2000 }, %struct.iwl_tt_tx_backoff { i32 116, i32 4000 }, %struct.iwl_tt_tx_backoff { i32 117, i32 10000 }], i8 -16 }, [48 x i8] zeroinitializer }, align 32
@iwl_mvm_thermal_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&tt->ct_kill_exit)->work)\00", [50 x i8] zeroinitializer }, align 32
@iwl_mvm_thermal_initialize.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&tt->ct_kill_exit)->timer\00", [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_thermal_exit = private unnamed_addr constant [21 x i8] c"iwl_mvm_thermal_exit\00", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Exit Thermal Throttling\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@iwl_mvm_temp_notif_parse.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_temp_notif_parse.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_temp_notif_parse = private unnamed_addr constant [25 x i8] c"iwl_mvm_temp_notif_parse\00", align 1
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DTS_MEASUREMENT_NOTIFICATION - %d\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.iwl_mvm_send_temp_cmd.ext_cmd = private unnamed_addr constant %struct.iwl_ext_dts_measurement_cmd { i32 50331648, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 1
@__func__.iwl_mvm_send_temp_cmd = private unnamed_addr constant [22 x i8] c"iwl_mvm_send_temp_cmd\00", align 1
@.str.24 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Sending temperature measurement command - %s response\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to send the temperature measurement command (err=%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Got temperature measurement response: temp=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Exit CT Kill\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to %s Tx protection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_tt_tx_protection = private unnamed_addr constant [25 x i8] c"iwl_mvm_tt_tx_protection\00", align 1
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Tx protection\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@iwl_mvm_sta_from_staid_protected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__func__.check_exit_ctkill = private unnamed_addr constant [18 x i8] c"check_exit_ctkill\00", align 1
@tcooling_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @iwl_mvm_tcool_get_max_state, ptr @iwl_mvm_tcool_get_cur_state, ptr @iwl_mvm_tcool_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_cooling_device_register = private unnamed_addr constant [32 x i8] c"iwl_mvm_cooling_device_register\00", align 1
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to register to cooling device (err = %ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@iwl_mvm_thermal_zone_register.counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwlwifi_%u\00", [21 x i8] zeroinitializer }, align 32
@tzone_ops = internal global { %struct.thermal_zone_device_ops, [36 x i8] } { %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @iwl_mvm_tzone_get_temp, ptr null, ptr null, ptr @iwl_mvm_tzone_get_trip_type, ptr @iwl_mvm_tzone_get_trip_temp, ptr @iwl_mvm_tzone_set_trip_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_thermal_zone_register = private unnamed_addr constant [30 x i8] c"iwl_mvm_thermal_zone_register\00", align 1
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register to thermal zone (err = %ld)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable thermal zone\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_cooling_device_unregister = private unnamed_addr constant [34 x i8] c"iwl_mvm_cooling_device_unregister\00", align 1
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cooling device unregister\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_thermal_zone_unregister = private unnamed_addr constant [32 x i8] c"iwl_mvm_thermal_zone_unregister\00", align 1
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Thermal zone device unregister\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 21, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 125, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 126, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 139, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 161, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"temp_notif\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 233, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 264, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 370, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 374, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 387, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 403, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 411, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 443, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 449, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"iwl_mvm_cdev_budgets\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 478, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 520, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 531, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 540, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 603, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 871, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"iwl_mvm_default_tt_params\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 455, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 881, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 896, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 83, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 206, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 212, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 221, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 43, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 349, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 352, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 1203, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"tcooling_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 813, i32 48 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 834, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 730, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 740, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant [10 x i8] c"tzone_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 716, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 747, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 756, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 859, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 847, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @iwl_mvm_get_temp.temp_notif, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @iwl_mvm_cdev_budgets, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @iwl_mvm_default_tt_params, ptr @iwl_mvm_thermal_initialize.__key, ptr @.str.18, ptr @iwl_mvm_thermal_initialize.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @tcooling_ops, ptr @.str.38, ptr @iwl_mvm_thermal_zone_register.counter, ptr @.str.39, ptr @tzone_ops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_get_temp.temp_notif to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_cdev_budgets to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_default_tt_params to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_thermal_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_thermal_initialize.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_mvm_thermal_zone_register.counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tzone_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_enter_ctkill(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thermal_throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124
  %ct_kill_duration = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 2
  %0 = ptrtoint ptr %ct_kill_duration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ct_kill_duration, align 4
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str) #9
  tail call void @iwl_mvm_set_hw_ctkill_state(ptr noundef %mvm, i1 noundef zeroext true) #9
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %7 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %8, i32 0, i32 5, i32 8, i32 2
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %11 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %do.end.if.then5_crit_edge, label %iwl_mvm_is_tt_in_fw.exit

do.end.if.then5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

iwl_mvm_is_tt_in_fw.exit:                         ; preds = %do.end
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %14 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i7.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i7.i.not, label %iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge, label %iwl_mvm_is_tt_in_fw.exit.if.end6_crit_edge

iwl_mvm_is_tt_in_fw.exit.if.end6_crit_edge:       ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge:      ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge, %do.end.if.then5_crit_edge
  %throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 5
  %15 = ptrtoint ptr %throttle to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %throttle, align 4
  %dynamic_smps = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 1
  %16 = ptrtoint ptr %dynamic_smps to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %dynamic_smps, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %iwl_mvm_is_tt_in_fw.exit.if.end6_crit_edge
  %temperature_test = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 128
  %17 = ptrtoint ptr %temperature_test to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %temperature_test, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool7.not = icmp eq i8 %18, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %1, 100
  %call9 = tail call i32 @round_jiffies_relative(i32 noundef %mul) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %thermal_throttle, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_set_hw_ctkill_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_temp_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #9
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = and i32 %7, -12648448
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %sub.i = add nsw i32 %9, -4
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @iwl_mvm_temp_notif_parse(ptr noundef %mvm, ptr noundef %5)
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %13 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %14, i32 0, i32 5, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %if.end.if.then5_crit_edge, label %iwl_mvm_is_tt_in_fw.exit

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

iwl_mvm_is_tt_in_fw.exit:                         ; preds = %if.end
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i7.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i7.i.not, label %iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge, label %if.end8

iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge:      ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %iwl_mvm_is_tt_in_fw.exit.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.then6, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then5
  %temperature_test.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 128
  %21 = ptrtoint ptr %temperature_test.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %temperature_test.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %temperature.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 127
  %23 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %temperature.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call3)
  %cmp.i = icmp eq i32 %24, %call3
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %temperature.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call3, ptr %temperature.i, align 8
  tail call void @iwl_mvm_tt_handler(ptr noundef %mvm) #9
  br label %cleanup

if.end8:                                          ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp9 = icmp ult i32 %sub.i, 12
  br i1 %cmp9, label %land.rhs, label %if.end55

land.rhs:                                         ; preds = %if.end8
  %.b126 = load i1, ptr @iwl_mvm_temp_notif.__already_done, align 1
  br i1 %.b126, label %land.rhs.do.end52_crit_edge, label %if.then17, !prof !122

land.rhs.do.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_temp_notif.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 125, i32 noundef 9, ptr noundef null) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then17, %land.rhs.do.end52_crit_edge
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %27, i32 noundef 0, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end8
  %threshold_idx = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %28 = ptrtoint ptr %threshold_idx to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %threshold_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %29)
  %cmp56 = icmp eq i32 %29, -16777216
  br i1 %cmp56, label %if.end55.cleanup_crit_edge, label %do.end62

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end62:                                         ; preds = %if.end55
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %32, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_temp_notif, ptr noundef nonnull @.str.3, i32 noundef %call3, i32 noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp67 = icmp ugt i32 %30, 7
  br i1 %cmp67, label %do.end83, label %if.end99, !prof !123

do.end83:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 143, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end99:                                         ; preds = %do.end62
  %tzone = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 2
  %33 = ptrtoint ptr %tzone to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tzone, align 4
  %tobool100.not = icmp eq ptr %34, null
  br i1 %tobool100.not, label %if.end99.cleanup_crit_edge, label %if.then101

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @thermal_zone_device_update(ptr noundef nonnull %34, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %if.end99.cleanup_crit_edge, %do.end83, %if.end55.cleanup_crit_edge, %do.end52, %if.end2.i, %if.end.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_temp_notif_parse(ptr nocapture noundef readonly %mvm, ptr nocapture noundef readonly %pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %sub.i = add nsw i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 8
  br i1 %cmp, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %entry
  %.b121 = load i1, ptr @iwl_mvm_temp_notif_parse.__already_done, align 1
  br i1 %.b121, label %land.rhs.do.end40_crit_edge, label %if.then, !prof !122

land.rhs.do.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_temp_notif_parse.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then, %land.rhs.do.end40_crit_edge
  %4 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end43:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %data, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp46 = icmp slt i32 %8, 0
  br i1 %cmp46, label %land.rhs53, label %if.end43.if.end91_crit_edge

if.end43.if.end91_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs53:                                       ; preds = %if.end43
  %.b119120 = load i1, ptr @iwl_mvm_temp_notif_parse.__already_done.22, align 1
  br i1 %.b119120, label %land.rhs53.if.end91_crit_edge, label %if.then64, !prof !122

land.rhs53.if.end91_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then64:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_temp_notif_parse.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 9, ptr noundef null) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then64, %land.rhs53.if.end91_crit_edge, %if.end43.if.end91_crit_edge
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %11, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_temp_notif_parse, ptr noundef nonnull @.str.23, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %do.end40
  %retval.0 = phi i32 [ -22, %do.end40 ], [ %9, %if.end91 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ct_kill_notif(ptr noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #9
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mvm, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %data, align 1
  %conv = zext i16 %9 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ct_kill_notif, ptr noundef nonnull @.str.4, i32 noundef %conv) #9
  tail call void @iwl_mvm_enter_ctkill(ptr noundef %mvm)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_get_temp(ptr noundef %mvm, ptr noundef %temp) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  %dts_cmd.i = alloca %struct.iwl_dts_measurement_cmd, align 4
  %ext_cmd.i = alloca %struct.iwl_ext_dts_measurement_cmd, align 1
  %wait_temp_notif = alloca %struct.iwl_notification_wait, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wait_temp_notif) #9
  %0 = call ptr @memset(ptr %wait_temp_notif, i32 255, i32 32)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %2, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 99) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp = icmp eq i8 %call, 1
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @iwl_mvm_send_temp_cmd(ptr noundef %mvm, i1 noundef zeroext true, ptr noundef %temp)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.if.end22_crit_edge, label %land.rhs

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not = icmp eq i32 %call.i, 0
  br i1 %cmp4.not, label %do.end, label %land.rhs.if.end22_crit_edge, !prof !123

land.rhs.if.end22_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 9, ptr noundef null) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end, %land.rhs.if.end22_crit_edge, %do.body.if.end22_crit_edge
  %notif_wait = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 23
  call void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef nonnull %wait_temp_notif, ptr noundef nonnull @iwl_mvm_get_temp.temp_notif, i32 noundef 1, ptr noundef nonnull @iwl_mvm_temp_notif_wait, ptr noundef %temp) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #9
  %4 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dts_cmd.i) #9
  %6 = ptrtoint ptr %dts_cmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %dts_cmd.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ext_cmd.i) #9
  %7 = call ptr @memcpy(ptr %ext_cmd.i, ptr @__const.iwl_mvm_send_temp_cmd.ext_cmd, i32 24)
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %9, i32 0, i32 5, i32 8, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i = icmp eq i32 %12, 0
  %ext_cmd.dts_cmd.i = select i1 %tobool.i.not.i, ptr %dts_cmd.i, ptr %ext_cmd.i
  %..i = select i1 %tobool.i.not.i, i16 4, i16 24
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1024, ptr %id.i, align 4
  %len3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %14 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %..i, ptr %len3.i, align 4
  %flags.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %flags.i, align 4
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ext_cmd.dts_cmd.i, ptr %cmd.i, align 4
  %17 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %18, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_temp_cmd, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26) #9
  %call9.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %20, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %call9.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ext_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dts_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #9
  call void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_temp_notif) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ext_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dts_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #9
  %call37 = call i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef nonnull %wait_temp_notif, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %do.end43

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %22, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end35.cleanup_crit_edge, %if.then33, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call9.i, %if.then33 ], [ %call37, %do.end43 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wait_temp_notif) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_send_temp_cmd(ptr noundef %mvm, i1 noundef zeroext %response, ptr nocapture noundef writeonly %temp) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_host_cmd, align 4
  %dts_cmd = alloca %struct.iwl_dts_measurement_cmd, align 4
  %ext_cmd = alloca %struct.iwl_ext_dts_measurement_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dts_cmd) #9
  %2 = ptrtoint ptr %dts_cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %dts_cmd, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ext_cmd) #9
  %3 = call ptr @memcpy(ptr %ext_cmd, ptr @__const.iwl_mvm_send_temp_cmd.ext_cmd, i32 24)
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  %ext_cmd.dts_cmd = select i1 %tobool.i.not, ptr %dts_cmd, ptr %ext_cmd
  %. = select i1 %tobool.i.not, i16 4, i16 24
  %cond = select i1 %response, ptr @.str.25, ptr @.str.26
  %cmd_flags.0 = select i1 %response, i32 2, i32 0
  %len.1 = select i1 %response, i16 0, i16 %.
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1024, ptr %id, align 4
  %len3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %len.1, ptr %len3, align 4
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cmd_flags.0, ptr %flags, align 4
  %12 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ext_cmd.dts_cmd, ptr %cmd, align 4
  %13 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %14, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_temp_cmd, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond) #9
  %call9 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %16, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %call9) #9
  br label %cleanup

if.end19:                                         ; preds = %entry
  br i1 %response, label %if.then21, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %resp_pkt = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 1
  %17 = ptrtoint ptr %resp_pkt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resp_pkt, align 4
  %data22 = getelementptr inbounds %struct.iwl_rx_packet, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %data22 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data22, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %temp, align 4
  %23 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_send_temp_cmd, ptr noundef nonnull @.str.28, i32 noundef %21) #9
  %_rx_page_addr.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %_rx_page_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %_rx_page_addr.i, align 4
  %_rx_page_order.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 3
  %27 = ptrtoint ptr %_rx_page_order.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_rx_page_order.i, align 4
  call void @free_pages(i32 noundef %26, i32 noundef %28) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %do.end15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ext_cmd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dts_cmd) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #9
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_init_notification_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @iwl_mvm_temp_notif_wait(ptr nocapture noundef readonly %notif_wait, ptr nocapture noundef readonly %pkt, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notif_wait, i32 -288
  %call = tail call fastcc i32 @iwl_mvm_temp_notif_parse(ptr noundef %add.ptr, ptr noundef %pkt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_remove_notification(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_wait_notification(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tt_tx_backoff(ptr noundef %mvm, i32 noundef %backoff) local_unnamed_addr #0 align 64 {
entry:
  %backoff.addr = alloca i32, align 4
  %cmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds i8, ptr %cmd, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !124
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %backoff.addr, ptr %cmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %cmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 5
  %3 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 126, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd, i32 0, i32 7
  %7 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.end4, align 4
  %min_backoff = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 3
  %8 = ptrtoint ptr %min_backoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_backoff, align 4
  %10 = call i32 @llvm.umax.i32(i32 %9, i32 %backoff)
  %11 = ptrtoint ptr %backoff.addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %backoff.addr, align 4
  %call = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp eq i32 %call, 0
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  br i1 %cmp10, label %do.end, label %do.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %backoff.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backoff.addr, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tt_tx_backoff, ptr noundef nonnull @.str.6, i32 noundef %15) #9
  %16 = ptrtoint ptr %backoff.addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %backoff.addr, align 4
  %tx_backoff = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 2
  %18 = ptrtoint ptr %tx_backoff to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_backoff, align 8
  br label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.7) #9
  br label %if.end

if.end:                                           ; preds = %do.end18, %do.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_tt_handler(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %backoff.addr.i = alloca i32, align 4
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %temperature3 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 127
  %0 = ptrtoint ptr %temperature3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %temperature3, align 8
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tt_handler, ptr noundef nonnull @.str.8, i32 noundef %1) #9
  %support_ct_kill = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 8
  %4 = ptrtoint ptr %support_ct_kill to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %support_ct_kill, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %land.lhs.true

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %entry
  %params1 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4
  %5 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %6)
  %cmp.not = icmp ult i32 %1, %6
  br i1 %cmp.not, label %land.lhs.true14, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iwl_mvm_enter_ctkill(ptr noundef %mvm)
  br label %cleanup

land.lhs.true14:                                  ; preds = %land.lhs.true
  %ct_kill_exit = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 1
  %7 = ptrtoint ptr %ct_kill_exit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ct_kill_exit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %8)
  %cmp15.not = icmp ugt i32 %1, %8
  br i1 %cmp15.not, label %land.lhs.true14.if.end18_crit_edge, label %if.then17

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %do.end.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.29) #9
  tail call void @iwl_mvm_set_hw_ctkill_state(ptr noundef %mvm, i1 noundef zeroext false) #9
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true14.if.end18_crit_edge, %entry.if.end18_crit_edge
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %if.end18.if.end54_crit_edge, label %if.then22

if.end18.if.end54_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then22:                                        ; preds = %if.end18
  %dynamic_smps = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 1
  %15 = ptrtoint ptr %dynamic_smps to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dynamic_smps, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true39

land.lhs.true24:                                  ; preds = %if.then22
  %dynamic_smps_entry = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 3
  %17 = ptrtoint ptr %dynamic_smps_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dynamic_smps_entry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %18)
  %cmp25.not = icmp ult i32 %1, %18
  br i1 %cmp25.not, label %land.lhs.true24.if.end54_crit_edge, label %land.lhs.true24.if.end54.sink.split_crit_edge

land.lhs.true24.if.end54.sink.split_crit_edge:    ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

land.lhs.true24.if.end54_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true39:                                  ; preds = %if.then22
  %dynamic_smps_exit = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 4
  %19 = ptrtoint ptr %dynamic_smps_exit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dynamic_smps_exit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %20)
  %cmp40.not = icmp ugt i32 %1, %20
  br i1 %cmp40.not, label %land.lhs.true39.if.end54_crit_edge, label %land.lhs.true39.if.end54.sink.split_crit_edge

land.lhs.true39.if.end54.sink.split_crit_edge:    ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.sink.split

land.lhs.true39.if.end54_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end54.sink.split:                              ; preds = %land.lhs.true39.if.end54.sink.split_crit_edge, %land.lhs.true24.if.end54.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %land.lhs.true24.if.end54.sink.split_crit_edge ], [ @.str.10, %land.lhs.true39.if.end54.sink.split_crit_edge ]
  %.sink = phi i8 [ 1, %land.lhs.true24.if.end54.sink.split_crit_edge ], [ 0, %land.lhs.true39.if.end54.sink.split_crit_edge ]
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tt_handler, ptr noundef nonnull %.str.9.sink) #9
  %23 = ptrtoint ptr %dynamic_smps to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %dynamic_smps, align 4
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @iwl_mvm_tt_smps_iterator, ptr noundef %mvm) #9
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %land.lhs.true39.if.end54_crit_edge, %land.lhs.true24.if.end54_crit_edge, %if.end18.if.end54_crit_edge
  %throttle_enable.0.off0 = phi i1 [ false, %land.lhs.true39.if.end54_crit_edge ], [ false, %if.end18.if.end54_crit_edge ], [ false, %land.lhs.true24.if.end54_crit_edge ], [ %tobool23.not, %if.end54.sink.split ]
  %26 = ptrtoint ptr %support_ct_kill to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load55 = load i8, ptr %support_ct_kill, align 4
  %27 = and i8 %bf.load55, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool58.not = icmp eq i8 %27, 0
  br i1 %tobool58.not, label %if.end54.if.end69_crit_edge, label %if.then59

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then59:                                        ; preds = %if.end54
  %tx_protection_entry = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 5
  %28 = ptrtoint ptr %tx_protection_entry to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_protection_entry, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %29)
  %cmp60.not = icmp ult i32 %1, %29
  br i1 %cmp60.not, label %if.else63, label %if.then59.if.end69.sink.split_crit_edge

if.then59.if.end69.sink.split_crit_edge:          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split

if.else63:                                        ; preds = %if.then59
  %tx_protection_exit = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 6
  %30 = ptrtoint ptr %tx_protection_exit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_protection_exit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %31)
  %cmp64.not = icmp ugt i32 %1, %31
  br i1 %cmp64.not, label %if.else63.if.end69_crit_edge, label %if.else63.if.end69.sink.split_crit_edge

if.else63.if.end69.sink.split_crit_edge:          ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.sink.split

if.else63.if.end69_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.end69.sink.split:                              ; preds = %if.else63.if.end69.sink.split_crit_edge, %if.then59.if.end69.sink.split_crit_edge
  %throttle_enable.1.off0.ph = phi i1 [ true, %if.then59.if.end69.sink.split_crit_edge ], [ %throttle_enable.0.off0, %if.else63.if.end69.sink.split_crit_edge ]
  %32 = xor i1 %cmp60.not, true
  tail call fastcc void @iwl_mvm_tt_tx_protection(ptr noundef %mvm, i1 noundef zeroext %32)
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else63.if.end69_crit_edge, %if.end54.if.end69_crit_edge
  %throttle_enable.1.off0 = phi i1 [ %throttle_enable.0.off0, %if.else63.if.end69_crit_edge ], [ %throttle_enable.0.off0, %if.end54.if.end69_crit_edge ], [ %throttle_enable.1.off0.ph, %if.end69.sink.split ]
  %33 = ptrtoint ptr %support_ct_kill to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load70 = load i8, ptr %support_ct_kill, align 4
  %34 = and i8 %bf.load70, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool73.not = icmp eq i8 %34, 0
  br i1 %tobool73.not, label %if.end69.if.end98_crit_edge, label %if.then74

if.end69.if.end98_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then74:                                        ; preds = %if.end69
  %min_backoff = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 3
  %35 = ptrtoint ptr %min_backoff to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %min_backoff, align 4
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 0
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %38)
  %cmp79 = icmp slt i32 %1, %38
  br i1 %cmp79, label %if.then74.for.end_crit_edge, label %if.end82

if.then74.for.end_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82:                                         ; preds = %if.then74
  %backoff = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %backoff to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %backoff, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %36, i32 %40)
  %arrayidx.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %43)
  %cmp79.1 = icmp slt i32 %1, %43
  br i1 %cmp79.1, label %if.end82.for.end_crit_edge, label %if.end82.1

if.end82.for.end_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82.1:                                       ; preds = %if.end82
  %backoff.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 1, i32 1
  %44 = ptrtoint ptr %backoff.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %backoff.1, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %36, i32 %45)
  %arrayidx.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 2
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %48)
  %cmp79.2 = icmp slt i32 %1, %48
  br i1 %cmp79.2, label %if.end82.1.for.end_crit_edge, label %if.end82.2

if.end82.1.for.end_crit_edge:                     ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82.2:                                       ; preds = %if.end82.1
  %backoff.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 2, i32 1
  %49 = ptrtoint ptr %backoff.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %backoff.2, align 4
  %51 = tail call i32 @llvm.umax.i32(i32 %36, i32 %50)
  %arrayidx.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 3
  %52 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %53)
  %cmp79.3 = icmp slt i32 %1, %53
  br i1 %cmp79.3, label %if.end82.2.for.end_crit_edge, label %if.end82.3

if.end82.2.for.end_crit_edge:                     ; preds = %if.end82.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82.3:                                       ; preds = %if.end82.2
  %backoff.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 3, i32 1
  %54 = ptrtoint ptr %backoff.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %backoff.3, align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %36, i32 %55)
  %arrayidx.4 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 4
  %57 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %58)
  %cmp79.4 = icmp slt i32 %1, %58
  br i1 %cmp79.4, label %if.end82.3.for.end_crit_edge, label %if.end82.4

if.end82.3.for.end_crit_edge:                     ; preds = %if.end82.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82.4:                                       ; preds = %if.end82.3
  %backoff.4 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 4, i32 1
  %59 = ptrtoint ptr %backoff.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %backoff.4, align 4
  %61 = tail call i32 @llvm.umax.i32(i32 %36, i32 %60)
  %arrayidx.5 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 5
  %62 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %63)
  %cmp79.5 = icmp slt i32 %1, %63
  br i1 %cmp79.5, label %if.end82.4.for.end_crit_edge, label %if.end82.5

if.end82.4.for.end_crit_edge:                     ; preds = %if.end82.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end82.5:                                       ; preds = %if.end82.4
  call void @__sanitizer_cov_trace_pc() #11
  %backoff.5 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 7, i32 5, i32 1
  %64 = ptrtoint ptr %backoff.5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %backoff.5, align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %36, i32 %65)
  br label %for.end

for.end:                                          ; preds = %if.end82.5, %if.end82.4.for.end_crit_edge, %if.end82.3.for.end_crit_edge, %if.end82.2.for.end_crit_edge, %if.end82.1.for.end_crit_edge, %if.end82.for.end_crit_edge, %if.then74.for.end_crit_edge
  %tx_backoff.0.lcssa = phi i32 [ %36, %if.then74.for.end_crit_edge ], [ %41, %if.end82.for.end_crit_edge ], [ %46, %if.end82.1.for.end_crit_edge ], [ %51, %if.end82.2.for.end_crit_edge ], [ %56, %if.end82.3.for.end_crit_edge ], [ %61, %if.end82.4.for.end_crit_edge ], [ %66, %if.end82.5 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_backoff.0.lcssa, i32 %36)
  %cmp89.not = icmp ne i32 %tx_backoff.0.lcssa, %36
  %spec.select = or i1 %throttle_enable.1.off0, %cmp89.not
  %tx_backoff93 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 2
  %67 = ptrtoint ptr %tx_backoff93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_backoff93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %tx_backoff.0.lcssa)
  %cmp94.not = icmp eq i32 %68, %tx_backoff.0.lcssa
  br i1 %cmp94.not, label %for.end.if.end98_crit_edge, label %if.then96

for.end.if.end98_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then96:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %backoff.addr.i)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #9
  %69 = getelementptr inbounds i8, ptr %cmd.i, i32 32
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 65535, ptr %69, align 4, !annotation !124
  %71 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %backoff.addr.i, ptr %cmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %cmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 5
  %72 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %73 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 126, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 4, ptr %len.i, align 4
  %arrayinit.start3.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %arrayinit.start3.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %arrayinit.start3.i, align 2
  %76 = ptrtoint ptr %backoff.addr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %tx_backoff.0.lcssa, ptr %backoff.addr.i, align 4
  %call.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %cmd.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp eq i32 %call.i, 0
  %77 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mvm, align 8
  br i1 %cmp10.i, label %do.end.i210, label %do.end18.i

do.end.i210:                                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %backoff.addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %backoff.addr.i, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %78, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tt_tx_backoff, ptr noundef nonnull @.str.6, i32 noundef %80) #9
  %81 = ptrtoint ptr %backoff.addr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %backoff.addr.i, align 4
  %83 = ptrtoint ptr %tx_backoff93 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tx_backoff93, align 8
  br label %iwl_mvm_tt_tx_backoff.exit

do.end18.i:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %78, i32 noundef 0, ptr noundef nonnull @.str.7) #9
  br label %iwl_mvm_tt_tx_backoff.exit

iwl_mvm_tt_tx_backoff.exit:                       ; preds = %do.end18.i, %do.end.i210
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %backoff.addr.i)
  br label %if.end98

if.end98:                                         ; preds = %iwl_mvm_tt_tx_backoff.exit, %for.end.if.end98_crit_edge, %if.end69.if.end98_crit_edge
  %throttle_enable.3.off0 = phi i1 [ %spec.select, %iwl_mvm_tt_tx_backoff.exit ], [ %spec.select, %for.end.if.end98_crit_edge ], [ %throttle_enable.1.off0, %if.end69.if.end98_crit_edge ]
  %throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 5
  %84 = ptrtoint ptr %throttle to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %throttle, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool99.not = icmp eq i8 %85, 0
  %86 = select i1 %tobool99.not, i1 %throttle_enable.3.off0, i1 false
  br i1 %86, label %do.end107, label %if.else112

do.end107:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %88, ptr noundef nonnull @.str.11) #9
  %89 = ptrtoint ptr %throttle to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %throttle, align 4
  br label %cleanup

if.else112:                                       ; preds = %if.end98
  br i1 %tobool99.not, label %if.else112.cleanup_crit_edge, label %land.lhs.true116

if.else112.cleanup_crit_edge:                     ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true116:                                 ; preds = %if.else112
  %dynamic_smps117 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 1
  %90 = ptrtoint ptr %dynamic_smps117 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dynamic_smps117, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool118.not = icmp eq i8 %91, 0
  br i1 %tobool118.not, label %land.lhs.true119, label %land.lhs.true116.cleanup_crit_edge

land.lhs.true116.cleanup_crit_edge:               ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true119:                                 ; preds = %land.lhs.true116
  %tx_backoff120 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 2
  %92 = ptrtoint ptr %tx_backoff120 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_backoff120, align 4
  %min_backoff121 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 3
  %94 = ptrtoint ptr %min_backoff121 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %min_backoff121, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp122 = icmp eq i32 %93, %95
  br i1 %cmp122, label %land.lhs.true124, label %land.lhs.true119.cleanup_crit_edge

land.lhs.true119.cleanup_crit_edge:               ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %tx_protection_exit125 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4, i32 6
  %96 = ptrtoint ptr %tx_protection_exit125 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_protection_exit125, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %97)
  %cmp126.not = icmp ugt i32 %1, %97
  br i1 %cmp126.not, label %land.lhs.true124.cleanup_crit_edge, label %do.end132

land.lhs.true124.cleanup_crit_edge:               ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end132:                                        ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mvm, align 8
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %99, ptr noundef nonnull @.str.12) #9
  %100 = ptrtoint ptr %throttle to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %throttle, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end132, %land.lhs.true124.cleanup_crit_edge, %land.lhs.true119.cleanup_crit_edge, %land.lhs.true116.cleanup_crit_edge, %if.else112.cleanup_crit_edge, %do.end107, %do.end.i, %if.then17.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_tt_smps_iterator(ptr noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %_data, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp27.not = icmp eq i32 %2, 2
  br i1 %cmp27.not, label %if.end29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dynamic_smps = getelementptr inbounds %struct.iwl_mvm, ptr %_data, i32 0, i32 124, i32 1
  %3 = ptrtoint ptr %dynamic_smps to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dynamic_smps, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool24.not = icmp eq i8 %4, 0
  %. = select i1 %tobool24.not, i32 0, i32 3
  tail call void @iwl_mvm_update_smps(ptr noundef %_data, ptr noundef %vif, i32 noundef 1, i32 noundef %.) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_mvm_tt_tx_protection(ptr noundef %mvm, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %num_stations47 = getelementptr inbounds %struct.iwl_fw, ptr %1, i32 0, i32 5, i32 6
  %2 = ptrtoint ptr %num_stations47 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_stations47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48.not = icmp eq i32 %3, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %cond = select i1 %enable, ptr @.str.31, ptr @.str.32
  %cond25 = select i1 %enable, ptr @.str.34, ptr @.str.35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %15, %for.inc.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv.i = and i32 %i.049, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %4, %conv.i
  br i1 %cmp.not.i, label %do.body.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body.i:                                        ; preds = %for.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @iwl_mvm_sta_from_staid_protected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 1204, ptr noundef nonnull @.str.37) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  %cmp.i.i = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %6, i32 0, i32 29
  %tobool.not = icmp eq ptr %drv_priv.i.i, null
  %or.cond = select i1 %spec.select.i.i, i1 true, i1 %tobool.not
  br i1 %or.cond, label %do.end.i.for.inc_crit_edge, label %if.end

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %do.end.i
  %tt_tx_protection = getelementptr inbounds %struct.iwl_mvm_sta, ptr %drv_priv.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %tt_tx_protection to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tt_tx_protection, align 2, !range !121
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %frombool)
  %cmp5 = icmp eq i8 %8, %frombool
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %if.end8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @iwl_mvm_tx_protection(ptr noundef %mvm, ptr noundef nonnull %drv_priv.i.i, i1 noundef zeroext %enable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %9 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mvm, align 8
  br i1 %tobool11.not, label %do.end21, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #9
  br label %for.inc

do.end21:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %10, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_tt_tx_protection, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond25) #9
  %11 = ptrtoint ptr %tt_tx_protection to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %tt_tx_protection, align 2
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %do.end, %if.end.for.inc_crit_edge, %do.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 8
  %num_stations = getelementptr inbounds %struct.iwl_fw, ptr %13, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %num_stations to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_stations, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ctdp_command(ptr noundef %mvm, i32 noundef %op, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_mvm_ctdp_cmd, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #9
  %0 = getelementptr inbounds %struct.iwl_mvm_ctdp_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iwl_mvm_ctdp_cmd, ptr %cmd, i32 0, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %op)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cmd, align 4
  %arrayidx = getelementptr [21 x i32], ptr @iwl_mvm_cdev_budgets, i32 0, i32 %state
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 512, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  %call24 = call i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef %mvm, i32 noundef 1027, i16 noundef zeroext 12, ptr noundef nonnull %cmd, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef %call24) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %13 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %if.end33.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %do.end38
    i32 2, label %do.end46
  ]

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %cooling_dev = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 126
  %14 = ptrtoint ptr %cooling_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %state, ptr %cooling_dev, align 8
  br label %cleanup

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mvm, align 8
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ctdp_command, ptr noundef nonnull @.str.14, i32 noundef %18) #9
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  br label %cleanup

do.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %22, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_ctdp_command, ptr noundef nonnull @.str.15) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end38, %sw.bb, %if.end33.cleanup_crit_edge, %do.end30
  %retval.0 = phi i32 [ %call24, %do.end30 ], [ %20, %do.end38 ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %do.end46 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_temp_report_ths_cmd(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.temp_report_ths_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cmd) #9
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !123

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 562, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tz_device = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125
  %tzone = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 2
  %2 = ptrtoint ptr %tzone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tzone, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.end.send_crit_edge, label %for.body.preheader

if.end.send_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %send

for.body.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %tz_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tz_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp29.not = icmp eq i16 %5, -32768
  br i1 %cmp29.not, label %for.body.preheader.for.inc_crit_edge, label %if.then31

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then31:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %arrayidx35 = getelementptr inbounds %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx35, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body.preheader.for.inc_crit_edge
  %idx.1 = phi i32 [ 1, %if.then31 ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp29.not.1 = icmp eq i16 %9, -32768
  br i1 %cmp29.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then31.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then31.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %inc.1 = add nuw nsw i32 %idx.1, 1
  %arrayidx35.1 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1
  %11 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx35.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then31.1, %for.inc.for.inc.1_crit_edge
  %idx.1.1 = phi i32 [ %inc.1, %if.then31.1 ], [ %idx.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp29.not.2 = icmp eq i16 %13, -32768
  br i1 %cmp29.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then31.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then31.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %inc.2 = add nuw nsw i32 %idx.1.1, 1
  %arrayidx35.2 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.1
  %15 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx35.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then31.2, %for.inc.1.for.inc.2_crit_edge
  %idx.1.2 = phi i32 [ %inc.2, %if.then31.2 ], [ %idx.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp29.not.3 = icmp eq i16 %17, -32768
  br i1 %cmp29.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then31.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then31.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %inc.3 = add nuw nsw i32 %idx.1.2, 1
  %arrayidx35.3 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.2
  %19 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx35.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then31.3, %for.inc.2.for.inc.3_crit_edge
  %idx.1.3 = phi i32 [ %inc.3, %if.then31.3 ], [ %idx.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %21)
  %cmp29.not.4 = icmp eq i16 %21, -32768
  br i1 %cmp29.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then31.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.then31.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %inc.4 = add nuw nsw i32 %idx.1.3, 1
  %arrayidx35.4 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.3
  %23 = ptrtoint ptr %arrayidx35.4 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx35.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then31.4, %for.inc.3.for.inc.4_crit_edge
  %idx.1.4 = phi i32 [ %inc.4, %if.then31.4 ], [ %idx.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp29.not.5 = icmp eq i16 %25, -32768
  br i1 %cmp29.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then31.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.then31.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %inc.5 = add nuw nsw i32 %idx.1.4, 1
  %arrayidx35.5 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.4
  %27 = ptrtoint ptr %arrayidx35.5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx35.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then31.5, %for.inc.4.for.inc.5_crit_edge
  %idx.1.5 = phi i32 [ %inc.5, %if.then31.5 ], [ %idx.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %29)
  %cmp29.not.6 = icmp eq i16 %29, -32768
  br i1 %cmp29.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then31.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.then31.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %inc.6 = add nuw nsw i32 %idx.1.5, 1
  %arrayidx35.6 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.5
  %31 = ptrtoint ptr %arrayidx35.6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx35.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then31.6, %for.inc.5.for.inc.6_crit_edge
  %idx.1.6 = phi i32 [ %inc.6, %if.then31.6 ], [ %idx.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %33)
  %cmp29.not.7 = icmp eq i16 %33, -32768
  br i1 %cmp29.not.7, label %for.inc.7, label %for.inc.7.thread

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %inc.7 = add nuw nsw i32 %idx.1.6, 1
  %arrayidx35.7 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %idx.1.6
  %35 = ptrtoint ptr %arrayidx35.7 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx35.7, align 2
  %36 = tail call i32 @llvm.bswap.i32(i32 %inc.7)
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cmd, align 4
  br label %for.cond46.preheader.preheader

for.inc.7:                                        ; preds = %for.inc.6
  %38 = tail call i32 @llvm.bswap.i32(i32 %idx.1.6)
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.1.6)
  %tobool38.not = icmp eq i32 %idx.1.6, 0
  br i1 %tobool38.not, label %for.inc.7.send_crit_edge, label %for.inc.7.for.cond46.preheader.preheader_crit_edge

for.inc.7.for.cond46.preheader.preheader_crit_edge: ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond46.preheader.preheader

for.inc.7.send_crit_edge:                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %send

for.cond46.preheader.preheader:                   ; preds = %for.inc.7.for.cond46.preheader.preheader_crit_edge, %for.inc.7.thread
  %idx.1.7112 = phi i32 [ %inc.7, %for.inc.7.thread ], [ %idx.1.6, %for.inc.7.for.cond46.preheader.preheader_crit_edge ]
  %thresholds41 = getelementptr inbounds %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1
  call void @sort(ptr noundef %thresholds41, i32 noundef %idx.1.7112, i32 noundef 2, ptr noundef nonnull @compare_temps, ptr noundef null) #9
  %40 = ptrtoint ptr %tz_device to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tz_device, align 2
  %conv56 = sext i16 %41 to i32
  %42 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.1, align 2
  %conv56.1 = sext i16 %43 to i32
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.2, align 2
  %conv56.2 = sext i16 %45 to i32
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.3, align 2
  %conv56.3 = sext i16 %47 to i32
  %48 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.4, align 2
  %conv56.4 = sext i16 %49 to i32
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.5, align 2
  %conv56.5 = sext i16 %51 to i32
  %52 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.6, align 2
  %conv56.6 = sext i16 %53 to i32
  %54 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.7, align 2
  %conv56.7 = sext i16 %55 to i32
  br label %for.cond46.preheader

for.cond46.preheader:                             ; preds = %.for.cond46.preheader_crit_edge, %for.cond46.preheader.preheader
  %i.1109 = phi i32 [ %inc68, %.for.cond46.preheader_crit_edge ], [ 0, %for.cond46.preheader.preheader ]
  %arrayidx51 = getelementptr %struct.temp_report_ths_cmd, ptr %cmd, i32 0, i32 1, i32 %i.1109
  %56 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx51, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57)
  %conv52 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56)
  %cmp57.not = icmp eq i32 %conv52, %conv56
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.1)
  %cmp57.1 = icmp eq i32 %conv52, %conv56.1
  %59 = or i1 %cmp57.not, %cmp57.1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.2)
  %cmp57.2 = icmp eq i32 %conv52, %conv56.2
  %60 = or i1 %59, %cmp57.2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.3)
  %cmp57.3 = icmp eq i32 %conv52, %conv56.3
  %61 = or i1 %60, %cmp57.3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.4)
  %cmp57.4 = icmp eq i32 %conv52, %conv56.4
  %62 = or i1 %61, %cmp57.4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.5)
  %cmp57.5 = icmp eq i32 %conv52, %conv56.5
  %63 = or i1 %62, %cmp57.5
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.6)
  %cmp57.6 = icmp eq i32 %conv52, %conv56.6
  %64 = or i1 %63, %cmp57.6
  call void @__sanitizer_cov_trace_cmp4(i32 %conv52, i32 %conv56.7)
  %cmp57.7 = icmp eq i32 %conv52, %conv56.7
  %65 = or i1 %64, %cmp57.7
  br i1 %65, label %66, label %for.cond46.preheader._crit_edge

for.cond46.preheader._crit_edge:                  ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %68

66:                                               ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = zext i1 %cmp57.1 to i8
  %spec.select113 = select i1 %cmp57.2, i8 2, i8 %spec.select
  %spec.select114 = select i1 %cmp57.3, i8 3, i8 %spec.select113
  %spec.select115 = select i1 %cmp57.4, i8 4, i8 %spec.select114
  %spec.select116 = select i1 %cmp57.5, i8 5, i8 %spec.select115
  %spec.select117 = select i1 %cmp57.6, i8 6, i8 %spec.select116
  %spec.select118 = select i1 %cmp57.7, i8 7, i8 %spec.select117
  %arrayidx62 = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 1, i32 %i.1109
  %67 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %spec.select118, ptr %arrayidx62, align 1
  br label %68

68:                                               ; preds = %66, %for.cond46.preheader._crit_edge
  %inc68 = add nuw nsw i32 %i.1109, 1
  %exitcond.not = icmp eq i32 %inc68, %idx.1.7112
  br i1 %exitcond.not, label %.send_crit_edge, label %.for.cond46.preheader_crit_edge

.for.cond46.preheader_crit_edge:                  ; preds = %68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond46.preheader

.send_crit_edge:                                  ; preds = %68
  call void @__sanitizer_cov_trace_pc() #11
  br label %send

send:                                             ; preds = %.send_crit_edge, %for.inc.7.send_crit_edge, %if.end.send_crit_edge
  %call70 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 1028, i32 noundef 0, i16 noundef zeroext 20, ptr noundef nonnull %cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %send.if.end79_crit_edge, label %do.end76

send.if.end79_crit_edge:                          ; preds = %send
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end76:                                         ; preds = %send
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %70, i32 noundef 0, ptr noundef nonnull @.str.16, i32 noundef %call70) #9
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %send.if.end79_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cmd) #9
  ret i32 %call70
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_temps(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %a, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = sext i16 %2 to i32
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %b, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv1 = sext i16 %5 to i32
  %sub = sub nsw i32 %conv, %conv1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_thermal_initialize(ptr noundef %mvm, i32 noundef %min_backoff) local_unnamed_addr #0 align 64 {
entry:
  %name.i43 = alloca [16 x i8], align 1
  %name.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_thermal_initialize, ptr noundef nonnull @.str.17) #9
  %cfg = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %thermal_params = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %thermal_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thermal_params, align 8
  %tobool.not = icmp eq ptr %5, null
  %params6 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memcpy(ptr %params6, ptr %5, i32 80)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %params6, ptr @iwl_mvm_default_tt_params, i32 80)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %thermal_throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124
  %throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 5
  %8 = ptrtoint ptr %throttle to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %throttle, align 4
  %dynamic_smps = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 1
  %9 = ptrtoint ptr %dynamic_smps to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %dynamic_smps, align 4
  %min_backoff7 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 3
  %10 = ptrtoint ptr %min_backoff7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %min_backoff, ptr %min_backoff7, align 4
  tail call void @__init_work(ptr noundef %thermal_throttle, i32 noundef 0) #9
  %11 = ptrtoint ptr %thermal_throttle to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %thermal_throttle, align 4
  %lockdep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @iwl_mvm_thermal_initialize.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry16 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 0, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @check_exit_ctkill, ptr %func, align 4
  %timer = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @iwl_mvm_thermal_initialize.__key.19) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name.i) #9
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 7599662156336228608, ptr %name.i, align 8
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %16 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %20 = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not.i, label %if.end.iwl_mvm_cooling_device_register.exit_crit_edge, label %do.end.i

if.end.iwl_mvm_cooling_device_register.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cooling_device_register.exit

do.end.i:                                         ; preds = %if.end
  %call1.i = call ptr @thermal_cooling_device_register(ptr noundef nonnull %name.i, ptr noundef %mvm, ptr noundef nonnull @tcooling_ops) #9
  %cdev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 126, i32 1
  %21 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i, ptr %cdev.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end9.i, label %do.end.i.iwl_mvm_cooling_device_register.exit_crit_edge

do.end.i.iwl_mvm_cooling_device_register.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cooling_device_register.exit

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mvm, align 8
  %24 = ptrtoint ptr %call1.i to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %23, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_cooling_device_register, ptr noundef nonnull @.str.38, i32 noundef %24) #9
  %25 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %cdev.i, align 4
  br label %iwl_mvm_cooling_device_register.exit

iwl_mvm_cooling_device_register.exit:             ; preds = %do.end9.i, %do.end.i.iwl_mvm_cooling_device_register.exit_crit_edge, %if.end.iwl_mvm_cooling_device_register.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name.i) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i43) #9
  %26 = call ptr @memset(ptr %name.i43, i32 255, i32 16)
  %27 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i45 = getelementptr %struct.iwl_fw, ptr %28, i32 0, i32 5, i32 8, i32 2
  %29 = ptrtoint ptr %arrayidx.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i.i45, align 4
  %31 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i.i, label %iwl_mvm_cooling_device_register.exit.if.then.i_crit_edge, label %iwl_mvm_is_tt_in_fw.exit.i

iwl_mvm_cooling_device_register.exit.if.then.i_crit_edge: ; preds = %iwl_mvm_cooling_device_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

iwl_mvm_is_tt_in_fw.exit.i:                       ; preds = %iwl_mvm_cooling_device_register.exit
  %32 = ptrtoint ptr %arrayidx.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i.i.i.i45, align 4
  %34 = and i32 %33, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i7.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i7.i.not.i, label %iwl_mvm_is_tt_in_fw.exit.i.if.then.i_crit_edge, label %do.end.i47

iwl_mvm_is_tt_in_fw.exit.i.if.then.i_crit_edge:   ; preds = %iwl_mvm_is_tt_in_fw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %iwl_mvm_is_tt_in_fw.exit.i.if.then.i_crit_edge, %iwl_mvm_cooling_device_register.exit.if.then.i_crit_edge
  %tzone.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 2
  %35 = ptrtoint ptr %tzone.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %tzone.i, align 4
  br label %iwl_mvm_thermal_zone_register.exit

do.end.i47:                                       ; preds = %iwl_mvm_is_tt_in_fw.exit.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @iwl_mvm_thermal_zone_register.counter, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  call void @llvm.prefetch.p0(ptr nonnull @iwl_mvm_thermal_zone_register.counter, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @iwl_mvm_thermal_zone_register.counter, ptr nonnull @iwl_mvm_thermal_zone_register.counter, i32 1, ptr nonnull elementtype(i32) @iwl_mvm_thermal_zone_register.counter) #9, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  %and.i = and i32 %asmresult.i.i.i.i.i, 255
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i43, ptr noundef nonnull @.str.39, i32 noundef %and.i) #9
  %call4.i = call ptr @thermal_zone_device_register(ptr noundef nonnull %name.i43, i32 noundef 8, i32 noundef 255, ptr noundef %mvm, ptr noundef nonnull @tzone_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %tz_device5.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125
  %tzone6.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 2
  %37 = ptrtoint ptr %tzone6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call4.i, ptr %tzone6.i, align 4
  %cmp.i.i46 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i46, label %do.end14.i, label %if.end22.i

do.end14.i:                                       ; preds = %do.end.i47
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mvm, align 8
  %40 = ptrtoint ptr %call4.i to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %39, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_thermal_zone_register, ptr noundef nonnull @.str.40, i32 noundef %40) #9
  %41 = ptrtoint ptr %tzone6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tzone6.i, align 4
  br label %iwl_mvm_thermal_zone_register.exit

if.end22.i:                                       ; preds = %do.end.i47
  %call25.i = call i32 @thermal_zone_device_enable(ptr noundef %call4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %do.end30.i

for.body.preheader.i:                             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %tz_device5.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -32768, ptr %tz_device5.i, align 2
  %arrayidx.1.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -32768, ptr %arrayidx.1.i, align 2
  %arrayidx.2.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -32768, ptr %arrayidx.2.i, align 2
  %arrayidx.3.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -32768, ptr %arrayidx.3.i, align 2
  %arrayidx.4.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -32768, ptr %arrayidx.4.i, align 2
  %arrayidx.5.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -32768, ptr %arrayidx.5.i, align 2
  %arrayidx.6.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -32768, ptr %arrayidx.6.i, align 2
  %arrayidx.7.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -32768, ptr %arrayidx.7.i, align 2
  br label %iwl_mvm_thermal_zone_register.exit

do.end30.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %51, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_thermal_zone_register, ptr noundef nonnull @.str.41) #9
  %52 = ptrtoint ptr %tzone6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tzone6.i, align 4
  call void @thermal_zone_device_unregister(ptr noundef %53) #9
  br label %iwl_mvm_thermal_zone_register.exit

iwl_mvm_thermal_zone_register.exit:               ; preds = %do.end30.i, %for.body.preheader.i, %do.end14.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i43) #9
  %init_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 11
  %54 = ptrtoint ptr %init_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %init_status, align 8
  %or = or i32 %55, 1
  store i32 %or, ptr %init_status, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_exit_ctkill(ptr noundef %work) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !124
  %add.ptr3 = getelementptr i8, ptr %work, i32 -5504
  %fw.i = getelementptr i8, ptr %work, i32 -5496
  %1 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.iwl_fw, ptr %2, i32 0, i32 5, i32 8, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %iwl_mvm_is_tt_in_fw.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

iwl_mvm_is_tt_in_fw.exit:                         ; preds = %entry
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i7.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i7.i.not, label %iwl_mvm_is_tt_in_fw.exit.if.end_crit_edge, label %if.then

iwl_mvm_is_tt_in_fw.exit.if.end_crit_edge:        ; preds = %iwl_mvm_is_tt_in_fw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %iwl_mvm_is_tt_in_fw.exit
  %status.i = getelementptr i8, ptr %work, i32 -5244
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %do.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr3, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.29) #9
  tail call void @iwl_mvm_set_hw_ctkill_state(ptr noundef %add.ptr3, i1 noundef zeroext false) #9
  br label %cleanup

if.end:                                           ; preds = %iwl_mvm_is_tt_in_fw.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ct_kill_duration = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, ptr %work, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %ct_kill_duration to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ct_kill_duration, align 4
  %roc_done_wk = getelementptr i8, ptr %work, i32 -5292
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %roc_done_wk) #9
  %mutex = getelementptr i8, ptr %work, i32 -5480
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %call5 = tail call i32 @__iwl_mvm_mac_start(ptr noundef %add.ptr3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.reschedule_crit_edge

if.end.reschedule_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %reschedule

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @iwl_mvm_get_temp(ptr noundef %add.ptr3, ptr noundef nonnull %temp)
  call void @__iwl_mvm_mac_stop(ptr noundef %add.ptr3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end, label %if.end7.reschedule_crit_edge

if.end7.reschedule_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %reschedule

do.end:                                           ; preds = %if.end7
  %16 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr3, align 8
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.check_exit_ctkill, ptr noundef nonnull @.str.8, i32 noundef %19) #9
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %ct_kill_exit = getelementptr inbounds %struct.iwl_mvm_tt_mgmt, ptr %work, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %ct_kill_exit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ct_kill_exit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.not = icmp ugt i32 %21, %23
  br i1 %cmp.not, label %do.end.reschedule_crit_edge, label %if.then16

do.end.reschedule_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %reschedule

if.then16:                                        ; preds = %do.end
  call void @mutex_unlock(ptr noundef %mutex) #9
  %status.i40 = getelementptr i8, ptr %work, i32 -5244
  %24 = ptrtoint ptr %status.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status.i40, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i41 = icmp eq i32 %26, 0
  br i1 %tobool.not.i41, label %if.then16.cleanup_crit_edge, label %do.end.i42

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i42:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr3, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %28, i32 noundef 0, ptr noundef nonnull @.str.29) #9
  call void @iwl_mvm_set_hw_ctkill_state(ptr noundef %add.ptr3, i1 noundef zeroext false) #9
  br label %cleanup

reschedule:                                       ; preds = %do.end.reschedule_crit_edge, %if.end7.reschedule_crit_edge, %if.end.reschedule_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  %mul = mul i32 %15, 100
  %call21 = call i32 @round_jiffies(i32 noundef %mul) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef %call21) #9
  br label %cleanup

cleanup:                                          ; preds = %reschedule, %do.end.i42, %if.then16.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_thermal_exit(ptr noundef %mvm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init_status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 11
  %0 = ptrtoint ptr %init_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_status, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %thermal_throttle = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 124
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %thermal_throttle) #9
  %2 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_thermal_exit, ptr noundef nonnull @.str.21) #9
  %fw.i.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %5, i32 0, i32 5, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %8 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.i.not.i, label %if.end.iwl_mvm_cooling_device_unregister.exit_crit_edge, label %lor.lhs.false.i

if.end.iwl_mvm_cooling_device_unregister.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cooling_device_unregister.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %cdev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 126, i32 1
  %9 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdev.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.iwl_mvm_cooling_device_unregister.exit_crit_edge, label %do.end.i

lor.lhs.false.i.iwl_mvm_cooling_device_unregister.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cooling_device_unregister.exit

do.end.i:                                         ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %12, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_cooling_device_unregister, ptr noundef nonnull @.str.42) #9
  %13 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %do.end.i.iwl_mvm_cooling_device_unregister.exit_crit_edge, label %if.then6.i

do.end.i.iwl_mvm_cooling_device_unregister.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_cooling_device_unregister.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %14) #9
  %15 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cdev.i, align 4
  br label %iwl_mvm_cooling_device_unregister.exit

iwl_mvm_cooling_device_unregister.exit:           ; preds = %if.then6.i, %do.end.i.iwl_mvm_cooling_device_unregister.exit_crit_edge, %lor.lhs.false.i.iwl_mvm_cooling_device_unregister.exit_crit_edge, %if.end.iwl_mvm_cooling_device_unregister.exit_crit_edge
  %16 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i.i, align 8
  %arrayidx.i.i.i.i11 = getelementptr %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i.i11, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i.i, label %iwl_mvm_cooling_device_unregister.exit.iwl_mvm_thermal_zone_unregister.exit_crit_edge, label %iwl_mvm_is_tt_in_fw.exit.i

iwl_mvm_cooling_device_unregister.exit.iwl_mvm_thermal_zone_unregister.exit_crit_edge: ; preds = %iwl_mvm_cooling_device_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_thermal_zone_unregister.exit

iwl_mvm_is_tt_in_fw.exit.i:                       ; preds = %iwl_mvm_cooling_device_unregister.exit
  %21 = ptrtoint ptr %arrayidx.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i.i.i.i11, align 4
  %23 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i7.i.not.i = icmp eq i32 %23, 0
  br i1 %tobool.i7.i.not.i, label %iwl_mvm_is_tt_in_fw.exit.i.iwl_mvm_thermal_zone_unregister.exit_crit_edge, label %lor.lhs.false.i13

iwl_mvm_is_tt_in_fw.exit.i.iwl_mvm_thermal_zone_unregister.exit_crit_edge: ; preds = %iwl_mvm_is_tt_in_fw.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_thermal_zone_unregister.exit

lor.lhs.false.i13:                                ; preds = %iwl_mvm_is_tt_in_fw.exit.i
  %tzone.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 125, i32 2
  %24 = ptrtoint ptr %tzone.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tzone.i, align 4
  %tobool.not.i12 = icmp eq ptr %25, null
  br i1 %tobool.not.i12, label %lor.lhs.false.i13.iwl_mvm_thermal_zone_unregister.exit_crit_edge, label %do.end.i15

lor.lhs.false.i13.iwl_mvm_thermal_zone_unregister.exit_crit_edge: ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_thermal_zone_unregister.exit

do.end.i15:                                       ; preds = %lor.lhs.false.i13
  %26 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %27, i32 noundef 512, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_thermal_zone_unregister, ptr noundef nonnull @.str.43) #9
  %28 = ptrtoint ptr %tzone.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tzone.i, align 4
  %tobool5.not.i14 = icmp eq ptr %29, null
  br i1 %tobool5.not.i14, label %do.end.i15.iwl_mvm_thermal_zone_unregister.exit_crit_edge, label %if.then6.i16

do.end.i15.iwl_mvm_thermal_zone_unregister.exit_crit_edge: ; preds = %do.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %iwl_mvm_thermal_zone_unregister.exit

if.then6.i16:                                     ; preds = %do.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @thermal_zone_device_unregister(ptr noundef nonnull %29) #9
  %30 = ptrtoint ptr %tzone.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %tzone.i, align 4
  br label %iwl_mvm_thermal_zone_unregister.exit

iwl_mvm_thermal_zone_unregister.exit:             ; preds = %if.then6.i16, %do.end.i15.iwl_mvm_thermal_zone_unregister.exit_crit_edge, %lor.lhs.false.i13.iwl_mvm_thermal_zone_unregister.exit_crit_edge, %iwl_mvm_is_tt_in_fw.exit.i.iwl_mvm_thermal_zone_unregister.exit_crit_edge, %iwl_mvm_cooling_device_unregister.exit.iwl_mvm_thermal_zone_unregister.exit_crit_edge
  %31 = ptrtoint ptr %init_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %init_status, align 8
  %and4 = and i32 %32, -2
  store i32 %and4, ptr %init_status, align 8
  br label %return

return:                                           ; preds = %iwl_mvm_thermal_zone_unregister.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_update_smps(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_tx_protection(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iwl_mvm_mac_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_mvm_mac_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @iwl_mvm_tcool_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_mvm_tcool_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %cooling_dev = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 126
  %2 = ptrtoint ptr %cooling_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cooling_dev, align 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_tcool_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %new_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.unlock_crit_edge, label %lor.lhs.false

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false:                                    ; preds = %entry
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %5 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.unlock_crit_edge

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %new_state)
  %cmp1 = icmp ugt i32 %new_state, 20
  br i1 %cmp1, label %if.end.unlock_crit_edge, label %if.end3

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @iwl_mvm_ctdp_command(ptr noundef %1, i32 noundef 1, i32 noundef %new_state)
  br label %unlock

unlock:                                           ; preds = %if.end3, %if.end.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end3 ], [ -5, %lor.lhs.false.unlock_crit_edge ], [ -5, %entry.unlock_crit_edge ], [ -22, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_tzone_get_temp(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %temperature) #0 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !124
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %6 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @iwl_mvm_get_temp(ptr noundef %1, ptr noundef nonnull %temp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %mul = mul i32 %9, 1000
  %10 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %temperature, align 4
  br label %out

out:                                              ; preds = %if.end3, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ 0, %if.end3 ], [ -61, %lor.lhs.false.out_crit_edge ], [ -61, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @iwl_mvm_tzone_get_trip_type(ptr nocapture noundef readnone %device, i32 noundef %trip, ptr nocapture noundef writeonly %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %trip)
  %0 = icmp ugt i32 %trip, 7
  br i1 %0, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iwl_mvm_tzone_get_trip_temp(ptr nocapture noundef readonly %device, i32 noundef %trip, ptr nocapture noundef writeonly %temp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %trip)
  %0 = icmp ugt i32 %trip, 7
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %device, i32 0, i32 8
  %1 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devdata, align 4
  %tz_device = getelementptr inbounds %struct.iwl_mvm, ptr %2, i32 0, i32 125
  %arrayidx = getelementptr [8 x i16], ptr %tz_device, i32 0, i32 %trip
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %mul = mul nsw i32 %conv, 1000
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_mvm_tzone_set_trip_temp(ptr nocapture noundef readonly %device, i32 noundef %trip, i32 noundef %temp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_zone_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %mutex = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %status.i = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %cur_fw_img = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 40, i32 10
  %5 = ptrtoint ptr %cur_fw_img to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_fw_img, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %trip)
  %7 = icmp ugt i32 %trip, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767999, i32 %temp)
  %cmp6 = icmp sgt i32 %temp, 32767999
  %or.cond48 = or i1 %7, %cmp6
  br i1 %or.cond48, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  %div = sdiv i32 %temp, 1000
  %conv = trunc i32 %div to i16
  %tz_device = getelementptr inbounds %struct.iwl_mvm, ptr %1, i32 0, i32 125
  %tobool.not = icmp eq ptr %tz_device, null
  br i1 %tobool.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.end8
  %arrayidx = getelementptr [8 x i16], ptr %tz_device, i32 0, i32 %trip
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv12 = sext i16 %9 to i32
  %sext = shl i32 %div, 16
  %conv13 = ashr exact i32 %sext, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv12)
  %cmp14 = icmp eq i32 %conv13, %conv12
  br i1 %cmp14, label %if.end11.out_crit_edge, label %for.body.preheader

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.preheader:                               ; preds = %if.end11
  %10 = ptrtoint ptr %tz_device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tz_device, align 2
  %conv22 = sext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22)
  %cmp24 = icmp eq i32 %conv13, %conv22
  br i1 %cmp24, label %for.body.preheader.out_crit_edge, label %for.cond

for.body.preheader.out_crit_edge:                 ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx21.1 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx21.1, align 2
  %conv22.1 = sext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.1)
  %cmp24.1 = icmp eq i32 %conv13, %conv22.1
  br i1 %cmp24.1, label %for.cond.out_crit_edge, label %for.cond.1

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %arrayidx21.2 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx21.2, align 2
  %conv22.2 = sext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.2)
  %cmp24.2 = icmp eq i32 %conv13, %conv22.2
  br i1 %cmp24.2, label %for.cond.1.out_crit_edge, label %for.cond.2

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx21.3 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx21.3, align 2
  %conv22.3 = sext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.3)
  %cmp24.3 = icmp eq i32 %conv13, %conv22.3
  br i1 %cmp24.3, label %for.cond.2.out_crit_edge, label %for.cond.3

for.cond.2.out_crit_edge:                         ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx21.4 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx21.4, align 2
  %conv22.4 = sext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.4)
  %cmp24.4 = icmp eq i32 %conv13, %conv22.4
  br i1 %cmp24.4, label %for.cond.3.out_crit_edge, label %for.cond.4

for.cond.3.out_crit_edge:                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx21.5 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx21.5, align 2
  %conv22.5 = sext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.5)
  %cmp24.5 = icmp eq i32 %conv13, %conv22.5
  br i1 %cmp24.5, label %for.cond.4.out_crit_edge, label %for.cond.5

for.cond.4.out_crit_edge:                         ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx21.6 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx21.6, align 2
  %conv22.6 = sext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.6)
  %cmp24.6 = icmp eq i32 %conv13, %conv22.6
  br i1 %cmp24.6, label %for.cond.5.out_crit_edge, label %for.cond.6

for.cond.5.out_crit_edge:                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx21.7 = getelementptr %struct.iwl_mvm, ptr %1, i32 0, i32 125, i32 0, i32 7
  %24 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx21.7, align 2
  %conv22.7 = sext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv22.7)
  %cmp24.7 = icmp eq i32 %conv13, %conv22.7
  br i1 %cmp24.7, label %for.cond.6.out_crit_edge, label %for.cond.7

for.cond.6.out_crit_edge:                         ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %arrayidx, align 2
  %call30 = tail call i32 @iwl_mvm_send_temp_report_ths_cmd(ptr noundef %1)
  br label %out

out:                                              ; preds = %for.cond.7, %for.cond.6.out_crit_edge, %for.cond.5.out_crit_edge, %for.cond.4.out_crit_edge, %for.cond.3.out_crit_edge, %for.cond.2.out_crit_edge, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %for.body.preheader.out_crit_edge, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call30, %for.cond.7 ], [ -5, %lor.lhs.false.out_crit_edge ], [ -5, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -5, %if.end8.out_crit_edge ], [ 0, %if.end11.out_crit_edge ], [ -22, %for.cond.6.out_crit_edge ], [ -22, %for.cond.5.out_crit_edge ], [ -22, %for.cond.4.out_crit_edge ], [ -22, %for.cond.3.out_crit_edge ], [ -22, %for.cond.2.out_crit_edge ], [ -22, %for.cond.1.out_crit_edge ], [ -22, %for.cond.out_crit_edge ], [ -22, %for.body.preheader.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !55, !57, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !95, !97, !99, !101, !102, !104, !106, !108, !109, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 21, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 125, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 126, i32 3}
!7 = !{ptr @__func__.iwl_mvm_temp_notif, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 139, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.iwl_mvm_ct_kill_notif, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 161, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iwl_mvm_get_temp.temp_notif, !14, !"temp_notif", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 233, i32 13}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 264, i32 3}
!17 = !{ptr @__func__.iwl_mvm_tt_tx_backoff, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 370, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 374, i32 3}
!22 = !{ptr @__func__.iwl_mvm_tt_handler, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 387, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 403, i32 4}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 411, i32 4}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 443, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 449, i32 3}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 520, i32 3}
!35 = !{ptr @__func__.iwl_mvm_ctdp_command, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 531, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 540, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 603, i32 3}
!42 = !{ptr @__func__.iwl_mvm_thermal_initialize, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 871, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iwl_mvm_thermal_initialize.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 881, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @iwl_mvm_thermal_initialize.__key.19, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__func__.iwl_mvm_thermal_exit, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 896, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 70, i32 6}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 80, i32 6}
!57 = !{ptr @__func__.iwl_mvm_temp_notif_parse, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 83, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.iwl_mvm_send_temp_cmd, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 206, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 212, i32 3}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 221, i32 3}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 43, i32 2}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 349, i32 4}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__func__.iwl_mvm_tt_tx_protection, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 352, i32 4}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/mvm.h", i32 1203, i32 8}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @iwl_mvm_cdev_budgets, !85, !"iwl_mvm_cdev_budgets", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 478, i32 18}
!86 = !{ptr @iwl_mvm_default_tt_params, !87, !"iwl_mvm_default_tt_params", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 455, i32 35}
!88 = !{ptr @__func__.check_exit_ctkill, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 302, i32 2}
!90 = !{ptr @__func__.iwl_mvm_cooling_device_register, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 834, i32 3}
!92 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tcooling_ops, !94, !"tcooling_ops", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 813, i32 48}
!95 = !{ptr @iwl_mvm_thermal_zone_register.counter, !96, !"counter", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 730, i32 18}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 740, i32 16}
!99 = !{ptr @__func__.iwl_mvm_thermal_zone_register, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 747, i32 3}
!101 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 756, i32 3}
!104 = !{ptr @tzone_ops, !105, !"tzone_ops", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 716, i32 40}
!106 = !{ptr @__func__.iwl_mvm_cooling_device_unregister, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 859, i32 2}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__func__.iwl_mvm_thermal_zone_unregister, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/tt.c", i32 847, i32 2}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i8 0, i8 2}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{!"auto-init"}
!125 = !{i64 2148651984}
!126 = !{i64 2148567269, i64 2148567301, i64 2148567330, i64 2148567364, i64 2148567395, i64 2148567418}
!127 = !{i64 2148652213}
