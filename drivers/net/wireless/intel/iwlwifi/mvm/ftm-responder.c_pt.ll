; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mvm_pasn_hltk_data = type { ptr, i8, ptr }
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
%struct.iwl_mvm_pasn_sta = type { %struct.list_head, %struct.iwl_mvm_int_sta, [6 x i8] }
%struct.iwl_tof_responder_dyn_config_cmd = type { i8, i8, i8, i8, [160 x i8], [160 x i8], [32 x i8], [6 x i8], [2 x i8] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.ieee80211_ftm_responder_params = type { ptr, ptr, i32, i32 }
%struct.iwl_tof_responder_config_cmd_v9 = type { i32, i32, i8, i8, i8, i8, i8, i8, i16, i16, i16, [6 x i8], i8, i8, i16, i16 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.iwl_tof_responder_dyn_config_cmd_v2 = type { i32, i32, [0 x i8] }
%struct.iwl_rx_cmd_buffer = type { ptr, i32, i8, i32, i32 }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_ftm_responder_stats = type { [6 x i8], i8, i8, i32, i32, i32, i8, i8, i16 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adding PASN station not supported by FW\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid cipher: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FTM: PASN station %pM not found\0A\00", [63 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_start_responder.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot start responder, not in AP mode\0A\00", [56 x i8] zeroinitializer }, align 32
@iwl_mvm_ftm_start_responder.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LCI/civic data too big (lci=%zd, civic=%zd)\0A\00", [51 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set responder bandwidth\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported DYN_CONFIG_CMD version %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"LCI/civicloc data too big (%zd + %zd)\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1027076, i64 1027080, i64 1027081]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 329, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 335, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 376, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 398, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 403, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 238, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 158, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 294, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [58 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 196, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ftm_respoder_add_pasn_sta(ptr noundef %mvm, ptr noundef %vif, ptr noundef %addr, i32 noundef %cipher, ptr noundef %tk, i32 noundef %tk_len, ptr noundef %hltk, i32 noundef %hltk_len) local_unnamed_addr #0 align 64 {
entry:
  %hltk_data = alloca %struct.iwl_mvm_pasn_hltk_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hltk_data) #8
  %0 = getelementptr inbounds i8, ptr %hltk_data, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %hltk_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %addr, ptr %hltk_data, align 4
  %cipher2 = getelementptr inbounds %struct.iwl_mvm_pasn_hltk_data, ptr %hltk_data, i32 0, i32 1
  %hltk3 = getelementptr inbounds %struct.iwl_mvm_pasn_hltk_data, ptr %hltk_data, i32 0, i32 2
  %3 = ptrtoint ptr %hltk3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hltk, ptr %hltk3, align 4
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %5, i8 noundef zeroext 8, i8 noundef zeroext 5, i8 noundef zeroext 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call)
  %cmp28 = icmp ult i8 %call, 3
  br i1 %cmp28, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end
  %9 = zext i32 %cipher to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cipher, label %do.end49 [
    i32 1027076, label %if.end37.if.end53_crit_edge
    i32 1027080, label %sw.bb1.i
    i32 1027081, label %sw.bb2.i
  ]

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

sw.bb1.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

sw.bb2.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end49:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %11, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %cipher) #8
  br label %cleanup

if.end53:                                         ; preds = %sw.bb2.i, %sw.bb1.i, %if.end37.if.end53_crit_edge
  %retval.0.i.ph = phi i8 [ 0, %if.end37.if.end53_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ]
  %12 = ptrtoint ptr %cipher2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %retval.0.i.ph, ptr %cipher2, align 4
  %tobool54.not = icmp eq ptr %tk, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tk_len)
  %tobool55.not = icmp eq i32 %tk_len, 0
  %or.cond = or i1 %tobool54.not, %tobool55.not
  br i1 %or.cond, label %if.end53.if.end66_crit_edge, label %if.then56

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then56:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #11
  %tobool58.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool58.not, label %if.then56.cleanup_crit_edge, label %if.end60

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.then56
  %int_sta = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %call7.i.i, i32 0, i32 1
  %call61 = tail call i32 @iwl_mvm_add_pasn_sta(ptr noundef %mvm, ptr noundef %vif, ptr noundef %int_sta, ptr noundef %addr, i32 noundef %cipher, ptr noundef nonnull %tk, i32 noundef %tk_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  %addr65 = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %call7.i.i, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %addr65, ptr %addr, i32 6)
  %resp_pasn_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 163
  %prev.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 163, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %16, ptr noundef %resp_pasn_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end64.if.end66_crit_edge

