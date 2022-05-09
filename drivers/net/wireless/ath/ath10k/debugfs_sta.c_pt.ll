; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/debugfs_sta.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/debugfs_sta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.189, i32, i32, i32, %struct.anon.190, %struct.anon.191, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.196, i32, %struct.anon.197, %struct.anon.198, %struct.anon.199, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.200, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.140 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.144, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.148, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.150, %struct.anon.153, %struct.anon.163, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.144 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.145, i32, i32, i32, i32, i32, %struct.anon.146, %struct.anon.147, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.145 = type { ptr }
%struct.anon.146 = type { ptr, i32 }
%struct.anon.147 = type { i32 }
%struct.anon.148 = type { %union.anon.149, [0 x %struct.htt_tx_done] }
%union.anon.149 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.atomic_t = type { i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.153 = type { i32, %union.anon.154, i32 }
%union.anon.154 = type { ptr }
%struct.anon.163 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.189 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.190 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.191 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.196 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.197 = type { ptr }
%struct.anon.198 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.199 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.105, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.105 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.anon.200 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath10k_peer = type { %struct.list_head, ptr, ptr, i8, i32, [6 x i8], [64 x i32], [4 x ptr], [19 x %union.htt_rx_pn_t], [19 x i8], [19 x %union.htt_rx_pn_t], [19 x i32], [2 x %struct.anon.195] }
%union.htt_rx_pn_t = type { [2 x i64] }
%struct.anon.195 = type { i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ath10k_sta_tid_stats = type { i32, i32, i32, i32, [4 x i32], i32, [7 x i32], [5 x i32] }
%struct.htt_rx_indication_mpdu_range = type { i8, i8, i8, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ath10k_fw_extd_stats_peer = type { %struct.list_head, [6 x i8], i64 }
%struct.ath10k_fw_stats_peer = type { %struct.list_head, [6 x i8], i32, i32, i32, i64 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.192, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%union.anon.192 = type { %struct.anon.194 }
%struct.anon.194 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.wmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_cmd_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_peer_param_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_htt_data_stats = type { [2 x [12 x i64]], [2 x [32 x i64]], [2 x [10 x i64]], [2 x [6 x i64]], [2 x [4 x i64]], [2 x [2 x i64]], [2 x [320 x i64]] }
%struct.ath10k_htt_tx_stats = type { [4 x %struct.ath10k_htt_data_stats], i64, i64, i64 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aggr_mode\00", [22 x i8] zeroinitializer }, align 32
@fops_aggr_mode = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_dbg_sta_read_aggr_mode, ptr @ath10k_dbg_sta_write_aggr_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"addba\00", [26 x i8] zeroinitializer }, align 32
@fops_addba = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_dbg_sta_write_addba, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addba_resp\00", [21 x i8] zeroinitializer }, align 32
@fops_addba_resp = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_dbg_sta_write_addba_resp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delba\00", [26 x i8] zeroinitializer }, align 32
@fops_delba = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_dbg_sta_write_delba, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"peer_debug_trigger\00", [45 x i8] zeroinitializer }, align 32
@fops_peer_debug_trigger = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_dbg_sta_read_peer_debug_trigger, ptr @ath10k_dbg_sta_write_peer_debug_trigger, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dump_tid_stats\00", [17 x i8] zeroinitializer }, align 32
@fops_tid_stats_dump = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_dbg_sta_read_tid_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_stats\00", [23 x i8] zeroinitializer }, align 32
@fops_tx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_dbg_sta_dump_tx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peer_ps_state\00", [18 x i8] zeroinitializer }, align 32
@fops_peer_ps_state = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_dbg_sta_read_peer_ps_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aggregation mode: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to clear addba session ret: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"failed to send addba request: vdev_id %u peer %pM tid %u buf_size %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to send addba response: vdev_id %u peer %pM tid %u status%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %u\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"failed to send delba: vdev_id %u peer %pM tid %u initiator %u reason %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Write 1 to once trigger the debug logs\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"failed to set param to trigger peer tid logs for station ret: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0A\09\09Driver Rx pkt stats per tid, ([tid] count)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09\09------------------------------------------\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MSDUs from FW\09\09\09\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%02d] %-10lu  \00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09\09\09\09\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSDUs unchained\09\09\09\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MSDUs locally dropped:chained\09\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MSDUs locally dropped:filtered\09\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MSDUs queued for mac80211\09\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MSDUs with error:%s\09\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"A-MPDU num subframes %s\09\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"A-MSDU num subframes %s\09\09\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fcs_err\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tkip_err\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crypt_err\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peer_idx_inval\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"upto 10\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"11-20\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"21-30\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"31-40\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"41-50\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"51-60\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c">60\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c">4\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"succ\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"retry\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ampdu\00", [26 x i8] zeroinitializer }, align 32
@__const.ath10k_dbg_sta_dump_tx_stats.str_name = private unnamed_addr constant [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bytes\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"packets\00", [24 x i8] zeroinitializer }, align 32
@__const.ath10k_dbg_sta_dump_tx_stats.str = private unnamed_addr constant [2 x ptr] [ptr @.str.57, ptr @.str.58], align 4
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get tx stats\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" VHT MCS %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  %llu \00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" HT MCS %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" BW %s (20,5,10,40,80,160 MHz)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  %llu %llu %llu %llu %llu %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" NSS %s (1x1,2x2,3x3,4x4)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  %llu %llu %llu %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" GI %s (LGI,SGI)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %llu %llu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" legacy rate %s (1,2 ... Mbps)\0A  \00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu \00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" Rate table %s (1,2 ... Mbps)\0A  \00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0A  \00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0ATX duration\0A %llu usecs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BA fails\0A %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ack fails\0A %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.ath10k_dbg_sta_read_tid_stats = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@switch.table.ath10k_dbg_sta_read_tid_stats.78 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [36 x i8] zeroinitializer }, align 32
@switch.table.ath10k_dbg_sta_read_tid_stats.79 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 762, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"fops_aggr_mode\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 229, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 763, i32 22 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"fops_addba\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 281, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 764, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"fops_addba_resp\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 331, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 765, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"fops_delba\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 382, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 766, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"fops_peer_debug_trigger\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 444, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 768, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"fops_tid_stats_dump\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 638, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 773, i32 23 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"fops_tx_stats\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 750, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 775, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"fops_peer_ps_state\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 472, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 695, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 723, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 186, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 188, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 188, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 219, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 253, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 271, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 322, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 354, i32 20 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 372, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 402, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 435, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 584, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 586, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 587, i32 45 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 588, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 590, i32 45 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 594, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 598, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 602, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 607, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 614, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 622, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 483, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 485, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 487, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 489, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 491, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 501, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 503, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 505, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 507, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 509, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 511, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 513, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 515, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 525, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 527, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 529, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 531, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 533, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 653, i32 49 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 653, i32 57 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 654, i32 14 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 654, i32 23 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 655, i32 46 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 655, i32 55 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 667, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 677, i32 44 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 681, i32 7 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 685, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 688, i32 44 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 695, i32 6 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 697, i32 7 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 702, i32 7 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 704, i32 7 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 708, i32 7 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 710, i32 44 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 713, i32 7 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 716, i32 45 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 720, i32 7 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 727, i32 39 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 733, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 736, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 738, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath10k/debugfs_sta.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 464, i32 42 }
@___asan_gen_.338 = private unnamed_addr constant [43 x i8] c"switch.table.ath10k_dbg_sta_read_tid_stats\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [46 x i8] c"switch.table.ath10k_dbg_sta_read_tid_stats.78\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [46 x i8] c"switch.table.ath10k_dbg_sta_read_tid_stats.79\00", align 1
@llvm.compiler.used = appending global [89 x ptr] [ptr @.str, ptr @fops_aggr_mode, ptr @.str.1, ptr @fops_addba, ptr @.str.2, ptr @fops_addba_resp, ptr @.str.3, ptr @fops_delba, ptr @.str.4, ptr @fops_peer_debug_trigger, ptr @.str.5, ptr @fops_tid_stats_dump, ptr @.str.6, ptr @fops_tx_stats, ptr @.str.7, ptr @fops_peer_ps_state, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @switch.table.ath10k_dbg_sta_read_tid_stats, ptr @switch.table.ath10k_dbg_sta_read_tid_stats.78, ptr @switch.table.ath10k_dbg_sta_read_tid_stats.79], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_aggr_mode to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_addba to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_addba_resp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_delba to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_peer_debug_trigger to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tid_stats_dump to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_peer_ps_state to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_dbg_sta_read_tid_stats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_dbg_sta_read_tid_stats.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_dbg_sta_read_tid_stats.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_sta_update_rx_tid_stats_ampdu(ptr noundef %ar, i16 noundef zeroext %peer_id, i8 noundef zeroext %tid, ptr nocapture noundef readonly %ranges, i32 noundef %num_ranges) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %tid)
  %cmp = icmp ugt i8 %tid, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sta_tid_stats_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 132
  %0 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl = shl nuw i32 1, %conv
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !181
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #8
  %conv3 = zext i16 %peer_id to i32
  %call = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv3) #8
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %rcu_read_lock.exit.out_crit_edge, label %lor.lhs.false5

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false5:                                   ; preds = %rcu_read_lock.exit
  %sta = getelementptr inbounds %struct.ath10k_peer, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta, align 4
  %tobool6.not = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ranges)
  %cmp1037 = icmp sgt i32 %num_ranges, 0
  %or.cond = and i1 %tobool6.not, %cmp1037
  br i1 %or.cond, label %for.body.lr.ph, label %lor.lhs.false5.out_crit_edge

lor.lhs.false5.out_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %lor.lhs.false5
  %tid_stats = getelementptr inbounds %struct.ieee80211_sta, ptr %7, i32 1, i32 25, i32 7
  %arrayidx34.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 6
  %arrayidx28.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 5
  %arrayidx22.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 4
  %arrayidx16.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 3
  %arrayidx10.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 2
  %arrayidx4.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6, i32 1
  %rx_pkt_ampdu.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %conv, i32 6
  br label %for.body

for.body:                                         ; preds = %ath10k_rx_stats_update_ampdu_subfrm.exit.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ath10k_rx_stats_update_ampdu_subfrm.exit.for.body_crit_edge ]
  %arrayidx12 = getelementptr %struct.htt_rx_indication_mpdu_range, ptr %ranges, i32 %i.038
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %9)
  %cmp.i = icmp ult i8 %9, 11
  br i1 %cmp.i, label %for.body.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, label %if.else.i

for.body.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %9)
  %cmp1.i = icmp ult i8 %9, 21
  br i1 %cmp1.i, label %if.else.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, label %if.else6.i

if.else.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %9)
  %cmp7.i = icmp ult i8 %9, 31
  br i1 %cmp7.i, label %if.else6.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, label %if.else12.i

if.else6.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

if.else12.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %9)
  %cmp13.i = icmp ult i8 %9, 41
  br i1 %cmp13.i, label %if.else12.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, label %if.else18.i

if.else12.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge: ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

if.else18.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %9)
  %cmp19.i = icmp ult i8 %9, 51
  br i1 %cmp19.i, label %if.else18.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, label %if.else24.i

if.else18.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

if.else24.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %9)
  %cmp25.i = icmp ult i8 %9, 61
  %arrayidx28.i.arrayidx34.i = select i1 %cmp25.i, ptr %arrayidx28.i, ptr %arrayidx34.i
  br label %ath10k_rx_stats_update_ampdu_subfrm.exit

ath10k_rx_stats_update_ampdu_subfrm.exit:         ; preds = %if.else24.i, %if.else18.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, %if.else12.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, %if.else6.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, %if.else.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge, %for.body.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge
  %arrayidx4.sink1.i = phi ptr [ %rx_pkt_ampdu.i, %for.body.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge ], [ %arrayidx4.i, %if.else.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge ], [ %arrayidx10.i, %if.else6.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge ], [ %arrayidx16.i, %if.else12.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge ], [ %arrayidx22.i, %if.else18.i.ath10k_rx_stats_update_ampdu_subfrm.exit_crit_edge ], [ %arrayidx28.i.arrayidx34.i, %if.else24.i ]
  %10 = ptrtoint ptr %arrayidx4.sink1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.sink1.i, align 4
  %inc5.i = add i32 %11, 1
  store i32 %inc5.i, ptr %arrayidx4.sink1.i, align 4
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %num_ranges
  br i1 %exitcond.not, label %ath10k_rx_stats_update_ampdu_subfrm.exit.out_crit_edge, label %ath10k_rx_stats_update_ampdu_subfrm.exit.for.body_crit_edge

