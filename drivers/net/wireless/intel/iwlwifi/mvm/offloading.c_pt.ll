; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/mvm/offloading.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/mvm/offloading.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_proto_offload_cmd_v1 = type { %struct.iwl_proto_offload_cmd_common, [16 x i8], [16 x i8], [2 x [16 x i8]], [6 x i8], i16 }
%struct.iwl_proto_offload_cmd_common = type { i32, i32, i32, [6 x i8], i16 }
%struct.iwl_mvm_sta = type { i32, i32, i32, i16, i16, i32, i32, i8, i8, %struct.spinlock, [9 x %struct.iwl_mvm_tid_data], [8 x i8], %union.anon.2, ptr, [4 x ptr], ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mvm_tid_data = type { i16, i16, i32, i8, i8, i32, i16, i16, i16, i32, i32, i32 }
%union.anon.2 = type { %struct.iwl_lq_sta }
%struct.iwl_lq_sta = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, %struct.rs_rate, i32, ptr, i32, i8, %struct.iwl_lq_cmd, [2 x %struct.iwl_scale_tbl_info], i8, i32, i8, i32, %struct.lq_sta_pers }
%struct.rs_rate = type { i32, i32, i8, i32, i8, i8, i8, i8 }
%struct.iwl_lq_cmd = type { i8, i8, i16, i8, i8, i8, i8, [4 x i8], i16, i8, i8, i32, [16 x i32], i32 }
%struct.iwl_scale_tbl_info = type { %struct.rs_rate, i32, ptr, [17 x %struct.iwl_rate_scale_data], [16 x %struct.iwl_rate_scale_data] }
%struct.iwl_rate_scale_data = type { i64, i32, i32, i32, i32 }
%struct.lq_sta_pers = type { i32, i8, i32, i8, [4 x i8], i8, [8 x [17 x %struct.rs_rate_stats]], ptr, %struct.spinlock }
%struct.rs_rate_stats = type { i64, i64 }
%struct.iwl_wowlan_config_cmd = type { i32, i16, [8 x i16], i8, i8, i8, i8, i8, i8 }
%union.anon.187 = type { %struct.iwl_proto_offload_cmd_v4 }
%struct.iwl_proto_offload_cmd_v4 = type { i32, %struct.iwl_proto_offload_cmd_common, i32, [12 x %struct.iwl_targ_addr], [4 x %struct.iwl_ns_config] }
%struct.iwl_targ_addr = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.iwl_ns_config = type { %struct.in6_addr, %struct.in6_addr, [6 x i8], i16 }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_mvm = type <{ ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, i8, [3 x i8], %struct.iwl_notif_wait_data, %union.anon.162, %struct.anon.163, %struct.anon.163, %struct.list_head, %union.anon.164, %struct.work_struct, ptr, ptr, ptr, ptr, i8, i8, [2 x i8], %struct.work_struct, ptr, [13 x %struct.iwl_nvm_section], %struct.iwl_fw_runtime, [5 x %struct.mac_address], %struct.iwl_rx_phy_info, [2 x i8], [16 x ptr], i8, [3 x i8], i32, i32, ptr, ptr, i32, i32, i32, %struct.delayed_work, i32, [4 x i32], [4 x i8], i64, ptr, i8, [3 x i8], %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.iwl_mvm_frame_stats, %struct.spinlock, i16, [2 x i8], [3 x %struct.iwl_mvm_phy_ctxt], %struct.list_head, %struct.spinlock, [1 x i32], [16 x i8], i8, [3 x i8], [4 x ptr], i8, [3 x i8], ptr, %struct.led_classdev, ptr, %struct.wiphy_wowlan_support, i32, i32, i32, i32, %struct.ieee80211_scan_ies, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, i32, %struct.wait_queue_head, %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_ci_cmd, i8, [3 x i8], i32, %struct.list_head, %struct.iwl_mvm_tt_mgmt, %struct.iwl_mvm_thermal_device, %struct.iwl_mvm_cooling_device, i32, i8, i8, [2 x i8], i32, [4 x i8], %struct.iwl_mvm_tcm, i8, i8, [20 x %struct.mac_address], %struct.iwl_time_quota_cmd, [2 x i8], i32, ptr, i16, i16, i16, i16, i8, [3 x i8], i32, ptr, ptr, ptr, i8, [3 x i8], i32, i8, i8, [2 x i8], i32, %struct.anon.177, [10 x i32], [1 x %struct.ieee80211_cipher_scheme], %struct.cfg80211_ftm_responder_stats, %struct.anon.179, %struct.list_head, %struct.anon.181, [2 x i8], ptr, [32 x ptr], i8, [3 x i8], %struct.delayed_work, i8, i8, i16, [6 x i8], [2 x i8], i32, i32 }>
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%union.anon.162 = type { %struct.mvm_statistics_rx_v3 }
%struct.mvm_statistics_rx_v3 = type { %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_phy_v2, %struct.mvm_statistics_rx_non_phy_v3, %struct.mvm_statistics_rx_ht_phy_v1 }
%struct.mvm_statistics_rx_phy_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_non_phy_v3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvm_statistics_rx_ht_phy_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.163 = type { i64, i64, i64, i64 }
%union.anon.164 = type { [32 x %struct.iwl_mvm_dqa_txq_info] }
%struct.iwl_mvm_dqa_txq_info = type { i8, i8, i8, i8, i16, [9 x i32], i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iwl_nvm_section = type { i16, ptr }
%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.167, %struct.anon.172, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.166], i32, i32, i32, [6 x i32] }
%struct.anon.166 = type { [15 x i32], i32 }
%struct.anon.167 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.171 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.iwl_fwrt_dump_data = type { %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.171 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.172 = type { %struct.delayed_work, i32, i64 }
%struct.mac_address = type { [6 x i8] }
%struct.iwl_rx_phy_info = type <{ i8, i8, i8, i8, i32, i64, i32, i16, i16, [8 x i32], i32, i32, i8, i8, i16 }>
%struct.iwl_mvm_int_sta = type { i32, i32, i32 }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.iwl_mvm_frame_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.iwl_mvm_phy_ctxt = type { i16, i16, i32, i32, ptr, i32 }
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
%struct.iwl_mvm_tcm = type { %struct.delayed_work, %struct.spinlock, i32, i32, i32, i8, [4 x %struct.iwl_mvm_tcm_mac], %struct.anon.176 }
%struct.iwl_mvm_tcm_mac = type { %struct.anon.173, %struct.anon.174, %struct.anon.175, i8 }
%struct.anon.173 = type { [4 x i32], i32 }
%struct.anon.174 = type { [4 x i32], i32, i32 }
%struct.anon.175 = type { i64, %struct.ewma_rate, i8 }
%struct.ewma_rate = type { i32 }
%struct.anon.176 = type { i32, [4 x i32], [4 x i32], [6 x i32], i32, [4 x i8], [4 x i8] }
%struct.iwl_time_quota_cmd = type { [4 x %struct.iwl_time_quota_data] }
%struct.iwl_time_quota_data = type { i32, i32, i32, i32 }
%struct.anon.177 = type { %struct.delayed_work, i32, i8, %struct.anon.178 }
%struct.anon.178 = type { i8, i8, i8, %struct.cfg80211_chan_def, ptr, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ieee80211_cipher_scheme = type { i32, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.cfg80211_ftm_responder_stats = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.anon.179 = type { ptr, ptr, %struct.list_head, [5 x i32], %struct.anon.180, %struct.list_head }
%struct.anon.180 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.181 = type { i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.157, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.157 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.158] }
%struct.anon.158 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.iwl_proto_offload_cmd_v3_small = type { %struct.iwl_proto_offload_cmd_common, i32, [4 x %struct.iwl_targ_addr], [2 x %struct.iwl_ns_config] }
%struct.iwl_mvm_vif = type { ptr, i16, i16, i8, [6 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, %struct.iwl_mvm_vif_bf_data, %struct.anon.156, i32, i32, [4 x %struct.ieee80211_tx_queue_params], %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta, ptr, %struct.anon.160, i32, i8, i16, [12 x %struct.in6_addr], [1 x i32], i32, ptr, ptr, %struct.iwl_dbgfs_pm, %struct.iwl_dbgfs_bf, %struct.iwl_mac_power_cmd, i32, [4 x i32], [6 x i8], %struct.delayed_work, i8, i8, i16, i16, i16, %struct.delayed_work, i8, i64, ptr, [4 x ptr], i8, %struct.anon.161 }
%struct.iwl_mvm_vif_bf_data = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.anon.156 = type { i32, i32, i8 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.iwl_mvm_time_event_data = type { ptr, %struct.list_head, i32, i32, i8, i32, i32 }
%struct.anon.160 = type { [24 x i8], [32 x i8], i32, i32, i32, i64, i8 }
%struct.iwl_dbgfs_pm = type { i16, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32 }
%struct.iwl_dbgfs_bf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iwl_mac_power_cmd = type { i32, i16, i16, i32, i32, i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.161 = type { [2 x ptr] }
%struct.iwl_proto_offload_cmd_v2 = type <{ %struct.iwl_proto_offload_cmd_common, [16 x i8], [16 x i8], [6 x [16 x i8]], [6 x i8], i8, [3 x i8] }>

@__const.iwl_mvm_send_proto_offload.cmd = private unnamed_addr constant { %struct.iwl_proto_offload_cmd_v1, [336 x i8] } { %struct.iwl_proto_offload_cmd_v1 zeroinitializer, [336 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_mvm_set_wowlan_qos_seq(ptr nocapture noundef readonly %mvm_ap_sta, ptr nocapture noundef writeonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %sub = add i16 %1, -16
  %2 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %arrayidx2 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %arrayidx2, align 1
  %arrayidx.1 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.1, align 4
  %sub.1 = add i16 %5, -16
  %6 = tail call i16 @llvm.bswap.i16(i16 %sub.1)
  %arrayidx2.1 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %arrayidx2.1, align 1
  %arrayidx.2 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.2, align 4
  %sub.2 = add i16 %9, -16
  %10 = tail call i16 @llvm.bswap.i16(i16 %sub.2)
  %arrayidx2.2 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %arrayidx2.2, align 1
  %arrayidx.3 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.3, align 4
  %sub.3 = add i16 %13, -16
  %14 = tail call i16 @llvm.bswap.i16(i16 %sub.3)
  %arrayidx2.3 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %arrayidx2.3, align 1
  %arrayidx.4 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.4, align 4
  %sub.4 = add i16 %17, -16
  %18 = tail call i16 @llvm.bswap.i16(i16 %sub.4)
  %arrayidx2.4 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %arrayidx2.4, align 1
  %arrayidx.5 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.5, align 4
  %sub.5 = add i16 %21, -16
  %22 = tail call i16 @llvm.bswap.i16(i16 %sub.5)
  %arrayidx2.5 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %arrayidx2.5, align 1
  %arrayidx.6 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.6, align 4
  %sub.6 = add i16 %25, -16
  %26 = tail call i16 @llvm.bswap.i16(i16 %sub.6)
  %arrayidx2.6 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %arrayidx2.6, align 1
  %arrayidx.7 = getelementptr %struct.iwl_mvm_sta, ptr %mvm_ap_sta, i32 0, i32 10, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.7, align 4
  %sub.7 = add i16 %29, -16
  %30 = tail call i16 @llvm.bswap.i16(i16 %sub.7)
  %arrayidx2.7 = getelementptr %struct.iwl_wowlan_config_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %31 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %arrayidx2.7, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_mvm_send_proto_offload(ptr noundef %mvm, ptr noundef %vif, i1 noundef zeroext %disable_offloading, i1 noundef zeroext %offload_ns, i32 noundef %cmd_flags) local_unnamed_addr #3 align 64 {
entry:
  %cmd = alloca %union.anon.187, align 1
  %hcmd = alloca %struct.iwl_host_cmd, align 4
  %solicited_addr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 428, ptr nonnull %cmd) #6
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.iwl_mvm_send_proto_offload.cmd, i32 428)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd) #6
  %1 = getelementptr inbounds i8, ptr %hcmd, i32 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !9
  %3 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %hcmd, align 4
  %arrayinit.cur.ptr = getelementptr inbounds ptr, ptr %hcmd, i32 1
  %flags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 4
  %4 = call ptr @memset(ptr %arrayinit.cur.ptr, i32 0, i32 16)
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cmd_flags, ptr %flags, align 4
  %id = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 212, ptr %id, align 4
  %len = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len, align 4
  %dataflags = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7
  %8 = ptrtoint ptr %dataflags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %dataflags, align 4
  %arrayinit.start4 = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayinit.start4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayinit.start4, align 1
  %fw = getelementptr inbounds %struct.iwl_mvm, ptr %mvm, i32 0, i32 2
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 8
  %flags11 = getelementptr inbounds %struct.iwl_fw, ptr %11, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 4
  %call = call zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -44, i8 noundef zeroext 0) #6
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %and16 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %14 = and i32 %13, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.else81, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool15.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ns_config = getelementptr inbounds %struct.iwl_proto_offload_cmd_v3_small, ptr %cmd, i32 0, i32 3
  %targ_addrs = getelementptr inbounds %struct.iwl_proto_offload_cmd_v3_small, ptr %cmd, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ns_config22 = getelementptr inbounds %struct.iwl_proto_offload_cmd_v4, ptr %cmd, i32 0, i32 4
  %targ_addrs24 = getelementptr inbounds %struct.iwl_proto_offload_cmd_v4, ptr %cmd, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then20
  %nsc.0 = phi ptr [ %ns_config, %if.then20 ], [ %ns_config22, %if.else ]
  %addrs.0 = phi ptr [ %targ_addrs, %if.then20 ], [ %targ_addrs24, %if.else ]
  %n_nsc.0 = phi i32 [ 2, %if.then20 ], [ 4, %if.else ]
  %n_addrs.0 = phi i32 [ 4, %if.then20 ], [ 12, %if.else ]
  %num_target_ipv6_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 5
  %16 = ptrtoint ptr %num_target_ipv6_addrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_target_ipv6_addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp337 = icmp sgt i32 %17, 0
  br i1 %cmp337, label %for.body.lr.ph, label %if.end.for.end68_crit_edge

if.end.for.end68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end68

for.body.lr.ph:                                   ; preds = %if.end
  %18 = getelementptr inbounds [4 x i32], ptr %solicited_addr, i32 0, i32 1
  %19 = getelementptr inbounds [4 x i32], ptr %solicited_addr, i32 0, i32 2
  %20 = getelementptr inbounds [4 x i32], ptr %solicited_addr, i32 0, i32 3
  %tentative_addrs = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %addr63 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %num_skipped.0342 = phi i32 [ 0, %for.body.lr.ph ], [ %num_skipped.1, %cleanup.for.body_crit_edge ]
  %c.0341 = phi i32 [ 0, %for.body.lr.ph ], [ %c.2, %cleanup.for.body_crit_edge ]
  %i.0338 = phi i32 [ 0, %for.body.lr.ph ], [ %inc67, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %solicited_addr) #6
  br i1 %offload_ns, label %land.lhs.true33, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true33:                                  ; preds = %for.body
  %div3.i = lshr i32 %i.0338, 5
  %arrayidx.i = getelementptr i32, ptr %tentative_addrs, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %23 = shl nuw i32 1, %i.0338
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool36.not = icmp eq i32 %24, 0
  br i1 %tobool36.not, label %land.lhs.true33.if.end38_crit_edge, label %if.then37

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %num_skipped.0342, 1
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %arrayidx = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 28, i32 %i.0338
  %arrayidx.i316 = getelementptr [4 x i32], ptr %arrayidx, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i316, align 4
  %or.i = or i32 %26, -16777216
  %27 = ptrtoint ptr %solicited_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -16646144, ptr %solicited_addr, align 4
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %18, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %19, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0341)
  %cmp40334 = icmp sgt i32 %c.0341, 0
  br i1 %cmp40334, label %if.end38.for.body42_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end38.for.body42_crit_edge:                    ; preds = %if.end38
  br label %for.body42

for.body42:                                       ; preds = %for.inc.for.body42_crit_edge, %if.end38.for.body42_crit_edge
  %j.0335 = phi i32 [ %inc49, %for.inc.for.body42_crit_edge ], [ 0, %if.end38.for.body42_crit_edge ]
  %dest_ipv6_addr = getelementptr %struct.iwl_ns_config, ptr %nsc.0, i32 %j.0335, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %dest_ipv6_addr, ptr noundef nonnull dereferenceable(16) %solicited_addr, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp45 = icmp eq i32 %bcmp, 0
  br i1 %cmp45, label %for.body42.for.end_crit_edge, label %for.inc

for.body42.for.end_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body42
  %inc49 = add nuw nsw i32 %j.0335, 1
  %exitcond.not = icmp eq i32 %inc49, %c.0341
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body42_crit_edge

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body42.for.end_crit_edge, %if.end38.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %if.end38.for.end_crit_edge ], [ %j.0335, %for.body42.for.end_crit_edge ], [ %c.0341, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %c.0341)
  %cmp50 = icmp eq i32 %j.0.lcssa, %c.0341
  %inc53 = zext i1 %cmp50 to i32
  %spec.select = add i32 %c.0341, %inc53
  %arrayidx55 = getelementptr %struct.iwl_targ_addr, ptr %addrs.0, i32 %i.0338
  %31 = call ptr @memcpy(ptr %arrayidx55, ptr %arrayidx, i32 16)
  %32 = call i32 @llvm.bswap.i32(i32 %j.0.lcssa)
  %config_num = getelementptr %struct.iwl_targ_addr, ptr %addrs.0, i32 %i.0338, i32 1
  %33 = ptrtoint ptr %config_num to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %config_num, align 1
  %dest_ipv6_addr60 = getelementptr %struct.iwl_ns_config, ptr %nsc.0, i32 %j.0.lcssa, i32 1
  %34 = call ptr @memcpy(ptr %dest_ipv6_addr60, ptr %solicited_addr, i32 16)
  %target_mac_addr = getelementptr %struct.iwl_ns_config, ptr %nsc.0, i32 %j.0.lcssa, i32 2
  %35 = call ptr @memcpy(ptr %target_mac_addr, ptr %addr63, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then37
  %c.2 = phi i32 [ %c.0341, %if.then37 ], [ %spec.select, %for.end ]
  %num_skipped.1 = phi i32 [ %inc, %if.then37 ], [ %num_skipped.0342, %for.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %solicited_addr) #6
  %inc67 = add nuw nsw i32 %i.0338, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc67, i32 %17)
  %cmp = icmp slt i32 %inc67, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %inc67, i32 %n_addrs.0)
  %cmp27 = icmp ult i32 %inc67, %n_addrs.0
  %or.cond300 = and i1 %cmp27, %cmp
  call void @__sanitizer_cov_trace_cmp4(i32 %c.2, i32 %n_nsc.0)
  %cmp29 = icmp slt i32 %c.2, %n_nsc.0
  %or.cond301 = select i1 %or.cond300, i1 %cmp29, i1 false
  br i1 %or.cond301, label %cleanup.for.body_crit_edge, label %cleanup.for.end68_crit_edge

cleanup.for.end68_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end68

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end68:                                        ; preds = %cleanup.for.end68_crit_edge, %if.end.for.end68_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end68_crit_edge ], [ %inc67, %cleanup.for.end68_crit_edge ]
  %num_skipped.0.lcssa = phi i32 [ 0, %if.end.for.end68_crit_edge ], [ %num_skipped.1, %cleanup.for.end68_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %num_skipped.0.lcssa)
  %tobool70.not = icmp eq i32 %17, %num_skipped.0.lcssa
  %spec.select302 = select i1 %tobool70.not, i32 0, i32 8
  %sub78 = sub i32 %i.0.lcssa, %num_skipped.0.lcssa
  %36 = call i32 @llvm.bswap.i32(i32 %sub78)
  br i1 %tobool15.not, label %if.end158.thread, label %if.end158.thread326

