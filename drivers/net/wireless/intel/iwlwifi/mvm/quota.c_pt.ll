; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/quota.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.iwl_mvm_quota_iterator_data = type { [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, ptr }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.136, %struct.anon.137, %struct.anon.137, %struct.list_head, %union.anon.138, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.151, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.153, %struct.list_head, %struct.anon.155, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.iwl_time_quota_data_v1 = type { i32, i32, i32 }
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

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/intel/iwlwifi/mvm/quota.c\00", [49 x i8] zeroinitializer }, align 32
@__func__.iwl_mvm_update_quotas = private unnamed_addr constant [22 x i8] c"iwl_mvm_update_quotas\00", align 1
@.str.1 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"quota: low-latency binding active, remaining quota per other binding: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"quota: splitting evenly per binding: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@iwl_mvm_update_quotas.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Binding=%d, quota=%u > max=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"quota: giving remainder of %d to binding %d\0A\00", [51 x i8] zeroinitializer }, align 32
@iwl_mvm_update_quotas.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zero quota on binding %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to send quota: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@iwl_mvm_quota_iterator.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_quota_iterator.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@iwl_mvm_quota_iterator.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.iwl_mvm_adjust_quota_for_noa = private unnamed_addr constant [29 x i8] c"iwl_mvm_adjust_quota_for_noa\00", align 1
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"quota: adjust for NoA from %d to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 6, i64 10]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 142, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 192, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 203, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 241, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 255, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 278, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 294, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 119, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_update_quotas(ptr noundef %mvm, i1 noundef zeroext %force_update, ptr noundef %disabled_vif) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.iwl_time_quota_cmd, align 4
  %data = alloca %struct.iwl_mvm_quota_iterator_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmd) #4
  %0 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %data) #4
  %1 = call ptr @memset(ptr %data, i32 0, i32 16)
  %colors = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 1
  %low_latency = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 2
  %2 = call ptr @memset(ptr %colors, i32 255, i32 16)
  %n_low_latency_bindings = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 4
  %disabled_vif5 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 5
  %3 = call ptr @memset(ptr %low_latency, i32 0, i32 36)
  %4 = ptrtoint ptr %disabled_vif5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %disabled_vif, ptr %disabled_vif5, align 4
  %last_quota_cmd = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 137
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 6, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !35

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw, align 8
  %arrayidx.i.i = getelementptr %struct.iwl_fw, ptr %7, i32 0, i32 5, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.end31, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 12
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %do.end38, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  %hw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 5
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @iwl_mvm_quota_iterator, ptr noundef nonnull %data) #4
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.iwl_fw, ptr %17, i32 0, i32 5, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %cmd, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %23 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.i.not.i.1 = icmp eq i32 %24, 0
  %arrayidx.i.1 = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 1
  %arrayidx3.i.1 = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 1
  %retval.0.i.1 = select i1 %tobool.i.i.not.i.1, ptr %arrayidx3.i.1, ptr %arrayidx.i.1
  %25 = ptrtoint ptr %retval.0.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %retval.0.i.1, align 4
  %arrayidx.1 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add i32 %27, %22
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.i.not.i.2 = icmp eq i32 %30, 0
  %arrayidx.i.2 = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 2
  %arrayidx3.i.2 = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 2
  %retval.0.i.2 = select i1 %tobool.i.i.not.i.2, ptr %arrayidx3.i.2, ptr %arrayidx.i.2
  %31 = ptrtoint ptr %retval.0.i.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %retval.0.i.2, align 4
  %arrayidx.2 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2, align 4
  %add.2 = add i32 %33, %add.1
  %34 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %36 = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.i.not.i.3 = icmp eq i32 %36, 0
  %arrayidx.i.3 = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 3
  %arrayidx3.i.3 = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 3
  %retval.0.i.3 = select i1 %tobool.i.i.not.i.3, ptr %arrayidx3.i.3, ptr %arrayidx.i.3
  %37 = ptrtoint ptr %retval.0.i.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %retval.0.i.3, align 4
  %arrayidx.3 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add i32 %39, %add.2
  %40 = ptrtoint ptr %n_low_latency_bindings to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_low_latency_bindings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp43 = icmp eq i32 %41, 1
  br i1 %cmp43, label %for.body47.preheader, label %if.end58.thread

for.body47.preheader:                             ; preds = %do.end38
  %42 = ptrtoint ptr %low_latency to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %low_latency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool50.not = icmp eq i32 %43, 0
  br i1 %tobool50.not, label %for.inc55, label %for.body47.preheader.if.then51_crit_edge

for.body47.preheader.if.then51_crit_edge:         ; preds = %for.body47.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

if.end58.thread:                                  ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3)
  %tobool61.not464 = icmp eq i32 %add.3, 0
  br label %if.else

if.then51:                                        ; preds = %for.inc55.2.if.then51_crit_edge, %for.inc55.1.if.then51_crit_edge, %for.inc55.if.then51_crit_edge, %for.body47.preheader.if.then51_crit_edge
  %i.1473.lcssa = phi i32 [ 0, %for.body47.preheader.if.then51_crit_edge ], [ 1, %for.inc55.if.then51_crit_edge ], [ 2, %for.inc55.1.if.then51_crit_edge ], [ 3, %for.inc55.2.if.then51_crit_edge ]
  %arrayidx53 = getelementptr [4 x i32], ptr %data, i32 0, i32 %i.1473.lcssa
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx53, align 4
  %sub = sub i32 %add.3, %45
  br label %if.end58