if.end64.if.end66_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.end.i.i:                                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resp_pasn_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i.i, ptr %16, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.end.i.i, %if.end64.if.end66_crit_edge, %if.end53.if.end66_crit_edge
  %sta.0 = phi ptr [ null, %if.end53.if.end66_crit_edge ], [ %call7.i.i, %if.end64.if.end66_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %call67 = call fastcc i32 @iwl_mvm_ftm_responder_dyn_cfg_v3(ptr noundef %mvm, ptr noundef null, ptr noundef nonnull %hltk_data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  %tobool70.not = icmp eq ptr %sta.0, null
  %or.cond101 = select i1 %tobool68.not, i1 true, i1 %tobool70.not
  br i1 %or.cond101, label %if.end66.cleanup_crit_edge, label %if.then71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %if.end66
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %sta.0) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then71.iwl_mvm_resp_del_pasn_sta.exit_crit_edge

if.then71.iwl_mvm_resp_del_pasn_sta.exit_crit_edge: ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_resp_del_pasn_sta.exit

if.end.i.i.i:                                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sta.0, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %sta.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sta.0, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %iwl_mvm_resp_del_pasn_sta.exit

iwl_mvm_resp_del_pasn_sta.exit:                   ; preds = %if.end.i.i.i, %if.then71.iwl_mvm_resp_del_pasn_sta.exit_crit_edge
  %27 = ptrtoint ptr %sta.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %sta.0, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sta.0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %int_sta.i = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %sta.0, i32 0, i32 1
  %29 = ptrtoint ptr %int_sta.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_sta.i, align 8
  %conv.i = trunc i32 %30 to i8
  %call.i102 = call i32 @iwl_mvm_rm_sta_id(ptr noundef %mvm, ptr noundef %vif, i8 noundef zeroext %conv.i) #8
  call void @iwl_mvm_dealloc_int_sta(ptr noundef %mvm, ptr noundef %int_sta.i) #8
  call void @kfree(ptr noundef nonnull %sta.0) #8
  br label %cleanup

cleanup:                                          ; preds = %iwl_mvm_resp_del_pasn_sta.exit, %if.end66.cleanup_crit_edge, %if.then63, %if.then56.cleanup_crit_edge, %do.end49, %do.end34
  %retval.0 = phi i32 [ -524, %do.end34 ], [ -22, %do.end49 ], [ %call61, %if.then63 ], [ -105, %if.then56.cleanup_crit_edge ], [ %call67, %iwl_mvm_resp_del_pasn_sta.exit ], [ %call67, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hltk_data) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_add_pasn_sta(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_responder_dyn_cfg_v3(ptr noundef %mvm, ptr noundef readonly %params, ptr noundef readonly %hltk_data) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_tof_responder_dyn_config_cmd, align 1
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %cmd) #8
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 364)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #8
  %1 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !41
  %3 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 20)
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2053, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 364, ptr %len, align 4
  %arrayinit.start3 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayinit.start3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %arrayinit.start3, align 2
  %arrayinit.end4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %8 = ptrtoint ptr %arrayinit.end4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %arrayinit.end4, align 4
  %arrayinit.start11 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayinit.start11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayinit.start11, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %valid_flags = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %valid_flags, align 1
  %tobool42.not = icmp eq ptr %params, null
  br i1 %tobool42.not, label %if.end.if.end81_crit_edge, label %if.then43

if.end.if.end81_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then43:                                        ; preds = %if.end
  %lci_len = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %lci_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lci_len, align 4
  %14 = add i32 %13, -159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -161, i32 %14)
  %cmp44 = icmp ult i32 %14, -161
  br i1 %cmp44, label %if.then43.do.end51_crit_edge, label %lor.lhs.false

if.then43.do.end51_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

lor.lhs.false:                                    ; preds = %if.then43
  %civicloc_len = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 3
  %15 = ptrtoint ptr %civicloc_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %civicloc_len, align 4
  %17 = add i32 %16, -159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -161, i32 %17)
  %cmp46 = icmp ult i32 %17, -161
  br i1 %cmp46, label %lor.lhs.false.do.end51_crit_edge, label %if.end56

lor.lhs.false.do.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