ath10k_rx_stats_update_ampdu_subfrm.exit.for.body_crit_edge: ; preds = %ath10k_rx_stats_update_ampdu_subfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

ath10k_rx_stats_update_ampdu_subfrm.exit.out_crit_edge: ; preds = %ath10k_rx_stats_update_ampdu_subfrm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %ath10k_rx_stats_update_ampdu_subfrm.exit.out_crit_edge, %lor.lhs.false5.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #8
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i28, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %out
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !182
  %12 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i35 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_peer_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_sta_update_rx_tid_stats(ptr noundef %ar, ptr noundef %first_hdr, i32 noundef %num_msdus, i32 noundef %err, i32 noundef %unchain_cnt, i32 noundef %drop_cnt, i32 noundef %drop_cnt_filter, i32 noundef %queued_msdus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %first_hdr, align 2
  %2 = and i16 %1, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %2)
  %cmp.i = icmp ne i16 %2, 2048
  %3 = and i16 %1, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %3)
  %cmp.i55 = icmp eq i16 %3, -30720
  br i1 %cmp.i55, label %if.then3, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = and i16 %1, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %4)
  %cmp.i.i = icmp eq i16 %4, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %first_hdr, i32 %retval.0.v.i
  %5 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %retval.0.i, align 1
  %7 = and i8 %6, 15
  %and = zext i8 %7 to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  %tid.0 = phi i32 [ %and, %if.then3 ], [ 16, %entry.if.end6_crit_edge ]
  %sta_tid_stats_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 132
  %8 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl = shl nuw nsw i32 1, %tid.0
  %and8 = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp.i
  br i1 %brmerge, label %if.end6.cleanup_crit_edge, label %if.end12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %10 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !181
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end12.rcu_read_lock.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end12.rcu_read_lock.exit_crit_edge
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %first_hdr, i32 0, i32 3
  %call13 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %15, ptr noundef %addr2, ptr noundef null) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %rcu_read_lock.exit.exit_crit_edge, label %if.end16

rcu_read_lock.exit.exit_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end16:                                         ; preds = %rcu_read_lock.exit
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #8
  %tid_stats = getelementptr inbounds %struct.ieee80211_sta, ptr %call13, i32 1, i32 25, i32 7
  %arrayidx = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %num_msdus
  store i32 %add, ptr %arrayidx, align 4
  %rx_pkt_unchained = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 1
  %18 = ptrtoint ptr %rx_pkt_unchained to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pkt_unchained, align 4
  %add18 = add i32 %19, %unchain_cnt
  store i32 %add18, ptr %rx_pkt_unchained, align 4
  %rx_pkt_drop_chained = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 2
  %20 = ptrtoint ptr %rx_pkt_drop_chained to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_pkt_drop_chained, align 4
  %add19 = add i32 %21, %drop_cnt
  store i32 %add19, ptr %rx_pkt_drop_chained, align 4
  %rx_pkt_drop_filter = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 3
  %22 = ptrtoint ptr %rx_pkt_drop_filter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pkt_drop_filter, align 4
  %add20 = add i32 %23, %drop_cnt_filter
  store i32 %add20, ptr %rx_pkt_drop_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %err)
  %cmp.not = icmp eq i32 %err, 4
  br i1 %cmp.not, label %if.end16.if.end25_crit_edge, label %if.then22

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23 = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 4, i32 %err
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx23, align 4
  %add24 = add i32 %25, %queued_msdus
  store i32 %add24, ptr %arrayidx23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end16.if.end25_crit_edge
  %rx_pkt_queued_for_mac = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 5
  %26 = ptrtoint ptr %rx_pkt_queued_for_mac to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_pkt_queued_for_mac, align 4
  %add26 = add i32 %27, %queued_msdus
  store i32 %add26, ptr %rx_pkt_queued_for_mac, align 4
  %28 = zext i32 %num_msdus to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num_msdus, label %if.else18.i [
    i32 1, label %if.then.i56
    i32 2, label %if.then2.i
    i32 3, label %if.then8.i
    i32 4, label %if.then14.i
  ]

if.then.i56:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %rx_pkt_amsdu.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 7
  br label %if.end27.sink.split.i

if.then2.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 7, i32 1
  br label %if.end27.sink.split.i

if.then8.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 7, i32 2
  br label %if.end27.sink.split.i

if.then14.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 7, i32 3
  br label %if.end27.sink.split.i

if.else18.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_msdus)
  %cmp19.i = icmp ugt i32 %num_msdus, 4
  br i1 %cmp19.i, label %if.then20.i, label %if.else18.i.ath10k_rx_stats_update_amsdu_subfrm.exit_crit_edge

if.else18.i.ath10k_rx_stats_update_amsdu_subfrm.exit_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_rx_stats_update_amsdu_subfrm.exit

if.then20.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22.i = getelementptr [17 x %struct.ath10k_sta_tid_stats], ptr %tid_stats, i32 0, i32 %tid.0, i32 7, i32 4
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.then20.i, %if.then14.i, %if.then8.i, %if.then2.i, %if.then.i56
  %arrayidx4.sink1.i = phi ptr [ %arrayidx4.i, %if.then2.i ], [ %arrayidx16.i, %if.then14.i ], [ %arrayidx22.i, %if.then20.i ], [ %arrayidx10.i, %if.then8.i ], [ %rx_pkt_amsdu.i, %if.then.i56 ]
  %29 = ptrtoint ptr %arrayidx4.sink1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.sink1.i, align 4
  %inc5.i = add i32 %30, 1
  store i32 %inc5.i, ptr %arrayidx4.sink1.i, align 4
  br label %ath10k_rx_stats_update_amsdu_subfrm.exit

ath10k_rx_stats_update_amsdu_subfrm.exit:         ; preds = %if.end27.sink.split.i, %if.else18.i.ath10k_rx_stats_update_amsdu_subfrm.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #8
  br label %exit

exit:                                             ; preds = %ath10k_rx_stats_update_amsdu_subfrm.exit, %rcu_read_lock.exit.exit_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i57, label %exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

exit.rcu_read_unlock.exit_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %exit
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !182
  %31 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i64 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end6.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_sta_update_rx_duration(ptr nocapture noundef readonly %ar, ptr noundef readonly %stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stats, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i.i4 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i4 to ptr
  %preempt_count.i.i.i.i.i5 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i5, align 4
  %add.i.i.i.i6 = add i32 %5, 1
  store volatile i32 %add.i.i.i.i6, ptr %preempt_count.i.i.i.i.i5, align 4
  tail call void asm sideeffect "", "~{memory}"() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i7 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %call.i.i7, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %peers_extd.i = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 4
  %6 = ptrtoint ptr %peers_extd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %peer.023.i = load ptr, ptr %peers_extd.i, align 4
  %cmp.not24.i = icmp eq ptr %peer.023.i, %peers_extd.i
  br i1 %cmp.not24.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %rcu_read_lock.exit.i
  %hw.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %peer.025.i = phi ptr [ %peer.023.i, %for.body.lr.ph.i ], [ %peer.0.i, %for.inc.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %peer_macaddr.i = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, ptr %peer.025.i, i32 0, i32 1
  %call.i = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %8, ptr noundef %peer_macaddr.i, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_duration.i = getelementptr inbounds %struct.ath10k_fw_extd_stats_peer, ptr %peer.025.i, i32 0, i32 2
  %9 = ptrtoint ptr %rx_duration.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_duration.i, align 8
  %rx_duration3.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 1, i32 21
  %11 = ptrtoint ptr %rx_duration3.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rx_duration3.i, align 8
  %add.i = add i64 %12, %10
  store i64 %add.i, ptr %rx_duration3.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %peer.025.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %peer.0.i = load ptr, ptr %peer.025.i, align 4
  %cmp.not.i = icmp eq ptr %peer.0.i, %peers_extd.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i14.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i14.i, label %for.end.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge, label %land.lhs.true.i17.i

for.end.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_extd_stats_rx_duration.exit

land.lhs.true.i17.i:                              ; preds = %for.end.i
  %call1.i15.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call1.i15.i, 0
  br i1 %tobool.not.i16.i, label %land.lhs.true.i17.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i17.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge: ; preds = %land.lhs.true.i17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_extd_stats_rx_duration.exit

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i17.i
  %.b4.i18.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i, label %land.lhs.true2.i19.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge, label %if.then.i20.i

land.lhs.true2.i19.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge: ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_extd_stats_rx_duration.exit

if.then.i20.i:                                    ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %ath10k_sta_update_extd_stats_rx_duration.exit

ath10k_sta_update_extd_stats_rx_duration.exit:    ; preds = %if.then.i20.i, %land.lhs.true2.i19.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge, %land.lhs.true.i17.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge, %for.end.i.ath10k_sta_update_extd_stats_rx_duration.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !182
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %call.i.i7, label %if.else.rcu_read_lock.exit.i16_crit_edge, label %land.lhs.true.i.i10

if.else.rcu_read_lock.exit.i16_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16

land.lhs.true.i.i10:                              ; preds = %if.else
  %call1.i.i8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i8)
  %tobool.not.i.i9 = icmp eq i32 %call1.i.i8, 0
  br i1 %tobool.not.i.i9, label %land.lhs.true.i.i10.rcu_read_lock.exit.i16_crit_edge, label %land.lhs.true2.i.i12

land.lhs.true.i.i10.rcu_read_lock.exit.i16_crit_edge: ; preds = %land.lhs.true.i.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16

land.lhs.true2.i.i12:                             ; preds = %land.lhs.true.i.i10
  %.b4.i.i11 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i11, label %land.lhs.true2.i.i12.rcu_read_lock.exit.i16_crit_edge, label %if.then.i.i13

land.lhs.true2.i.i12.rcu_read_lock.exit.i16_crit_edge: ; preds = %land.lhs.true2.i.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i16

if.then.i.i13:                                    ; preds = %land.lhs.true2.i.i12
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_lock.exit.i16

rcu_read_lock.exit.i16:                           ; preds = %if.then.i.i13, %land.lhs.true2.i.i12.rcu_read_lock.exit.i16_crit_edge, %land.lhs.true.i.i10.rcu_read_lock.exit.i16_crit_edge, %if.else.rcu_read_lock.exit.i16_crit_edge
  %peers.i = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 3
  %14 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %peer.023.i14 = load ptr, ptr %peers.i, align 4
  %cmp.not24.i15 = icmp eq ptr %peer.023.i14, %peers.i
  br i1 %cmp.not24.i15, label %rcu_read_lock.exit.i16.for.end.i32_crit_edge, label %for.body.lr.ph.i18

rcu_read_lock.exit.i16.for.end.i32_crit_edge:     ; preds = %rcu_read_lock.exit.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i32

for.body.lr.ph.i18:                               ; preds = %rcu_read_lock.exit.i16
  %hw.i17 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.inc.i30.for.body.i23_crit_edge, %for.body.lr.ph.i18
  %peer.025.i19 = phi ptr [ %peer.023.i14, %for.body.lr.ph.i18 ], [ %peer.0.i28, %for.inc.i30.for.body.i23_crit_edge ]
  %15 = ptrtoint ptr %hw.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw.i17, align 4
  %peer_macaddr.i20 = getelementptr inbounds %struct.ath10k_fw_stats_peer, ptr %peer.025.i19, i32 0, i32 1
  %call.i21 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %16, ptr noundef %peer_macaddr.i20, ptr noundef null) #8
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %for.body.i23.for.inc.i30_crit_edge, label %if.end.i27

