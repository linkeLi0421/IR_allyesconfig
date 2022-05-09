; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/qmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/qmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.117 }
%struct.atomic_t = type { i32 }
%union.anon.117 = type { i32 }
%struct.wlfw_wlan_cfg_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.165, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.211, i32, i32, i32, %struct.anon.212, %struct.anon.213, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.218, i32, %struct.anon.219, %struct.anon.220, %struct.anon.221, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.222, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.msa_region = type { i32, i32, ptr }
%struct.anon.165 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.166, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.170, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.172, %struct.anon.175, %struct.anon.185, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.166 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.167, i32, i32, i32, i32, i32, %struct.anon.168, %struct.anon.169, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.167 = type { ptr }
%struct.anon.168 = type { ptr, i32 }
%struct.anon.169 = type { i32 }
%struct.anon.170 = type { %union.anon.171, [0 x %struct.htt_tx_done] }
%union.anon.171 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.172 = type { i32, %union.anon.173, i32 }
%union.anon.173 = type { ptr }
%struct.anon.175 = type { i32, %union.anon.176, i32 }
%union.anon.176 = type { ptr }
%struct.anon.185 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.211 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.212 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.213 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.218 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.219 = type { ptr }
%struct.anon.220 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.221 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.anon.222 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.ath10k_qmi = type { ptr, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, ptr, %struct.list_head, %struct.spinlock, i32, [2 x %struct.ath10k_msa_mem_info], %struct.ath10k_qmi_chip_info, %struct.ath10k_qmi_board_info, %struct.ath10k_qmi_soc_info, [129 x i8], i32, i8, [33 x i8], [5 x %struct.ath10k_qmi_cal_data], i8, i32 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ath10k_msa_mem_info = type { i32, i32, i8 }
%struct.ath10k_qmi_chip_info = type { i32, i32 }
%struct.ath10k_qmi_board_info = type { i32 }
%struct.ath10k_qmi_soc_info = type { i32 }
%struct.ath10k_qmi_cal_data = type { i32, i32, ptr }
%struct.wlfw_wlan_cfg_req_msg_v01 = type { i8, [17 x i8], i8, i32, [12 x %struct.wlfw_ce_tgt_pipe_cfg_s_v01], i8, i32, [24 x %struct.wlfw_ce_svc_pipe_cfg_s_v01], i8, i32, [24 x %struct.wlfw_shadow_reg_cfg_s_v01], i8, i32, [36 x %struct.wlfw_shadow_reg_v2_cfg_s_v01] }
%struct.wlfw_ce_tgt_pipe_cfg_s_v01 = type { i32, i32, i32, i32, i32 }
%struct.wlfw_ce_svc_pipe_cfg_s_v01 = type { i32, i32, i32 }
%struct.wlfw_shadow_reg_cfg_s_v01 = type { i16, i16 }
%struct.wlfw_shadow_reg_v2_cfg_s_v01 = type { i32 }
%struct.ath10k_qmi_wlan_enable_cfg = type { i32, ptr, i32, ptr, i32, ptr }
%struct.ath10k_tgt_pipe_cfg = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_svc_pipe_cfg = type { i32, i32, i32 }
%struct.wlfw_wlan_mode_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_wlan_mode_req_msg_v01 = type { i32, i8, i8 }
%struct.wlfw_ini_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_ini_req_msg_v01 = type { i8, i8 }
%struct.qcom_scm_vmperm = type { i32, i32 }
%struct.wlfw_cap_req_msg_v01 = type { i8 }
%struct.ath10k_qmi_driver_event = type { %struct.list_head, i32, ptr }
%struct.wlfw_cap_resp_msg_v01 = type { %struct.qmi_response_type_v01, i8, %struct.wlfw_rf_chip_info_s_v01, i8, %struct.wlfw_rf_board_info_s_v01, i8, %struct.wlfw_soc_info_s_v01, i8, %struct.wlfw_fw_version_info_s_v01, i8, [129 x i8], i8, i8 }
%struct.wlfw_rf_chip_info_s_v01 = type { i32, i32 }
%struct.wlfw_rf_board_info_s_v01 = type { i32 }
%struct.wlfw_soc_info_s_v01 = type { i32 }
%struct.wlfw_fw_version_info_s_v01 = type { i32, [33 x i8] }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.wlfw_ind_register_resp_msg_v01 = type { %struct.qmi_response_type_v01, i8, i64 }
%struct.wlfw_ind_register_req_msg_v01 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.wlfw_host_cap_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_host_cap_req_msg_v01 = type { i8, i32, i8, i32, i8, i32, [32 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8 }
%struct.wlfw_msa_info_resp_msg_v01 = type { %struct.qmi_response_type_v01, i32, [2 x %struct.wlfw_memory_region_info_s_v01] }
%struct.wlfw_memory_region_info_s_v01 = type { i64, i32, i8 }
%struct.wlfw_msa_info_req_msg_v01 = type { i64, i32 }
%struct.wlfw_msa_ready_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_msa_ready_req_msg_v01 = type { i8 }
%struct.wlfw_bdf_download_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_bdf_download_req_msg_v01 = type { i8, i8, i32, i8, i32, i8, i32, i8, i32, [6144 x i8], i8, i8, i8, i8 }
%struct.wlfw_cal_report_resp_msg_v01 = type { %struct.qmi_response_type_v01 }
%struct.wlfw_cal_report_req_msg_v01 = type { i32, [5 x i32], i8, i8 }

@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmi mode %d config %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to send qmi config: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to send qmi mode: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wlfw_ini_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_ini_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to send fw log request: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fw log request rejected: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"qmi fw log request completed, mode: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,msa-fixed-perm\00", [44 x i8] zeroinitializer }, align 32
@ath10k_qmi_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @ath10k_qmi_new_server, ptr @ath10k_qmi_del_server, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmi_msg_handler = internal constant { [3 x %struct.qmi_msg_handler], [36 x i8] } { [3 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 4, i32 33, ptr @wlfw_fw_ready_ind_msg_v01_ei, i32 1, ptr @ath10k_qmi_fw_ready_ind }, %struct.qmi_msg_handler { i32 4, i32 43, ptr @wlfw_msa_ready_ind_msg_v01_ei, i32 1, ptr @ath10k_qmi_msa_ready_ind }, %struct.qmi_msg_handler zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ath10k_qmi_driver_event\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate workqueue\0A\00", [34 x i8] zeroinitializer }, align 32
@ath10k_qmi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&qmi->event_lock\00", [47 x i8] zeroinitializer }, align 32
@ath10k_qmi_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&qmi->event_work)\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@wlfw_wlan_cfg_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_wlan_cfg_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to send config request: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"config request rejected: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qmi config request completed\0A\00", [34 x i8] zeroinitializer }, align 32
@wlfw_wlan_mode_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_wlan_mode_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to send wlan mode %d request: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"more request rejected: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"qmi wlan mode req completed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wifi fw qmi service found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"failed to connect to a remote QMI service port\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"qmi wifi fw qmi service connected\0A\00", [61 x i8] zeroinitializer }, align 32
@wlfw_fw_ready_ind_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_msa_ready_ind_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid event type: %d\00", [41 x i8] zeroinitializer }, align 32
@wlfw_ind_register_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_ind_register_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to send indication registered request: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"indication request rejected: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"qmi indication register request completed\0A\00", [53 x i8] zeroinitializer }, align 32
@wlfw_host_cap_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_host_cap_8bit_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_host_cap_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to send host capability request: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"host capability request rejected: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"qmi host capability request completed\0A\00", [57 x i8] zeroinitializer }, align 32
@wlfw_msa_info_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_msa_info_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to send msa mem info req: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msa info req rejected: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid memory region length received: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"received out of range memory region address 0x%llx with size 0x%x, aborting\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"qmi msa mem region %d addr 0x%pa size 0x%x flag 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qmi msa mem info request completed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to assign msa map permissions: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to unmap msa permissions: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wlfw_msa_ready_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_msa_ready_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to send msa mem ready request: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msa ready request rejected: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"qmi msa mem ready request completed\0A\00", [59 x i8] zeroinitializer }, align 32
@wlfw_cap_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_cap_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to send capability request: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"capability req rejected: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"qmi chip_id 0x%x chip_family 0x%x board_id 0x%x soc_id 0x%x\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"qmi fw_version 0x%x fw_build_timestamp %s fw_build_id %s\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wifi fw qmi service disconnected\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wifi fw ready event received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ath10k/WCN3990/hw1.0\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DT bdf variant name not set.\0A\00", [34 x i8] zeroinitializer }, align 32
@wlfw_bdf_download_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_bdf_download_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to download board data file: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"qmi bdf download request completed\0A\00", [60 x i8] zeroinitializer }, align 32
@wlfw_cal_report_resp_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@wlfw_cal_report_req_msg_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to send calibration request: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"calibration request rejected: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qmi cal report request completed\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 516, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 521, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 527, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 692, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 701, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 706, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1041, i32 42 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"ath10k_qmi_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 985, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"qmi_msg_handler\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 921, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1050, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1053, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1059, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1060, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 486, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 495, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 500, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 400, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 409, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 414, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 951, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 956, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 960, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1018, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 747, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 756, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 765, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 646, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 657, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 662, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 139, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 148, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 154, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 168, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 177, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 184, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 53, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 77, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 212, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 221, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 225, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 562, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 571, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 602, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 605, i32 19 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 872, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 897, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 828, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 832, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 297, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 308, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 353, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 362, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/qmi.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 367, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath10k_qmi_ops, ptr @qmi_msg_handler, ptr @.str.7, ptr @.str.8, ptr @ath10k_qmi_init.__key, ptr @.str.9, ptr @ath10k_qmi_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_qmi_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmi_msg_handler to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_qmi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_qmi_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_qmi_wlan_enable(ptr noundef %ar, ptr noundef %config, i32 noundef %mode, ptr nocapture noundef readnone %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_wlan_enable, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 2097152, ptr noundef nonnull @.str, i32 noundef %mode, ptr noundef %config) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %call1 = tail call fastcc i32 @ath10k_qmi_cfg_send_sync_msg(ptr noundef %ar, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.1, i32 noundef %call1) #6
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %call5 = tail call fastcc i32 @ath10k_qmi_mode_send_sync_msg(ptr noundef %ar, i32 noundef %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.2, i32 noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_cfg_send_sync_msg(ptr noundef %ar, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_wlan_cfg_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %0 = ptrtoint ptr %qmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %3 = call ptr @memset(ptr %txn, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 816) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 1
  %call3 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_wlan_cfg_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call7.i.i, align 8
  %tgt_cfg_valid = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %tgt_cfg_valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tgt_cfg_valid, align 2
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp6 = icmp ugt i32 %8, 12
  %9 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 3
  br i1 %cmp6, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 12, ptr %9, align 4
  br label %for.body.lr.ph

if.end10:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp122.not = icmp eq i32 %8, 0
  br i1 %cmp122.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body.lr.ph_crit_edge

if.end10.for.body.lr.ph_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10.for.body.lr.ph_crit_edge, %if.end10.thread
  %ce_tgt_cfg = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %config, i32 0, i32 1
  %12 = ptrtoint ptr %ce_tgt_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ce_tgt_cfg, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_tgt_pipe_cfg, ptr %13, i32 %i.03
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %i.03
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx13, align 4
  %pipe_dir = getelementptr %struct.ath10k_tgt_pipe_cfg, ptr %13, i32 %i.03, i32 1
  %17 = ptrtoint ptr %pipe_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe_dir, align 4
  %pipe_dir19 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %i.03, i32 1
  %19 = ptrtoint ptr %pipe_dir19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pipe_dir19, align 4
  %nentries = getelementptr %struct.ath10k_tgt_pipe_cfg, ptr %13, i32 %i.03, i32 2
  %20 = ptrtoint ptr %nentries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nentries, align 4
  %nentries24 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %i.03, i32 2
  %22 = ptrtoint ptr %nentries24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nentries24, align 4
  %nbytes_max = getelementptr %struct.ath10k_tgt_pipe_cfg, ptr %13, i32 %i.03, i32 3
  %23 = ptrtoint ptr %nbytes_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes_max, align 4
  %nbytes_max29 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %i.03, i32 3
  %25 = ptrtoint ptr %nbytes_max29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %nbytes_max29, align 4
  %flags = getelementptr %struct.ath10k_tgt_pipe_cfg, ptr %13, i32 %i.03, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %flags34 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 4, i32 %i.03, i32 4
  %28 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %flags34, align 4
  %inc = add nuw i32 %i.03, 1
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %9, align 4
  %cmp12 = icmp ult i32 %inc, %30
  br i1 %cmp12, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %svc_cfg_valid = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %svc_cfg_valid to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %svc_cfg_valid, align 8
  %num_ce_svc_pipe_cfg = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %config, i32 0, i32 2
  %32 = ptrtoint ptr %num_ce_svc_pipe_cfg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ce_svc_pipe_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %cmp35 = icmp ugt i32 %33, 24
  %34 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 6
  br i1 %cmp35, label %if.end40.thread, label %if.end40

if.end40.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 24, ptr %34, align 4
  br label %for.body44.lr.ph

if.end40:                                         ; preds = %for.end
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp434.not = icmp eq i32 %33, 0
  br i1 %cmp434.not, label %if.end40.for.end62_crit_edge, label %if.end40.for.body44.lr.ph_crit_edge

if.end40.for.body44.lr.ph_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44.lr.ph

if.end40.for.end62_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end62

for.body44.lr.ph:                                 ; preds = %if.end40.for.body44.lr.ph_crit_edge, %if.end40.thread
  %ce_svc_cfg = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %config, i32 0, i32 3
  %37 = ptrtoint ptr %ce_svc_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ce_svc_cfg, align 4
  br label %for.body44

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.body44.lr.ph
  %i.15 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc61, %for.body44.for.body44_crit_edge ]
  %arrayidx45 = getelementptr %struct.ath10k_svc_pipe_cfg, ptr %38, i32 %i.15
  %39 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %i.15
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx46, align 4
  %pipe_dir50 = getelementptr %struct.ath10k_svc_pipe_cfg, ptr %38, i32 %i.15, i32 1
  %42 = ptrtoint ptr %pipe_dir50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pipe_dir50, align 4
  %pipe_dir53 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %i.15, i32 1
  %44 = ptrtoint ptr %pipe_dir53 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %pipe_dir53, align 4
  %pipe_num56 = getelementptr %struct.ath10k_svc_pipe_cfg, ptr %38, i32 %i.15, i32 2
  %45 = ptrtoint ptr %pipe_num56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pipe_num56, align 4
  %pipe_num59 = getelementptr %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 7, i32 %i.15, i32 2
  %47 = ptrtoint ptr %pipe_num59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %pipe_num59, align 4
  %inc61 = add nuw i32 %i.15, 1
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %34, align 4
  %cmp43 = icmp ult i32 %inc61, %49
  br i1 %cmp43, label %for.body44.for.body44_crit_edge, label %for.body44.for.end62_crit_edge

for.body44.for.end62_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end62

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.end62:                                        ; preds = %for.body44.for.end62_crit_edge, %if.end40.for.end62_crit_edge
  %shadow_reg_valid = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %shadow_reg_valid to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %shadow_reg_valid, align 8
  %num_shadow_reg_cfg = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %config, i32 0, i32 4
  %51 = ptrtoint ptr %num_shadow_reg_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_shadow_reg_cfg, align 4
  %53 = call i32 @llvm.umin.i32(i32 %52, i32 24)
  %54 = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %54, align 4
  %shadow_reg = getelementptr inbounds %struct.wlfw_wlan_cfg_req_msg_v01, ptr %call7.i.i, i32 0, i32 10
  %shadow_reg_cfg = getelementptr inbounds %struct.ath10k_qmi_wlan_enable_cfg, ptr %config, i32 0, i32 5
  %56 = ptrtoint ptr %shadow_reg_cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shadow_reg_cfg, align 4
  %mul = shl nuw nsw i32 %53, 2
  %58 = call ptr @memcpy(ptr %shadow_reg, ptr %57, i32 %mul)
  %call71 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 35, i32 noundef 803, ptr noundef nonnull @wlfw_wlan_cfg_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %call71) #6
  br label %cleanup.sink.split