do.end51:                                         ; preds = %lor.lhs.false.do.end51_crit_edge, %if.then43.do.end51_crit_edge
  %18 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mvm, align 8
  %civicloc_len53 = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 3
  %20 = ptrtoint ptr %civicloc_len53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %civicloc_len53, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %19, i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef %13, i32 noundef %21) #8
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %lci_buf = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 4
  %22 = ptrtoint ptr %lci_buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 39, ptr %lci_buf, align 1
  %conv = trunc i32 %13 to i8
  %arrayidx59 = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %arrayidx59, align 1
  %add.ptr = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params, align 4
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %25, i32 %13)
  %conv64 = add i8 %conv, 2
  %lci_len65 = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 2
  %27 = ptrtoint ptr %lci_len65 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv64, ptr %lci_len65, align 1
  %civic_buf = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %civic_buf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 39, ptr %civic_buf, align 1
  %conv68 = trunc i32 %16 to i8
  %arrayidx70 = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv68, ptr %arrayidx70, align 1
  %add.ptr73 = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 5, i32 2
  %civicloc = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 1
  %30 = ptrtoint ptr %civicloc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %civicloc, align 4
  %32 = call ptr @memcpy(ptr %add.ptr73, ptr %31, i32 %16)
  %conv77 = add i8 %conv68, 2
  %civic_len = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 3
  %33 = ptrtoint ptr %civic_len to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv77, ptr %civic_len, align 1
  %34 = ptrtoint ptr %valid_flags to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %valid_flags, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.end56, %if.end.if.end81_crit_edge
  %tobool82.not = icmp eq ptr %hltk_data, null
  br i1 %tobool82.not, label %if.end81.if.end107_crit_edge, label %if.then83

if.end81.if.end107_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then83:                                        ; preds = %if.end81
  %cipher = getelementptr inbounds %struct.iwl_mvm_pasn_hltk_data, ptr %hltk_data, i32 0, i32 1
  %35 = ptrtoint ptr %cipher to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cipher, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp85 = icmp ugt i8 %36, 2
  br i1 %cmp85, label %do.end91, label %if.end97

do.end91:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %conv84 = zext i8 %36 to i32
  %37 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv84) #8
  br label %cleanup