for.body.i23.for.inc.i30_crit_edge:               ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i30

if.end.i27:                                       ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #10
  %rx_duration.i24 = getelementptr inbounds %struct.ath10k_fw_stats_peer, ptr %peer.025.i19, i32 0, i32 5
  %17 = ptrtoint ptr %rx_duration.i24 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_duration.i24, align 8
  %rx_duration3.i25 = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i21, i32 1, i32 21
  %19 = ptrtoint ptr %rx_duration3.i25 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_duration3.i25, align 8
  %add.i26 = add i64 %20, %18
  store i64 %add.i26, ptr %rx_duration3.i25, align 8
  br label %for.inc.i30

for.inc.i30:                                      ; preds = %if.end.i27, %for.body.i23.for.inc.i30_crit_edge
  %21 = ptrtoint ptr %peer.025.i19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %peer.0.i28 = load ptr, ptr %peer.025.i19, align 4
  %cmp.not.i29 = icmp eq ptr %peer.0.i28, %peers.i
  br i1 %cmp.not.i29, label %for.inc.i30.for.end.i32_crit_edge, label %for.inc.i30.for.body.i23_crit_edge

for.inc.i30.for.body.i23_crit_edge:               ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i23

for.inc.i30.for.end.i32_crit_edge:                ; preds = %for.inc.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i32

for.end.i32:                                      ; preds = %for.inc.i30.for.end.i32_crit_edge, %rcu_read_lock.exit.i16.for.end.i32_crit_edge
  %call.i14.i31 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i14.i31, label %for.end.i32.ath10k_sta_update_stats_rx_duration.exit_crit_edge, label %land.lhs.true.i17.i35

for.end.i32.ath10k_sta_update_stats_rx_duration.exit_crit_edge: ; preds = %for.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_stats_rx_duration.exit

land.lhs.true.i17.i35:                            ; preds = %for.end.i32
  %call1.i15.i33 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15.i33)
  %tobool.not.i16.i34 = icmp eq i32 %call1.i15.i33, 0
  br i1 %tobool.not.i16.i34, label %land.lhs.true.i17.i35.ath10k_sta_update_stats_rx_duration.exit_crit_edge, label %land.lhs.true2.i19.i37

land.lhs.true.i17.i35.ath10k_sta_update_stats_rx_duration.exit_crit_edge: ; preds = %land.lhs.true.i17.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_stats_rx_duration.exit

land.lhs.true2.i19.i37:                           ; preds = %land.lhs.true.i17.i35
  %.b4.i18.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18.i36, label %land.lhs.true2.i19.i37.ath10k_sta_update_stats_rx_duration.exit_crit_edge, label %if.then.i20.i38

land.lhs.true2.i19.i37.ath10k_sta_update_stats_rx_duration.exit_crit_edge: ; preds = %land.lhs.true2.i19.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_sta_update_stats_rx_duration.exit

if.then.i20.i38:                                  ; preds = %land.lhs.true2.i19.i37
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #8
  br label %ath10k_sta_update_stats_rx_duration.exit

ath10k_sta_update_stats_rx_duration.exit:         ; preds = %if.then.i20.i38, %land.lhs.true2.i19.i37.ath10k_sta_update_stats_rx_duration.exit_crit_edge, %land.lhs.true.i17.i35.ath10k_sta_update_stats_rx_duration.exit_crit_edge, %for.end.i32.ath10k_sta_update_stats_rx_duration.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !182
  br label %if.end

if.end:                                           ; preds = %ath10k_sta_update_stats_rx_duration.exit, %ath10k_sta_update_extd_stats_rx_duration.exit
  %22 = tail call i32 @llvm.read_register.i32(metadata !171) #8
  %and.i.i.i.i.i21.i39 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i21.i39 to ptr
  %preempt_count.i.i.i.i22.i40 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i22.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i22.i40, align 4
  %sub.i.i.i.i41 = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i41, ptr %preempt_count.i.i.i.i22.i40, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_sta_add_debugfs(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_aggr_mode) #8
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_addba) #8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_addba_resp) #8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 128, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_delba) #8
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 384, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_peer_debug_trigger) #8
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_tid_stats_dump) #8
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.ath10k, ptr %1, i32 0, i32 41, i32 6, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %enable_extd_tx_stats.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 17
  %8 = ptrtoint ptr %enable_extd_tx_stats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_extd_tx_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_tx_stats) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %dir, ptr noundef %sta, ptr noundef nonnull @fops_peer_ps_state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_read_aggr_mode(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %7 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aggr_mode, align 8, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp = icmp eq i8 %8, 0
  %cond = select i1 %cmp, ptr @.str.12, ptr @.str.13
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #8
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_write_aggr_mode(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %aggr_mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aggr_mode) #8
  %6 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %aggr_mode, align 4, !annotation !184
  %call = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %aggr_mode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aggr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 103
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4.not = icmp eq i32 %10, 1
  br i1 %cmp4.not, label %lor.lhs.false, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end3
  %11 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aggr_mode, align 4
  %aggr_mode5 = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %13 = ptrtoint ptr %aggr_mode5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode5, align 8, !range !183
  %15 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp7 = icmp eq i32 %12, %15
  br i1 %cmp7, label %lor.lhs.false.out_crit_edge, label %if.end10

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %lor.lhs.false
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 11
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %gen_addba_clear_resp.i = getelementptr inbounds %struct.wmi_ops, ptr %17, i32 0, i32 64
  %18 = ptrtoint ptr %gen_addba_clear_resp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gen_addba_clear_resp.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end10.if.then15_crit_edge, label %if.end.i

if.end10.if.then15_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end.i:                                         ; preds = %if.end10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv_priv, align 8
  %vdev_id = getelementptr inbounds %struct.ath10k_vif, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vdev_id, align 4
  %call.i = call ptr %19(ptr noundef %5, i32 noundef %23, ptr noundef %addr) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_addba_clear_resp.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 7
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd.i, align 4
  %addba_clear_resp_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %addba_clear_resp_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addba_clear_resp_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %5, ptr noundef %call.i, i32 noundef %28) #8
  br label %ath10k_wmi_addba_clear_resp.exit

ath10k_wmi_addba_clear_resp.exit:                 ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %24, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %ath10k_wmi_addba_clear_resp.exit.if.then15_crit_edge

ath10k_wmi_addba_clear_resp.exit.if.then15_crit_edge: ; preds = %ath10k_wmi_addba_clear_resp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %ath10k_wmi_addba_clear_resp.exit.if.then15_crit_edge, %if.end10.if.then15_crit_edge
  %retval.0.i37 = phi i32 [ %retval.0.i, %ath10k_wmi_addba_clear_resp.exit.if.then15_crit_edge ], [ -95, %if.end10.if.then15_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i37) #8
  br label %out

if.end16:                                         ; preds = %ath10k_wmi_addba_clear_resp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %aggr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17 = icmp ne i32 %30, 0
  %frombool = zext i1 %tobool17 to i8
  %31 = ptrtoint ptr %aggr_mode5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %aggr_mode5, align 8
  br label %out

out:                                              ; preds = %if.end16, %if.then15, %lor.lhs.false.out_crit_edge, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i37, %if.then15 ], [ 0, %if.end16 ], [ %count, %lor.lhs.false.out_crit_edge ], [ %count, %if.end3.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aggr_mode) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_write_addba(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %buf_size = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #8
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_size) #8
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf_size, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %8 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.15, ptr noundef nonnull %tid, ptr noundef nonnull %buf_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp8 = icmp ugt i32 %10, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 103
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11.not = icmp eq i32 %12, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %13 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode, align 8, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12.not = icmp eq i8 %14, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 11
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %gen_addba_send.i = getelementptr inbounds %struct.wmi_ops, ptr %16, i32 0, i32 65
  %17 = ptrtoint ptr %gen_addba_send.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gen_addba_send.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end15.if.then20_crit_edge, label %if.end.i

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_size, align 4
  %21 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid, align 4
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv_priv, align 8
  %vdev_id = getelementptr inbounds %struct.ath10k_vif, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vdev_id, align 4
  %call.i = call ptr %18(ptr noundef %5, i32 noundef %26, ptr noundef %addr, i32 noundef %22, i32 noundef %20) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.then20_crit_edge, label %if.end7.i

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i:                                        ; preds = %if.end.i
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 7
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd.i, align 4
  %addba_send_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %28, i32 0, i32 45
  %29 = ptrtoint ptr %addba_send_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addba_send_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %5, ptr noundef %call.i, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %phi.cmp = icmp eq i32 %call9.i, 0
  br i1 %phi.cmp, label %if.end7.i.out_crit_edge, label %if.end7.i.if.then20_crit_edge

if.end7.i.if.then20_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20:                                        ; preds = %if.end7.i.if.then20_crit_edge, %if.end.i.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drv_priv, align 8
  %vdev_id22 = getelementptr inbounds %struct.ath10k_vif, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %vdev_id22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vdev_id22, align 4
  %35 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tid, align 4
  %37 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_size, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %34, ptr noundef %addr, i32 noundef %36, i32 noundef %38) #8
  br label %out

out:                                              ; preds = %if.then20, %if.end7.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_write_addba_resp(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %status = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #8
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %status, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %8 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.15, ptr noundef nonnull %tid, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %10)
  %cmp8 = icmp ugt i32 %10, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 103
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11.not = icmp eq i32 %12, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %13 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aggr_mode, align 8, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12.not = icmp eq i8 %14, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 11
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %gen_addba_set_resp.i = getelementptr inbounds %struct.wmi_ops, ptr %16, i32 0, i32 66
  %17 = ptrtoint ptr %gen_addba_set_resp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gen_addba_set_resp.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end15.if.then20_crit_edge, label %if.end.i

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %21 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid, align 4
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drv_priv, align 8
  %vdev_id = getelementptr inbounds %struct.ath10k_vif, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vdev_id, align 4
  %call.i = call ptr %18(ptr noundef %5, i32 noundef %26, ptr noundef %addr, i32 noundef %22, i32 noundef %20) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.then20_crit_edge, label %if.end7.i

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i:                                        ; preds = %if.end.i
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 7
  %27 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd.i, align 4
  %addba_set_resp_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %28, i32 0, i32 48
  %29 = ptrtoint ptr %addba_set_resp_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addba_set_resp_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %5, ptr noundef %call.i, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %phi.cmp = icmp eq i32 %call9.i, 0
  br i1 %phi.cmp, label %if.end7.i.out_crit_edge, label %if.end7.i.if.then20_crit_edge

if.end7.i.if.then20_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20:                                        ; preds = %if.end7.i.if.then20_crit_edge, %if.end.i.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drv_priv, align 8
  %vdev_id22 = getelementptr inbounds %struct.ath10k_vif, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %vdev_id22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vdev_id22, align 4
  %35 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tid, align 4
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %34, ptr noundef %addr, i32 noundef %36, i32 noundef %38) #8
  br label %out

out:                                              ; preds = %if.then20, %if.end7.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_write_delba(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tid = alloca i32, align 4
  %initiator = alloca i32, align 4
  %reason = alloca i32, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tid) #8
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tid, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %initiator) #8
  %7 = ptrtoint ptr %initiator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %initiator, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reason) #8
  %8 = ptrtoint ptr %reason to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reason, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %9 = call ptr @memset(ptr %buf, i32 0, i32 64)
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.18, ptr noundef nonnull %tid, ptr noundef nonnull %initiator, ptr noundef nonnull %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 3
  br i1 %cmp5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %10 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp8 = icmp ugt i32 %11, 15
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 103
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11.not = icmp eq i32 %13, 1
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  %aggr_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 5
  %14 = ptrtoint ptr %aggr_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aggr_mode, align 8, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp12.not = icmp eq i8 %15, 1
  br i1 %cmp12.not, label %if.end15, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 11
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %gen_delba_send.i = getelementptr inbounds %struct.wmi_ops, ptr %17, i32 0, i32 67
  %18 = ptrtoint ptr %gen_delba_send.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gen_delba_send.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end15.if.then20_crit_edge, label %if.end.i