if.end158.thread326:                              ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #8
  %num_valid_ipv6_addrs = getelementptr inbounds %struct.iwl_proto_offload_cmd_v3_small, ptr %cmd, i32 0, i32 1
  %37 = ptrtoint ptr %num_valid_ipv6_addrs to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %num_valid_ipv6_addrs, align 1
  %offload_ns.not328 = xor i1 %offload_ns, true
  %or.cond304331 = select i1 %offload_ns.not328, i1 true, i1 %tobool70.not
  %or165332 = or i32 %spec.select302, 2
  %enabled.4333 = select i1 %or.cond304331, i32 %spec.select302, i32 %or165332
  br label %if.end192

if.end158.thread:                                 ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #8
  %num_valid_ipv6_addrs79 = getelementptr inbounds %struct.iwl_proto_offload_cmd_v4, ptr %cmd, i32 0, i32 2
  %38 = ptrtoint ptr %num_valid_ipv6_addrs79 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %36, ptr %num_valid_ipv6_addrs79, align 1
  %offload_ns.not318 = xor i1 %offload_ns, true
  %or.cond304321 = select i1 %offload_ns.not318, i1 true, i1 %tobool70.not
  %or165322 = or i32 %spec.select302, 2
  %enabled.4323 = select i1 %or.cond304321, i32 %spec.select302, i32 %or165322
  br label %if.else171

