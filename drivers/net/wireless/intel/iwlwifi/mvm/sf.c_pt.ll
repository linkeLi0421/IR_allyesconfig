; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/sf.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/sf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_sf_cfg_cmd = type { i32, [2 x i32], [5 x [2 x i32]], [5 x [2 x i32]] }
%struct.iwl_mvm_active_iface_iterator_data = type { ptr, i8, i32, i32 }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_bt_coex_profile_notif = type { [4 x i32], i32, i32, i32, i32, i32, i8, i8, i16 }
%struct.iwl_bt_coex_ci_cmd = type <{ i64, i32, i64, i32 }>
%struct.iwl_mvm_tt_mgmt = type { %struct.delayed_work, i8, i32, i32, %struct.iwl_tt_params, i8 }
%struct.iwl_tt_params = type { i32, i32, i32, i32, i32, i32, i32, [6 x %struct.iwl_tt_tx_backoff], i8 }
%struct.iwl_tt_tx_backoff = type { i32, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/sf.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No station: Cannot switch SF to FULL_ON\0A\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_sf_config.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid station id\0A\00", [44 x i8] zeroinitializer }, align 32
@iwl_mvm_sf_config.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid state: %d. not sending Smart Fifo cmd\0A\00", [49 x i8] zeroinitializer }, align 32
@sf_full_timeout = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 -536412160, i32 1073807360], [2 x i32] [i32 -536412160, i32 1073807360], [2 x i32] [i32 539426816, i32 -536412160], [2 x i32] [i32 -536412160, i32 1073807360], [2 x i32] [i32 -536412160, i32 1073807360]], [56 x i8] zeroinitializer }, align 32
@sf_full_timeout_def = internal constant { [5 x [2 x i32]], [56 x i8] } { [5 x [2 x i32]] [[2 x i32] [i32 -1878982656, i32 -1610612736], [2 x i32] [i32 -1878982656, i32 -1610612736], [2 x i32] [i32 -1878982656, i32 -1610612736], [2 x i32] [i32 -1878982656, i32 -1610612736], [2 x i32] [i32 -1878982656, i32 -1610612736]], [56 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 260, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 182, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 187, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 189, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 200, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"sf_full_timeout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 73, i32 21 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"sf_full_timeout_def\00", align 1
@___asan_gen_.28 = private constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 46, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 723, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sf_full_timeout, ptr @sf_full_timeout_def, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_full_timeout to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sf_full_timeout_def to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_sf_update(ptr noundef %mvm, ptr noundef %changed_vif, i1 noundef zeroext %remove_vif) local_unnamed_addr #0 align 64 {
entry:
  %sf_cmd.i = alloca %struct.iwl_sf_cfg_cmd, align 4
  %data = alloca %struct.iwl_mvm_active_iface_iterator_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #7
  %0 = getelementptr inbounds i8, ptr %data, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %changed_vif, ptr %data, align 4
  %sta_vif_ap_sta_id = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %data, i32 0, i32 1
  %sta_vif_state = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %sta_vif_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %sta_vif_state, align 4
  %num_active_macs = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %num_active_macs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_active_macs, align 4
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %changed_vif, null
  br i1 %tobool1.not, label %if.end7.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %changed_vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %changed_vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp = icmp eq i32 %9, 10
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true3.critedge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3.critedge:                          ; preds = %land.lhs.true
  %hw.c = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %10 = ptrtoint ptr %hw.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.c, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @iwl_mvm_bound_iface_iterator, ptr noundef nonnull %data) #7
  br i1 %remove_vif, label %land.lhs.true3.critedge.if.end7thread-pre-split_crit_edge, label %if.then5

land.lhs.true3.critedge.if.end7thread-pre-split_crit_edge: ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7thread-pre-split

if.then5:                                         ; preds = %land.lhs.true3.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %num_active_macs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_active_macs, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %num_active_macs, align 4
  br label %if.end7

if.end7.critedge:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %hw.c70 = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %14 = ptrtoint ptr %hw.c70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.c70, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @iwl_mvm_bound_iface_iterator, ptr noundef nonnull %data) #7
  br label %if.end7thread-pre-split