if.end15.if.then20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i:                                         ; preds = %if.end15
  %20 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reason, align 4
  %22 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %initiator, align 4
  %24 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tid, align 4
  %26 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drv_priv, align 8
  %vdev_id = getelementptr inbounds %struct.ath10k_vif, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vdev_id, align 4
  %call.i = call ptr %19(ptr noundef %5, i32 noundef %29, ptr noundef %addr, i32 noundef %25, i32 noundef %23, i32 noundef %21) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.then20_crit_edge, label %if.end7.i

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i:                                        ; preds = %if.end.i
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 7
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd.i, align 4
  %delba_send_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %delba_send_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delba_send_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %5, ptr noundef %call.i, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %phi.cmp = icmp eq i32 %call9.i, 0
  br i1 %phi.cmp, label %if.end7.i.out_crit_edge, label %if.end7.i.if.then20_crit_edge

if.end7.i.if.then20_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20:                                        ; preds = %if.end7.i.if.then20_crit_edge, %if.end.i.if.then20_crit_edge, %if.end15.if.then20_crit_edge
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_priv, align 8
  %vdev_id22 = getelementptr inbounds %struct.ath10k_vif, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %vdev_id22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vdev_id22, align 4
  %38 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tid, align 4
  %40 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %initiator, align 4
  %42 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reason, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %37, ptr noundef %addr, i32 noundef %39, i32 noundef %41, i32 noundef %43) #8
  br label %out

out:                                              ; preds = %if.then20, %if.end7.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end10.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reason) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %initiator) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tid) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_read_peer_debug_trigger(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %buf, align 8
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 8, ptr noundef nonnull @.str.20) #8
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_write_peer_debug_trigger(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %peer_debug_trigger = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %peer_debug_trigger) #8
  %6 = ptrtoint ptr %peer_debug_trigger to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %peer_debug_trigger, align 1, !annotation !184
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %peer_debug_trigger) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %peer_debug_trigger to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %peer_debug_trigger, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.not = icmp eq i8 %8, 1
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 103
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.not = icmp eq i32 %10, 1
  br i1 %cmp5.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 11
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %gen_peer_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %gen_peer_set_param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gen_peer_set_param.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end8.if.then14_crit_edge, label %if.end.i

if.end8.if.then14_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.end.i:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %peer_debug_trigger to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %peer_debug_trigger, align 1
  %conv11 = zext i8 %16 to i32
  %peer_param = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 10
  %17 = ptrtoint ptr %peer_param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer_param, align 4
  %debug = getelementptr inbounds %struct.wmi_peer_param_map, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug, align 4
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drv_priv, align 8
  %vdev_id = getelementptr inbounds %struct.ath10k_vif, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vdev_id, align 4
  %call.i = call ptr %14(ptr noundef %5, i32 noundef %24, ptr noundef %addr, i32 noundef %20, i32 noundef %conv11) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_peer_set_param.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 41, i32 7
  %26 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd.i, align 4
  %peer_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %27, i32 0, i32 31
  %28 = ptrtoint ptr %peer_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %peer_set_param_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %5, ptr noundef %call.i, i32 noundef %29) #8
  br label %ath10k_wmi_peer_set_param.exit

ath10k_wmi_peer_set_param.exit:                   ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %25, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool13.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool13.not, label %ath10k_wmi_peer_set_param.exit.out_crit_edge, label %ath10k_wmi_peer_set_param.exit.if.then14_crit_edge

ath10k_wmi_peer_set_param.exit.if.then14_crit_edge: ; preds = %ath10k_wmi_peer_set_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

ath10k_wmi_peer_set_param.exit.out_crit_edge:     ; preds = %ath10k_wmi_peer_set_param.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then14:                                        ; preds = %ath10k_wmi_peer_set_param.exit.if.then14_crit_edge, %if.end8.if.then14_crit_edge
  %retval.0.i32 = phi i32 [ %retval.0.i, %ath10k_wmi_peer_set_param.exit.if.then14_crit_edge ], [ -95, %if.end8.if.then14_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i32) #8
  br label %out

out:                                              ; preds = %if.then14, %ath10k_wmi_peer_set_param.exit.out_crit_edge, %if.end4.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %peer_debug_trigger) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_read_tid_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %tid_stats = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 7
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16768, i32 noundef 3520, i32 noundef 3) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call1.i.i.i, i32 noundef 16768, ptr noundef nonnull @.str.22) #8
  %add.ptr4 = getelementptr i8, ptr %call1.i.i.i, i32 %call3
  %sub5 = sub i32 16768, %call3
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr4, i32 noundef %sub5, ptr noundef nonnull @.str.23) #8
  %add7 = add i32 %call6, %call3
  %add.ptr8 = getelementptr i8, ptr %call1.i.i.i, i32 %add7
  %sub9 = sub i32 16768, %add7
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub9, ptr noundef nonnull @.str.24) #8
  %add11 = add i32 %add7, %call10
  %sta_tid_stats_mask = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 132
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %k.0688 = phi i32 [ 0, %if.end ], [ %k.1, %for.inc.for.body_crit_edge ]
  %j.0686 = phi i32 [ 0, %if.end ], [ %inc30, %for.inc.for.body_crit_edge ]
  %len.0685 = phi i32 [ %add11, %if.end ], [ %len.1, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl = shl nuw nsw i32 1, %j.0686
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then13:                                        ; preds = %for.body
  %add.ptr14 = getelementptr i8, ptr %call1.i.i.i, i32 %len.0685
  %sub15 = sub i32 16768, %len.0685
  %arrayidx = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.0686
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub15, ptr noundef nonnull @.str.25, i32 noundef %j.0686, i32 noundef %9) #8
  %add17 = add i32 %call16, %len.0685
  %inc = add i32 %k.0688, 1
  %10 = and i32 %inc, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18 = icmp eq i32 %10, 0
  br i1 %cmp18, label %if.then19, label %if.then13.for.inc_crit_edge

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr20 = getelementptr i8, ptr %call1.i.i.i, i32 %add17
  %sub21 = sub i32 16768, %add17
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.26) #8
  %add23 = add i32 %call22, %add17
  %add.ptr24 = getelementptr i8, ptr %call1.i.i.i, i32 %add23
  %sub25 = sub i32 16768, %add23
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.27) #8
  %add27 = add i32 %add23, %call26
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.then13.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add27, %if.then19 ], [ %add17, %if.then13.for.inc_crit_edge ], [ %len.0685, %for.body.for.inc_crit_edge ]
  %k.1 = phi i32 [ %inc, %if.then19 ], [ %inc, %if.then13.for.inc_crit_edge ], [ %k.0688, %for.body.for.inc_crit_edge ]
  %inc30 = add nuw nsw i32 %j.0686, 1
  %exitcond.not = icmp eq i32 %inc30, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %add.ptr31 = getelementptr i8, ptr %call1.i.i.i, i32 %len.1
  %sub32 = sub i32 16768, %len.1
  %call33 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.26) #8
  %add34 = add i32 %call33, %len.1
  %add.ptr35 = getelementptr i8, ptr %call1.i.i.i, i32 %add34
  %sub36 = sub i32 16768, %add34
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr35, i32 noundef %sub36, ptr noundef nonnull @.str.28) #8
  %add38 = add i32 %add34, %call37
  br label %for.body43

for.body43:                                       ; preds = %for.inc68.for.body43_crit_edge, %for.end
  %k40.0692 = phi i32 [ 0, %for.end ], [ %k40.1, %for.inc68.for.body43_crit_edge ]
  %j.1690 = phi i32 [ 0, %for.end ], [ %inc69, %for.inc68.for.body43_crit_edge ]
  %len.2689 = phi i32 [ %add38, %for.end ], [ %len.3, %for.inc68.for.body43_crit_edge ]
  %11 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl45 = shl nuw nsw i32 1, %j.1690
  %and46 = and i32 %12, %shl45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %for.body43.for.inc68_crit_edge, label %if.then48

for.body43.for.inc68_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc68

if.then48:                                        ; preds = %for.body43
  %add.ptr49 = getelementptr i8, ptr %call1.i.i.i, i32 %len.2689
  %sub50 = sub i32 16768, %len.2689
  %rx_pkt_unchained = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.1690, i32 1
  %13 = ptrtoint ptr %rx_pkt_unchained to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_pkt_unchained, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.25, i32 noundef %j.1690, i32 noundef %14) #8
  %add53 = add i32 %call52, %len.2689
  %inc54 = add i32 %k40.0692, 1
  %15 = and i32 %inc54, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp56 = icmp eq i32 %15, 0
  br i1 %cmp56, label %if.then57, label %if.then48.for.inc68_crit_edge

if.then48.for.inc68_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc68

if.then57:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr58 = getelementptr i8, ptr %call1.i.i.i, i32 %add53
  %sub59 = sub i32 16768, %add53
  %call60 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.26) #8
  %add61 = add i32 %call60, %add53
  %add.ptr62 = getelementptr i8, ptr %call1.i.i.i, i32 %add61
  %sub63 = sub i32 16768, %add61
  %call64 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.27) #8
  %add65 = add i32 %add61, %call64
  br label %for.inc68

for.inc68:                                        ; preds = %if.then57, %if.then48.for.inc68_crit_edge, %for.body43.for.inc68_crit_edge
  %len.3 = phi i32 [ %add65, %if.then57 ], [ %add53, %if.then48.for.inc68_crit_edge ], [ %len.2689, %for.body43.for.inc68_crit_edge ]
  %k40.1 = phi i32 [ %inc54, %if.then57 ], [ %inc54, %if.then48.for.inc68_crit_edge ], [ %k40.0692, %for.body43.for.inc68_crit_edge ]
  %inc69 = add nuw nsw i32 %j.1690, 1
  %exitcond723.not = icmp eq i32 %inc69, 17
  br i1 %exitcond723.not, label %for.end70, label %for.inc68.for.body43_crit_edge

for.inc68.for.body43_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.end70:                                        ; preds = %for.inc68
  %add.ptr71 = getelementptr i8, ptr %call1.i.i.i, i32 %len.3
  %sub72 = sub i32 16768, %len.3
  %call73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr71, i32 noundef %sub72, ptr noundef nonnull @.str.26) #8
  %add74 = add i32 %call73, %len.3
  %add.ptr77 = getelementptr i8, ptr %call1.i.i.i, i32 %add74
  %sub78 = sub i32 16768, %add74
  %call79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr77, i32 noundef %sub78, ptr noundef nonnull @.str.29) #8
  %add80 = add i32 %add74, %call79
  br label %for.body85

for.body85:                                       ; preds = %for.inc110.for.body85_crit_edge, %for.end70
  %k82.0696 = phi i32 [ 0, %for.end70 ], [ %k82.1, %for.inc110.for.body85_crit_edge ]
  %j.2694 = phi i32 [ 0, %for.end70 ], [ %inc111, %for.inc110.for.body85_crit_edge ]
  %len.4693 = phi i32 [ %add80, %for.end70 ], [ %len.5, %for.inc110.for.body85_crit_edge ]
  %16 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl87 = shl nuw nsw i32 1, %j.2694
  %and88 = and i32 %17, %shl87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %for.body85.for.inc110_crit_edge, label %if.then90

for.body85.for.inc110_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

if.then90:                                        ; preds = %for.body85
  %add.ptr91 = getelementptr i8, ptr %call1.i.i.i, i32 %len.4693
  %sub92 = sub i32 16768, %len.4693
  %rx_pkt_drop_chained = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.2694, i32 2
  %18 = ptrtoint ptr %rx_pkt_drop_chained to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pkt_drop_chained, align 4
  %call94 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr91, i32 noundef %sub92, ptr noundef nonnull @.str.25, i32 noundef %j.2694, i32 noundef %19) #8
  %add95 = add i32 %call94, %len.4693
  %inc96 = add i32 %k82.0696, 1
  %20 = and i32 %inc96, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp98 = icmp eq i32 %20, 0
  br i1 %cmp98, label %if.then99, label %if.then90.for.inc110_crit_edge