if.end74:                                         ; preds = %for.end62
  %call75 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.cleanup.sink.split_crit_edge, label %if.end78

if.end74.cleanup.sink.split_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end78:                                         ; preds = %if.end74
  %59 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp80.not = icmp eq i16 %60, 0
  br i1 %cmp80.not, label %do.body, label %if.then82

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %61 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %error, align 2
  %conv84 = zext i16 %62 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %conv84) #6
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %63 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %63, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %do.body.if.then89_crit_edge

do.body.if.then89_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_cfg_send_sync_msg, %if.then89)) #6
          to label %cleanup.sink.split [label %if.then89], !srcloc !117

if.then89:                                        ; preds = %lor.lhs.false, %do.body.if.then89_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 2097152, ptr noundef nonnull @.str.14) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then89, %lor.lhs.false, %if.then82, %if.end74.cleanup.sink.split_crit_edge, %if.then73, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.then89 ], [ %call3, %if.end.cleanup.sink.split_crit_edge ], [ %call71, %if.then73 ], [ %call75, %if.end74.cleanup.sink.split_crit_edge ], [ -22, %if.then82 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_mode_send_sync_msg(ptr noundef %ar, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_wlan_mode_resp_msg_v01, align 4
  %req = alloca %struct.wlfw_wlan_mode_req_msg_v01, align 8
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %0 = ptrtoint ptr %qmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req) #6
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 16777216, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 1
  %call2 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_wlan_mode_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode, ptr %req, align 8
  %call5 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 34, i32 noundef 11, ptr noundef nonnull @wlfw_wlan_mode_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.15, i32 noundef %mode, i32 noundef %call5) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp14.not = icmp eq i16 %7, 0
  br i1 %cmp14.not, label %do.body, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error, align 2
  %conv18 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %conv18) #6
  br label %cleanup

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then22_crit_edge

do.body.if.then22_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_mode_send_sync_msg, %if.then22)) #6
          to label %cleanup [label %if.then22], !srcloc !117

if.then22:                                        ; preds = %lor.lhs.false, %do.body.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 2097152, ptr noundef nonnull @.str.17, i32 noundef %mode) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %lor.lhs.false, %if.then16, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %call2, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ %call9, %if.end8.cleanup_crit_edge ], [ -22, %if.then16 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_qmi_wlan_disable(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath10k_qmi_mode_send_sync_msg(ptr noundef %ar, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_qmi_set_fw_log_mode(ptr noundef %ar, i8 noundef zeroext %fw_log_mode) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_ini_resp_msg_v01, align 4
  %req = alloca %struct.wlfw_ini_req_msg_v01, align 2
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  %qmi1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %1 = ptrtoint ptr %qmi1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qmi1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %req) #6
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 256, ptr %req, align 2
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %enablefwlog = getelementptr inbounds %struct.wlfw_ini_req_msg_v01, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %enablefwlog to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %fw_log_mode, ptr %enablefwlog, align 1
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %2, i32 0, i32 1
  %call2 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_ini_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 47, i32 noundef 4, ptr noundef nonnull @wlfw_ini_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.3, i32 noundef %call4) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13.not = icmp eq i16 %7, 0
  br i1 %cmp13.not, label %do.body, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %error, align 2
  %conv17 = zext i16 %9 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.4, i32 noundef %conv17) #6
  br label %cleanup