if.else81:                                        ; preds = %entry
  %and82 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  %num_target_ipv6_addrs121 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 5
  %39 = ptrtoint ptr %num_target_ipv6_addrs121 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_target_ipv6_addrs121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp129352 = icmp sgt i32 %40, 0
  br i1 %tobool83.not, label %for.cond120.preheader, label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %if.else81
  br i1 %cmp129352, label %for.body91.lr.ph, label %for.cond85.preheader.if.end158_crit_edge

for.cond85.preheader.if.end158_crit_edge:         ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

for.body91.lr.ph:                                 ; preds = %for.cond85.preheader
  %41 = call i32 @llvm.smin.i32(i32 %40, i32 6)
  %tentative_addrs95 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  br label %for.body91.outer

for.body91.outer:                                 ; preds = %for.inc105.thread.for.body91.outer_crit_edge, %for.body91.lr.ph
  %found.0.off0350.ph = phi i1 [ true, %for.inc105.thread.for.body91.outer_crit_edge ], [ false, %for.body91.lr.ph ]
  %i.1347.ph = phi i32 [ %inc106363, %for.inc105.thread.for.body91.outer_crit_edge ], [ 0, %for.body91.lr.ph ]
  br label %for.body91

for.cond120.preheader:                            ; preds = %if.else81
  br i1 %cmp129352, label %for.body131.lr.ph, label %for.cond120.preheader.if.end158_crit_edge