if.then90.for.inc110_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

if.then99:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr100 = getelementptr i8, ptr %call1.i.i.i, i32 %add95
  %sub101 = sub i32 16768, %add95
  %call102 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.26) #8
  %add103 = add i32 %call102, %add95
  %add.ptr104 = getelementptr i8, ptr %call1.i.i.i, i32 %add103
  %sub105 = sub i32 16768, %add103
  %call106 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr104, i32 noundef %sub105, ptr noundef nonnull @.str.27) #8
  %add107 = add i32 %add103, %call106
  br label %for.inc110

for.inc110:                                       ; preds = %if.then99, %if.then90.for.inc110_crit_edge, %for.body85.for.inc110_crit_edge
  %len.5 = phi i32 [ %add107, %if.then99 ], [ %add95, %if.then90.for.inc110_crit_edge ], [ %len.4693, %for.body85.for.inc110_crit_edge ]
  %k82.1 = phi i32 [ %inc96, %if.then99 ], [ %inc96, %if.then90.for.inc110_crit_edge ], [ %k82.0696, %for.body85.for.inc110_crit_edge ]
  %inc111 = add nuw nsw i32 %j.2694, 1
  %exitcond724.not = icmp eq i32 %inc111, 17
  br i1 %exitcond724.not, label %for.end112, label %for.inc110.for.body85_crit_edge

for.inc110.for.body85_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

for.end112:                                       ; preds = %for.inc110
  %add.ptr113 = getelementptr i8, ptr %call1.i.i.i, i32 %len.5
  %sub114 = sub i32 16768, %len.5
  %call115 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr113, i32 noundef %sub114, ptr noundef nonnull @.str.26) #8
  %add116 = add i32 %call115, %len.5
  %add.ptr119 = getelementptr i8, ptr %call1.i.i.i, i32 %add116
  %sub120 = sub i32 16768, %add116
  %call121 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr119, i32 noundef %sub120, ptr noundef nonnull @.str.30) #8
  %add122 = add i32 %add116, %call121
  br label %for.body127

for.body127:                                      ; preds = %for.inc152.for.body127_crit_edge, %for.end112
  %k124.0700 = phi i32 [ 0, %for.end112 ], [ %k124.1, %for.inc152.for.body127_crit_edge ]
  %j.3698 = phi i32 [ 0, %for.end112 ], [ %inc153, %for.inc152.for.body127_crit_edge ]
  %len.6697 = phi i32 [ %add122, %for.end112 ], [ %len.7, %for.inc152.for.body127_crit_edge ]
  %21 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl129 = shl nuw nsw i32 1, %j.3698
  %and130 = and i32 %22, %shl129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %for.body127.for.inc152_crit_edge, label %if.then132

for.body127.for.inc152_crit_edge:                 ; preds = %for.body127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc152

if.then132:                                       ; preds = %for.body127
  %add.ptr133 = getelementptr i8, ptr %call1.i.i.i, i32 %len.6697
  %sub134 = sub i32 16768, %len.6697
  %rx_pkt_drop_filter = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.3698, i32 3
  %23 = ptrtoint ptr %rx_pkt_drop_filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_pkt_drop_filter, align 4
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.25, i32 noundef %j.3698, i32 noundef %24) #8
  %add137 = add i32 %call136, %len.6697
  %inc138 = add i32 %k124.0700, 1
  %25 = and i32 %inc138, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp140 = icmp eq i32 %25, 0
  br i1 %cmp140, label %if.then141, label %if.then132.for.inc152_crit_edge

if.then132.for.inc152_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc152

if.then141:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr142 = getelementptr i8, ptr %call1.i.i.i, i32 %add137
  %sub143 = sub i32 16768, %add137
  %call144 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr142, i32 noundef %sub143, ptr noundef nonnull @.str.26) #8
  %add145 = add i32 %call144, %add137
  %add.ptr146 = getelementptr i8, ptr %call1.i.i.i, i32 %add145
  %sub147 = sub i32 16768, %add145
  %call148 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr146, i32 noundef %sub147, ptr noundef nonnull @.str.27) #8
  %add149 = add i32 %add145, %call148
  br label %for.inc152

for.inc152:                                       ; preds = %if.then141, %if.then132.for.inc152_crit_edge, %for.body127.for.inc152_crit_edge
  %len.7 = phi i32 [ %add149, %if.then141 ], [ %add137, %if.then132.for.inc152_crit_edge ], [ %len.6697, %for.body127.for.inc152_crit_edge ]
  %k124.1 = phi i32 [ %inc138, %if.then141 ], [ %inc138, %if.then132.for.inc152_crit_edge ], [ %k124.0700, %for.body127.for.inc152_crit_edge ]
  %inc153 = add nuw nsw i32 %j.3698, 1
  %exitcond725.not = icmp eq i32 %inc153, 17
  br i1 %exitcond725.not, label %for.end154, label %for.inc152.for.body127_crit_edge

for.inc152.for.body127_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body127

for.end154:                                       ; preds = %for.inc152
  %add.ptr155 = getelementptr i8, ptr %call1.i.i.i, i32 %len.7
  %sub156 = sub i32 16768, %len.7
  %call157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr155, i32 noundef %sub156, ptr noundef nonnull @.str.26) #8
  %add158 = add i32 %call157, %len.7
  %add.ptr161 = getelementptr i8, ptr %call1.i.i.i, i32 %add158
  %sub162 = sub i32 16768, %add158
  %call163 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr161, i32 noundef %sub162, ptr noundef nonnull @.str.31) #8
  %add164 = add i32 %add158, %call163
  br label %for.body169

for.body169:                                      ; preds = %for.inc194.for.body169_crit_edge, %for.end154
  %k166.0704 = phi i32 [ 0, %for.end154 ], [ %k166.1, %for.inc194.for.body169_crit_edge ]
  %j.4702 = phi i32 [ 0, %for.end154 ], [ %inc195, %for.inc194.for.body169_crit_edge ]
  %len.8701 = phi i32 [ %add164, %for.end154 ], [ %len.9, %for.inc194.for.body169_crit_edge ]
  %26 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl171 = shl nuw nsw i32 1, %j.4702
  %and172 = and i32 %27, %shl171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %for.body169.for.inc194_crit_edge, label %if.then174

for.body169.for.inc194_crit_edge:                 ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc194

if.then174:                                       ; preds = %for.body169
  %add.ptr175 = getelementptr i8, ptr %call1.i.i.i, i32 %len.8701
  %sub176 = sub i32 16768, %len.8701
  %rx_pkt_queued_for_mac = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.4702, i32 5
  %28 = ptrtoint ptr %rx_pkt_queued_for_mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_pkt_queued_for_mac, align 4
  %call178 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr175, i32 noundef %sub176, ptr noundef nonnull @.str.25, i32 noundef %j.4702, i32 noundef %29) #8
  %add179 = add i32 %call178, %len.8701
  %inc180 = add i32 %k166.0704, 1
  %30 = and i32 %inc180, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp182 = icmp eq i32 %30, 0
  br i1 %cmp182, label %if.then183, label %if.then174.for.inc194_crit_edge

if.then174.for.inc194_crit_edge:                  ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc194

if.then183:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr184 = getelementptr i8, ptr %call1.i.i.i, i32 %add179
  %sub185 = sub i32 16768, %add179
  %call186 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr184, i32 noundef %sub185, ptr noundef nonnull @.str.26) #8
  %add187 = add i32 %call186, %add179
  %add.ptr188 = getelementptr i8, ptr %call1.i.i.i, i32 %add187
  %sub189 = sub i32 16768, %add187
  %call190 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr188, i32 noundef %sub189, ptr noundef nonnull @.str.27) #8
  %add191 = add i32 %add187, %call190
  br label %for.inc194

for.inc194:                                       ; preds = %if.then183, %if.then174.for.inc194_crit_edge, %for.body169.for.inc194_crit_edge
  %len.9 = phi i32 [ %add191, %if.then183 ], [ %add179, %if.then174.for.inc194_crit_edge ], [ %len.8701, %for.body169.for.inc194_crit_edge ]
  %k166.1 = phi i32 [ %inc180, %if.then183 ], [ %inc180, %if.then174.for.inc194_crit_edge ], [ %k166.0704, %for.body169.for.inc194_crit_edge ]
  %inc195 = add nuw nsw i32 %j.4702, 1
  %exitcond726.not = icmp eq i32 %inc195, 17
  br i1 %exitcond726.not, label %for.end196, label %for.inc194.for.body169_crit_edge

for.inc194.for.body169_crit_edge:                 ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body169

for.end196:                                       ; preds = %for.inc194
  %add.ptr197 = getelementptr i8, ptr %call1.i.i.i, i32 %len.9
  %sub198 = sub i32 16768, %len.9
  %call199 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr197, i32 noundef %sub198, ptr noundef nonnull @.str.26) #8
  %add200 = add i32 %call199, %len.9
  br label %for.body205

for.body205:                                      ; preds = %for.end243.for.body205_crit_edge, %for.end196
  %i.0710 = phi i32 [ 0, %for.end196 ], [ %inc251, %for.end243.for.body205_crit_edge ]
  %len.10709 = phi i32 [ %add200, %for.end196 ], [ %add247, %for.end243.for.body205_crit_edge ]
  %add.ptr206 = getelementptr i8, ptr %call1.i.i.i, i32 %len.10709
  %sub207 = sub i32 16768, %len.10709
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0710)
  %31 = icmp ult i32 %i.0710, 4
  br i1 %31, label %switch.lookup, label %for.body205.get_err_str.exit_crit_edge

for.body205.get_err_str.exit_crit_edge:           ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_err_str.exit

switch.lookup:                                    ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ath10k_dbg_sta_read_tid_stats, i32 0, i32 %i.0710
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_err_str.exit

get_err_str.exit:                                 ; preds = %switch.lookup, %for.body205.get_err_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.39, %for.body205.get_err_str.exit_crit_edge ]
  %call209 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr206, i32 noundef %sub207, ptr noundef nonnull @.str.32, ptr noundef nonnull %retval.0.i) #8
  %add210 = add i32 %call209, %len.10709
  br label %for.body215

for.body215:                                      ; preds = %for.inc241.for.body215_crit_edge, %get_err_str.exit
  %k212.0708 = phi i32 [ 0, %get_err_str.exit ], [ %k212.1, %for.inc241.for.body215_crit_edge ]
  %j.5706 = phi i32 [ 0, %get_err_str.exit ], [ %inc242, %for.inc241.for.body215_crit_edge ]
  %len.11705 = phi i32 [ %add210, %get_err_str.exit ], [ %len.12, %for.inc241.for.body215_crit_edge ]
  %33 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl217 = shl nuw nsw i32 1, %j.5706
  %and218 = and i32 %34, %shl217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %for.body215.for.inc241_crit_edge, label %if.then220

for.body215.for.inc241_crit_edge:                 ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc241

if.then220:                                       ; preds = %for.body215
  %add.ptr221 = getelementptr i8, ptr %call1.i.i.i, i32 %len.11705
  %sub222 = sub i32 16768, %len.11705
  %arrayidx224 = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.5706, i32 4, i32 %i.0710
  %35 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx224, align 4
  %call225 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr221, i32 noundef %sub222, ptr noundef nonnull @.str.25, i32 noundef %j.5706, i32 noundef %36) #8
  %add226 = add i32 %call225, %len.11705
  %inc227 = add i32 %k212.0708, 1
  %37 = and i32 %inc227, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp229 = icmp eq i32 %37, 0
  br i1 %cmp229, label %if.then230, label %if.then220.for.inc241_crit_edge

if.then220.for.inc241_crit_edge:                  ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc241

if.then230:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr231 = getelementptr i8, ptr %call1.i.i.i, i32 %add226
  %sub232 = sub i32 16768, %add226
  %call233 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr231, i32 noundef %sub232, ptr noundef nonnull @.str.26) #8
  %add234 = add i32 %call233, %add226
  %add.ptr235 = getelementptr i8, ptr %call1.i.i.i, i32 %add234
  %sub236 = sub i32 16768, %add234
  %call237 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr235, i32 noundef %sub236, ptr noundef nonnull @.str.27) #8
  %add238 = add i32 %add234, %call237
  br label %for.inc241