if.end7thread-pre-split:                          ; preds = %if.end7.critedge, %land.lhs.true3.critedge.if.end7thread-pre-split_crit_edge
  %16 = ptrtoint ptr %num_active_macs to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %num_active_macs, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.then5
  %17 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %inc, %if.then5 ]
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %sw.default [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb9
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  br i1 %remove_vif, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %sta_vif_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sta_vif_state, align 4
  %21 = ptrtoint ptr %sta_vif_ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %sta_vif_ap_sta_id, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb9
  br i1 %tobool1.not, label %do.end, label %if.end39, !prof !33

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end39:                                         ; preds = %if.else
  %23 = ptrtoint ptr %changed_vif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %changed_vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp41.not = icmp eq i32 %24, 2
  br i1 %cmp41.not, label %if.else43, label %if.end39.sw.epilog_crit_edge

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else43:                                        ; preds = %if.end39
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %changed_vif, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %assoc, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool44.not = icmp eq i8 %26, 0
  br i1 %tobool44.not, label %if.else43.sw.epilog_crit_edge, label %land.lhs.true45

if.else43.sw.epilog_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true45:                                  ; preds = %if.else43
  %dtim_period = getelementptr inbounds %struct.ieee80211_vif, ptr %changed_vif, i32 0, i32 1, i32 18
  %27 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dtim_period, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool47.not = icmp eq i8 %28, 0
  br i1 %tobool47.not, label %land.lhs.true45.sw.epilog_crit_edge, label %if.then48

land.lhs.true45.sw.epilog_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then48:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %changed_vif, i32 1, i32 1
  %29 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ap_sta_id, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then48, %land.lhs.true45.sw.epilog_crit_edge, %if.else43.sw.epilog_crit_edge, %if.end39.sw.epilog_crit_edge, %if.then11, %if.end7.sw.epilog_crit_edge
  %new_state.0 = phi i32 [ 2, %sw.default ], [ %20, %if.then11 ], [ 1, %if.then48 ], [ 3, %if.end7.sw.epilog_crit_edge ], [ 2, %if.end39.sw.epilog_crit_edge ], [ 3, %land.lhs.true45.sw.epilog_crit_edge ], [ 3, %if.else43.sw.epilog_crit_edge ]
  %sta_id.0 = phi i8 [ -1, %sw.default ], [ %22, %if.then11 ], [ %30, %if.then48 ], [ -1, %if.end7.sw.epilog_crit_edge ], [ -1, %if.end39.sw.epilog_crit_edge ], [ -1, %land.lhs.true45.sw.epilog_crit_edge ], [ -1, %if.else43.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %sf_cmd.i) #7
  %31 = getelementptr inbounds i8, ptr %sf_cmd.i, i32 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 88)
  %33 = call i32 @llvm.bswap.i32(i32 %new_state.0) #7
  %34 = ptrtoint ptr %sf_cmd.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sf_cmd.i, align 4
  %cfg.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 3
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 4
  %disable_dummy_notification.i = getelementptr inbounds %struct.iwl_cfg, ptr %36, i32 0, i32 21
  %37 = ptrtoint ptr %disable_dummy_notification.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 3)
  %bf.load.i = load i24, ptr %disable_dummy_notification.i, align 4
  %38 = and i24 %bf.load.i, 64
  %tobool.not.i = icmp eq i24 %38, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %33, 256
  %39 = ptrtoint ptr %sf_cmd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or.i, ptr %sf_cmd.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state.0)
  %cond.i = icmp eq i32 %new_state.0, 1
  br i1 %cond.i, label %sw.bb5.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sf_state.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 68
  %40 = ptrtoint ptr %sf_state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sf_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %new_state.0)
  %cmp2.i = icmp eq i32 %41, %new_state.0
  br i1 %cmp2.i, label %land.lhs.true.i.iwl_mvm_sf_config.exit_crit_edge, label %if.end4.i

land.lhs.true.i.iwl_mvm_sf_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_mvm_sf_config.exit