do.body:                                          ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then21_crit_edge

do.body.if.then21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_set_fw_log_mode, %if.then21)) #6
          to label %cleanup [label %if.then21], !srcloc !117

if.then21:                                        ; preds = %lor.lhs.false, %do.body.if.then21_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = zext i8 %fw_log_mode to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 2097152, ptr noundef nonnull @.str.5, i32 noundef %conv22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %lor.lhs.false, %if.then15, %if.end7.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.then6 ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %if.then15 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_qmi_init(ptr noundef %ar, i32 noundef %msa_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ar, ptr %call7.i.i, align 8
  %qmi4 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %4 = ptrtoint ptr %qmi4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %qmi4, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %msa_fixed_perm = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 17
  %7 = ptrtoint ptr %msa_fixed_perm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %msa_fixed_perm, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 1
  %call8 = tail call i32 @qmi_handle_init(ptr noundef %qmi_hdl, i32 noundef 6182, ptr noundef nonnull @ath10k_qmi_ops, ptr noundef nonnull @qmi_msg_handler) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_crit_edge

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 1) #6
  %event_wq = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %event_wq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %event_wq, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.8) #6
  br label %err_release_qmi_handle

if.end16:                                         ; preds = %if.end11
  %event_list = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %event_list, ptr %event_list, align 8
  %prev.i = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %event_list, ptr %prev.i, align 4
  %event_lock = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %event_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath10k_qmi_init.__key, i16 noundef signext 3) #6
  %event_work = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %event_work, i32 noundef 0) #6
  %11 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %event_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @ath10k_qmi_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry22 = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i59 = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry22, ptr %prev.i59, align 8
  %func = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ath10k_qmi_driver_event_work, ptr %func, align 4
  %call27 = tail call i32 @qmi_add_lookup(ptr noundef %qmi_hdl, i32 noundef 69, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %err_qmi_lookup

if.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.ath10k_qmi, ptr %call7.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state, align 4
  br label %cleanup

err_qmi_lookup:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %17) #6
  br label %err_release_qmi_handle

err_release_qmi_handle:                           ; preds = %err_qmi_lookup, %if.then15
  %ret.0 = phi i32 [ %call27, %err_qmi_lookup ], [ -14, %if.then15 ]
  tail call void @qmi_handle_release(ptr noundef %qmi_hdl) #6
  br label %err

err:                                              ; preds = %err_release_qmi_handle, %if.end7.err_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end7.err_crit_edge ], [ %ret.0, %err_release_qmi_handle ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ 0, %if.end30 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_qmi_driver_event_work(ptr noundef %work) #0 align 64 {
entry:
  %dst_perms.i26.i = alloca %struct.qcom_scm_vmperm, align 4
  %src_perms.i27.i = alloca i32, align 4
  %dst_perms.i.i36 = alloca [3 x %struct.qcom_scm_vmperm], align 4
  %src_perms.i.i37 = alloca i32, align 4
  %req.i = alloca %struct.wlfw_cap_req_msg_v01, align 1
  %txn.i = alloca %struct.qmi_txn, align 4
  %dst_perms.i.i = alloca %struct.qcom_scm_vmperm, align 4
  %src_perms.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -384
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %event_lock = getelementptr i8, ptr %work, i32 56
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #6
  %event_list = getelementptr i8, ptr %work, i32 48
  %2 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not75 = icmp eq ptr %3, %event_list
  br i1 %cmp.i.not75, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %fw_ready.i = getelementptr i8, ptr %work, i32 280
  %msa_fixed_perm.i38 = getelementptr i8, ptr %work, i32 376
  %nr_mem_region.i40 = getelementptr i8, ptr %work, i32 100
  %4 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %dst_perms.i.i36, i32 0, i32 1
  %5 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], ptr %dst_perms.i.i36, i32 0, i32 1
  %6 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], ptr %dst_perms.i.i36, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds i8, ptr %dst_perms.i.i36, i32 16
  %8 = getelementptr inbounds [3 x %struct.qcom_scm_vmperm], ptr %dst_perms.i.i36, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %dst_perms.i26.i, i32 0, i32 1
  %qmi_hdl.i = getelementptr i8, ptr %work, i32 -380
  %chip_family28.i = getelementptr i8, ptr %work, i32 132
  %10 = getelementptr i8, ptr %work, i32 128
  %11 = getelementptr i8, ptr %work, i32 136
  %soc_info42.i = getelementptr i8, ptr %work, i32 140
  %fw_version47.i = getelementptr i8, ptr %work, i32 276
  %fw_build_timestamp.i = getelementptr i8, ptr %work, i32 281
  %fw_build_id.i = getelementptr i8, ptr %work, i32 144
  %12 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %dst_perms.i.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %13 = phi ptr [ %3, %while.body.lr.ph ], [ %129, %sw.epilog.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %13) #6
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock(ptr noundef %event_lock) #6
  %type = getelementptr inbounds %struct.ath10k_qmi_driver_event, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb8
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %list_del.exit
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %call.i = call fastcc i32 @ath10k_qmi_ind_register_send_sync_msg(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %27 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fw_ready.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = call i32 @ath10k_snoc_fw_indication(ptr noundef %26, i64 noundef 2) #6
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call fastcc i32 @ath10k_qmi_host_cap_send_sync(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.sw.epilog_crit_edge

if.end5.i.sw.epilog_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = call fastcc i32 @ath10k_qmi_msa_mem_info_send_sync_msg(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.sw.epilog_crit_edge

if.end9.i.sw.epilog_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end13.i:                                       ; preds = %if.end9.i
  call void @msleep(i32 noundef 20) #6
  %29 = ptrtoint ptr %msa_fixed_perm.i38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msa_fixed_perm.i38, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i39 = icmp eq i8 %30, 0
  br i1 %tobool.not.i39, label %for.cond.preheader.i41, label %if.end13.i.if.end17.i_crit_edge

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

for.cond.preheader.i41:                           ; preds = %if.end13.i
  %31 = ptrtoint ptr %nr_mem_region.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_mem_region.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp35.not.i = icmp eq i32 %32, 0
  br i1 %cmp35.not.i, label %for.cond.preheader.i41.if.end17.i_crit_edge, label %for.cond.preheader.i41.for.body.i46_crit_edge

for.cond.preheader.i41.for.body.i46_crit_edge:    ; preds = %for.cond.preheader.i41
  br label %for.body.i46

for.cond.preheader.i41.if.end17.i_crit_edge:      ; preds = %for.cond.preheader.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

for.body.i46:                                     ; preds = %for.inc.i.for.body.i46_crit_edge, %for.cond.preheader.i41.for.body.i46_crit_edge
  %i.036.i = phi i32 [ %inc.i51, %for.inc.i.for.body.i46_crit_edge ], [ 0, %for.cond.preheader.i41.for.body.i46_crit_edge ]
  %arrayidx.i43 = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.036.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dst_perms.i.i36) #6
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 -1, ptr %7, align 4
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_perms.i.i37) #6
  %36 = ptrtoint ptr %src_perms.i.i37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %src_perms.i.i37, align 4
  %37 = ptrtoint ptr %dst_perms.i.i36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 15, ptr %dst_perms.i.i36, align 4
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %4, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 24, ptr %5, align 4
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %6, align 4
  %secure.i.i44 = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.036.i, i32 2
  %41 = ptrtoint ptr %secure.i.i44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %secure.i.i44, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i45 = icmp eq i8 %42, 0
  br i1 %tobool.not.i.i45, label %if.else.i.i, label %for.body.i46.if.end.i.i50_crit_edge

for.body.i46.if.end.i.i50_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i50

if.else.i.i:                                      ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 25, ptr %7, align 4
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %8, align 4
  br label %if.end.i.i50

if.end.i.i50:                                     ; preds = %if.else.i.i, %for.body.i46.if.end.i.i50_crit_edge
  %perm_count.0.i.i = phi i32 [ 3, %if.else.i.i ], [ 2, %for.body.i46.if.end.i.i50_crit_edge ]
  %45 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i43, align 4
  %size.i.i47 = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.036.i, i32 1
  %47 = ptrtoint ptr %size.i.i47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.i.i47, align 4
  %call.i.i48 = call i32 @qcom_scm_assign_mem(i32 noundef %46, i32 noundef %48, ptr noundef nonnull %src_perms.i.i37, ptr noundef nonnull %dst_perms.i.i36, i32 noundef %perm_count.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp.i.i49 = icmp slt i32 %call.i.i48, 0
  br i1 %cmp.i.i49, label %ath10k_qmi_map_msa_permission.exit.thread.i, label %ath10k_qmi_map_msa_permission.exit.i

ath10k_qmi_map_msa_permission.exit.thread.i:      ; preds = %if.end.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %35, ptr noundef nonnull @.str.34, i32 noundef %call.i.i48) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_perms.i.i37) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dst_perms.i.i36) #6
  br label %for.cond4.preheader.i

ath10k_qmi_map_msa_permission.exit.i:             ; preds = %if.end.i.i50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_perms.i.i37) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dst_perms.i.i36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool1.not.i = icmp eq i32 %call.i.i48, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %ath10k_qmi_map_msa_permission.exit.i.for.cond4.preheader.i_crit_edge