for.inc55:                                        ; preds = %for.body47.preheader
  %arrayidx49.1 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx49.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool50.not.1 = icmp eq i32 %47, 0
  br i1 %tobool50.not.1, label %for.inc55.1, label %for.inc55.if.then51_crit_edge

for.inc55.if.then51_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

for.inc55.1:                                      ; preds = %for.inc55
  %arrayidx49.2 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx49.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool50.not.2 = icmp eq i32 %49, 0
  br i1 %tobool50.not.2, label %for.inc55.2, label %for.inc55.1.if.then51_crit_edge

for.inc55.1.if.then51_crit_edge:                  ; preds = %for.inc55.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

for.inc55.2:                                      ; preds = %for.inc55.1
  %arrayidx49.3 = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx49.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool50.not.3 = icmp eq i32 %51, 0
  br i1 %tobool50.not.3, label %for.inc55.2.if.end58_crit_edge, label %for.inc55.2.if.then51_crit_edge

for.inc55.2.if.then51_crit_edge:                  ; preds = %for.inc55.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then51

for.inc55.2.if.end58_crit_edge:                   ; preds = %for.inc55.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.end58:                                         ; preds = %for.inc55.2.if.end58_crit_edge, %if.then51
  %n_non_lowlat.0 = phi i32 [ %sub, %if.then51 ], [ %add.3, %for.inc55.2.if.end58_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_non_lowlat.0)
  %tobool61.not = icmp eq i32 %n_non_lowlat.0, 0
  br i1 %tobool61.not, label %if.end58.if.else_crit_edge, label %if.then62

if.end58.if.else_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %div = sdiv i32 47, %n_non_lowlat.0
  %mul = mul i32 %div, %n_non_lowlat.0
  %sub64 = sub i32 47, %mul
  %52 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %53, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_quotas, ptr noundef nonnull @.str.1, i32 noundef %div) #4
  br label %if.end83

if.else:                                          ; preds = %if.end58.if.else_crit_edge, %if.end58.thread
  %tobool61.not467 = phi i1 [ %tobool61.not464, %if.end58.thread ], [ true, %if.end58.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.3)
  %tobool71.not = icmp eq i32 %add.3, 0
  br i1 %tobool71.not, label %if.else.if.end83_crit_edge, label %if.then72

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83

if.then72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %add.3.frozen = freeze i32 %add.3
  %div73 = sdiv i32 128, %add.3.frozen
  %54 = mul i32 %div73, %add.3.frozen
  %rem.decomposed = sub i32 128, %54
  %55 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %56, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_quotas, ptr noundef nonnull @.str.2, i32 noundef %div73) #4
  br label %if.end83

if.end83:                                         ; preds = %if.then72, %if.else.if.end83_crit_edge, %if.then62
  %tobool61.not466 = phi i1 [ false, %if.then62 ], [ %tobool61.not467, %if.then72 ], [ %tobool61.not467, %if.else.if.end83_crit_edge ]
  %quota_rem.0 = phi i32 [ %sub64, %if.then62 ], [ %rem.decomposed, %if.then72 ], [ 0, %if.else.if.end83_crit_edge ]
  %quota.0 = phi i32 [ %div, %if.then62 ], [ %div73, %if.then72 ], [ 0, %if.else.if.end83_crit_edge ]
  br label %for.body86

for.cond190.preheader:                            ; preds = %for.inc187
  %57 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i424 = getelementptr %struct.iwl_fw, ptr %58, i32 0, i32 5, i32 7, i32 1
  %59 = ptrtoint ptr %arrayidx.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i.i.i424, align 4
  %arrayidx3.i427.sroa.gep = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx3.i427.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx3.i427.sroa.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp195.not = icmp eq i32 %62, 0
  br i1 %cmp195.not, label %for.inc206, label %for.cond190.preheader.if.then196_crit_edge

for.cond190.preheader.if.then196_crit_edge:       ; preds = %for.cond190.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

for.body86:                                       ; preds = %for.inc187.for.body86_crit_edge, %if.end83
  %i.2476 = phi i32 [ 0, %if.end83 ], [ %inc188, %for.inc187.for.body86_crit_edge ]
  %idx.0474 = phi i32 [ 0, %if.end83 ], [ %idx.1, %for.inc187.for.body86_crit_edge ]
  %arrayidx88 = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 1, i32 %i.2476
  %63 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp89 = icmp slt i32 %64, 0
  br i1 %cmp89, label %for.body86.for.inc187_crit_edge, label %if.end91

for.body86.for.inc187_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc187

if.end91:                                         ; preds = %for.body86
  %65 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i418 = getelementptr %struct.iwl_fw, ptr %66, i32 0, i32 5, i32 7, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i.i418 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %arrayidx.i.i.i.i418, align 4
  %69 = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i.i.not.i419 = icmp eq i32 %69, 0
  %arrayidx.i420 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474
  %arrayidx3.i421 = getelementptr %struct.iwl_time_quota_data_v1, ptr %cmd, i32 %idx.0474
  %retval.0.i422 = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421, ptr %arrayidx.i420
  %shl95 = shl i32 %64, 8
  %or = or i32 %shl95, %i.2476
  %70 = call i32 @llvm.bswap.i32(i32 %or)
  %71 = ptrtoint ptr %retval.0.i422 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %retval.0.i422, align 4
  %arrayidx98 = getelementptr [4 x i32], ptr %data, i32 0, i32 %i.2476
  %72 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp99 = icmp slt i32 %73, 1
  br i1 %cmp99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i421.sroa.gep456 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i421, i32 0, i32 1
  %arrayidx.i420.sroa.gep457 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474, i32 1
  %retval.0.i422.sroa.sel458 = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421.sroa.gep456, ptr %arrayidx.i420.sroa.gep457
  %74 = ptrtoint ptr %retval.0.i422.sroa.sel458 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %retval.0.i422.sroa.sel458, align 4
  br label %if.end130