if.end4.i:                                        ; preds = %land.lhs.true.i
  %42 = zext i32 %new_state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %new_state.0, label %land.end.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1048576, ptr %31, align 4
  %arrayidx11.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2097152, ptr %arrayidx11.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 0
  %45 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1078071040, ptr %arrayidx18.i.i, align 4
  %arrayidx18.1.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1078071040, ptr %arrayidx18.1.i.i, align 4
  %arrayidx18.15.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 0
  %47 = ptrtoint ptr %arrayidx18.15.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1078071040, ptr %arrayidx18.15.i.i, align 4
  %arrayidx18.1.1.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx18.1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1078071040, ptr %arrayidx18.1.1.i.i, align 4
  %arrayidx18.2.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 0
  %49 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1078071040, ptr %arrayidx18.2.i.i, align 4
  %arrayidx18.1.2.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx18.1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1078071040, ptr %arrayidx18.1.2.i.i, align 4
  %arrayidx18.3.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 0
  %51 = ptrtoint ptr %arrayidx18.3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1078071040, ptr %arrayidx18.3.i.i, align 4
  %arrayidx18.1.3.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 1
  %52 = ptrtoint ptr %arrayidx18.1.3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1078071040, ptr %arrayidx18.1.3.i.i, align 4
  %arrayidx18.4.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 0
  %53 = ptrtoint ptr %arrayidx18.4.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1078071040, ptr %arrayidx18.4.i.i, align 4
  %arrayidx18.1.4.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 1
  %54 = ptrtoint ptr %arrayidx18.1.4.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1078071040, ptr %arrayidx18.1.4.i.i, align 4
  %full_on_timeouts28.i.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 3
  %55 = call ptr @memcpy(ptr %full_on_timeouts28.i.i, ptr @sf_full_timeout_def, i32 40)
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %sta_id.0)
  %cmp6.i = icmp eq i8 %sta_id.0, -1
  br i1 %cmp6.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %57, i32 noundef 0, ptr noundef nonnull @.str.1) #7
  br label %iwl_mvm_sf_config.exit

if.end12.i:                                       ; preds = %sw.bb5.i
  %conv.i = zext i8 %sta_id.0 to i32
  %58 = call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %if.end12.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end12.i.rcu_read_lock.exit.i_crit_edge
  %arrayidx.i = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 44, i32 %conv.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %rcu_read_lock.exit.i.do.end26.i_crit_edge

rcu_read_lock.exit.i.do.end26.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %rcu_read_lock.exit.i
  %call19.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b106.i = load i1, ptr @iwl_mvm_sf_config.__warned, align 1
  br i1 %.b106.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_mvm_sf_config.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 187, ptr noundef nonnull @.str.2) #7
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %rcu_read_lock.exit.i.do.end26.i_crit_edge
  %tobool.not.i108.i = icmp eq ptr %63, null
  %cmp.i.i = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i108.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end33.i, label %if.then.i120.i

do.end33.i:                                       ; preds = %do.end26.i
  %64 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @.str.3) #7
  %call.i109.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i109.i, label %do.end33.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i112.i

do.end33.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i112.i:                             ; preds = %do.end33.i
  %call1.i110.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110.i)
  %tobool.not.i111.i = icmp eq i32 %call1.i110.i, 0
  br i1 %tobool.not.i111.i, label %land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i114.i

land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i114.i:                            ; preds = %land.lhs.true.i112.i
  %.b4.i113.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i113.i, label %land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i115.i

land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i115.i:                                   ; preds = %land.lhs.true2.i114.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i115.i, %land.lhs.true2.i114.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i112.i.rcu_read_unlock.exit.i_crit_edge, %do.end33.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %66 = call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i.i116.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i116.i to ptr
  %preempt_count.i.i.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i117.i, align 4
  %sub.i.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i117.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %iwl_mvm_sf_config.exit

if.then.i120.i:                                   ; preds = %do.end26.i
  %70 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1048576, ptr %31, align 4
  %ht_supported.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %63, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %ht_supported.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ht_supported.i.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool2.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i, label %if.then.i120.i.if.then6.i.i_crit_edge