ath10k_qmi_map_msa_permission.exit.i.for.cond4.preheader.i_crit_edge: ; preds = %ath10k_qmi_map_msa_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %ath10k_qmi_map_msa_permission.exit.i.for.cond4.preheader.i_crit_edge, %ath10k_qmi_map_msa_permission.exit.thread.i
  %i.137.i = add i32 %i.036.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.137.i)
  %cmp538.i = icmp sgt i32 %i.137.i, -1
  br i1 %cmp538.i, label %for.cond4.preheader.i.for.body6.i_crit_edge, label %for.cond4.preheader.i.sw.epilog_crit_edge

for.cond4.preheader.i.sw.epilog_crit_edge:        ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.inc.i:                                        ; preds = %ath10k_qmi_map_msa_permission.exit.i
  %inc.i51 = add nuw i32 %i.036.i, 1
  %49 = ptrtoint ptr %nr_mem_region.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_mem_region.i40, align 4
  %cmp.i52 = icmp ult i32 %inc.i51, %50
  br i1 %cmp.i52, label %for.inc.i.for.body.i46_crit_edge, label %for.inc.i.if.end17.i_crit_edge

for.inc.i.if.end17.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

for.inc.i.for.body.i46_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i46

for.body6.i:                                      ; preds = %ath10k_qmi_unmap_msa_permission.exit.i55.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.139.i = phi i32 [ %i.1.i, %ath10k_qmi_unmap_msa_permission.exit.i55.for.body6.i_crit_edge ], [ %i.137.i, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.139.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_perms.i26.i) #6
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_perms.i27.i) #6
  %secure.i28.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.139.i, i32 2
  %53 = ptrtoint ptr %secure.i28.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %secure.i28.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i29.i = icmp eq i8 %54, 0
  %spec.store.select.i.i53 = select i1 %tobool.not.i29.i, i32 50364416, i32 16809984
  %55 = ptrtoint ptr %src_perms.i27.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select.i.i53, ptr %src_perms.i27.i, align 4
  %56 = ptrtoint ptr %dst_perms.i26.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %dst_perms.i26.i, align 4
  %57 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %9, align 4
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx8.i, align 4
  %size.i30.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.139.i, i32 1
  %60 = ptrtoint ptr %size.i30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i30.i, align 4
  %call.i31.i = call i32 @qcom_scm_assign_mem(i32 noundef %59, i32 noundef %61, ptr noundef nonnull %src_perms.i27.i, ptr noundef nonnull %dst_perms.i26.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %if.then2.i.i54, label %for.body6.i.ath10k_qmi_unmap_msa_permission.exit.i55_crit_edge

for.body6.i.ath10k_qmi_unmap_msa_permission.exit.i55_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_unmap_msa_permission.exit.i55

if.then2.i.i54:                                   ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %52, ptr noundef nonnull @.str.35, i32 noundef %call.i31.i) #6
  br label %ath10k_qmi_unmap_msa_permission.exit.i55

ath10k_qmi_unmap_msa_permission.exit.i55:         ; preds = %if.then2.i.i54, %for.body6.i.ath10k_qmi_unmap_msa_permission.exit.i55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_perms.i27.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_perms.i26.i) #6
  %i.1.i = add i32 %i.139.i, -1
  %cmp5.i = icmp sgt i32 %i.1.i, -1
  br i1 %cmp5.i, label %ath10k_qmi_unmap_msa_permission.exit.i55.for.body6.i_crit_edge, label %ath10k_qmi_unmap_msa_permission.exit.i55.sw.epilog_crit_edge

ath10k_qmi_unmap_msa_permission.exit.i55.sw.epilog_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

ath10k_qmi_unmap_msa_permission.exit.i55.for.body6.i_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

if.end17.i:                                       ; preds = %for.inc.i.if.end17.i_crit_edge, %for.cond.preheader.i41.if.end17.i_crit_edge, %if.end13.i.if.end17.i_crit_edge
  %call18.i = call fastcc i32 @ath10k_qmi_msa_ready_send_sync_msg(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.err_setup_msa.i_crit_edge

if.end17.i.err_setup_msa.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_setup_msa.i

if.end21.i:                                       ; preds = %if.end17.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req.i) #6
  %62 = ptrtoint ptr %req.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %req.i, align 1
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn.i) #6
  %65 = call ptr @memset(ptr %txn.i, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3520, i32 noundef 208) #9
  %tobool.not.i31 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i31, label %ath10k_qmi_cap_send_sync_msg.exit.thread, label %if.end.i33

ath10k_qmi_cap_send_sync_msg.exit.thread:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i) #6
  br label %err_setup_msa.i

if.end.i33:                                       ; preds = %if.end21.i
  %call3.i = call i32 @qmi_txn_init(ptr noundef %qmi_hdl.i, ptr noundef nonnull %txn.i, ptr noundef nonnull @wlfw_cap_resp_msg_v01_ei, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i32 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i32, label %if.end.i33.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge, label %if.end5.i34

if.end.i33.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge: ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_cap_send_sync_msg.exit.thread64

if.end5.i34:                                      ; preds = %if.end.i33
  %call7.i = call i32 @qmi_send_request(ptr noundef %qmi_hdl.i, ptr noundef null, ptr noundef nonnull %txn.i, i32 noundef 36, i32 noundef 0, ptr noundef nonnull @wlfw_cap_req_msg_v01_ei, ptr noundef nonnull %req.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.end5.i34
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn.i) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %64, ptr noundef nonnull @.str.39, i32 noundef %call7.i) #6
  br label %ath10k_qmi_cap_send_sync_msg.exit.thread64

if.end10.i:                                       ; preds = %if.end5.i34
  %call11.i = call i32 @qmi_txn_wait(ptr noundef nonnull %txn.i, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge, label %if.end14.i

if.end10.i.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_cap_send_sync_msg.exit.thread64

if.end14.i:                                       ; preds = %if.end10.i
  %67 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp16.not.i = icmp eq i16 %68, 0
  br i1 %cmp16.not.i, label %if.end21.i35, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %error.i = getelementptr inbounds %struct.qmi_response_type_v01, ptr %call7.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %error.i, align 2
  %conv20.i = zext i16 %70 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %64, ptr noundef nonnull @.str.40, i32 noundef %conv20.i) #6
  br label %ath10k_qmi_cap_send_sync_msg.exit.thread64

if.end21.i35:                                     ; preds = %if.end14.i
  %chip_info_valid.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %chip_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %chip_info_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool22.not.i = icmp eq i8 %72, 0
  br i1 %tobool22.not.i, label %if.end21.i35.if.end31.i_crit_edge, label %if.then23.i

if.end21.i35.if.end31.i_crit_edge:                ; preds = %if.end21.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end21.i35
  call void @__sanitizer_cov_trace_pc() #8
  %chip_info.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chip_info.i, align 8
  %chip_family.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %chip_family.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chip_family.i, align 4
  %77 = ptrtoint ptr %chip_family28.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %chip_family28.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then23.i, %if.end21.i35.if.end31.i_crit_edge
  %.sink.i = phi i32 [ %74, %if.then23.i ], [ 255, %if.end21.i35.if.end31.i_crit_edge ]
  %78 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink.i, ptr %10, align 4
  %board_info_valid.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %board_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %board_info_valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool32.not.i = icmp eq i8 %80, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then33.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %board_info.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %board_info.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end39.i_crit_edge
  %.sink125.i = phi i32 [ %82, %if.then33.i ], [ 255, %if.end31.i.if.end39.i_crit_edge ]
  %83 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink125.i, ptr %11, align 4
  %soc_info_valid.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %soc_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %soc_info_valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool40.not.i = icmp eq i8 %85, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.end44.i_crit_edge, label %if.then41.i

if.end39.i.if.end44.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %soc_info.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 6
  %86 = ptrtoint ptr %soc_info.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %soc_info.i, align 4
  %88 = ptrtoint ptr %soc_info42.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %soc_info42.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end39.i.if.end44.i_crit_edge
  %fw_version_info_valid.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %fw_version_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fw_version_info_valid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool45.not.i = icmp eq i8 %90, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.end52.i_crit_edge, label %if.then46.i

if.end44.i.if.end52.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then46.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %fw_version_info.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %fw_version_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fw_version_info.i, align 4
  %93 = ptrtoint ptr %fw_version47.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %fw_version47.i, align 4
  %fw_build_timestamp49.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %call51.i = call i32 @strlcpy(ptr noundef %fw_build_timestamp.i, ptr noundef %fw_build_timestamp49.i, i32 noundef 33) #6
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then46.i, %if.end44.i.if.end52.i_crit_edge
  %fw_build_id_valid.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 9
  %94 = ptrtoint ptr %fw_build_id_valid.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fw_build_id_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool53.not.i = icmp eq i8 %95, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end59.i_crit_edge, label %if.then54.i

if.end52.i.if.end59.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %fw_build_id56.i = getelementptr inbounds %struct.wlfw_cap_resp_msg_v01, ptr %call7.i.i.i, i32 0, i32 10
  %call58.i = call i32 @strlcpy(ptr noundef %fw_build_id.i, ptr noundef %fw_build_id56.i, i32 noundef 129) #6
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end59.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ath10k, ptr %64, i32 1, i32 41, i32 11
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool61.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end59.i.ath10k_qmi_cap_send_sync_msg.exit_crit_edge

if.end59.i.ath10k_qmi_cap_send_sync_msg.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_cap_send_sync_msg.exit

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %10, align 4
  %100 = ptrtoint ptr %chip_family28.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chip_family28.i, align 4
  %102 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %11, align 4
  %104 = ptrtoint ptr %soc_info42.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %soc_info42.i, align 4
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %64, ptr noundef nonnull @.str.41, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105) #6
  %106 = ptrtoint ptr %fw_version47.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_version47.i, align 4
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %64, ptr noundef nonnull @.str.42, i32 noundef %107, ptr noundef %fw_build_timestamp.i, ptr noundef %fw_build_id.i) #6
  br label %ath10k_qmi_cap_send_sync_msg.exit