if.else102:                                       ; preds = %if.end91
  %arrayidx104 = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 3, i32 %i.2476
  %75 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool105.not = icmp eq i32 %76, 0
  br i1 %tobool105.not, label %if.else112, label %if.then106

if.then106:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #6
  %mul109 = shl i32 %76, 7
  %div110 = sdiv i32 %mul109, 100
  %77 = call i32 @llvm.bswap.i32(i32 %div110)
  %arrayidx3.i421.sroa.gep447 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i421, i32 0, i32 1
  %arrayidx.i420.sroa.gep448 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474, i32 1
  %retval.0.i422.sroa.sel449 = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421.sroa.gep447, ptr %arrayidx.i420.sroa.gep448
  %78 = ptrtoint ptr %retval.0.i422.sroa.sel449 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %retval.0.i422.sroa.sel449, align 4
  br label %if.end130

if.else112:                                       ; preds = %if.else102
  %79 = ptrtoint ptr %n_low_latency_bindings to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %n_low_latency_bindings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp114 = icmp ne i32 %80, 1
  %or.cond415 = select i1 %cmp114, i1 true, i1 %tobool61.not466
  br i1 %or.cond415, label %if.else112.if.else123_crit_edge, label %land.lhs.true117

if.else112.if.else123_crit_edge:                  ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else123

land.lhs.true117:                                 ; preds = %if.else112
  %arrayidx119 = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %data, i32 0, i32 2, i32 %i.2476
  %81 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool120.not = icmp eq i32 %82, 0
  br i1 %tobool120.not, label %land.lhs.true117.if.else123_crit_edge, label %if.then121

land.lhs.true117.if.else123_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else123

if.then121:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i421.sroa.gep444 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i421, i32 0, i32 1
  %arrayidx.i420.sroa.gep445 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474, i32 1
  %retval.0.i422.sroa.sel446 = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421.sroa.gep444, ptr %arrayidx.i420.sroa.gep445
  %83 = ptrtoint ptr %retval.0.i422.sroa.sel446 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1358954496, ptr %retval.0.i422.sroa.sel446, align 4
  br label %if.end130

if.else123:                                       ; preds = %land.lhs.true117.if.else123_crit_edge, %if.else112.if.else123_crit_edge
  %mul126 = mul i32 %73, %quota.0
  %84 = call i32 @llvm.bswap.i32(i32 %mul126)
  %arrayidx3.i421.sroa.gep = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i421, i32 0, i32 1
  %arrayidx.i420.sroa.gep = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474, i32 1
  %retval.0.i422.sroa.sel = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421.sroa.gep, ptr %arrayidx.i420.sroa.gep
  %85 = ptrtoint ptr %retval.0.i422.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %retval.0.i422.sroa.sel, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.else123, %if.then121, %if.then106, %if.then100
  %retval.0.i422.sroa.sel455.pre-phi = phi ptr [ %retval.0.i422.sroa.sel449, %if.then106 ], [ %retval.0.i422.sroa.sel, %if.else123 ], [ %retval.0.i422.sroa.sel446, %if.then121 ], [ %retval.0.i422.sroa.sel458, %if.then100 ]
  %86 = ptrtoint ptr %retval.0.i422.sroa.sel455.pre-phi to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %retval.0.i422.sroa.sel455.pre-phi, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %88)
  %cmp132 = icmp ugt i32 %88, 128
  br i1 %cmp132, label %land.rhs139, label %if.end130.if.end178_crit_edge

if.end130.if.end178_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

land.rhs139:                                      ; preds = %if.end130
  %.b414 = load i1, ptr @iwl_mvm_update_quotas.__already_done, align 1
  br i1 %.b414, label %land.rhs139.if.end178_crit_edge, label %if.then150, !prof !36

land.rhs139.if.end178_crit_edge:                  ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then150:                                       ; preds = %land.rhs139
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_mvm_update_quotas.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %idx.0474, i32 noundef %88, i32 noundef 128) #4
  br label %if.end178

if.end178:                                        ; preds = %if.then150, %land.rhs139.if.end178_crit_edge, %if.end130.if.end178_crit_edge
  %arrayidx3.i421.sroa.gep450 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i421, i32 0, i32 2
  %arrayidx.i420.sroa.gep451 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %idx.0474, i32 2
  %retval.0.i422.sroa.sel452 = select i1 %tobool.i.i.not.i419, ptr %arrayidx3.i421.sroa.gep450, ptr %arrayidx.i420.sroa.gep451
  %89 = ptrtoint ptr %retval.0.i422.sroa.sel452 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %retval.0.i422.sroa.sel452, align 4
  %inc186 = add i32 %idx.0474, 1
  br label %for.inc187

for.inc187:                                       ; preds = %if.end178, %for.body86.for.inc187_crit_edge
  %idx.1 = phi i32 [ %idx.0474, %for.body86.for.inc187_crit_edge ], [ %inc186, %if.end178 ]
  %inc188 = add nuw nsw i32 %i.2476, 1
  %exitcond.not = icmp eq i32 %inc188, 4
  br i1 %exitcond.not, label %for.cond190.preheader, label %for.inc187.for.body86_crit_edge