if.end97:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %cmd, align 1
  %addr = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 7
  %40 = ptrtoint ptr %hltk_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hltk_data, align 4
  %42 = call ptr @memcpy(ptr %addr, ptr %41, i32 6)
  %hltk_buf = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd, ptr %cmd, i32 0, i32 6
  %hltk = getelementptr inbounds %struct.iwl_mvm_pasn_hltk_data, ptr %hltk_data, i32 0, i32 2
  %43 = ptrtoint ptr %hltk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hltk, align 4
  %45 = call ptr @memcpy(ptr %hltk_buf, ptr %44, i32 32)
  %46 = ptrtoint ptr %valid_flags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %valid_flags, align 1
  %48 = or i8 %47, 4
  store i8 %48, ptr %valid_flags, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.end97, %if.end81.if.end107_crit_edge
  %call108 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.end91, %do.end51
  %retval.0 = phi i32 [ -105, %do.end51 ], [ -22, %do.end91 ], [ %call108, %if.end107 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #8
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ftm_resp_remove_pasn_sta(ptr noundef %mvm, ptr noundef %vif, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 367, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %resp_pasn_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 163
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %sta.0.in = phi ptr [ %resp_pasn_list, %if.end ], [ %sta.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %sta.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %sta.0 = load ptr, ptr %sta.0.in, align 4
  %cmp31.not = icmp eq ptr %sta.0, %resp_pasn_list
  br i1 %cmp31.not, label %do.end47, label %for.body

for.body:                                         ; preds = %for.cond
  %addr34 = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %sta.0, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %addr34, ptr noundef dereferenceable(6) %addr, i32 6) #12
  %tobool36.not = icmp eq i32 %bcmp, 0
  br i1 %tobool36.not, label %if.then37, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then37:                                        ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta.0) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then37.iwl_mvm_resp_del_pasn_sta.exit_crit_edge

if.then37.iwl_mvm_resp_del_pasn_sta.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_resp_del_pasn_sta.exit

if.end.i.i.i:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sta.0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %sta.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %iwl_mvm_resp_del_pasn_sta.exit

iwl_mvm_resp_del_pasn_sta.exit:                   ; preds = %if.end.i.i.i, %if.then37.iwl_mvm_resp_del_pasn_sta.exit_crit_edge
  %8 = ptrtoint ptr %sta.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %sta.0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sta.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %int_sta.i = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %sta.0, i32 0, i32 1
  %10 = ptrtoint ptr %int_sta.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_sta.i, align 4
  %conv.i = trunc i32 %11 to i8
  %call.i61 = tail call i32 @iwl_mvm_rm_sta_id(ptr noundef %mvm, ptr noundef %vif, i8 noundef zeroext %conv.i) #8
  tail call void @iwl_mvm_dealloc_int_sta(ptr noundef %mvm, ptr noundef %int_sta.i) #8
  tail call void @kfree(ptr noundef %sta.0) #8
  br label %cleanup

do.end47:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %addr) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %iwl_mvm_resp_del_pasn_sta.exit
  %retval.0 = phi i32 [ 0, %iwl_mvm_resp_del_pasn_sta.exit ], [ -22, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_ftm_start_responder(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_tof_responder_config_cmd_v9, align 4
  %ctx = alloca %struct.ieee80211_chanctx_conf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ctx) #8
  %ftmr_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 49
  %0 = ptrtoint ptr %ftmr_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ftmr_params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i155 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp.not = icmp eq i32 %call.i155, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ftm_responder = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 48
  %3 = ptrtoint ptr %ftm_responder to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ftm_responder, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool26.not = icmp eq i8 %4, 0
  br i1 %tobool26.not, label %land.rhs34, label %if.end82

land.rhs34:                                       ; preds = %if.end
  %.b153 = load i1, ptr @iwl_mvm_ftm_start_responder.__already_done, align 1
  br i1 %.b153, label %land.rhs34.cleanup_crit_edge, label %if.then45, !prof !43

land.rhs34.cleanup_crit_edge:                     ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_ftm_start_responder.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 393, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end82:                                         ; preds = %if.end
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %5 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p2p, align 2, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool83.not = icmp eq i8 %6, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if.end82.do.end91_crit_edge

if.end82.do.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

lor.lhs.false:                                    ; preds = %if.end82
  %7 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp84.not = icmp eq i32 %8, 3
  br i1 %cmp84.not, label %lor.lhs.false85, label %lor.lhs.false.do.end91_crit_edge

lor.lhs.false.do.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

lor.lhs.false85:                                  ; preds = %lor.lhs.false
  %ap_ibss_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %9 = ptrtoint ptr %ap_ibss_active to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ap_ibss_active, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool86.not = icmp eq i8 %10, 0
  br i1 %tobool86.not, label %lor.lhs.false85.do.end91_crit_edge, label %if.end94

lor.lhs.false85.do.end91_crit_edge:               ; preds = %lor.lhs.false85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

do.end91:                                         ; preds = %lor.lhs.false85.do.end91_crit_edge, %lor.lhs.false.do.end91_crit_edge, %if.end82.do.end91_crit_edge
  %11 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end94:                                         ; preds = %lor.lhs.false85
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end94.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end94.rcu_read_lock.exit_crit_edge:            ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end94
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end94.rcu_read_lock.exit_crit_edge
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 9
  %17 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %chanctx_conf, align 4
  %call100 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end109_crit_edge

rcu_read_lock.exit.do.end109_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call102 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true.do.end109_crit_edge, label %land.lhs.true104

land.lhs.true.do.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

land.lhs.true104:                                 ; preds = %land.lhs.true
  %.b151152 = load i1, ptr @iwl_mvm_ftm_start_responder.__warned, align 1
  br i1 %.b151152, label %land.lhs.true104.do.end109_crit_edge, label %if.then106

land.lhs.true104.do.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end109

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @iwl_mvm_ftm_start_responder.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.5) #8
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %land.lhs.true104.do.end109_crit_edge, %land.lhs.true.do.end109_crit_edge, %rcu_read_lock.exit.do.end109_crit_edge
  %19 = call ptr @memcpy(ptr %ctx, ptr %18, i32 60)
  %drv_priv = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %18, i32 0, i32 6
  %call.i156 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i156, label %do.end109.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

do.end109.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %do.end109
  %call1.i157 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %do.end109.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %20 = tail call i32 @llvm.read_register.i32(metadata !30) #8
  %and.i.i.i.i.i163 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %24 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %drv_priv, align 2
  %idxprom = zext i16 %25 to i32
  %arrayidx = getelementptr %struct.iwl_mvm, ptr %mvm, i32 0, i32 87, i32 %idxprom
  %rx_chains_static = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %ctx, i32 0, i32 2
  %26 = ptrtoint ptr %rx_chains_static to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_chains_static, align 4
  %rx_chains_dynamic = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %ctx, i32 0, i32 3
  %28 = ptrtoint ptr %rx_chains_dynamic to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rx_chains_dynamic, align 1
  %call111 = call i32 @iwl_mvm_phy_ctxt_changed(ptr noundef %mvm, ptr noundef %arrayidx, ptr noundef nonnull %ctx, i8 noundef zeroext %27, i8 noundef zeroext %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %rcu_read_unlock.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #8
  %30 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 4
  %33 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 5
  %34 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 6
  %35 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 11
  %36 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 12
  %37 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 13
  %38 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 14
  %39 = getelementptr inbounds %struct.iwl_tof_responder_config_cmd_v9, ptr %cmd.i, i32 0, i32 15
  %40 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %41 = call ptr @memset(ptr %40, i32 0, i32 28)
  %42 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 286261248, ptr %cmd.i, align 4
  %43 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctx, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hw_value.i, align 2
  %conv.i = trunc i16 %46 to i8
  %47 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i, ptr %32, align 2
  %bcast_sta.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 39, i32 9
  %48 = ptrtoint ptr %bcast_sta.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bcast_sta.i, align 8
  %conv2.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv2.i, ptr %34, align 4
  %fw.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %51 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw.i, align 8
  %call3.i = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %52, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 6) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %53 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i165 = icmp eq i32 %53, 0
  br i1 %tobool.not.i165, label %if.end114.if.end.i_crit_edge, label %land.rhs.i