ath10k_qmi_cap_send_sync_msg.exit.thread64:       ; preds = %if.then18.i, %if.end10.i.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge, %if.then9.i, %if.end.i33.ath10k_qmi_cap_send_sync_msg.exit.thread64_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i) #6
  br label %err_setup_msa.i

ath10k_qmi_cap_send_sync_msg.exit:                ; preds = %if.then62.i, %if.end59.i.ath10k_qmi_cap_send_sync_msg.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req.i) #6
  br label %sw.epilog

err_setup_msa.i:                                  ; preds = %ath10k_qmi_cap_send_sync_msg.exit.thread64, %ath10k_qmi_cap_send_sync_msg.exit.thread, %if.end17.i.err_setup_msa.i_crit_edge
  %108 = ptrtoint ptr %msa_fixed_perm.i38 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %msa_fixed_perm.i38, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i28 = icmp eq i8 %109, 0
  br i1 %tobool.not.i28, label %for.cond.preheader.i, label %err_setup_msa.i.sw.epilog_crit_edge

err_setup_msa.i.sw.epilog_crit_edge:              ; preds = %err_setup_msa.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %err_setup_msa.i
  %110 = ptrtoint ptr %nr_mem_region.i40 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_mem_region.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp6.not.i = icmp eq i32 %111, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.sw.epilog_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sw.epilog_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.i:                                       ; preds = %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.07.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_perms.i.i) #6
  %112 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_perms.i.i) #6
  %secure.i.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.07.i, i32 2
  %114 = ptrtoint ptr %secure.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %secure.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i = icmp eq i8 %115, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 50364416, i32 16809984
  %116 = ptrtoint ptr %src_perms.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.store.select.i.i, ptr %src_perms.i.i, align 4
  %117 = ptrtoint ptr %dst_perms.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3, ptr %dst_perms.i.i, align 4
  %118 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 6, ptr %12, align 4
  %119 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i, align 4
  %size.i.i = getelementptr %struct.ath10k_qmi, ptr %add.ptr, i32 0, i32 8, i32 %i.07.i, i32 1
  %121 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i.i, align 4
  %call.i.i29 = call i32 @qcom_scm_assign_mem(i32 noundef %120, i32 noundef %122, ptr noundef nonnull %src_perms.i.i, ptr noundef nonnull %dst_perms.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp.i.i = icmp slt i32 %call.i.i29, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge

for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_unmap_msa_permission.exit.i

if.then2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %113, ptr noundef nonnull @.str.35, i32 noundef %call.i.i29) #6
  br label %ath10k_qmi_unmap_msa_permission.exit.i

ath10k_qmi_unmap_msa_permission.exit.i:           ; preds = %if.then2.i.i, %for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_perms.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_perms.i.i) #6
  %inc.i = add nuw i32 %i.07.i, 1
  %123 = ptrtoint ptr %nr_mem_region.i40 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nr_mem_region.i40, align 4
  %cmp.i30 = icmp ult i32 %inc.i, %124
  br i1 %cmp.i30, label %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge, label %ath10k_qmi_unmap_msa_permission.exit.i.sw.epilog_crit_edge

ath10k_qmi_unmap_msa_permission.exit.i.sw.epilog_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sw.bb7:                                           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath10k_qmi_event_server_exit(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb8:                                           ; preds = %list_del.exit
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %127 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %127, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %lor.lhs.false.i, label %sw.bb8.if.then.i_crit_edge

sw.bb8.if.then.i_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_driver_event_work, %if.then.i)) #6
          to label %ath10k_qmi_event_fw_ready_ind.exit [label %if.then.i], !srcloc !117

if.then.i:                                        ; preds = %lor.lhs.false.i, %sw.bb8.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %126, i32 noundef 2097152, ptr noundef nonnull @.str.44) #6
  br label %ath10k_qmi_event_fw_ready_ind.exit

ath10k_qmi_event_fw_ready_ind.exit:               ; preds = %if.then.i, %lor.lhs.false.i
  %call2.i = call i32 @ath10k_snoc_fw_indication(ptr noundef %126, i64 noundef 2) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ath10k_qmi_event_msa_ready(ptr noundef %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %23) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %ath10k_qmi_event_fw_ready_ind.exit, %sw.bb7, %ath10k_qmi_unmap_msa_permission.exit.i.sw.epilog_crit_edge, %for.cond.preheader.i.sw.epilog_crit_edge, %err_setup_msa.i.sw.epilog_crit_edge, %ath10k_qmi_cap_send_sync_msg.exit, %ath10k_qmi_unmap_msa_permission.exit.i55.sw.epilog_crit_edge, %for.cond4.preheader.i.sw.epilog_crit_edge, %if.end9.i.sw.epilog_crit_edge, %if.end5.i.sw.epilog_crit_edge, %if.then3.i, %sw.bb.sw.epilog_crit_edge
  call void @kfree(ptr noundef %13) #6
  call void @_raw_spin_lock(ptr noundef %event_lock) #6
  %128 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile ptr, ptr %event_list, align 4
  %cmp.i.not = icmp eq ptr %129, %event_list
  br i1 %cmp.i.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %event_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_qmi_deinit(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 1, i32 41, i32 6, i32 3
  %0 = ptrtoint ptr %qmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmi1, align 4
  %state = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state, align 4
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 1
  tail call void @qmi_handle_release(ptr noundef %qmi_hdl) #6
  %event_work = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 3
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %event_work) #6
  %event_wq = getelementptr inbounds %struct.ath10k_qmi, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %1) #6
  %5 = ptrtoint ptr %qmi1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %qmi1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_qmi_new_server(ptr noundef %qmi_hdl, ptr nocapture noundef readonly %service) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  %sq1 = getelementptr i8, ptr %qmi_hdl, i32 368
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %sq1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 42, ptr %sq1, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 3
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %node, align 4
  %sq_node = getelementptr i8, ptr %qmi_hdl, i32 372
  %5 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %service, i32 0, i32 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %sq_port = getelementptr i8, ptr %qmi_hdl, i32 376
  %8 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sq_port, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_new_server, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !117

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 2097152, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %10 = ptrtoint ptr %qmi_hdl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qmi_hdl, align 4
  %call4 = tail call i32 @kernel_connect(ptr noundef %11, ptr noundef %sq1, i32 noundef 12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body8, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.19) #6
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and9 = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %do.body8.if.then13_crit_edge

do.body8.if.then13_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false11:                                  ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_new_server, %if.then13)) #6
          to label %do.end16 [label %if.then13], !srcloc !117