for.inc187.for.body86_crit_edge:                  ; preds = %for.inc187
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body86

if.then196:                                       ; preds = %for.inc206.2.if.then196_crit_edge, %for.inc206.1.if.then196_crit_edge, %for.inc206.if.then196_crit_edge, %for.cond190.preheader.if.then196_crit_edge
  %i.3480.lcssa = phi i32 [ 0, %for.cond190.preheader.if.then196_crit_edge ], [ 1, %for.inc206.if.then196_crit_edge ], [ 2, %for.inc206.1.if.then196_crit_edge ], [ 3, %for.inc206.2.if.then196_crit_edge ]
  %retval.0.i428.sroa.sel.lcssa = phi ptr [ %arrayidx3.i427.sroa.gep, %for.cond190.preheader.if.then196_crit_edge ], [ %retval.0.i428.sroa.sel.1, %for.inc206.if.then196_crit_edge ], [ %retval.0.i428.sroa.sel.2, %for.inc206.1.if.then196_crit_edge ], [ %retval.0.i428.sroa.sel.3, %for.inc206.2.if.then196_crit_edge ]
  %.lcssa = phi i32 [ %62, %for.cond190.preheader.if.then196_crit_edge ], [ %99, %for.inc206.if.then196_crit_edge ], [ %104, %for.inc206.1.if.then196_crit_edge ], [ %109, %for.inc206.2.if.then196_crit_edge ]
  %90 = call i32 @llvm.bswap.i32(i32 %.lcssa) #4
  %add.i = add i32 %90, %quota_rem.0
  %91 = call i32 @llvm.bswap.i32(i32 %add.i) #4
  %92 = ptrtoint ptr %retval.0.i428.sroa.sel.lcssa to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %retval.0.i428.sroa.sel.lcssa, align 4
  %93 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %94, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_update_quotas, ptr noundef nonnull @.str.4, i32 noundef %quota_rem.0, i32 noundef %i.3480.lcssa) #4
  br label %for.end208

for.inc206:                                       ; preds = %for.cond190.preheader
  %95 = ptrtoint ptr %arrayidx.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %arrayidx.i.i.i.i424, align 4
  %97 = and i32 %96, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.i.not.i425.1 = icmp eq i32 %97, 0
  %arrayidx.i426.sroa.gep.1 = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 1, i32 1
  %retval.0.i428.sroa.sel.1 = select i1 %tobool.i.i.not.i425.1, ptr %arrayidx.i.1, ptr %arrayidx.i426.sroa.gep.1
  %98 = ptrtoint ptr %retval.0.i428.sroa.sel.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %retval.0.i428.sroa.sel.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp195.not.1 = icmp eq i32 %99, 0
  br i1 %cmp195.not.1, label %for.inc206.1, label %for.inc206.if.then196_crit_edge

for.inc206.if.then196_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

for.inc206.1:                                     ; preds = %for.inc206
  %100 = ptrtoint ptr %arrayidx.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %arrayidx.i.i.i.i424, align 4
  %102 = and i32 %101, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.i.i.not.i425.2 = icmp eq i32 %102, 0
  %arrayidx3.i427.sroa.gep.2 = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 2, i32 1
  %retval.0.i428.sroa.sel.2 = select i1 %tobool.i.i.not.i425.2, ptr %arrayidx3.i427.sroa.gep.2, ptr %arrayidx3.i.3
  %103 = ptrtoint ptr %retval.0.i428.sroa.sel.2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %retval.0.i428.sroa.sel.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp195.not.2 = icmp eq i32 %104, 0
  br i1 %cmp195.not.2, label %for.inc206.2, label %for.inc206.1.if.then196_crit_edge

for.inc206.1.if.then196_crit_edge:                ; preds = %for.inc206.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

for.inc206.2:                                     ; preds = %for.inc206.1
  %105 = ptrtoint ptr %arrayidx.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i.i.i.i424, align 4
  %107 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.i.not.i425.3 = icmp eq i32 %107, 0
  %arrayidx3.i427.sroa.gep.3 = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 3, i32 1
  %arrayidx.i426.sroa.gep.3 = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 3, i32 1
  %retval.0.i428.sroa.sel.3 = select i1 %tobool.i.i.not.i425.3, ptr %arrayidx3.i427.sroa.gep.3, ptr %arrayidx.i426.sroa.gep.3
  %108 = ptrtoint ptr %retval.0.i428.sroa.sel.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %retval.0.i428.sroa.sel.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp195.not.3 = icmp eq i32 %109, 0
  br i1 %cmp195.not.3, label %for.inc206.2.for.end208_crit_edge, label %for.inc206.2.if.then196_crit_edge

for.inc206.2.if.then196_crit_edge:                ; preds = %for.inc206.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then196

for.inc206.2.for.end208_crit_edge:                ; preds = %for.inc206.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end208

for.end208:                                       ; preds = %for.inc206.2.for.end208_crit_edge, %if.then196
  %noa_duration.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 139
  %110 = ptrtoint ptr %noa_duration.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %noa_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i, label %for.end208.for.body211.preheader_crit_edge, label %lor.lhs.false.i

for.end208.for.body211.preheader_crit_edge:       ; preds = %for.end208
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body211.preheader

lor.lhs.false.i:                                  ; preds = %for.end208
  %noa_vif.i = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 140
  %112 = ptrtoint ptr %noa_vif.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %noa_vif.i, align 8
  %tobool1.not.i = icmp eq ptr %113, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.for.body211.preheader_crit_edge, label %if.end.i