if.end114.if.end.i_crit_edge:                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end114
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !40

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 128, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end114.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %call3.i)
  %cmp30.i = icmp eq i8 %call3.i, 9
  br i1 %cmp30.i, label %if.end34.thread.i, label %if.end34.i

if.end34.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd.i, align 4
  %or.i = or i32 %55, 12
  store i32 %or.i, ptr %cmd.i, align 4
  %56 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %31, align 1
  %57 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1280, ptr %38, align 4
  %58 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -6141, ptr %39, align 2
  br label %if.end39.thread.i

if.end34.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %call3.i)
  %cmp36.i = icmp ugt i8 %call3.i, 7
  br i1 %cmp36.i, label %if.end34.i.if.end39.thread.i_crit_edge, label %if.end39.i

if.end34.i.if.end39.thread.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.thread.i

if.end39.thread.i:                                ; preds = %if.end34.i.if.end39.thread.i_crit_edge, %if.end34.thread.i
  %cmd_size.088.i = phi i16 [ 32, %if.end34.thread.i ], [ 28, %if.end34.i.if.end39.thread.i_crit_edge ]
  %59 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -49, ptr %36, align 2
  %60 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -49, ptr %37, align 1
  %61 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmd.i, align 4
  %or2.i.i = or i32 %62, 32768
  store i32 %or2.i.i, ptr %cmd.i, align 4
  br label %if.then43.i

if.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %call3.i)
  %cmp41.i = icmp eq i8 %call3.i, 7
  br i1 %cmp41.i, label %if.end39.i.if.then43.i_crit_edge, label %if.else45.i

if.end39.i.if.then43.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.end39.i.if.then43.i_crit_edge, %if.end39.thread.i
  %cmd_size.08792.i = phi i16 [ %cmd_size.088.i, %if.end39.thread.i ], [ 28, %if.end39.i.if.then43.i_crit_edge ]
  %width.i.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %ctx, i32 0, i32 1
  %63 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %width.i.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %64, label %if.then43.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb2.i.i
    i32 2, label %sw.bb6.i.i
    i32 3, label %sw.bb10.i.i
    i32 5, label %sw.bb15.i.i
  ]

if.then43.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_ftm_responder_cmd.exit.thread

sw.bb.i.i:                                        ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %30, align 4
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb2.i.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %30, align 4
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb6.i.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 17, ptr %30, align 4
  %call.i79.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %ctx) #8
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call.i79.i, ptr %33, align 1
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb10.i.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 34, ptr %30, align 4
  %call14.i.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %ctx) #8
  %71 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %call14.i.i, ptr %33, align 1
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb15.i.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %call3.i)
  %cmp.i.i = icmp ugt i8 %call3.i, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb15.i.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge

sw.bb15.i.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge: ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_ftm_responder_cmd.exit.thread

if.then.i.i:                                      ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 51, ptr %30, align 4
  %call21.i.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %ctx) #8
  %73 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %call21.i.i, ptr %33, align 1
  br label %iwl_mvm_ftm_responder_cmd.exit

if.else45.i:                                      ; preds = %if.end39.i
  %width.i80.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %ctx, i32 0, i32 1
  %74 = ptrtoint ptr %width.i80.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width.i80.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %75, label %if.else45.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge [
    i32 0, label %sw.bb.i81.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i83.i
    i32 3, label %sw.bb3.i.i
  ]

if.else45.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge: ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_ftm_responder_cmd.exit.thread

sw.bb.i81.i:                                      ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %30, align 4
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb1.i.i:                                       ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %30, align 4
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb2.i83.i:                                     ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %30, align 4
  %call.i82.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %ctx) #8
  %80 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %call.i82.i, ptr %33, align 1
  br label %iwl_mvm_ftm_responder_cmd.exit

sw.bb3.i.i:                                       ; preds = %if.else45.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %30, align 4
  %call4.i.i = call zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef nonnull %ctx) #8
  %82 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %call4.i.i, ptr %33, align 1
  br label %iwl_mvm_ftm_responder_cmd.exit