if.then13:                                        ; preds = %lor.lhs.false11, %do.body8.if.then13_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 2097152, ptr noundef nonnull @.str.20) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %lor.lhs.false11
  tail call fastcc void @ath10k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.then6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_qmi_del_server(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %service) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_ready = getelementptr i8, ptr %qmi_hdl, i32 660
  %0 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_ready, align 4
  %state = getelementptr i8, ptr %qmi_hdl, i32 760
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  tail call fastcc void @ath10k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_qmi_driver_event_post(ptr noundef %qmi, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type1 = getelementptr inbounds %struct.ath10k_qmi_driver_event, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %type1, align 8
  %data2 = getelementptr inbounds %struct.ath10k_qmi_driver_event, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data2, align 4
  %event_lock = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #6
  %event_list = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %event_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %event_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #6
  %event_wq = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 4
  %9 = ptrtoint ptr %event_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_wq, align 4
  %event_work = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %event_work) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_qmi_fw_ready_ind(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  tail call fastcc void @ath10k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_qmi_msa_ready_ind(ptr noundef %qmi_hdl, ptr nocapture noundef readnone %sq, ptr nocapture noundef readnone %txn, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %qmi_hdl, i32 -4
  tail call fastcc void @ath10k_qmi_driver_event_post(ptr noundef %add.ptr, i32 noundef 4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_qmi_event_server_exit(ptr nocapture noundef readonly %qmi) unnamed_addr #0 align 64 {
entry:
  %dst_perms.i.i = alloca %struct.qcom_scm_vmperm, align 4
  %src_perms.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmi, align 4
  %msa_fixed_perm.i = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 17
  %2 = ptrtoint ptr %msa_fixed_perm.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msa_fixed_perm.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %entry.ath10k_qmi_remove_msa_permission.exit_crit_edge

entry.ath10k_qmi_remove_msa_permission.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_remove_msa_permission.exit

for.cond.preheader.i:                             ; preds = %entry
  %nr_mem_region.i = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 7
  %4 = ptrtoint ptr %nr_mem_region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_mem_region.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.not.i = icmp eq i32 %5, 0
  br i1 %cmp6.not.i, label %for.cond.preheader.i.ath10k_qmi_remove_msa_permission.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.ath10k_qmi_remove_msa_permission.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_remove_msa_permission.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %6 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %dst_perms.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.07.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dst_perms.i.i) #6
  %7 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_perms.i.i) #6
  %secure.i.i = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.07.i, i32 2
  %9 = ptrtoint ptr %secure.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %secure.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 50364416, i32 16809984
  %11 = ptrtoint ptr %src_perms.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i.i, ptr %src_perms.i.i, align 4
  %12 = ptrtoint ptr %dst_perms.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %dst_perms.i.i, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %6, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %size.i.i = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.07.i, i32 1
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  %call.i.i = call i32 @qcom_scm_assign_mem(i32 noundef %15, i32 noundef %17, ptr noundef nonnull %src_perms.i.i, ptr noundef nonnull %dst_perms.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge

for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_unmap_msa_permission.exit.i

if.then2.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %8, ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #6
  br label %ath10k_qmi_unmap_msa_permission.exit.i

ath10k_qmi_unmap_msa_permission.exit.i:           ; preds = %if.then2.i.i, %for.body.i.ath10k_qmi_unmap_msa_permission.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_perms.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dst_perms.i.i) #6
  %inc.i = add nuw i32 %i.07.i, 1
  %18 = ptrtoint ptr %nr_mem_region.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_mem_region.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge, label %ath10k_qmi_unmap_msa_permission.exit.i.ath10k_qmi_remove_msa_permission.exit_crit_edge

ath10k_qmi_unmap_msa_permission.exit.i.ath10k_qmi_remove_msa_permission.exit_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_remove_msa_permission.exit

ath10k_qmi_unmap_msa_permission.exit.i.for.body.i_crit_edge: ; preds = %ath10k_qmi_unmap_msa_permission.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath10k_qmi_remove_msa_permission.exit:            ; preds = %ath10k_qmi_unmap_msa_permission.exit.i.ath10k_qmi_remove_msa_permission.exit_crit_edge, %for.cond.preheader.i.ath10k_qmi_remove_msa_permission.exit_crit_edge, %entry.ath10k_qmi_remove_msa_permission.exit_crit_edge
  call void @ath10k_core_free_board_files(ptr noundef %1) #6
  %flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 1, i32 41, i32 11
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %land.lhs.true, label %ath10k_qmi_remove_msa_permission.exit.if.end_crit_edge

ath10k_qmi_remove_msa_permission.exit.if.end_crit_edge: ; preds = %ath10k_qmi_remove_msa_permission.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %ath10k_qmi_remove_msa_permission.exit
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool5.not = icmp eq i32 %25, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath10k_snoc_fw_crashed_dump(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %ath10k_qmi_remove_msa_permission.exit.if.end_crit_edge
  %call6 = call i32 @ath10k_snoc_fw_indication(ptr noundef %1, i64 noundef 3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %26 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %26, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_event_server_exit, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !117

if.then9:                                         ; preds = %lor.lhs.false, %if.end.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 2097152, ptr noundef nonnull @.str.43) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_qmi_event_msa_ready(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qmi, align 4
  %hif.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %hif.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %hif.i, align 4
  %qmi_ids_valid.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 50, i32 5
  %3 = ptrtoint ptr %qmi_ids_valid.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %qmi_ids_valid.i, align 1
  %board_info.i = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 10
  %4 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board_info.i, align 4
  %qmi_board_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 50, i32 6
  %6 = ptrtoint ptr %qmi_board_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %qmi_board_id.i, align 4
  %chip_info.i = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 9
  %7 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_info.i, align 4
  %qmi_chip_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 50, i32 7
  %9 = ptrtoint ptr %qmi_chip_id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %qmi_chip_id.i, align 4
  %fw.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 16
  %10 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.45, ptr %fw.i, align 4
  %call.i = tail call i32 @ath10k_core_check_dt(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ath10k_qmi_fetch_board_file.exit_crit_edge, label %do.body.i

entry.ath10k_qmi_fetch_board_file.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_qmi_fetch_board_file.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %11 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %do.body.i.if.then6.i_crit_edge

do.body.i.if.then6.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_event_msa_ready, %if.then6.i)) #6
          to label %ath10k_qmi_fetch_board_file.exit [label %if.then6.i], !srcloc !117

if.then6.i:                                       ; preds = %lor.lhs.false.i, %do.body.i.if.then6.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 2097152, ptr noundef nonnull @.str.46) #6
  br label %ath10k_qmi_fetch_board_file.exit

ath10k_qmi_fetch_board_file.exit:                 ; preds = %if.then6.i, %lor.lhs.false.i, %entry.ath10k_qmi_fetch_board_file.exit_crit_edge
  %12 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qmi, align 4
  %call9.i = tail call i32 @ath10k_core_fetch_board_file(ptr noundef %13, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not = icmp eq i32 %call9.i, 0
  br i1 %tobool.not, label %if.end, label %ath10k_qmi_fetch_board_file.exit.out_crit_edge

ath10k_qmi_fetch_board_file.exit.out_crit_edge:   ; preds = %ath10k_qmi_fetch_board_file.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %ath10k_qmi_fetch_board_file.exit
  %call1 = tail call fastcc i32 @ath10k_qmi_bdf_dnld_send_sync(ptr noundef %qmi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath10k_qmi_send_cal_report_req(ptr noundef %qmi)
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %ath10k_qmi_fetch_board_file.exit.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_ind_register_send_sync_msg(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_ind_register_resp_msg_v01, align 8
  %req = alloca %struct.wlfw_ind_register_req_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #6
  %0 = call ptr @memset(ptr %resp, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %req) #6
  %1 = call ptr @memset(ptr %req, i32 0, i32 32)
  %2 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %client_id_valid = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 10
  %5 = ptrtoint ptr %client_id_valid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %client_id_valid, align 2
  %client_id = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1263420748, ptr %client_id, align 4
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %req, align 4
  %fw_ready_enable = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %fw_ready_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %fw_ready_enable, align 1
  %msa_ready_enable_valid = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 6
  %9 = ptrtoint ptr %msa_ready_enable_valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %msa_ready_enable_valid, align 2
  %msa_ready_enable = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 7
  %10 = ptrtoint ptr %msa_ready_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %msa_ready_enable, align 1
  %xo_cal_supported = getelementptr inbounds %struct.ath10k, ptr %3, i32 1, i32 41, i32 12
  %11 = ptrtoint ptr %xo_cal_supported to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xo_cal_supported, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xo_cal_enable_valid = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 20
  %13 = ptrtoint ptr %xo_cal_enable_valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %xo_cal_enable_valid, align 4
  %xo_cal_enable = getelementptr inbounds %struct.wlfw_ind_register_req_msg_v01, ptr %req, i32 0, i32 21
  %14 = ptrtoint ptr %xo_cal_enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %xo_cal_enable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %call2 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_ind_register_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 32, i32 noundef 50, ptr noundef nonnull @wlfw_ind_register_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %call6) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp15.not = icmp eq i16 %16, 0
  br i1 %cmp15.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %17 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %error, align 2
  %conv19 = zext i16 %18 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %conv19) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %fw_status_valid = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, ptr %resp, i32 0, i32 1
  %19 = ptrtoint ptr %fw_status_valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_status_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool21.not = icmp eq i8 %20, 0
  br i1 %tobool21.not, label %if.end20.do.body_crit_edge, label %if.then22

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22:                                        ; preds = %if.end20
  %fw_status = getelementptr inbounds %struct.wlfw_ind_register_resp_msg_v01, ptr %resp, i32 0, i32 2
  %21 = ptrtoint ptr %fw_status to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %fw_status, align 8
  %and = and i64 %22, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  br i1 %tobool23.not, label %if.then22.do.body_crit_edge, label %if.then24

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %fw_ready = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 14
  %23 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %fw_ready, align 4
  br label %do.body

do.body:                                          ; preds = %if.then24, %if.then22.do.body_crit_edge, %if.end20.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %24 = load i32, ptr @ath10k_debug_mask, align 4
  %and27 = and i32 %24, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %do.body.if.then31_crit_edge

do.body.if.then31_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then31

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_ind_register_send_sync_msg, %if.then31)) #6
          to label %cleanup [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %lor.lhs.false, %do.body.if.then31_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 2097152, ptr noundef nonnull @.str.24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %lor.lhs.false, %if.then17, %if.end9.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then31 ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.then8 ], [ %call10, %if.end9.cleanup_crit_edge ], [ -22, %if.then17 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_snoc_fw_indication(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_host_cap_send_sync(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_host_cap_resp_msg_v01, align 4
  %req = alloca %struct.wlfw_host_cap_req_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %req) #6
  %1 = call ptr @memset(ptr %req, i32 0, i32 180)
  %2 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %req, align 4
  %daemon_support = getelementptr inbounds %struct.wlfw_host_cap_req_msg_v01, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %daemon_support to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %daemon_support, align 4
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %call2 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_host_cap_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ath10k, ptr %3, i32 1, i32 41, i32 11
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %wlfw_host_cap_req_msg_v01_ei.wlfw_host_cap_8bit_req_msg_v01_ei = select i1 %tobool.not, ptr @wlfw_host_cap_req_msg_v01_ei, ptr @wlfw_host_cap_8bit_req_msg_v01_ei
  %call7 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 52, i32 noundef 189, ptr noundef nonnull %wlfw_host_cap_req_msg_v01_ei.wlfw_host_cap_8bit_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %call7) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16.not = icmp eq i16 %11, 0
  br i1 %cmp16.not, label %if.end14.do.body_crit_edge, label %land.lhs.true

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %if.end14
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 94, i16 %13)
  %cmp20.not = icmp eq i16 %13, 94
  br i1 %cmp20.not, label %land.lhs.true.do.body_crit_edge, label %if.then22

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = zext i16 %13 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %conv19) #6
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end14.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %14 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %do.body.if.then30_crit_edge

do.body.if.then30_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_host_cap_send_sync, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !117