for.cond120.preheader.if.end158_crit_edge:        ; preds = %for.cond120.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

for.body131.lr.ph:                                ; preds = %for.cond120.preheader
  %tentative_addrs135 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %.not = icmp eq i32 %40, 1
  %smax360 = select i1 %.not, i32 1, i32 2
  br label %for.body131.outer

for.body131.outer:                                ; preds = %for.inc146.thread.for.body131.outer_crit_edge, %for.body131.lr.ph
  %found116.0.off0356.ph = phi i1 [ true, %for.inc146.thread.for.body131.outer_crit_edge ], [ false, %for.body131.lr.ph ]
  %i.2353.ph = phi i32 [ %inc147368, %for.inc146.thread.for.body131.outer_crit_edge ], [ 0, %for.body131.lr.ph ]
  br label %for.body131

for.body91:                                       ; preds = %for.inc105.for.body91_crit_edge, %for.body91.outer
  %i.1347 = phi i32 [ %inc106, %for.inc105.for.body91_crit_edge ], [ %i.1347.ph, %for.body91.outer ]
  br i1 %offload_ns, label %land.lhs.true94, label %for.body91.for.inc105.thread_crit_edge

for.body91.for.inc105.thread_crit_edge:           ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105.thread

land.lhs.true94:                                  ; preds = %for.body91
  %div3.i306 = lshr i32 %i.1347, 5
  %arrayidx.i307 = getelementptr i32, ptr %tentative_addrs95, i32 %div3.i306
  %42 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i307, align 4
  %44 = shl nuw i32 1, %i.1347
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool98.not = icmp eq i32 %45, 0
  br i1 %tobool98.not, label %land.lhs.true94.for.inc105.thread_crit_edge, label %for.inc105