iwl_mvm_ftm_responder_cmd.exit.thread:            ; preds = %if.else45.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge, %sw.bb15.i.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge, %if.then43.i.iwl_mvm_ftm_responder_cmd.exit.thread_crit_edge
  %83 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @.str.10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  br label %cleanup

iwl_mvm_ftm_responder_cmd.exit:                   ; preds = %sw.bb3.i.i, %sw.bb2.i83.i, %sw.bb1.i.i, %sw.bb.i81.i, %if.then.i.i, %sw.bb10.i.i, %sw.bb6.i.i, %sw.bb2.i.i, %sw.bb.i.i
  %cmd_size.08791.ph.i = phi i16 [ 28, %sw.bb3.i.i ], [ 28, %sw.bb2.i83.i ], [ 28, %sw.bb1.i.i ], [ 28, %sw.bb.i81.i ], [ %cmd_size.08792.i, %if.then.i.i ], [ %cmd_size.08792.i, %sw.bb10.i.i ], [ %cmd_size.08792.i, %sw.bb6.i.i ], [ %cmd_size.08792.i, %sw.bb2.i.i ], [ %cmd_size.08792.i, %sw.bb.i.i ]
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %85 = call ptr @memcpy(ptr %35, ptr %addr.i, i32 6)
  %call62.i = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 2052, i32 noundef 0, i16 noundef zeroext %cmd_size.08791.ph.i, ptr noundef nonnull %cmd.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool117.not = icmp eq i32 %call62.i, 0
  br i1 %tobool117.not, label %if.end119, label %iwl_mvm_ftm_responder_cmd.exit.cleanup_crit_edge

iwl_mvm_ftm_responder_cmd.exit.cleanup_crit_edge: ; preds = %iwl_mvm_ftm_responder_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119:                                        ; preds = %iwl_mvm_ftm_responder_cmd.exit
  %tobool120.not = icmp eq ptr %1, null
  br i1 %tobool120.not, label %if.end119.cleanup_crit_edge, label %if.then121

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call fastcc i32 @iwl_mvm_ftm_responder_dyn_cfg_cmd(ptr noundef %mvm, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end119.cleanup_crit_edge, %iwl_mvm_ftm_responder_cmd.exit.cleanup_crit_edge, %iwl_mvm_ftm_responder_cmd.exit.thread, %rcu_read_unlock.exit.cleanup_crit_edge, %do.end91, %if.then45, %land.rhs34.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end91 ], [ -22, %if.then45 ], [ %call111, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %call62.i, %iwl_mvm_ftm_responder_cmd.exit.cleanup_crit_edge ], [ %call122, %if.then121 ], [ 0, %if.end119.cleanup_crit_edge ], [ -22, %land.rhs34.cleanup_crit_edge ], [ -524, %iwl_mvm_ftm_responder_cmd.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ctx) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_phy_ctxt_changed(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_mvm_ftm_responder_dyn_cfg_cmd(ptr noundef %mvm, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.iwl_tof_responder_dyn_config_cmd_v2, align 4
  %data.i = alloca [400 x i8], align 1
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 8
  %call = tail call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 5, i8 noundef zeroext 2) #8
  %2 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %call, label %do.end [
    i8 2, label %sw.bb
    i8 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #8
  %3 = getelementptr inbounds %struct.iwl_tof_responder_dyn_config_cmd_v2, ptr %cmd.i, i32 0, i32 1
  %lci_len1.i = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %lci_len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lci_len1.i, align 4
  %add.i = add i32 %5, 2
  %6 = tail call i32 @llvm.bswap.i32(i32 %add.i) #8
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cmd.i, align 4
  %civicloc_len.i = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %civicloc_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %civicloc_len.i, align 4
  %add2.i = add i32 %9, 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %add2.i) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %data.i) #8
  %12 = call ptr @memset(ptr %data.i, i32 0, i32 400)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #8
  %13 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4, !annotation !41
  %15 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd.i, ptr %hcmd.i, align 4
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %arrayinit.element.i, align 4
  %resp_pkt.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %17 = call ptr @memset(ptr %resp_pkt.i, i32 0, i32 16)
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2053, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 8, ptr %len.i, align 4
  %arrayinit.start.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %add10.i = add i32 %5, 5
  %and.i = and i32 %add10.i, -4
  %add13.i = add i32 %9, 5
  %and14.i = and i32 %add13.i, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %land.rhs.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %sw.bb
  %dep_map.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !40

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  %add39.i = add i32 %and14.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %add39.i)
  %cmp40.i = icmp ugt i32 %add39.i, 400
  br i1 %cmp40.i, label %do.end45.i, label %if.end50.i