if.then.i120.i.if.then6.i.i_crit_edge:            ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i120.i
  %vht_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %63, i32 0, i32 5
  %73 = ptrtoint ptr %vht_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %vht_cap.i.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool3.not.i.i = icmp eq i8 %74, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.if.then6.i.i_crit_edge

lor.lhs.false.i.i.if.then6.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %he_cap.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %63, i32 0, i32 6
  %75 = ptrtoint ptr %he_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %he_cap.i.i, align 4, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool5.not.i.i = icmp eq i8 %76, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false4.i.i.iwl_mvm_fill_sf_command.exit.i_crit_edge, label %lor.lhs.false4.i.i.if.then6.i.i_crit_edge

lor.lhs.false4.i.i.if.then6.i.i_crit_edge:        ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i.i

lor.lhs.false4.i.i.iwl_mvm_fill_sf_command.exit.i_crit_edge: ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_mvm_fill_sf_command.exit.i

if.then6.i.i:                                     ; preds = %lor.lhs.false4.i.i.if.then6.i.i_crit_edge, %lor.lhs.false.i.i.if.then6.i.i_crit_edge, %if.then.i120.i.if.then6.i.i_crit_edge
  %rx_nss.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %63, i32 0, i32 13
  %77 = ptrtoint ptr %rx_nss.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %rx_nss.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %switch.selectcmp.i.i = icmp eq i8 %78, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 2097152, i32 1572864
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %switch.selectcmp1.i.i = icmp eq i8 %78, 1
  %switch.select2.i.i = select i1 %switch.selectcmp1.i.i, i32 1572864, i32 %switch.select.i.i
  br label %iwl_mvm_fill_sf_command.exit.i

iwl_mvm_fill_sf_command.exit.i:                   ; preds = %if.then6.i.i, %lor.lhs.false4.i.i.iwl_mvm_fill_sf_command.exit.i_crit_edge
  %watermark.0.i.i = phi i32 [ %switch.select2.i.i, %if.then6.i.i ], [ 1048576, %lor.lhs.false4.i.i.iwl_mvm_fill_sf_command.exit.i_crit_edge ]
  %arrayidx11.i121.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx11.i121.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %watermark.0.i.i, ptr %arrayidx11.i121.i, align 4
  %arrayidx18.i122.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 0
  %80 = ptrtoint ptr %arrayidx18.i122.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1078071040, ptr %arrayidx18.i122.i, align 4
  %arrayidx18.1.i123.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx18.1.i123.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1078071040, ptr %arrayidx18.1.i123.i, align 4
  %arrayidx18.15.i124.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 0
  %82 = ptrtoint ptr %arrayidx18.15.i124.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1078071040, ptr %arrayidx18.15.i124.i, align 4
  %arrayidx18.1.1.i125.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 1
  %83 = ptrtoint ptr %arrayidx18.1.1.i125.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1078071040, ptr %arrayidx18.1.1.i125.i, align 4
  %arrayidx18.2.i126.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 0
  %84 = ptrtoint ptr %arrayidx18.2.i126.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1078071040, ptr %arrayidx18.2.i126.i, align 4
  %arrayidx18.1.2.i127.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 1
  %85 = ptrtoint ptr %arrayidx18.1.2.i127.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1078071040, ptr %arrayidx18.1.2.i127.i, align 4
  %arrayidx18.3.i128.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 0
  %86 = ptrtoint ptr %arrayidx18.3.i128.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1078071040, ptr %arrayidx18.3.i128.i, align 4
  %arrayidx18.1.3.i129.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 1
  %87 = ptrtoint ptr %arrayidx18.1.3.i129.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1078071040, ptr %arrayidx18.1.3.i129.i, align 4
  %arrayidx18.4.i130.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 0
  %88 = ptrtoint ptr %arrayidx18.4.i130.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1078071040, ptr %arrayidx18.4.i130.i, align 4
  %arrayidx18.1.4.i131.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 1
  %89 = ptrtoint ptr %arrayidx18.1.4.i131.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1078071040, ptr %arrayidx18.1.4.i131.i, align 4
  %full_on_timeouts28.i132.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 3
  %90 = call ptr @memcpy(ptr %full_on_timeouts28.i132.i, ptr @sf_full_timeout, i32 40)
  %call.i133.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i133.i, label %iwl_mvm_fill_sf_command.exit.i.rcu_read_unlock.exit144.i_crit_edge, label %land.lhs.true.i136.i