for.inc241:                                       ; preds = %if.then230, %if.then220.for.inc241_crit_edge, %for.body215.for.inc241_crit_edge
  %len.12 = phi i32 [ %add238, %if.then230 ], [ %add226, %if.then220.for.inc241_crit_edge ], [ %len.11705, %for.body215.for.inc241_crit_edge ]
  %k212.1 = phi i32 [ %inc227, %if.then230 ], [ %inc227, %if.then220.for.inc241_crit_edge ], [ %k212.0708, %for.body215.for.inc241_crit_edge ]
  %inc242 = add nuw nsw i32 %j.5706, 1
  %exitcond727.not = icmp eq i32 %inc242, 17
  br i1 %exitcond727.not, label %for.end243, label %for.inc241.for.body215_crit_edge

for.inc241.for.body215_crit_edge:                 ; preds = %for.inc241
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body215

for.end243:                                       ; preds = %for.inc241
  %add.ptr244 = getelementptr i8, ptr %call1.i.i.i, i32 %len.12
  %sub245 = sub i32 16768, %len.12
  %call246 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr244, i32 noundef %sub245, ptr noundef nonnull @.str.26) #8
  %add247 = add i32 %call246, %len.12
  %inc251 = add nuw nsw i32 %i.0710, 1
  %exitcond728.not = icmp eq i32 %inc251, 4
  br i1 %exitcond728.not, label %for.end252, label %for.end243.for.body205_crit_edge

for.end243.for.body205_crit_edge:                 ; preds = %for.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body205

for.end252:                                       ; preds = %for.end243
  %add.ptr253 = getelementptr i8, ptr %call1.i.i.i, i32 %add247
  %sub254 = sub i32 16768, %add247
  %call255 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr253, i32 noundef %sub254, ptr noundef nonnull @.str.26) #8
  %add256 = add i32 %call255, %add247
  br label %for.body259

for.body259:                                      ; preds = %for.end297.for.body259_crit_edge, %for.end252
  %i.1716 = phi i32 [ 0, %for.end252 ], [ %inc305, %for.end297.for.body259_crit_edge ]
  %len.13715 = phi i32 [ %add256, %for.end252 ], [ %add301, %for.end297.for.body259_crit_edge ]
  %add.ptr260 = getelementptr i8, ptr %call1.i.i.i, i32 %len.13715
  %sub261 = sub i32 16768, %len.13715
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1716)
  %38 = icmp ult i32 %i.1716, 7
  br i1 %38, label %switch.lookup733, label %for.body259.get_num_ampdu_subfrm_str.exit_crit_edge

for.body259.get_num_ampdu_subfrm_str.exit_crit_edge: ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_num_ampdu_subfrm_str.exit

switch.lookup733:                                 ; preds = %for.body259
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep734 = getelementptr inbounds [7 x ptr], ptr @switch.table.ath10k_dbg_sta_read_tid_stats.78, i32 0, i32 %i.1716
  %39 = ptrtoint ptr %switch.gep734 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load735 = load ptr, ptr %switch.gep734, align 4
  br label %get_num_ampdu_subfrm_str.exit

get_num_ampdu_subfrm_str.exit:                    ; preds = %switch.lookup733, %for.body259.get_num_ampdu_subfrm_str.exit_crit_edge
  %retval.0.i677 = phi ptr [ %switch.load735, %switch.lookup733 ], [ @.str.47, %for.body259.get_num_ampdu_subfrm_str.exit_crit_edge ]
  %call263 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr260, i32 noundef %sub261, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i677) #8
  %add264 = add i32 %call263, %len.13715
  br label %for.body269

for.body269:                                      ; preds = %for.inc295.for.body269_crit_edge, %get_num_ampdu_subfrm_str.exit
  %k266.0714 = phi i32 [ 0, %get_num_ampdu_subfrm_str.exit ], [ %k266.1, %for.inc295.for.body269_crit_edge ]
  %j.6712 = phi i32 [ 0, %get_num_ampdu_subfrm_str.exit ], [ %inc296, %for.inc295.for.body269_crit_edge ]
  %len.14711 = phi i32 [ %add264, %get_num_ampdu_subfrm_str.exit ], [ %len.15, %for.inc295.for.body269_crit_edge ]
  %40 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl271 = shl nuw nsw i32 1, %j.6712
  %and272 = and i32 %41, %shl271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %for.body269.for.inc295_crit_edge, label %if.then274

for.body269.for.inc295_crit_edge:                 ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc295

if.then274:                                       ; preds = %for.body269
  %add.ptr275 = getelementptr i8, ptr %call1.i.i.i, i32 %len.14711
  %sub276 = sub i32 16768, %len.14711
  %arrayidx278 = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.6712, i32 6, i32 %i.1716
  %42 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx278, align 4
  %call279 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr275, i32 noundef %sub276, ptr noundef nonnull @.str.25, i32 noundef %j.6712, i32 noundef %43) #8
  %add280 = add i32 %call279, %len.14711
  %inc281 = add i32 %k266.0714, 1
  %44 = and i32 %inc281, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp283 = icmp eq i32 %44, 0
  br i1 %cmp283, label %if.then284, label %if.then274.for.inc295_crit_edge

if.then274.for.inc295_crit_edge:                  ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc295

if.then284:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr285 = getelementptr i8, ptr %call1.i.i.i, i32 %add280
  %sub286 = sub i32 16768, %add280
  %call287 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr285, i32 noundef %sub286, ptr noundef nonnull @.str.26) #8
  %add288 = add i32 %call287, %add280
  %add.ptr289 = getelementptr i8, ptr %call1.i.i.i, i32 %add288
  %sub290 = sub i32 16768, %add288
  %call291 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr289, i32 noundef %sub290, ptr noundef nonnull @.str.27) #8
  %add292 = add i32 %add288, %call291
  br label %for.inc295

for.inc295:                                       ; preds = %if.then284, %if.then274.for.inc295_crit_edge, %for.body269.for.inc295_crit_edge
  %len.15 = phi i32 [ %add292, %if.then284 ], [ %add280, %if.then274.for.inc295_crit_edge ], [ %len.14711, %for.body269.for.inc295_crit_edge ]
  %k266.1 = phi i32 [ %inc281, %if.then284 ], [ %inc281, %if.then274.for.inc295_crit_edge ], [ %k266.0714, %for.body269.for.inc295_crit_edge ]
  %inc296 = add nuw nsw i32 %j.6712, 1
  %exitcond729.not = icmp eq i32 %inc296, 17
  br i1 %exitcond729.not, label %for.end297, label %for.inc295.for.body269_crit_edge

for.inc295.for.body269_crit_edge:                 ; preds = %for.inc295
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body269

for.end297:                                       ; preds = %for.inc295
  %add.ptr298 = getelementptr i8, ptr %call1.i.i.i, i32 %len.15
  %sub299 = sub i32 16768, %len.15
  %call300 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr298, i32 noundef %sub299, ptr noundef nonnull @.str.26) #8
  %add301 = add i32 %call300, %len.15
  %inc305 = add nuw nsw i32 %i.1716, 1
  %exitcond730.not = icmp eq i32 %inc305, 7
  br i1 %exitcond730.not, label %for.end306, label %for.end297.for.body259_crit_edge

for.end297.for.body259_crit_edge:                 ; preds = %for.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body259

for.end306:                                       ; preds = %for.end297
  %add.ptr307 = getelementptr i8, ptr %call1.i.i.i, i32 %add301
  %sub308 = sub i32 16768, %add301
  %call309 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr307, i32 noundef %sub308, ptr noundef nonnull @.str.26) #8
  %add310 = add i32 %call309, %add301
  br label %for.body313

for.body313:                                      ; preds = %for.end351.for.body313_crit_edge, %for.end306
  %i.2722 = phi i32 [ 0, %for.end306 ], [ %inc359, %for.end351.for.body313_crit_edge ]
  %len.16721 = phi i32 [ %add310, %for.end306 ], [ %add355, %for.end351.for.body313_crit_edge ]
  %add.ptr314 = getelementptr i8, ptr %call1.i.i.i, i32 %len.16721
  %sub315 = sub i32 16768, %len.16721
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.2722)
  %45 = icmp ult i32 %i.2722, 5
  br i1 %45, label %switch.lookup736, label %for.body313.get_num_amsdu_subfrm_str.exit_crit_edge

for.body313.get_num_amsdu_subfrm_str.exit_crit_edge: ; preds = %for.body313
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_num_amsdu_subfrm_str.exit

switch.lookup736:                                 ; preds = %for.body313
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep737 = getelementptr inbounds [5 x ptr], ptr @switch.table.ath10k_dbg_sta_read_tid_stats.79, i32 0, i32 %i.2722
  %46 = ptrtoint ptr %switch.gep737 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load738 = load ptr, ptr %switch.gep737, align 4
  br label %get_num_amsdu_subfrm_str.exit

get_num_amsdu_subfrm_str.exit:                    ; preds = %switch.lookup736, %for.body313.get_num_amsdu_subfrm_str.exit_crit_edge
  %retval.0.i684 = phi ptr [ %switch.load738, %switch.lookup736 ], [ @.str.47, %for.body313.get_num_amsdu_subfrm_str.exit_crit_edge ]
  %call317 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr314, i32 noundef %sub315, ptr noundef nonnull @.str.34, ptr noundef nonnull %retval.0.i684) #8
  %add318 = add i32 %call317, %len.16721
  br label %for.body323

for.body323:                                      ; preds = %for.inc349.for.body323_crit_edge, %get_num_amsdu_subfrm_str.exit
  %k320.0720 = phi i32 [ 0, %get_num_amsdu_subfrm_str.exit ], [ %k320.1, %for.inc349.for.body323_crit_edge ]
  %j.7718 = phi i32 [ 0, %get_num_amsdu_subfrm_str.exit ], [ %inc350, %for.inc349.for.body323_crit_edge ]
  %len.17717 = phi i32 [ %add318, %get_num_amsdu_subfrm_str.exit ], [ %len.18, %for.inc349.for.body323_crit_edge ]
  %47 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sta_tid_stats_mask, align 16
  %shl325 = shl nuw nsw i32 1, %j.7718
  %and326 = and i32 %48, %shl325
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  br i1 %tobool327.not, label %for.body323.for.inc349_crit_edge, label %if.then328

for.body323.for.inc349_crit_edge:                 ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc349

if.then328:                                       ; preds = %for.body323
  %add.ptr329 = getelementptr i8, ptr %call1.i.i.i, i32 %len.17717
  %sub330 = sub i32 16768, %len.17717
  %arrayidx332 = getelementptr %struct.ath10k_sta_tid_stats, ptr %tid_stats, i32 %j.7718, i32 7, i32 %i.2722
  %49 = ptrtoint ptr %arrayidx332 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx332, align 4
  %call333 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr329, i32 noundef %sub330, ptr noundef nonnull @.str.25, i32 noundef %j.7718, i32 noundef %50) #8
  %add334 = add i32 %call333, %len.17717
  %inc335 = add i32 %k320.0720, 1
  %51 = and i32 %inc335, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp337 = icmp eq i32 %51, 0
  br i1 %cmp337, label %if.then338, label %if.then328.for.inc349_crit_edge

if.then328.for.inc349_crit_edge:                  ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc349

if.then338:                                       ; preds = %if.then328
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr339 = getelementptr i8, ptr %call1.i.i.i, i32 %add334
  %sub340 = sub i32 16768, %add334
  %call341 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr339, i32 noundef %sub340, ptr noundef nonnull @.str.26) #8
  %add342 = add i32 %call341, %add334
  %add.ptr343 = getelementptr i8, ptr %call1.i.i.i, i32 %add342
  %sub344 = sub i32 16768, %add342
  %call345 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr343, i32 noundef %sub344, ptr noundef nonnull @.str.27) #8
  %add346 = add i32 %add342, %call345
  br label %for.inc349