do.end45.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mvm, align 8
  %23 = ptrtoint ptr %lci_len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lci_len1.i, align 4
  %25 = ptrtoint ptr %civicloc_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %civicloc_len.i, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %24, i32 noundef %26) #8
  br label %iwl_mvm_ftm_responder_dyn_cfg_v2.exit

if.end50.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 39, ptr %data.i, align 1
  %28 = ptrtoint ptr %lci_len1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lci_len1.i, align 4
  %conv.i = trunc i32 %29 to i8
  %arrayidx52.i = getelementptr inbounds i8, ptr %data.i, i32 1
  %30 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %arrayidx52.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %data.i, i32 2
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %params, align 4
  %33 = call ptr @memcpy(ptr %add.ptr.i, ptr %32, i32 %29)
  %add.ptr54.i = getelementptr i8, ptr %data.i, i32 %and.i
  %34 = ptrtoint ptr %add.ptr54.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 39, ptr %add.ptr54.i, align 1
  %35 = ptrtoint ptr %civicloc_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %civicloc_len.i, align 4
  %conv57.i = trunc i32 %36 to i8
  %arrayidx58.i = getelementptr i8, ptr %add.ptr54.i, i32 1
  %37 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv57.i, ptr %arrayidx58.i, align 1
  %add.ptr59.i = getelementptr i8, ptr %add.ptr54.i, i32 2
  %civicloc.i = getelementptr inbounds %struct.ieee80211_ftm_responder_params, ptr %params, i32 0, i32 1
  %38 = ptrtoint ptr %civicloc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %civicloc.i, align 4
  %40 = call ptr @memcpy(ptr %add.ptr59.i, ptr %39, i32 %36)
  %conv62.i = trunc i32 %add39.i to i16
  %41 = ptrtoint ptr %arrayinit.start.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv62.i, ptr %arrayinit.start.i, align 2
  %call65.i = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd.i) #8
  br label %iwl_mvm_ftm_responder_dyn_cfg_v2.exit