if.then30:                                        ; preds = %lor.lhs.false, %do.body.if.then30_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 2097152, ptr noundef nonnull @.str.27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %lor.lhs.false, %if.then22, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then30 ], [ %call2, %entry.cleanup_crit_edge ], [ %call7, %if.then9 ], [ %call11, %if.end10.cleanup_crit_edge ], [ -22, %if.then22 ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_msa_mem_info_send_sync_msg(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_msa_info_resp_msg_v01, align 8
  %req = alloca %struct.wlfw_msa_info_req_msg_v01, align 8
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %resp) #6
  %0 = call ptr @memset(ptr %resp, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #6
  %1 = getelementptr inbounds i8, ptr %req, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %1, align 8
  %3 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %5 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %msa = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %msa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msa, align 16
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %req, align 8
  %mem_size = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mem_size, align 4
  %size = getelementptr inbounds %struct.wlfw_msa_info_req_msg_v01, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %size, align 8
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %call = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_msa_info_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 45, i32 noundef 18, ptr noundef nonnull @wlfw_msa_info_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %call5) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp17.not = icmp eq i16 %13, 0
  br i1 %cmp17.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %14 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %error, align 2
  %conv21 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %4, ptr noundef nonnull @.str.29, i32 noundef %conv21) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %mem_region_info_len = getelementptr inbounds %struct.wlfw_msa_info_resp_msg_v01, ptr %resp, i32 0, i32 1
  %16 = ptrtoint ptr %mem_region_info_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_region_info_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp23 = icmp ugt i32 %17, 2
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef %17) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %18 = ptrtoint ptr %msa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msa, align 16
  %20 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_size, align 4
  %nr_mem_region = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 7
  %22 = ptrtoint ptr %nr_mem_region to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %nr_mem_region, align 4
  %23 = ptrtoint ptr %mem_region_info_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_region_info_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp34178.not = icmp eq i32 %24, 0
  br i1 %cmp34178.not, label %if.end27.do.body107_crit_edge, label %for.body.lr.ph

if.end27.do.body107_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body107

for.body.lr.ph:                                   ; preds = %if.end27
  %add = add i32 %21, %19
  %conv43 = zext i32 %add to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0179 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wlfw_msa_info_resp_msg_v01, ptr %resp, i32 0, i32 2, i32 %i.0179
  %size36 = getelementptr %struct.wlfw_msa_info_resp_msg_v01, ptr %resp, i32 0, i32 2, i32 %i.0179, i32 1
  %25 = ptrtoint ptr %size36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size36, align 8
  %27 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp39 = icmp ugt i32 %26, %28
  br i1 %cmp39, label %for.body.if.then67_crit_edge, label %lor.lhs.false

for.body.if.then67_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false:                                    ; preds = %for.body
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv43)
  %cmp44 = icmp ugt i64 %30, %conv43
  br i1 %cmp44, label %lor.lhs.false.if.then67_crit_edge, label %lor.lhs.false46

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %msa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msa, align 16
  %conv52 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv52)
  %cmp53 = icmp ult i64 %30, %conv52
  br i1 %cmp53, label %lor.lhs.false46.if.then67_crit_edge, label %lor.lhs.false55

lor.lhs.false46.if.then67_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

lor.lhs.false55:                                  ; preds = %lor.lhs.false46
  %conv59 = zext i32 %26 to i64
  %add63 = add i64 %30, %conv59
  call void @__sanitizer_cov_trace_cmp8(i64 %add63, i64 %conv43)
  %cmp65 = icmp ugt i64 %add63, %conv43
  br i1 %cmp65, label %lor.lhs.false55.if.then67_crit_edge, label %if.end74

lor.lhs.false55.if.then67_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false55.if.then67_crit_edge, %lor.lhs.false46.if.then67_crit_edge, %lor.lhs.false.if.then67_crit_edge, %for.body.if.then67_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx, align 8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %4, ptr noundef nonnull @.str.31, i64 noundef %34, i32 noundef %26) #6
  %mem_region117 = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8
  %mul = mul i32 %i.0179, 12
  %35 = call ptr @memset(ptr %mem_region117, i32 0, i32 %mul)
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false55
  %conv78 = trunc i64 %30 to i32
  %arrayidx79 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.0179
  %36 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv78, ptr %arrayidx79, align 4
  %size85 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.0179, i32 1
  %37 = ptrtoint ptr %size85 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %26, ptr %size85, align 4
  %secure_flag = getelementptr %struct.wlfw_msa_info_resp_msg_v01, ptr %resp, i32 0, i32 2, i32 %i.0179, i32 2
  %38 = ptrtoint ptr %secure_flag to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %secure_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool = icmp ne i8 %39, 0
  %secure = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 8, i32 %i.0179, i32 2
  %frombool = zext i1 %tobool to i8
  %40 = ptrtoint ptr %secure to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %secure, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %41 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %41, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90.not = icmp eq i32 %and, 0
  br i1 %tobool90.not, label %lor.lhs.false91, label %if.end74.if.then94_crit_edge

if.end74.if.then94_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94

lor.lhs.false91:                                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_msa_mem_info_send_sync_msg, %if.then94)) #6
          to label %for.inc [label %if.then94], !srcloc !117

if.then94:                                        ; preds = %lor.lhs.false91, %if.end74.if.then94_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %size85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size85, align 4
  %44 = ptrtoint ptr %secure to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %secure, align 4, !range !118
  %46 = zext i8 %45 to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %4, i32 noundef 2097152, ptr noundef nonnull @.str.32, i32 noundef %i.0179, ptr noundef %arrayidx79, i32 noundef %43, i32 noundef %46) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %lor.lhs.false91
  %inc = add nuw i32 %i.0179, 1
  %47 = ptrtoint ptr %mem_region_info_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mem_region_info_len, align 4
  %cmp34 = icmp ult i32 %inc, %48
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.inc.do.body107_crit_edge

for.inc.do.body107_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body107

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body107:                                       ; preds = %for.inc.do.body107_crit_edge, %if.end27.do.body107_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %49 = load i32, ptr @ath10k_debug_mask, align 4
  %and108 = and i32 %49, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %do.body107.if.then113_crit_edge

do.body107.if.then113_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then113

lor.lhs.false110:                                 ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_msa_mem_info_send_sync_msg, %if.then113)) #6
          to label %cleanup [label %if.then113], !srcloc !117

if.then113:                                       ; preds = %lor.lhs.false110, %do.body107.if.then113_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %4, i32 noundef 2097152, ptr noundef nonnull @.str.33) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %lor.lhs.false110, %if.then67, %if.then25, %if.then19, %if.end9.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then113 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.then8 ], [ %call10, %if.end9.cleanup_crit_edge ], [ -22, %if.then19 ], [ -22, %if.then25 ], [ -22, %if.then67 ], [ 0, %lor.lhs.false110 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_msa_ready_send_sync_msg(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_msa_ready_resp_msg_v01, align 4
  %req = alloca %struct.wlfw_msa_ready_req_msg_v01, align 1
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %req) #6
  %1 = ptrtoint ptr %req to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %req, align 1
  %2 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %call = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_msa_ready_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 46, i32 noundef 0, ptr noundef nonnull @wlfw_msa_ready_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.36, i32 noundef %call3) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp12.not = icmp eq i16 %6, 0
  br i1 %cmp12.not, label %if.end10.do.body_crit_edge, label %if.then14

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %error, align 2
  %conv16 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %conv16) #6
  br label %do.body

do.body:                                          ; preds = %if.then14, %if.end10.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then20_crit_edge

do.body.if.then20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_msa_ready_send_sync_msg, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !117

if.then20:                                        ; preds = %lor.lhs.false, %do.body.if.then20_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 2097152, ptr noundef nonnull @.str.38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %lor.lhs.false, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_assign_mem(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_free_board_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_snoc_fw_crashed_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_qmi_bdf_dnld_send_sync(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_bdf_download_resp_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  %1 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %3 = call ptr @memset(ptr %txn, i32 255, i32 168)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 6180) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %board_len = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 46, i32 2
  %5 = ptrtoint ptr %board_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %board_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not88 = icmp eq i32 %6, 0
  br i1 %tobool3.not88, label %if.end.do.body_crit_edge, label %while.body.lr.ph

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.body.lr.ph:                                 ; preds = %if.end
  %board_data = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board_data, align 4
  %file_id_valid = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 1
  %file_id = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 2
  %total_size_valid = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 3
  %total_size = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 4
  %seg_id_valid = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 5
  %data_valid = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 7
  %end_valid = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 10
  %data_len7 = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 8
  %end = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 11
  %data = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 9
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %seg_id = getelementptr inbounds %struct.wlfw_bdf_download_req_msg_v01, ptr %call7.i.i, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %temp.091 = phi ptr [ %8, %while.body.lr.ph ], [ %add.ptr, %if.end39.while.body_crit_edge ]
  %remaining.089 = phi i32 [ %6, %while.body.lr.ph ], [ %sub, %if.end39.while.body_crit_edge ]
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %file_id_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %file_id_valid, align 1
  %11 = ptrtoint ptr %file_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %file_id, align 4
  %12 = ptrtoint ptr %total_size_valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %total_size_valid, align 8
  %13 = ptrtoint ptr %board_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %board_len, align 4
  %15 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %total_size, align 4
  %16 = ptrtoint ptr %seg_id_valid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %seg_id_valid, align 8
  %17 = ptrtoint ptr %data_valid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %data_valid, align 8
  %18 = ptrtoint ptr %end_valid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %end_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %remaining.089)
  %cmp = icmp ugt i32 %remaining.089, 6144
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %data_len7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6144, ptr %data_len7, align 4
  br label %if.end8

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %data_len7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %remaining.089, ptr %data_len7, align 4
  %21 = ptrtoint ptr %end to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %end, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %22 = ptrtoint ptr %data_len7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len7, align 4
  %24 = call ptr @memcpy(ptr %data, ptr %temp.091, i32 %23)
  %call10 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_bdf_download_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  %call15 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 37, i32 noundef 6182, ptr noundef nonnull @wlfw_bdf_download_req_msg_v01_ei, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end13
  %call19 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup.sink.split_crit_edge, label %if.end22

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end18
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp24.not = icmp eq i16 %26, 0
  br i1 %cmp24.not, label %if.end22.if.end39_crit_edge, label %land.lhs.true