lor.lhs.false.i.for.body211.preheader_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body211.preheader

if.end.i:                                         ; preds = %lor.lhs.false.i
  %ap_ibss_active.i = getelementptr inbounds %struct.ieee80211_vif, ptr %113, i32 1, i32 1, i32 8
  %114 = ptrtoint ptr %ap_ibss_active.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %ap_ibss_active.i, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool3.not.i = icmp eq i8 %115, 0
  br i1 %tobool3.not.i, label %if.end.i.for.body211.preheader_crit_edge, label %if.end5.i

if.end.i.for.body211.preheader_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body211.preheader

if.end5.i:                                        ; preds = %if.end.i
  %phy_ctxt.i = getelementptr inbounds %struct.ieee80211_vif, ptr %113, i32 1, i32 1, i32 40
  %116 = ptrtoint ptr %phy_ctxt.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %phy_ctxt.i, align 8
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %117, align 4
  %conv.i = zext i16 %119 to i32
  %beacon_int7.i = getelementptr inbounds %struct.ieee80211_vif, ptr %113, i32 0, i32 1, i32 19
  %120 = ptrtoint ptr %beacon_int7.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %beacon_int7.i, align 2
  %conv8.i = zext i16 %121 to i32
  %122 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.i = getelementptr %struct.iwl_fw, ptr %123, i32 0, i32 5, i32 7, i32 1
  %124 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %126 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cmd, align 4
  %128 = lshr i32 %127, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %conv.i)
  %cmp13.not.i = icmp eq i32 %128, %conv.i
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end5.i.cleanup.i_crit_edge

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %129 = ptrtoint ptr %arrayidx3.i427.sroa.gep to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx3.i427.sroa.gep, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130) #4
  %sub.i = sub i32 %conv8.i, %111
  %mul.i = mul i32 %131, %sub.i
  %div.i = udiv i32 %mul.i, %conv8.i
  %132 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %133, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_adjust_quota_for_noa, ptr noundef nonnull @.str.10, i32 noundef %131, i32 noundef %div.i) #4
  %134 = call i32 @llvm.bswap.i32(i32 %div.i) #4
  %135 = ptrtoint ptr %arrayidx3.i427.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx3.i427.sroa.gep, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end16.i, %if.end5.i.cleanup.i_crit_edge
  %136 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.1.i = getelementptr %struct.iwl_fw, ptr %137, i32 0, i32 5, i32 7, i32 1
  %138 = ptrtoint ptr %arrayidx.i.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %arrayidx.i.i.i.i.1.i, align 4
  %140 = and i32 %139, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.i.not.i.1.i = icmp eq i32 %140, 0
  %141 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %arrayidx3.i.1.i.val = load i32, ptr %arrayidx3.i.1, align 4
  %142 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %arrayidx.i.1.i.val = load i32, ptr %arrayidx.i.1, align 4
  %143 = select i1 %tobool.i.i.not.i.1.i, i32 %arrayidx3.i.1.i.val, i32 %arrayidx.i.1.i.val
  %144 = lshr i32 %143, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %conv.i)
  %cmp13.not.1.i = icmp eq i32 %144, %conv.i
  br i1 %cmp13.not.1.i, label %if.end16.1.i, label %cleanup.i.cleanup.1.i_crit_edge

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

if.end16.1.i:                                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.1.i.sroa.gep = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 1, i32 1
  %retval.0.i.1.i.sroa.sel = select i1 %tobool.i.i.not.i.1.i, ptr %arrayidx.i.1, ptr %arrayidx.i.1.i.sroa.gep
  %145 = ptrtoint ptr %retval.0.i.1.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %retval.0.i.1.i.sroa.sel, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146) #4
  %148 = ptrtoint ptr %noa_duration.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %noa_duration.i, align 4
  %sub.1.i = sub i32 %conv8.i, %149
  %mul.1.i = mul i32 %sub.1.i, %147
  %div.1.i = udiv i32 %mul.1.i, %conv8.i
  %150 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %151, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_adjust_quota_for_noa, ptr noundef nonnull @.str.10, i32 noundef %147, i32 noundef %div.1.i) #4
  %152 = call i32 @llvm.bswap.i32(i32 %div.1.i) #4
  %153 = ptrtoint ptr %retval.0.i.1.i.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %retval.0.i.1.i.sroa.sel, align 4
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end16.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %154 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.2.i = getelementptr %struct.iwl_fw, ptr %155, i32 0, i32 5, i32 7, i32 1
  %156 = ptrtoint ptr %arrayidx.i.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %arrayidx.i.i.i.i.2.i, align 4
  %158 = and i32 %157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.i.i.not.i.2.i = icmp eq i32 %158, 0
  %159 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %159)
  %arrayidx3.i.2.i.val = load i32, ptr %arrayidx3.i.2, align 4
  %160 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %arrayidx.i.2.i.val = load i32, ptr %arrayidx.i.2, align 4
  %161 = select i1 %tobool.i.i.not.i.2.i, i32 %arrayidx3.i.2.i.val, i32 %arrayidx.i.2.i.val
  %162 = lshr i32 %161, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %conv.i)
  %cmp13.not.2.i = icmp eq i32 %162, %conv.i
  br i1 %cmp13.not.2.i, label %if.end16.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