land.lhs.true94.for.inc105.thread_crit_edge:      ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc105.thread

for.inc105:                                       ; preds = %land.lhs.true94
  %inc106 = add nuw nsw i32 %i.1347, 1
  %exitcond359.not = icmp eq i32 %inc106, %41
  br i1 %exitcond359.not, label %for.end107, label %for.inc105.for.body91_crit_edge

for.inc105.for.body91_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91

for.inc105.thread:                                ; preds = %land.lhs.true94.for.inc105.thread_crit_edge, %for.body91.for.inc105.thread_crit_edge
  %arrayidx101 = getelementptr %struct.iwl_proto_offload_cmd_v2, ptr %cmd, i32 0, i32 3, i32 %i.1347
  %arrayidx104 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 28, i32 %i.1347
  %46 = call ptr @memcpy(ptr %arrayidx101, ptr %arrayidx104, i32 16)
  %inc106363 = add nuw nsw i32 %i.1347, 1
  %exitcond359.not364 = icmp eq i32 %inc106363, %41
  br i1 %exitcond359.not364, label %for.inc105.thread.if.then109_crit_edge, label %for.inc105.thread.for.body91.outer_crit_edge

for.inc105.thread.for.body91.outer_crit_edge:     ; preds = %for.inc105.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body91.outer