for.inc349:                                       ; preds = %if.then338, %if.then328.for.inc349_crit_edge, %for.body323.for.inc349_crit_edge
  %len.18 = phi i32 [ %add346, %if.then338 ], [ %add334, %if.then328.for.inc349_crit_edge ], [ %len.17717, %for.body323.for.inc349_crit_edge ]
  %k320.1 = phi i32 [ %inc335, %if.then338 ], [ %inc335, %if.then328.for.inc349_crit_edge ], [ %k320.0720, %for.body323.for.inc349_crit_edge ]
  %inc350 = add nuw nsw i32 %j.7718, 1
  %exitcond731.not = icmp eq i32 %inc350, 17
  br i1 %exitcond731.not, label %for.end351, label %for.inc349.for.body323_crit_edge

for.inc349.for.body323_crit_edge:                 ; preds = %for.inc349
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body323

for.end351:                                       ; preds = %for.inc349
  %add.ptr352 = getelementptr i8, ptr %call1.i.i.i, i32 %len.18
  %sub353 = sub i32 16768, %len.18
  %call354 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr352, i32 noundef %sub353, ptr noundef nonnull @.str.26) #8
  %add355 = add i32 %call354, %len.18
  %inc359 = add nuw nsw i32 %i.2722, 1
  %exitcond732.not = icmp eq i32 %inc359, 5
  br i1 %exitcond732.not, label %for.end360, label %for.end351.for.body313_crit_edge

for.end351.for.body313_crit_edge:                 ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body313

for.end360:                                       ; preds = %for.end351
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #8
  %call362 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call1.i.i.i, i32 noundef %add355) #8
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end360, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call362, %for.end360 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_dump_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3520, i32 noundef 4) #11
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #8
  %tx_stats = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 25, i32 1
  %6 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_stats, align 8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %5, ptr noundef nonnull @.str.59) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #8
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc163.for.cond7.preheader_crit_edge, %if.end6
  %k.0367 = phi i32 [ 0, %if.end6 ], [ %inc164, %for.inc163.for.cond7.preheader_crit_edge ]
  %len.0366 = phi i32 [ 0, %if.end6 ], [ %len.6, %for.inc163.for.cond7.preheader_crit_edge ]
  %arrayidx12 = getelementptr [4 x ptr], ptr @__const.ath10k_dbg_sta_dump_tx_stats.str_name, i32 0, i32 %k.0367
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.inc160.for.body9_crit_edge, %for.cond7.preheader
  %j.0365 = phi i32 [ 0, %for.cond7.preheader ], [ %inc161, %for.inc160.for.body9_crit_edge ]
  %len.1364 = phi i32 [ %len.0366, %for.cond7.preheader ], [ %len.6, %for.inc160.for.body9_crit_edge ]
  %10 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_stats, align 8
  %add.ptr = getelementptr i8, ptr %call1.i.i.i, i32 %len.1364
  %sub = sub i32 65536, %len.1364
  %arrayidx13 = getelementptr [2 x ptr], ptr @__const.ath10k_dbg_sta_dump_tx_stats.str, i32 0, i32 %j.0365
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.60, ptr noundef %9, ptr noundef %13) #8
  %add = add i32 %call14, %len.1364
  %add.ptr15 = getelementptr i8, ptr %call1.i.i.i, i32 %add
  %sub16 = sub i32 65536, %add
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.61, ptr noundef %13) #8
  %add19 = add i32 %add, %call18
  %add.ptr23 = getelementptr i8, ptr %call1.i.i.i, i32 %add19
  %sub24 = sub i32 65536, %add19
  %arrayidx26 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 0
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx26, align 8
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23, i32 noundef %sub24, ptr noundef nonnull @.str.62, i64 noundef %15) #8
  %add28 = add i32 %call27, %add19
  %add.ptr23.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add28
  %sub24.1 = sub i32 65536, %add28
  %arrayidx26.1 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 1
  %16 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx26.1, align 8
  %call27.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.1, i32 noundef %sub24.1, ptr noundef nonnull @.str.62, i64 noundef %17) #8
  %add28.1 = add i32 %call27.1, %add28
  %add.ptr23.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.1
  %sub24.2 = sub i32 65536, %add28.1
  %arrayidx26.2 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 2
  %18 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx26.2, align 8
  %call27.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.2, i32 noundef %sub24.2, ptr noundef nonnull @.str.62, i64 noundef %19) #8
  %add28.2 = add i32 %call27.2, %add28.1
  %add.ptr23.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.2
  %sub24.3 = sub i32 65536, %add28.2
  %arrayidx26.3 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 3
  %20 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx26.3, align 8
  %call27.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.3, i32 noundef %sub24.3, ptr noundef nonnull @.str.62, i64 noundef %21) #8
  %add28.3 = add i32 %call27.3, %add28.2
  %add.ptr23.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.3
  %sub24.4 = sub i32 65536, %add28.3
  %arrayidx26.4 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 4
  %22 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx26.4, align 8
  %call27.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.4, i32 noundef %sub24.4, ptr noundef nonnull @.str.62, i64 noundef %23) #8
  %add28.4 = add i32 %call27.4, %add28.3
  %add.ptr23.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.4
  %sub24.5 = sub i32 65536, %add28.4
  %arrayidx26.5 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 5
  %24 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx26.5, align 8
  %call27.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.5, i32 noundef %sub24.5, ptr noundef nonnull @.str.62, i64 noundef %25) #8
  %add28.5 = add i32 %call27.5, %add28.4
  %add.ptr23.6 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.5
  %sub24.6 = sub i32 65536, %add28.5
  %arrayidx26.6 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 6
  %26 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx26.6, align 8
  %call27.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.6, i32 noundef %sub24.6, ptr noundef nonnull @.str.62, i64 noundef %27) #8
  %add28.6 = add i32 %call27.6, %add28.5
  %add.ptr23.7 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.6
  %sub24.7 = sub i32 65536, %add28.6
  %arrayidx26.7 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 7
  %28 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx26.7, align 8
  %call27.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.7, i32 noundef %sub24.7, ptr noundef nonnull @.str.62, i64 noundef %29) #8
  %add28.7 = add i32 %call27.7, %add28.6
  %add.ptr23.8 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.7
  %sub24.8 = sub i32 65536, %add28.7
  %arrayidx26.8 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 8
  %30 = ptrtoint ptr %arrayidx26.8 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx26.8, align 8
  %call27.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.8, i32 noundef %sub24.8, ptr noundef nonnull @.str.62, i64 noundef %31) #8
  %add28.8 = add i32 %call27.8, %add28.7
  %add.ptr23.9 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.8
  %sub24.9 = sub i32 65536, %add28.8
  %arrayidx26.9 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 2, i32 %j.0365, i32 9
  %32 = ptrtoint ptr %arrayidx26.9 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx26.9, align 8
  %call27.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr23.9, i32 noundef %sub24.9, ptr noundef nonnull @.str.62, i64 noundef %33) #8
  %add28.9 = add i32 %call27.9, %add28.8
  %add.ptr29 = getelementptr i8, ptr %call1.i.i.i, i32 %add28.9
  %sub30 = sub i32 65536, %add28.9
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.26) #8
  %add32 = add i32 %call31, %add28.9
  %add.ptr33 = getelementptr i8, ptr %call1.i.i.i, i32 %add32
  %sub34 = sub i32 65536, %add32
  %call36 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.63, ptr noundef %13) #8
  %add37 = add i32 %add32, %call36
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body9
  %i.1359 = phi i32 [ 0, %for.body9 ], [ %inc48, %for.body40.for.body40_crit_edge ]
  %len.3358 = phi i32 [ %add37, %for.body9 ], [ %add46, %for.body40.for.body40_crit_edge ]
  %add.ptr41 = getelementptr i8, ptr %call1.i.i.i, i32 %len.3358
  %sub42 = sub i32 65536, %len.3358
  %arrayidx44 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 1, i32 %j.0365, i32 %i.1359
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx44, align 8
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr41, i32 noundef %sub42, ptr noundef nonnull @.str.62, i64 noundef %35) #8
  %add46 = add i32 %call45, %len.3358
  %inc48 = add nuw nsw i32 %i.1359, 1
  %exitcond.not = icmp eq i32 %inc48, 32
  br i1 %exitcond.not, label %for.end49, label %for.body40.for.body40_crit_edge

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body40