if.end16.2.i:                                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i.2.i.sroa.gep = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 2, i32 1
  %retval.0.i.2.i.sroa.sel = select i1 %tobool.i.i.not.i.2.i, ptr %arrayidx3.i.2.i.sroa.gep, ptr %arrayidx3.i.3
  %163 = ptrtoint ptr %retval.0.i.2.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %retval.0.i.2.i.sroa.sel, align 4
  %165 = call i32 @llvm.bswap.i32(i32 %164) #4
  %166 = ptrtoint ptr %noa_duration.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %noa_duration.i, align 4
  %sub.2.i = sub i32 %conv8.i, %167
  %mul.2.i = mul i32 %sub.2.i, %165
  %div.2.i = udiv i32 %mul.2.i, %conv8.i
  %168 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %169, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_adjust_quota_for_noa, ptr noundef nonnull @.str.10, i32 noundef %165, i32 noundef %div.2.i) #4
  %170 = call i32 @llvm.bswap.i32(i32 %div.2.i) #4
  %171 = ptrtoint ptr %retval.0.i.2.i.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %retval.0.i.2.i.sroa.sel, align 4
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end16.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  %172 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i.3.i = getelementptr %struct.iwl_fw, ptr %173, i32 0, i32 5, i32 7, i32 1
  %174 = ptrtoint ptr %arrayidx.i.i.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %arrayidx.i.i.i.i.3.i, align 4
  %176 = and i32 %175, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.i.i.not.i.3.i = icmp eq i32 %176, 0
  %177 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %arrayidx3.i.3.i.val = load i32, ptr %arrayidx3.i.3, align 4
  %178 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %arrayidx.i.3.i.val = load i32, ptr %arrayidx.i.3, align 4
  %179 = select i1 %tobool.i.i.not.i.3.i, i32 %arrayidx3.i.3.i.val, i32 %arrayidx.i.3.i.val
  %180 = lshr i32 %179, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %conv.i)
  %cmp13.not.3.i = icmp eq i32 %180, %conv.i
  br i1 %cmp13.not.3.i, label %if.end16.3.i, label %cleanup.2.i.for.body211.preheader_crit_edge

cleanup.2.i.for.body211.preheader_crit_edge:      ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body211.preheader

if.end16.3.i:                                     ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i.3.i.sroa.gep = getelementptr inbounds %struct.iwl_time_quota_data_v1, ptr %cmd, i32 3, i32 1
  %arrayidx.i.3.i.sroa.gep = getelementptr inbounds [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 3, i32 1
  %retval.0.i.3.i.sroa.sel = select i1 %tobool.i.i.not.i.3.i, ptr %arrayidx3.i.3.i.sroa.gep, ptr %arrayidx.i.3.i.sroa.gep
  %181 = ptrtoint ptr %retval.0.i.3.i.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %retval.0.i.3.i.sroa.sel, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182) #4
  %184 = ptrtoint ptr %noa_duration.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %noa_duration.i, align 4
  %sub.3.i = sub i32 %conv8.i, %185
  %mul.3.i = mul i32 %sub.3.i, %183
  %div.3.i = udiv i32 %mul.3.i, %conv8.i
  %186 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %187, i32 noundef 16, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_mvm_adjust_quota_for_noa, ptr noundef nonnull @.str.10, i32 noundef %183, i32 noundef %div.3.i) #4
  %188 = call i32 @llvm.bswap.i32(i32 %div.3.i) #4
  %189 = ptrtoint ptr %retval.0.i.3.i.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %retval.0.i.3.i.sroa.sel, align 4
  br label %for.body211.preheader

for.body211.preheader:                            ; preds = %if.end16.3.i, %cleanup.2.i.for.body211.preheader_crit_edge, %if.end.i.for.body211.preheader_crit_edge, %lor.lhs.false.i.for.body211.preheader_crit_edge, %for.end208.for.body211.preheader_crit_edge
  br label %for.body211