for.inc105.thread.if.then109_crit_edge:           ; preds = %for.inc105.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then109

for.end107:                                       ; preds = %for.inc105
  br i1 %found.0.off0350.ph, label %for.end107.if.then109_crit_edge, label %for.end107.if.end158_crit_edge

for.end107.if.end158_crit_edge:                   ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

for.end107.if.then109_crit_edge:                  ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then109

if.then109:                                       ; preds = %for.end107.if.then109_crit_edge, %for.inc105.thread.if.then109_crit_edge
  %ndp_mac_addr = getelementptr inbounds %struct.iwl_proto_offload_cmd_v2, ptr %cmd, i32 0, i32 4
  br label %if.end158.sink.split

for.body131:                                      ; preds = %for.inc146.for.body131_crit_edge, %for.body131.outer
  %i.2353 = phi i32 [ %inc147, %for.inc146.for.body131_crit_edge ], [ %i.2353.ph, %for.body131.outer ]
  br i1 %offload_ns, label %land.lhs.true134, label %for.body131.for.inc146.thread_crit_edge

for.body131.for.inc146.thread_crit_edge:          ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146.thread

land.lhs.true134:                                 ; preds = %for.body131
  %div3.i311 = lshr i32 %i.2353, 5
  %arrayidx.i312 = getelementptr i32, ptr %tentative_addrs135, i32 %div3.i311
  %47 = ptrtoint ptr %arrayidx.i312 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i312, align 4
  %49 = shl nuw i32 1, %i.2353
  %50 = and i32 %48, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool138.not = icmp eq i32 %50, 0
  br i1 %tobool138.not, label %land.lhs.true134.for.inc146.thread_crit_edge, label %for.inc146