iwl_mvm_fill_sf_command.exit.i.rcu_read_unlock.exit144.i_crit_edge: ; preds = %iwl_mvm_fill_sf_command.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit144.i

land.lhs.true.i136.i:                             ; preds = %iwl_mvm_fill_sf_command.exit.i
  %call1.i134.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i134.i)
  %tobool.not.i135.i = icmp eq i32 %call1.i134.i, 0
  br i1 %tobool.not.i135.i, label %land.lhs.true.i136.i.rcu_read_unlock.exit144.i_crit_edge, label %land.lhs.true2.i138.i

land.lhs.true.i136.i.rcu_read_unlock.exit144.i_crit_edge: ; preds = %land.lhs.true.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit144.i

land.lhs.true2.i138.i:                            ; preds = %land.lhs.true.i136.i
  %.b4.i137.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i137.i, label %land.lhs.true2.i138.i.rcu_read_unlock.exit144.i_crit_edge, label %if.then.i139.i

land.lhs.true2.i138.i.rcu_read_unlock.exit144.i_crit_edge: ; preds = %land.lhs.true2.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit144.i

if.then.i139.i:                                   ; preds = %land.lhs.true2.i138.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_unlock.exit144.i

rcu_read_unlock.exit144.i:                        ; preds = %if.then.i139.i, %land.lhs.true2.i138.i.rcu_read_unlock.exit144.i_crit_edge, %land.lhs.true.i136.i.rcu_read_unlock.exit144.i_crit_edge, %iwl_mvm_fill_sf_command.exit.i.rcu_read_unlock.exit144.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %91 = call i32 @llvm.read_register.i32(metadata !23) #7
  %and.i.i.i.i.i140.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i140.i to ptr
  %preempt_count.i.i.i.i141.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i141.i, align 4
  %sub.i.i.i142.i = add i32 %94, -1
  store volatile i32 %sub.i.i.i142.i, ptr %preempt_count.i.i.i.i141.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1048576, ptr %31, align 4
  %arrayidx11.i147.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %arrayidx11.i147.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2097152, ptr %arrayidx11.i147.i, align 4
  %arrayidx18.i148.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 0
  %97 = ptrtoint ptr %arrayidx18.i148.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1078071040, ptr %arrayidx18.i148.i, align 4
  %arrayidx18.1.i149.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx18.1.i149.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1078071040, ptr %arrayidx18.1.i149.i, align 4
  %arrayidx18.15.i150.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 0
  %99 = ptrtoint ptr %arrayidx18.15.i150.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1078071040, ptr %arrayidx18.15.i150.i, align 4
  %arrayidx18.1.1.i151.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 1, i32 1
  %100 = ptrtoint ptr %arrayidx18.1.1.i151.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1078071040, ptr %arrayidx18.1.1.i151.i, align 4
  %arrayidx18.2.i152.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 0
  %101 = ptrtoint ptr %arrayidx18.2.i152.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1078071040, ptr %arrayidx18.2.i152.i, align 4
  %arrayidx18.1.2.i153.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 2, i32 1
  %102 = ptrtoint ptr %arrayidx18.1.2.i153.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1078071040, ptr %arrayidx18.1.2.i153.i, align 4
  %arrayidx18.3.i154.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 0
  %103 = ptrtoint ptr %arrayidx18.3.i154.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1078071040, ptr %arrayidx18.3.i154.i, align 4
  %arrayidx18.1.3.i155.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 3, i32 1
  %104 = ptrtoint ptr %arrayidx18.1.3.i155.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 1078071040, ptr %arrayidx18.1.3.i155.i, align 4
  %arrayidx18.4.i156.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 0
  %105 = ptrtoint ptr %arrayidx18.4.i156.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1078071040, ptr %arrayidx18.4.i156.i, align 4
  %arrayidx18.1.4.i157.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 2, i32 4, i32 1
  %106 = ptrtoint ptr %arrayidx18.1.4.i157.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1078071040, ptr %arrayidx18.1.4.i157.i, align 4
  %full_on_timeouts28.i158.i = getelementptr inbounds %struct.iwl_sf_cfg_cmd, ptr %sf_cmd.i, i32 0, i32 3
  %107 = call ptr @memcpy(ptr %full_on_timeouts28.i158.i, ptr @sf_full_timeout_def, i32 40)
  br label %sw.epilog.i