for.body211:                                      ; preds = %for.inc292.for.body211_crit_edge, %for.body211.preheader
  %i.4482 = phi i32 [ %inc293, %for.inc292.for.body211_crit_edge ], [ 0, %for.body211.preheader ]
  %send.0.off0481 = phi i1 [ %send.3.off0, %for.inc292.for.body211_crit_edge ], [ false, %for.body211.preheader ]
  %190 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i430 = getelementptr %struct.iwl_fw, ptr %191, i32 0, i32 5, i32 7, i32 1
  %192 = ptrtoint ptr %arrayidx.i.i.i.i430 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %arrayidx.i.i.i.i430, align 4
  %194 = and i32 %193, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool.i.i.not.i431 = icmp eq i32 %194, 0
  %arrayidx.i432 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %i.4482
  %arrayidx3.i433 = getelementptr %struct.iwl_time_quota_data_v1, ptr %cmd, i32 %i.4482
  %retval.0.i434 = select i1 %tobool.i.i.not.i431, ptr %arrayidx3.i433, ptr %arrayidx.i432
  %195 = ptrtoint ptr %arrayidx.i.i.i.i430 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %arrayidx.i.i.i.i430, align 4
  %197 = and i32 %196, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool.i.i.not.i437 = icmp eq i32 %197, 0
  %arrayidx.i438 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %last_quota_cmd, i32 0, i32 %i.4482
  %arrayidx3.i439 = getelementptr %struct.iwl_time_quota_data_v1, ptr %last_quota_cmd, i32 %i.4482
  %retval.0.i440 = select i1 %tobool.i.i.not.i437, ptr %arrayidx3.i439, ptr %arrayidx.i438
  %198 = ptrtoint ptr %retval.0.i434 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %retval.0.i434, align 4
  %200 = ptrtoint ptr %retval.0.i440 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %retval.0.i440, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %201)
  %cmp216.not = icmp ne i32 %199, %201
  %arrayidx3.i433.sroa.gep459 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i433, i32 0, i32 2
  %arrayidx.i432.sroa.gep460 = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %i.4482, i32 2
  %retval.0.i434.sroa.sel461 = select i1 %tobool.i.i.not.i431, ptr %arrayidx3.i433.sroa.gep459, ptr %arrayidx.i432.sroa.gep460
  %202 = ptrtoint ptr %retval.0.i434.sroa.sel461 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %retval.0.i434.sroa.sel461, align 4
  %max_duration220 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %retval.0.i440, i32 0, i32 2
  %204 = ptrtoint ptr %max_duration220 to i32
  call void @__asan_loadN_noabort(i32 %204, i32 4)
  %205 = load i32, ptr %max_duration220, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %205)
  %cmp221.not = icmp ne i32 %203, %205
  %arrayidx3.i433.sroa.gep = getelementptr inbounds %struct.iwl_time_quota_data, ptr %arrayidx3.i433, i32 0, i32 1
  %arrayidx.i432.sroa.gep = getelementptr [4 x %struct.iwl_time_quota_data], ptr %cmd, i32 0, i32 %i.4482, i32 1
  %retval.0.i434.sroa.sel = select i1 %tobool.i.i.not.i431, ptr %arrayidx3.i433.sroa.gep, ptr %arrayidx.i432.sroa.gep
  %206 = ptrtoint ptr %retval.0.i434.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %retval.0.i434.sroa.sel, align 4
  %208 = call i32 @llvm.bswap.i32(i32 %207)
  %quota225 = getelementptr inbounds %struct.iwl_time_quota_data, ptr %retval.0.i440, i32 0, i32 1
  %209 = ptrtoint ptr %quota225 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %quota225, align 1
  %211 = call i32 @llvm.bswap.i32(i32 %210)
  %sub226 = sub i32 %208, %211
  %212 = call i32 @llvm.abs.i32(i32 %sub226, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %212)
  %cmp230 = icmp sgt i32 %212, 4
  %213 = select i1 %cmp230, i1 true, i1 %cmp221.not
  %214 = select i1 %213, i1 true, i1 %cmp216.not
  %send.3.off0 = select i1 %214, i1 true, i1 %send.0.off0481
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %199)
  %cmp234 = icmp ne i32 %199, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp239 = icmp eq i32 %207, 0
  %or.cond468 = select i1 %cmp234, i1 %cmp239, i1 false
  br i1 %or.cond468, label %land.rhs246, label %for.body211.for.inc292_crit_edge

for.body211.for.inc292_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc292

land.rhs246:                                      ; preds = %for.body211
  %.b409413 = load i1, ptr @iwl_mvm_update_quotas.__already_done.5, align 1
  br i1 %.b409413, label %land.rhs246.for.inc292_crit_edge, label %if.then257, !prof !36

land.rhs246.for.inc292_crit_edge:                 ; preds = %land.rhs246
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc292

if.then257:                                       ; preds = %land.rhs246
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_mvm_update_quotas.__already_done.5, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %i.4482) #4
  br label %for.inc292

for.inc292:                                       ; preds = %if.then257, %land.rhs246.for.inc292_crit_edge, %for.body211.for.inc292_crit_edge
  %inc293 = add nuw nsw i32 %i.4482, 1
  %exitcond488.not = icmp eq i32 %inc293, 4
  br i1 %exitcond488.not, label %for.end294, label %for.inc292.for.body211_crit_edge

for.inc292.for.body211_crit_edge:                 ; preds = %for.inc292
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body211

for.end294:                                       ; preds = %for.inc292
  %brmerge = or i1 %send.3.off0, %force_update
  br i1 %brmerge, label %if.end299, label %for.end294.cleanup_crit_edge

for.end294.cleanup_crit_edge:                     ; preds = %for.end294
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end299:                                        ; preds = %for.end294
  %215 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %fw, align 8
  %arrayidx.i.i.i.i442 = getelementptr %struct.iwl_fw, ptr %216, i32 0, i32 5, i32 7, i32 1
  %217 = ptrtoint ptr %arrayidx.i.i.i.i442 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %arrayidx.i.i.i.i442, align 4
  %219 = and i32 %218, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool.i.i.not.i443 = icmp eq i32 %219, 0
  %conv = select i1 %tobool.i.i.not.i443, i16 48, i16 64
  %call301 = call i32 @iwl_mvm_send_cmd_pdu(ptr noundef %mvm, i32 noundef 44, i32 noundef 0, i16 noundef zeroext %conv, ptr noundef nonnull %cmd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.else311, label %do.end307

do.end307:                                        ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  %220 = ptrtoint ptr %mvm to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mvm, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %221, i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %call301) #4
  br label %cleanup