land.lhs.true134.for.inc146.thread_crit_edge:     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc146.thread

for.inc146:                                       ; preds = %land.lhs.true134
  %inc147 = add nuw nsw i32 %i.2353, 1
  %exitcond361.not = icmp eq i32 %inc147, %smax360
  br i1 %exitcond361.not, label %for.end148, label %for.inc146.for.body131_crit_edge

for.inc146.for.body131_crit_edge:                 ; preds = %for.inc146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131

for.inc146.thread:                                ; preds = %land.lhs.true134.for.inc146.thread_crit_edge, %for.body131.for.inc146.thread_crit_edge
  %arrayidx142 = getelementptr %struct.iwl_proto_offload_cmd_v1, ptr %cmd, i32 0, i32 3, i32 %i.2353
  %arrayidx145 = getelementptr %struct.iwl_mvm_vif, ptr %drv_priv.i, i32 0, i32 28, i32 %i.2353
  %51 = call ptr @memcpy(ptr %arrayidx142, ptr %arrayidx145, i32 16)
  %inc147368 = add nuw nsw i32 %i.2353, 1
  %exitcond361.not369 = icmp eq i32 %inc147368, %smax360
  br i1 %exitcond361.not369, label %for.inc146.thread.if.then150_crit_edge, label %for.inc146.thread.for.body131.outer_crit_edge

for.inc146.thread.for.body131.outer_crit_edge:    ; preds = %for.inc146.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131.outer

for.inc146.thread.if.then150_crit_edge:           ; preds = %for.inc146.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

for.end148:                                       ; preds = %for.inc146
  br i1 %found116.0.off0356.ph, label %for.end148.if.then150_crit_edge, label %for.end148.if.end158_crit_edge

for.end148.if.end158_crit_edge:                   ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

for.end148.if.then150_crit_edge:                  ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then150

if.then150:                                       ; preds = %for.end148.if.then150_crit_edge, %for.inc146.thread.if.then150_crit_edge
  %ndp_mac_addr152 = getelementptr inbounds %struct.iwl_proto_offload_cmd_v1, ptr %cmd, i32 0, i32 4
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.then150, %if.then109
  %ndp_mac_addr152.sink = phi ptr [ %ndp_mac_addr152, %if.then150 ], [ %ndp_mac_addr, %if.then109 ]
  %addr154 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %52 = call ptr @memcpy(ptr %ndp_mac_addr152.sink, ptr %addr154, i32 6)
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %for.end148.if.end158_crit_edge, %for.end107.if.end158_crit_edge, %for.cond120.preheader.if.end158_crit_edge, %for.cond85.preheader.if.end158_crit_edge
  %tobool163.not = phi i1 [ true, %for.end148.if.end158_crit_edge ], [ true, %for.end107.if.end158_crit_edge ], [ true, %for.cond85.preheader.if.end158_crit_edge ], [ true, %for.cond120.preheader.if.end158_crit_edge ], [ false, %if.end158.sink.split ]
  %enabled.3 = phi i32 [ 0, %for.end148.if.end158_crit_edge ], [ 0, %for.end107.if.end158_crit_edge ], [ 0, %for.cond85.preheader.if.end158_crit_edge ], [ 0, %for.cond120.preheader.if.end158_crit_edge ], [ 8, %if.end158.sink.split ]
  %offload_ns.not = xor i1 %offload_ns, true
  %or.cond304 = or i1 %tobool163.not, %offload_ns.not
  %or165 = or i32 %enabled.3, 2
  %enabled.4 = select i1 %or.cond304, i32 %enabled.3, i32 %or165
  br i1 %tobool15.not, label %if.end158.if.else171_crit_edge, label %if.end158.if.end192_crit_edge