land.end.i:                                       ; preds = %if.end4.i
  %.b105107.i = load i1, ptr @iwl_mvm_sf_config.__already_done, align 1
  br i1 %.b105107.i, label %land.end.i.iwl_mvm_sf_config.exit_crit_edge, label %if.then45.i, !prof !37

land.end.i.iwl_mvm_sf_config.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_mvm_sf_config.exit

if.then45.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @iwl_mvm_sf_config.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 201, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %new_state.0) #7
  br label %iwl_mvm_sf_config.exit

sw.epilog.i:                                      ; preds = %sw.bb38.i, %rcu_read_unlock.exit144.i, %sw.bb.i
  %call79.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 209, i32 noundef 1, i16 noundef zeroext 92, ptr noundef nonnull %sf_cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %sw.epilog.i.iwl_mvm_sf_config.exit_crit_edge

sw.epilog.i.iwl_mvm_sf_config.exit_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iwl_mvm_sf_config.exit

if.then81.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %sf_state82.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 68
  %108 = ptrtoint ptr %sf_state82.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %new_state.0, ptr %sf_state82.i, align 4
  br label %iwl_mvm_sf_config.exit

iwl_mvm_sf_config.exit:                           ; preds = %if.then81.i, %sw.epilog.i.iwl_mvm_sf_config.exit_crit_edge, %if.then45.i, %land.end.i.iwl_mvm_sf_config.exit_crit_edge, %rcu_read_unlock.exit.i, %do.end.i, %land.lhs.true.i.iwl_mvm_sf_config.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %rcu_read_unlock.exit.i ], [ 0, %land.lhs.true.i.iwl_mvm_sf_config.exit_crit_edge ], [ -22, %if.then45.i ], [ -22, %land.end.i.iwl_mvm_sf_config.exit_crit_edge ], [ 0, %if.then81.i ], [ %call79.i, %sw.epilog.i.iwl_mvm_sf_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %sf_cmd.i) #7
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_sf_config.exit, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %iwl_mvm_sf_config.exit ], [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iwl_mvm_bound_iface_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef readonly %vif) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %cmp = icmp eq ptr %1, %vif
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %2 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false1

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp2 = icmp eq i32 %5, 10
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %num_active_macs = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %_data, i32 0, i32 3
  %6 = ptrtoint ptr %num_active_macs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_active_macs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %num_active_macs, align 4
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ap_sta_id = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1
  %10 = ptrtoint ptr %ap_sta_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ap_sta_id, align 8
  %sta_vif_ap_sta_id = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %_data, i32 0, i32 1
  %12 = ptrtoint ptr %sta_vif_ap_sta_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sta_vif_ap_sta_id, align 4
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assoc, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool6.not = icmp eq i8 %14, 0
  %sta_vif_state8 = getelementptr inbounds %struct.iwl_mvm_active_iface_iterator_data, ptr %_data, i32 0, i32 2
  %. = select i1 %tobool6.not, i32 3, i32 1
  %15 = ptrtoint ptr %sta_vif_state8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %sta_vif_state8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %lor.lhs.false1.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 260, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 182, i32 4}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 187, i32 9}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 189, i32 4}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 200, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sf_full_timeout, !13, !"sf_full_timeout", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 73, i32 21}
!14 = !{ptr @sf_full_timeout_def, !15, !"sf_full_timeout_def", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/sf.c", i32 46, i32 8}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i8 0, i8 2}
!35 = !{i64 2149477777}
!36 = !{i64 2149478043}
!37 = !{!"branch_weights", i32 2000, i32 1}