for.end49:                                        ; preds = %for.body40
  %arrayidx = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367
  %add.ptr50 = getelementptr i8, ptr %call1.i.i.i, i32 %add46
  %sub51 = sub i32 65536, %add46
  %call52 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.26) #8
  %add53 = add i32 %call52, %add46
  %add.ptr54 = getelementptr i8, ptr %call1.i.i.i, i32 %add53
  %sub55 = sub i32 65536, %add53
  %call57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.64, ptr noundef %13) #8
  %add58 = add i32 %add53, %call57
  %add.ptr59 = getelementptr i8, ptr %call1.i.i.i, i32 %add58
  %sub60 = sub i32 65536, %add58
  %arrayidx61 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx61, align 8
  %arrayidx65 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365, i32 1
  %38 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx65, align 8
  %arrayidx68 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365, i32 2
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx68, align 8
  %arrayidx71 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365, i32 3
  %42 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx71, align 8
  %arrayidx74 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365, i32 4
  %44 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx74, align 8
  %arrayidx77 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 3, i32 %j.0365, i32 5
  %46 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx77, align 8
  %call78 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr59, i32 noundef %sub60, ptr noundef nonnull @.str.65, i64 noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %43, i64 noundef %45, i64 noundef %47) #8
  %add79 = add i32 %call78, %add58
  %add.ptr80 = getelementptr i8, ptr %call1.i.i.i, i32 %add79
  %sub81 = sub i32 65536, %add79
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.66, ptr noundef %13) #8
  %add84 = add i32 %add79, %call83
  %add.ptr85 = getelementptr i8, ptr %call1.i.i.i, i32 %add84
  %sub86 = sub i32 65536, %add84
  %arrayidx87 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 4, i32 %j.0365
  %48 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx87, align 8
  %arrayidx91 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 4, i32 %j.0365, i32 1
  %50 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx91, align 8
  %arrayidx94 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 4, i32 %j.0365, i32 2
  %52 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx94, align 8
  %arrayidx97 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 4, i32 %j.0365, i32 3
  %54 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx97, align 8
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr85, i32 noundef %sub86, ptr noundef nonnull @.str.67, i64 noundef %49, i64 noundef %51, i64 noundef %53, i64 noundef %55) #8
  %add99 = add i32 %call98, %add84
  %add.ptr100 = getelementptr i8, ptr %call1.i.i.i, i32 %add99
  %sub101 = sub i32 65536, %add99
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.68, ptr noundef %13) #8
  %add104 = add i32 %add99, %call103
  %add.ptr105 = getelementptr i8, ptr %call1.i.i.i, i32 %add104
  %sub106 = sub i32 65536, %add104
  %arrayidx107 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 5, i32 %j.0365
  %56 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx107, align 8
  %arrayidx111 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 5, i32 %j.0365, i32 1
  %58 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx111, align 8
  %call112 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr105, i32 noundef %sub106, ptr noundef nonnull @.str.69, i64 noundef %57, i64 noundef %59) #8
  %add113 = add i32 %call112, %add104
  %add.ptr114 = getelementptr i8, ptr %call1.i.i.i, i32 %add113
  %sub115 = sub i32 65536, %add113
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.70, ptr noundef %13) #8
  %add118 = add i32 %add113, %call117
  %add.ptr122 = getelementptr i8, ptr %call1.i.i.i, i32 %add118
  %sub123 = sub i32 65536, %add118
  %arrayidx125 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 0
  %60 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx125, align 8
  %call126 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122, i32 noundef %sub123, ptr noundef nonnull @.str.71, i64 noundef %61) #8
  %add127 = add i32 %call126, %add118
  %add.ptr122.1 = getelementptr i8, ptr %call1.i.i.i, i32 %add127
  %sub123.1 = sub i32 65536, %add127
  %arrayidx125.1 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 1
  %62 = ptrtoint ptr %arrayidx125.1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx125.1, align 8
  %call126.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.1, i32 noundef %sub123.1, ptr noundef nonnull @.str.71, i64 noundef %63) #8
  %add127.1 = add i32 %call126.1, %add127
  %add.ptr122.2 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.1
  %sub123.2 = sub i32 65536, %add127.1
  %arrayidx125.2 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 2
  %64 = ptrtoint ptr %arrayidx125.2 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx125.2, align 8
  %call126.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.2, i32 noundef %sub123.2, ptr noundef nonnull @.str.71, i64 noundef %65) #8
  %add127.2 = add i32 %call126.2, %add127.1
  %add.ptr122.3 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.2
  %sub123.3 = sub i32 65536, %add127.2
  %arrayidx125.3 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 3
  %66 = ptrtoint ptr %arrayidx125.3 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx125.3, align 8
  %call126.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.3, i32 noundef %sub123.3, ptr noundef nonnull @.str.71, i64 noundef %67) #8
  %add127.3 = add i32 %call126.3, %add127.2
  %add.ptr122.4 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.3
  %sub123.4 = sub i32 65536, %add127.3
  %arrayidx125.4 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 4
  %68 = ptrtoint ptr %arrayidx125.4 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx125.4, align 8
  %call126.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.4, i32 noundef %sub123.4, ptr noundef nonnull @.str.71, i64 noundef %69) #8
  %add127.4 = add i32 %call126.4, %add127.3
  %add.ptr122.5 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.4
  %sub123.5 = sub i32 65536, %add127.4
  %arrayidx125.5 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 5
  %70 = ptrtoint ptr %arrayidx125.5 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx125.5, align 8
  %call126.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.5, i32 noundef %sub123.5, ptr noundef nonnull @.str.71, i64 noundef %71) #8
  %add127.5 = add i32 %call126.5, %add127.4
  %add.ptr122.6 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.5
  %sub123.6 = sub i32 65536, %add127.5
  %arrayidx125.6 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 6
  %72 = ptrtoint ptr %arrayidx125.6 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx125.6, align 8
  %call126.6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.6, i32 noundef %sub123.6, ptr noundef nonnull @.str.71, i64 noundef %73) #8
  %add127.6 = add i32 %call126.6, %add127.5
  %add.ptr122.7 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.6
  %sub123.7 = sub i32 65536, %add127.6
  %arrayidx125.7 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 7
  %74 = ptrtoint ptr %arrayidx125.7 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx125.7, align 8
  %call126.7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.7, i32 noundef %sub123.7, ptr noundef nonnull @.str.71, i64 noundef %75) #8
  %add127.7 = add i32 %call126.7, %add127.6
  %add.ptr122.8 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.7
  %sub123.8 = sub i32 65536, %add127.7
  %arrayidx125.8 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 8
  %76 = ptrtoint ptr %arrayidx125.8 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx125.8, align 8
  %call126.8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.8, i32 noundef %sub123.8, ptr noundef nonnull @.str.71, i64 noundef %77) #8
  %add127.8 = add i32 %call126.8, %add127.7
  %add.ptr122.9 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.8
  %sub123.9 = sub i32 65536, %add127.8
  %arrayidx125.9 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 9
  %78 = ptrtoint ptr %arrayidx125.9 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx125.9, align 8
  %call126.9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.9, i32 noundef %sub123.9, ptr noundef nonnull @.str.71, i64 noundef %79) #8
  %add127.9 = add i32 %call126.9, %add127.8
  %add.ptr122.10 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.9
  %sub123.10 = sub i32 65536, %add127.9
  %arrayidx125.10 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 10
  %80 = ptrtoint ptr %arrayidx125.10 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx125.10, align 8
  %call126.10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.10, i32 noundef %sub123.10, ptr noundef nonnull @.str.71, i64 noundef %81) #8
  %add127.10 = add i32 %call126.10, %add127.9
  %add.ptr122.11 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.10
  %sub123.11 = sub i32 65536, %add127.10
  %arrayidx125.11 = getelementptr [2 x [12 x i64]], ptr %arrayidx, i32 0, i32 %j.0365, i32 11
  %82 = ptrtoint ptr %arrayidx125.11 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx125.11, align 8
  %call126.11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr122.11, i32 noundef %sub123.11, ptr noundef nonnull @.str.71, i64 noundef %83) #8
  %add127.11 = add i32 %call126.11, %add127.10
  %add.ptr131 = getelementptr i8, ptr %call1.i.i.i, i32 %add127.11
  %sub132 = sub i32 65536, %add127.11
  %call133 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr131, i32 noundef %sub132, ptr noundef nonnull @.str.26) #8
  %add134 = add i32 %call133, %add127.11
  %add.ptr135 = getelementptr i8, ptr %call1.i.i.i, i32 %add134
  %sub136 = sub i32 65536, %add134
  %call138 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr135, i32 noundef %sub136, ptr noundef nonnull @.str.72, ptr noundef %13) #8
  %add139 = add i32 %add134, %call138
  br label %for.body142

for.body142:                                      ; preds = %for.inc157.for.body142_crit_edge, %for.end49
  %i.3363 = phi i32 [ 0, %for.end49 ], [ %add149, %for.inc157.for.body142_crit_edge ]
  %len.5362 = phi i32 [ %add139, %for.end49 ], [ %len.6, %for.inc157.for.body142_crit_edge ]
  %add.ptr143 = getelementptr i8, ptr %call1.i.i.i, i32 %len.5362
  %sub144 = sub i32 65536, %len.5362
  %arrayidx146 = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %11, i32 0, i32 %k.0367, i32 6, i32 %j.0365, i32 %i.3363
  %84 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx146, align 8
  %call147 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.71, i64 noundef %85) #8
  %add148 = add i32 %call147, %len.5362
  %add149 = add nuw nsw i32 %i.3363, 1
  %86 = and i32 %add149, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool150.not = icmp eq i32 %86, 0
  br i1 %tobool150.not, label %if.then151, label %for.body142.for.inc157_crit_edge

for.body142.for.inc157_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc157

if.then151:                                       ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr152 = getelementptr i8, ptr %call1.i.i.i, i32 %add148
  %sub153 = sub i32 65536, %add148
  %call154 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr152, i32 noundef %sub153, ptr noundef nonnull @.str.73) #8
  %add155 = add i32 %call154, %add148
  br label %for.inc157

for.inc157:                                       ; preds = %if.then151, %for.body142.for.inc157_crit_edge
  %len.6 = phi i32 [ %add148, %for.body142.for.inc157_crit_edge ], [ %add155, %if.then151 ]
  %exitcond369.not = icmp eq i32 %add149, 320
  br i1 %exitcond369.not, label %for.inc160, label %for.inc157.for.body142_crit_edge

for.inc157.for.body142_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body142

for.inc160:                                       ; preds = %for.inc157
  %inc161 = add nuw nsw i32 %j.0365, 1
  %exitcond370.not = icmp eq i32 %inc161, 2
  br i1 %exitcond370.not, label %for.inc163, label %for.inc160.for.body9_crit_edge

for.inc160.for.body9_crit_edge:                   ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.inc163:                                       ; preds = %for.inc160
  %inc164 = add nuw nsw i32 %k.0367, 1
  %exitcond371.not = icmp eq i32 %inc164, 4
  br i1 %exitcond371.not, label %for.end165, label %for.inc163.for.cond7.preheader_crit_edge

for.inc163.for.cond7.preheader_crit_edge:         ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond7.preheader

for.end165:                                       ; preds = %for.inc163
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr166 = getelementptr i8, ptr %call1.i.i.i, i32 %len.6
  %sub167 = sub i32 65536, %len.6
  %87 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tx_stats, align 8
  %tx_duration = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %tx_duration to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %tx_duration, align 8
  %call169 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr166, i32 noundef %sub167, ptr noundef nonnull @.str.74, i64 noundef %90) #8
  %add170 = add i32 %call169, %len.6
  %add.ptr171 = getelementptr i8, ptr %call1.i.i.i, i32 %add170
  %sub172 = sub i32 65536, %add170
  %91 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tx_stats, align 8
  %ba_fails = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %ba_fails to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ba_fails, align 8
  %call174 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr171, i32 noundef %sub172, ptr noundef nonnull @.str.75, i64 noundef %94) #8
  %add175 = add i32 %call174, %add170
  %add.ptr176 = getelementptr i8, ptr %call1.i.i.i, i32 %add175
  %sub177 = sub i32 65536, %add175
  %95 = ptrtoint ptr %tx_stats to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tx_stats, align 8
  %ack_fails = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %ack_fails to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %ack_fails, align 8
  %call179 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr176, i32 noundef %sub177, ptr noundef nonnull @.str.76, i64 noundef %98) #8
  %add180 = add i32 %call179, %add175
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #8
  %99 = tail call i32 @llvm.smin.i32(i32 %add180, i32 65536)
  %call185 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call1.i.i.i, i32 noundef %99) #8
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end165, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call185, %for.end165 ], [ 0, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_dbg_sta_read_peer_ps_state(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 8
  %ar1 = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %ar1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #8
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 82
  %6 = call ptr @memset(ptr %buf, i32 255, i32 20)
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #8
  %peer_ps_state = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 6, i32 28, i32 15
  %7 = ptrtoint ptr %peer_ps_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %peer_ps_state, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 20, ptr noundef nonnull @.str.77, i32 noundef %8) #8
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #8
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #8
  ret i32 %call5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.named.register.sp = !{!171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 762, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 763, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 764, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 765, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 766, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 768, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 773, i32 23}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 775, i32 22}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fops_aggr_mode, !24, !"fops_aggr_mode", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 229, i32 37}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 186, i32 42}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 188, i32 4}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 188, i32 13}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 219, i32 19}
!33 = !{ptr @fops_addba, !34, !"fops_addba", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 281, i32 37}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 253, i32 20}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 271, i32 19}
!39 = !{ptr @fops_addba_resp, !40, !"fops_addba_resp", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 331, i32 37}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 322, i32 19}
!43 = !{ptr @fops_delba, !44, !"fops_delba", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 382, i32 37}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 354, i32 20}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 372, i32 19}
!49 = !{ptr @fops_peer_debug_trigger, !50, !"fops_peer_debug_trigger", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 444, i32 37}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 402, i32 4}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 435, i32 19}
!55 = !{ptr @fops_tid_stats_dump, !56, !"fops_tid_stats_dump", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 638, i32 37}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 584, i32 5}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 586, i32 5}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 587, i32 45}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 588, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 590, i32 45}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 594, i32 5}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 598, i32 5}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 602, i32 5}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 607, i32 6}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 614, i32 6}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 622, i32 6}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 483, i32 10}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 485, i32 10}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 487, i32 10}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 489, i32 10}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 491, i32 10}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 501, i32 10}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 503, i32 10}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 505, i32 10}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 507, i32 10}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 509, i32 10}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 511, i32 10}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 513, i32 10}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 515, i32 10}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 525, i32 10}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 527, i32 10}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 529, i32 10}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 531, i32 10}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 533, i32 10}
!117 = !{ptr @fops_tx_stats, !118, !"fops_tx_stats", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 750, i32 37}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 653, i32 49}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 653, i32 57}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 654, i32 14}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 654, i32 23}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 655, i32 46}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 655, i32 55}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 667, i32 19}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 677, i32 44}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 681, i32 7}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 685, i32 8}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 688, i32 44}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 695, i32 6}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 697, i32 7}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 702, i32 7}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 704, i32 7}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 708, i32 7}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 710, i32 44}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 713, i32 7}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 716, i32 45}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 720, i32 7}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 727, i32 39}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 733, i32 5}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 736, i32 4}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 738, i32 4}
!167 = !{ptr @fops_peer_ps_state, !168, !"fops_peer_ps_state", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 472, i32 37}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath10k/debugfs_sta.c", i32 464, i32 42}
!171 = !{!"sp"}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2149713929}
!182 = !{i64 2149714195}
!183 = !{i8 0, i8 2}
!184 = !{!"auto-init"}