iwl_mvm_ftm_responder_dyn_cfg_v2.exit:            ; preds = %if.end50.i, %do.end45.i
  %retval.0.i = phi i32 [ -105, %do.end45.i ], [ %call65.i, %if.end50.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @iwl_mvm_ftm_responder_dyn_cfg_v3(ptr noundef %mvm, ptr noundef %params, ptr noundef null)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %call to i32
  %42 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mvm, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %conv) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %iwl_mvm_ftm_responder_dyn_cfg_v2.exit
  %ret.0 = phi i32 [ -524, %do.end ], [ %call3, %sw.bb2 ], [ %retval.0.i, %iwl_mvm_ftm_responder_dyn_cfg_v2.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_responder_clear(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !40

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %resp_pasn_list = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 163
  %1 = ptrtoint ptr %resp_pasn_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resp_pasn_list, align 4
  %cmp31.not47 = icmp eq ptr %2, %resp_pasn_list
  br i1 %cmp31.not47, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %iwl_mvm_resp_del_pasn_sta.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %sta.048 = phi ptr [ %prev.0, %iwl_mvm_resp_del_pasn_sta.exit.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %sta.048 to i32
  call void @__asan_load4_noabort(i32 %3)
  %prev.0 = load ptr, ptr %sta.048, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sta.048) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.iwl_mvm_resp_del_pasn_sta.exit_crit_edge

for.body.iwl_mvm_resp_del_pasn_sta.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %iwl_mvm_resp_del_pasn_sta.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %sta.048, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %sta.048 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta.048, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %iwl_mvm_resp_del_pasn_sta.exit

iwl_mvm_resp_del_pasn_sta.exit:                   ; preds = %if.end.i.i.i, %for.body.iwl_mvm_resp_del_pasn_sta.exit_crit_edge
  %10 = ptrtoint ptr %sta.048 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %sta.048, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %sta.048, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %int_sta.i = getelementptr inbounds %struct.iwl_mvm_pasn_sta, ptr %sta.048, i32 0, i32 1
  %12 = ptrtoint ptr %int_sta.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %int_sta.i, align 4
  %conv.i = trunc i32 %13 to i8
  %call.i46 = tail call i32 @iwl_mvm_rm_sta_id(ptr noundef %mvm, ptr noundef %vif, i8 noundef zeroext %conv.i) #8
  tail call void @iwl_mvm_dealloc_int_sta(ptr noundef %mvm, ptr noundef %int_sta.i) #8
  tail call void @kfree(ptr noundef %sta.048) #8
  %cmp31.not = icmp eq ptr %prev.0, %resp_pasn_list
  br i1 %cmp31.not, label %iwl_mvm_resp_del_pasn_sta.exit.for.end_crit_edge, label %iwl_mvm_resp_del_pasn_sta.exit.for.body_crit_edge

iwl_mvm_resp_del_pasn_sta.exit.for.body_crit_edge: ; preds = %iwl_mvm_resp_del_pasn_sta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

iwl_mvm_resp_del_pasn_sta.exit.for.end_crit_edge: ; preds = %iwl_mvm_resp_del_pasn_sta.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %iwl_mvm_resp_del_pasn_sta.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_restart_responder(ptr noundef %mvm, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ftm_responder = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 48
  %0 = ptrtoint ptr %ftm_responder to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ftm_responder, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iwl_mvm_ftm_responder_clear(ptr noundef %mvm, ptr noundef %vif)
  %call = tail call i32 @iwl_mvm_ftm_start_responder(ptr noundef %mvm, ptr noundef %vif)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_ftm_responder_stats(ptr nocapture noundef %mvm, ptr nocapture noundef readonly %rxb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rxb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxb, align 4
  %call.i = tail call ptr @page_address(ptr noundef %1) #8
  %2 = ptrtoint ptr %call.i to i32
  %_offset.i = getelementptr inbounds %struct.iwl_rx_cmd_buffer, ptr %rxb, i32 0, i32 1
  %3 = ptrtoint ptr %_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_offset.i, align 4
  %add.i = add i32 %4, %2
  %5 = inttoptr i32 %add.i to ptr
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 0, i32 2
  %flags1 = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2
  %6 = ptrtoint ptr %flags1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags1, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %success_ftm = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %success_ftm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %success_ftm, align 1
  %ftm_per_burst = getelementptr inbounds %struct.iwl_ftm_responder_stats, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %ftm_per_burst to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ftm_per_burst, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp = icmp eq i8 %10, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %success_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 1
  %13 = ptrtoint ptr %success_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %success_num, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %success_num, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp6 = icmp ugt i8 %10, 1
  br i1 %cmp6, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %partial_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 2
  %15 = ptrtoint ptr %partial_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %partial_num, align 8
  %inc9 = add i32 %16, 1
  store i32 %inc9, ptr %partial_num, align 8
  br label %if.end12

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %failed_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 3
  %17 = ptrtoint ptr %failed_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %failed_num, align 4
  %inc11 = add i32 %18, 1
  store i32 %inc11, ptr %failed_num, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10, %if.then8, %if.then
  %19 = and i32 %8, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %19)
  %.not = icmp eq i32 %19, 1280
  br i1 %.not, label %if.then15, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %asap_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 4
  %20 = ptrtoint ptr %asap_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %asap_num, align 8
  %inc16 = add i32 %21, 1
  store i32 %inc16, ptr %asap_num, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end22_crit_edge, label %if.then20

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %non_asap_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 5
  %22 = ptrtoint ptr %non_asap_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %non_asap_num, align 4
  %inc21 = add i32 %23, 1
  store i32 %inc21, ptr %non_asap_num, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17.if.end22_crit_edge
  %duration = getelementptr inbounds %struct.iwl_rx_packet, ptr %5, i32 2, i32 1
  %24 = ptrtoint ptr %duration to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %duration, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %div = udiv i32 %26, 1000
  %conv23 = zext i32 %div to i64
  %total_duration_ms = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 6
  %27 = ptrtoint ptr %total_duration_ms to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %total_duration_ms, align 8
  %add = add i64 %28, %conv23
  store i64 %add, ptr %total_duration_ms, align 8
  %and24 = and i32 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %unknown_triggers_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 7
  %29 = ptrtoint ptr %unknown_triggers_num to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unknown_triggers_num, align 8
  %inc27 = add i32 %30, 1
  store i32 %inc27, ptr %unknown_triggers_num, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %and29 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %reschedule_requests_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 8
  %31 = ptrtoint ptr %reschedule_requests_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reschedule_requests_num, align 4
  %inc32 = add i32 %32, 1
  store i32 %inc32, ptr %reschedule_requests_num, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  %and34 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %out_of_window_triggers_num = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 161, i32 9
  %33 = ptrtoint ptr %out_of_window_triggers_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_of_window_triggers_num, align 8
  %inc37 = add i32 %34, 1
  store i32 %inc37, ptr %out_of_window_triggers_num, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_rm_sta_id(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_mvm_dealloc_int_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_mvm_get_ctrl_pos(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 326, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 329, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 335, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 376, i32 2}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 393, i32 6}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 398, i32 3}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 403, i32 9}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 238, i32 4}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 158, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 294, i32 3}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/ftm-responder.c", i32 196, i32 3}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{i8 0, i8 2}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2149750843}
!45 = !{i64 2149751109}