if.else311:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  %222 = call ptr @memcpy(ptr %last_quota_cmd, ptr %cmd, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.else311, %do.end307, %for.end294.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %for.end294.cleanup_crit_edge ], [ 0, %if.else311 ], [ %call301, %do.end307 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %data) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmd) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_mvm_quota_iterator(ptr nocapture noundef %_data, ptr nocapture noundef readnone %mac, ptr noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled_vif = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %_data, i32 0, i32 5
  %0 = ptrtoint ptr %disabled_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disabled_vif, align 4
  %cmp = icmp eq ptr %1, %vif
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_ctxt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 40
  %2 = ptrtoint ptr %phy_ctxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ctxt, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp5 = icmp ugt i16 %5, 3
  br i1 %cmp5, label %land.rhs, label %if.end50

land.rhs:                                         ; preds = %if.end2
  %.b253 = load i1, ptr @iwl_mvm_quota_iterator.__already_done, align 1
  br i1 %.b253, label %land.rhs.cleanup_crit_edge, label %if.then15, !prof !36

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_mvm_quota_iterator.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end50:                                         ; preds = %if.end2
  %6 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vif, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %land.end70 [
    i32 2, label %sw.bb
    i32 3, label %if.end50.sw.bb54_crit_edge
    i32 1, label %if.end50.sw.bb54_crit_edge255
    i32 6, label %sw.bb58
    i32 10, label %if.end50.cleanup_crit_edge
  ]

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50.sw.bb54_crit_edge255:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb54

if.end50.sw.bb54_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb54

sw.bb:                                            ; preds = %if.end50
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %assoc, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool51.not = icmp eq i8 %10, 0
  br i1 %tobool51.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb54:                                          ; preds = %if.end50.sw.bb54_crit_edge, %if.end50.sw.bb54_crit_edge255
  %ap_ibss_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 8
  %11 = ptrtoint ptr %ap_ibss_active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ap_ibss_active, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool55.not = icmp eq i8 %12, 0
  br i1 %tobool55.not, label %sw.bb54.cleanup_crit_edge, label %sw.bb54.sw.epilog_crit_edge

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb58:                                          ; preds = %if.end50
  %monitor_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 10
  %13 = ptrtoint ptr %monitor_active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %monitor_active, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool59.not = icmp eq i8 %14, 0
  br i1 %tobool59.not, label %sw.bb58.cleanup_crit_edge, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.end70:                                       ; preds = %if.end50
  %.b249252 = load i1, ptr @iwl_mvm_quota_iterator.__already_done.8, align 1
  br i1 %.b249252, label %land.end70.cleanup_crit_edge, label %if.then77, !prof !36

land.end70.cleanup_crit_edge:                     ; preds = %land.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then77:                                        ; preds = %land.end70
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_mvm_quota_iterator.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb58.sw.epilog_crit_edge, %sw.bb54.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %_data, i32 0, i32 1, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp112 = icmp slt i32 %16, 0
  %color = getelementptr inbounds %struct.iwl_mvm_phy_ctxt, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %color to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %color, align 2
  %conv116 = zext i16 %18 to i32
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv116, ptr %arrayidx, align 4
  br label %if.end182

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv116)
  %cmp127.not = icmp eq i32 %16, %conv116
  br i1 %cmp127.not, label %if.else.if.end182_crit_edge, label %land.rhs136

if.else.if.end182_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

land.rhs136:                                      ; preds = %if.else
  %.b250251 = load i1, ptr @iwl_mvm_quota_iterator.__already_done.9, align 1
  br i1 %.b250251, label %land.rhs136.if.end182_crit_edge, label %if.then147, !prof !36

land.rhs136.if.end182_crit_edge:                  ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

if.then147:                                       ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @iwl_mvm_quota_iterator.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #4
  br label %if.end182

if.end182:                                        ; preds = %if.then147, %land.rhs136.if.end182_crit_edge, %if.else.if.end182_crit_edge, %if.then114
  %arrayidx184 = getelementptr [4 x i32], ptr %_data, i32 0, i32 %conv
  %20 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx184, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %arrayidx184, align 4
  %dbgfs_quota_min = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %dbgfs_quota_min to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dbgfs_quota_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool185.not = icmp eq i32 %23, 0
  br i1 %tobool185.not, label %if.end182.if.end196_crit_edge, label %if.then186

if.end182.if.end196_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end196

if.then186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx188 = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %_data, i32 0, i32 3, i32 %conv
  %24 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx188, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 %23)
  %27 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx188, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then186, %if.end182.if.end196_crit_edge
  %low_latency_actual.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %28 = ptrtoint ptr %low_latency_actual.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %low_latency_actual.i, align 8
  %29 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not = icmp eq i8 %29, 0
  br i1 %tobool.i.not, label %if.end196.cleanup_crit_edge, label %land.lhs.true

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end196
  %arrayidx200 = getelementptr %struct.iwl_mvm_quota_iterator_data, ptr %_data, i32 0, i32 2, i32 %conv
  %30 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx200, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool201.not = icmp eq i32 %31, 0
  br i1 %tobool201.not, label %if.then202, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then202:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %n_low_latency_bindings = getelementptr inbounds %struct.iwl_mvm_quota_iterator_data, ptr %_data, i32 0, i32 4
  %32 = ptrtoint ptr %n_low_latency_bindings to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_low_latency_bindings, align 4
  %inc203 = add i32 %33, 1
  store i32 %inc203, ptr %n_low_latency_bindings, align 4
  %34 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %arrayidx200, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then202, %land.lhs.true.cleanup_crit_edge, %if.end196.cleanup_crit_edge, %if.then77, %land.end70.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then15, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd_pdu(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 142, i32 2}
!2 = !{ptr @__func__.iwl_mvm_update_quotas, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 192, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 203, i32 3}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 241, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 255, i32 4}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 278, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 294, i32 3}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 45, i32 6}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 65, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 72, i32 3}
!23 = !{ptr @__func__.iwl_mvm_adjust_quota_for_noa, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/mvm/quota.c", i32 119, i32 3}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i8 0, i8 2}