if.end158.if.end192_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.end158.if.else171_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else171

if.else171:                                       ; preds = %if.end158.if.else171_crit_edge, %if.end158.thread
  %enabled.4325 = phi i32 [ %enabled.4323, %if.end158.thread ], [ %enabled.4, %if.end158.if.else171_crit_edge ]
  br i1 %tobool17.not, label %if.else183, label %if.then174

if.then174:                                       ; preds = %if.else171
  %common175 = getelementptr inbounds %struct.iwl_proto_offload_cmd_v4, ptr %cmd, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %call)
  %cmp176 = icmp ult i8 %call, 4
  br i1 %cmp176, label %if.then178, label %if.then174.if.end192_crit_edge

if.then174.if.end192_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192

if.then178:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %hcmd to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %common175, ptr %hcmd, align 4
  br label %if.end192

if.else183:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #8
  %and184 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  %.305 = select i1 %tobool185.not, i16 92, i16 158
  br label %if.end192

if.end192:                                        ; preds = %if.else183, %if.then178, %if.then174.if.end192_crit_edge, %if.end158.if.end192_crit_edge, %if.end158.thread326
  %enabled.4324 = phi i32 [ %enabled.4325, %if.then178 ], [ %enabled.4325, %if.then174.if.end192_crit_edge ], [ %enabled.4, %if.end158.if.end192_crit_edge ], [ %enabled.4325, %if.else183 ], [ %enabled.4333, %if.end158.thread326 ]
  %size.0 = phi i16 [ 424, %if.then178 ], [ 428, %if.then174.if.end192_crit_edge ], [ 184, %if.end158.if.end192_crit_edge ], [ %.305, %if.else183 ], [ 184, %if.end158.thread326 ]
  %common.0 = phi ptr [ %common175, %if.then178 ], [ %common175, %if.then174.if.end192_crit_edge ], [ %cmd, %if.end158.if.end192_crit_edge ], [ %cmd, %if.else183 ], [ %cmd, %if.end158.thread326 ]
  %arp_addr_cnt = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 35
  %54 = ptrtoint ptr %arp_addr_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arp_addr_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool193.not = icmp eq i32 %55, 0
  br i1 %tobool193.not, label %if.end192.if.end201_crit_edge, label %if.then194

if.end192.if.end201_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end201

if.then194:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #8
  %or195 = or i32 %enabled.4324, 5
  %arp_addr_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 34
  %56 = ptrtoint ptr %arp_addr_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arp_addr_list, align 8
  %host_ipv4_addr = getelementptr inbounds %struct.iwl_proto_offload_cmd_common, ptr %common.0, i32 0, i32 2
  %58 = ptrtoint ptr %host_ipv4_addr to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %host_ipv4_addr, align 1
  %arp_mac_addr = getelementptr inbounds %struct.iwl_proto_offload_cmd_common, ptr %common.0, i32 0, i32 3
  %addr199 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %59 = call ptr @memcpy(ptr %arp_mac_addr, ptr %addr199, i32 6)
  br label %if.end201

if.end201:                                        ; preds = %if.then194, %if.end192.if.end201_crit_edge
  %enabled.5 = phi i32 [ %or195, %if.then194 ], [ %enabled.4324, %if.end192.if.end201_crit_edge ]
  br i1 %disable_offloading, label %if.end201.if.end205_crit_edge, label %if.then203

if.end201.if.end205_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end205

if.then203:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  %60 = call i32 @llvm.bswap.i32(i32 %enabled.5)
  %61 = ptrtoint ptr %common.0 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %common.0, align 1
  br label %if.end205

if.end205:                                        ; preds = %if.then203, %if.end201.if.end205_crit_edge
  %62 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %size.0, ptr %len, align 4
  %call209 = call i32 @iwl_mvm_send_cmd(ptr noundef %mvm, ptr noundef nonnull %hcmd) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd) #6
  call void @llvm.lifetime.end.p0(i64 428, ptr nonnull %cmd) #6
  ret i32 %call209
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @iwl_fw_lookup_cmd_ver(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_mvm_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