if.end22.if.end39_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end22
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %end, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp28 = icmp eq i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp34 = icmp eq i16 %26, 1
  %or.cond = select i1 %cmp28, i1 %cmp34, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end39_crit_edge, label %if.then36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %29 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %error, align 2
  %conv38 = zext i16 %30 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %2, ptr noundef nonnull @.str.47, i32 noundef %conv38) #6
  br label %cleanup.sink.split

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %if.end22.if.end39_crit_edge
  %31 = ptrtoint ptr %data_len7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len7, align 4
  %sub = sub i32 %remaining.089, %32
  %add.ptr = getelementptr i8, ptr %temp.091, i32 %32
  %33 = ptrtoint ptr %seg_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seg_id, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %seg_id, align 4
  %tobool3.not = icmp eq i32 %sub, 0
  br i1 %tobool3.not, label %if.end39.do.body_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end39.do.body_crit_edge, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %35 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %35, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %lor.lhs.false, label %do.body.if.then45_crit_edge

do.body.if.then45_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_bdf_dnld_send_sync, %if.then45)) #6
          to label %cleanup.sink.split [label %if.then45], !srcloc !117

if.then45:                                        ; preds = %lor.lhs.false, %do.body.if.then45_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %2, i32 noundef 2097152, ptr noundef nonnull @.str.48) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then45, %lor.lhs.false, %if.then36, %if.end18.cleanup.sink.split_crit_edge, %if.then17, %if.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %lor.lhs.false ], [ 0, %if.then45 ], [ %call15, %if.then17 ], [ -22, %if.then36 ], [ %call19, %if.end18.cleanup.sink.split_crit_edge ], [ %call10, %if.end8.cleanup.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_qmi_send_cal_report_req(ptr noundef %qmi) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.wlfw_cal_report_resp_msg_v01, align 4
  %req = alloca %struct.wlfw_cal_report_req_msg_v01, align 4
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp) #6
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %resp, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req) #6
  %1 = call ptr @memset(ptr %req, i32 0, i32 28)
  %2 = ptrtoint ptr %qmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmi, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #6
  %4 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %xo_cal_supported = getelementptr inbounds %struct.ath10k, ptr %3, i32 1, i32 41, i32 12
  %5 = ptrtoint ptr %xo_cal_supported to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xo_cal_supported, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %xo_cal_data_valid = getelementptr inbounds %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %xo_cal_data_valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %xo_cal_data_valid, align 4
  %xo_cal_data = getelementptr inbounds %struct.ath10k, ptr %3, i32 1, i32 41, i32 13
  %8 = ptrtoint ptr %xo_cal_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xo_cal_data, align 4
  %conv = trunc i32 %9 to i8
  %xo_cal_data2 = getelementptr inbounds %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %xo_cal_data2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %xo_cal_data2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qmi_hdl = getelementptr inbounds %struct.ath10k_qmi, ptr %qmi, i32 0, i32 1
  %call3 = call i32 @qmi_txn_init(ptr noundef %qmi_hdl, ptr noundef nonnull %txn, ptr noundef nonnull @wlfw_cal_report_resp_msg_v01_ei, ptr noundef nonnull %resp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 0
  %total_size = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 0, i32 1
  %11 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %for.body.preheader.for.inc_crit_edge, label %land.lhs.true

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  %data = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 0, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true.for.inc_crit_edge, label %if.then13

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr inbounds %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %j.1 = phi i32 [ 1, %if.then13 ], [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 1
  %total_size.1 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 1, i32 1
  %18 = ptrtoint ptr %total_size.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_size.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not.1 = icmp eq i32 %19, 0
  br i1 %tobool9.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %data.1 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 1, i32 2
  %20 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.1, align 4
  %tobool12.not.1 = icmp eq ptr %21, null
  br i1 %tobool12.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then13.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then13.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %arrayidx16.1 = getelementptr %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 1, i32 %j.1
  %24 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx16.1, align 4
  %inc.1 = add nuw nsw i32 %j.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then13.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %j.1.1 = phi i32 [ %inc.1, %if.then13.1 ], [ %j.1, %land.lhs.true.1.for.inc.1_crit_edge ], [ %j.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 2
  %total_size.2 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 2, i32 1
  %25 = ptrtoint ptr %total_size.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %total_size.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not.2 = icmp eq i32 %26, 0
  br i1 %tobool9.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %data.2 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 2, i32 2
  %27 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.2, align 4
  %tobool12.not.2 = icmp eq ptr %28, null
  br i1 %tobool12.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then13.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then13.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.2, align 4
  %arrayidx16.2 = getelementptr %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 1, i32 %j.1.1
  %31 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx16.2, align 4
  %inc.2 = add nuw nsw i32 %j.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then13.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %j.1.2 = phi i32 [ %inc.2, %if.then13.2 ], [ %j.1.1, %land.lhs.true.2.for.inc.2_crit_edge ], [ %j.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 3
  %total_size.3 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 3, i32 1
  %32 = ptrtoint ptr %total_size.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %total_size.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool9.not.3 = icmp eq i32 %33, 0
  br i1 %tobool9.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %data.3 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 3, i32 2
  %34 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.3, align 4
  %tobool12.not.3 = icmp eq ptr %35, null
  br i1 %tobool12.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then13.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then13.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  %arrayidx16.3 = getelementptr %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 1, i32 %j.1.2
  %38 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx16.3, align 4
  %inc.3 = add nuw nsw i32 %j.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then13.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %j.1.3 = phi i32 [ %inc.3, %if.then13.3 ], [ %j.1.2, %land.lhs.true.3.for.inc.3_crit_edge ], [ %j.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 4
  %total_size.4 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 4, i32 1
  %39 = ptrtoint ptr %total_size.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %total_size.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool9.not.4 = icmp eq i32 %40, 0
  br i1 %tobool9.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %data.4 = getelementptr %struct.ath10k_qmi, ptr %qmi, i32 0, i32 16, i32 4, i32 2
  %41 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.4, align 4
  %tobool12.not.4 = icmp eq ptr %42, null
  br i1 %tobool12.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then13.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then13.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  %arrayidx16.4 = getelementptr %struct.wlfw_cal_report_req_msg_v01, ptr %req, i32 0, i32 1, i32 %j.1.3
  %45 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx16.4, align 4
  %inc.4 = add nuw nsw i32 %j.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then13.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %j.1.4 = phi i32 [ %inc.4, %if.then13.4 ], [ %j.1.3, %land.lhs.true.4.for.inc.4_crit_edge ], [ %j.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %46 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %j.1.4, ptr %req, align 4
  %call20 = call i32 @qmi_send_request(ptr noundef %qmi_hdl, ptr noundef null, ptr noundef nonnull %txn, i32 noundef 38, i32 noundef 28, ptr noundef nonnull @wlfw_cal_report_req_msg_v01_ei, ptr noundef nonnull %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #6
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.49, i32 noundef %call20) #6
  br label %cleanup

if.end24:                                         ; preds = %for.inc.4
  %call25 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %47 = ptrtoint ptr %resp to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp32.not = icmp eq i16 %48, 0
  br i1 %cmp32.not, label %do.body, label %if.then34

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.qmi_response_type_v01, ptr %resp, i32 0, i32 1
  %49 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %error, align 2
  %conv36 = zext i16 %50 to i32
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %conv36) #6
  br label %cleanup

do.body:                                          ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %51 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %do.body.if.then41_crit_edge

do.body.if.then41_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_qmi_send_cal_report_req, %if.then41)) #6
          to label %cleanup [label %if.then41], !srcloc !117

if.then41:                                        ; preds = %lor.lhs.false, %do.body.if.then41_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 2097152, ptr noundef nonnull @.str.51) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %lor.lhs.false, %if.then34, %if.end24.cleanup_crit_edge, %if.then23, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_check_dt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_core_fetch_board_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 516, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 521, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 527, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 692, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 701, i32 18}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 706, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1041, i32 42}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1050, i32 34}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1053, i32 18}
!18 = !{ptr @ath10k_qmi_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1059, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ath10k_qmi_init.__key.10, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1060, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 486, i32 18}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 495, i32 18}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 500, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 400, i32 18}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 409, i32 18}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 414, i32 2}
!36 = !{ptr @ath10k_qmi_ops, !37, !"ath10k_qmi_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 985, i32 29}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 951, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 956, i32 18}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 960, i32 2}
!44 = !{ptr @qmi_msg_handler, !45, !"qmi_msg_handler", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 921, i32 37}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 1018, i32 20}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 747, i32 18}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 756, i32 18}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 765, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 646, i32 18}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 657, i32 18}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 662, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 139, i32 18}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 148, i32 18}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 154, i32 18}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 168, i32 19}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 177, i32 3}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 184, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 53, i32 18}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 77, i32 18}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 212, i32 18}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 221, i32 18}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 225, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 562, i32 18}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 571, i32 18}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 602, i32 19}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 605, i32 19}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 872, i32 2}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 897, i32 2}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 828, i32 25}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 832, i32 3}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 297, i32 19}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 308, i32 2}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 353, i32 18}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 362, i32 18}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath10k/qmi.c", i32 367, i32 2}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{i64 2148341694, i64 2148341699, i64 2148341712, i64 2148341756, i64 2148341790, i64 2148341811}
!118 = !{i8 0, i8 2}
